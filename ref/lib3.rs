use ic_cdk::export::candid::{CandidType, Deserialize};
use ic_cdk::storage::StableBTreeMap;
use ic_cdk_macros::{init, query, update};

type TokenId = u64;
type PrincipalId = String;

#[derive(CandidType, Deserialize, Clone)]
struct Token {
    id: TokenId,
    owner: PrincipalId,
}

#[derive(CandidType, Default, Deserialize)]
struct State {
    tokens: StableBTreeMap<TokenId, Token>,
    next_token_id: TokenId,
}

#[init]
fn init() {
    let state = State::default();
    ic_cdk::storage::stable_save((state,)).expect("failed to save stable state");
}

#[update]
fn mint(owner: PrincipalId) -> TokenId {
    let (mut state,): (State,) = ic_cdk::storage::stable_restore().expect("failed to restore state");

    state.next_token_id += 1;
    let token_id = state.next_token_id;

    let token = Token {
        id: token_id,
        owner,
    };

    state.tokens.insert(token_id, token);
    ic_cdk::storage::stable_save((state,)).expect("failed to save stable state");

    token_id
}

#[query]
fn get_owner(token_id: TokenId) -> Option<PrincipalId> {
    let (state,): (State,) = ic_cdk::storage::stable_restore().expect("failed to restore state");
    state.tokens.get(&token_id).map(|token| token.owner.clone())
}
