import { createContext, useContext, useEffect, useMemo, useState } from 'react';

import { Identity } from '@/nft';
import { Secp256k1KeyIdentity } from '@dfinity/identity-secp256k1';

async function generatePrivateKeyStub() {
  const keyPair = await window.crypto.subtle.generateKey(
    {
      name: 'AES-GCM',
      length: 256
    },
    true,
    ['encrypt', 'decrypt']
  );

  const exported = await window.crypto.subtle.exportKey('raw', keyPair);
  const exportedKeyBuffer = new Uint8Array(exported);

  return exportedKeyBuffer;
}

type SmartNftProviderProps = {
  children: React.ReactNode;
};

export type IdentityState = {
  identity?: Identity;
  setIdentity: (identity: Identity) => void;
};

const initialState: IdentityState = {
  setIdentity() {}
};

const IdentityContext = createContext<IdentityState>(initialState);

const testKey = new Uint8Array([
  109, 123, 223, 178, 14, 78, 125, 84, 205, 53, 144, 130, 175, 72, 187, 120, 78,
  119, 45, 64, 167, 14, 89, 94, 195, 17, 216, 151, 151, 169, 250, 225
]);

export function IdentityProvider({
  children,
  ...props
}: SmartNftProviderProps) {
  const [identity, setIdentity] = useState<Identity | undefined>();

  const ctx = useMemo(() => {
    return {
      identity,
      setIdentity
    };
  }, [identity, setIdentity]);

  // TODO: Temporary!
  useEffect(() => {
    const i = Secp256k1KeyIdentity.fromSecretKey(testKey);

    console.log(i.getPrincipal().toString());

    setIdentity(i);
  }, []);

  return (
    <IdentityContext.Provider {...props} value={ctx}>
      {children}
    </IdentityContext.Provider>
  );
}

export const useIdentity = () => {
  const context = useContext(IdentityContext);

  return context;
};
