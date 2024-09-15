const createSmartStore = () => {
  let storage: Cache | undefined;

  const open = async (canisterId: string) => {
    if (storage) {
      return storage;
    }

    storage = await caches.open(`smart_store/${canisterId}`);

    return storage;
  };

  const get = async (nftId: string, itemType: 'preview' | 'module') => {
    const response = await storage?.match(`/${nftId}/${itemType}`);

    return response?.blob();
  };

  const has = async (nftId: string, itemType: 'preview' | 'module') => {
    return !!(await storage?.match(`/${nftId}/${itemType}`));
  };

  const add = async (
    nftId: string,
    itemType: 'preview' | 'module',
    contents: Blob
  ) => {
    const request = new Response(contents);

    await storage?.put(`/${nftId}/${itemType}`, request);
  };

  const getOr = async (nftId: string, itemType: 'preview' | 'module', creator: () => Blob) => {
    let item = await get(nftId, itemType);

    if (item) {
      return item;
    }

    item = creator();

    await add(nftId, itemType, item);

    return item;
  };

  const store = async (canisterId: string) => {
    await open(canisterId);

    return {
      get,
      has,
      add,
      getOr
    };
  };

  return {
    store
  };
};

export const SmartStore = createSmartStore();

export type SmartStore = Awaited<ReturnType<typeof SmartStore['store']>>;