import { linkOptions } from '@tanstack/react-router';

export const indexLink = linkOptions({
  to: '/'
});

export const collectionLink = linkOptions({
  to: '/$canisterId',
  params: { canisterId: '' }
});

export const nftLink = linkOptions({
  to: '/$canisterId/$nftId',
  params: { canisterId: '', nftId: '' }
});
