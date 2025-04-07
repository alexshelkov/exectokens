use candid::CandidType;

#[derive(CandidType, Deserialize, Serialize, Clone, Debug)]
pub struct ModuleDescCreate(pub u32, pub Option<String>);