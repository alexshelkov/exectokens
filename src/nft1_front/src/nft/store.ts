const createSmartStore = () => {
  let storage: Cache | undefined;

  const open = async (canisterId: string) => {
    if (storage) {
      return storage;
    }

    storage = await caches.open(`smart_store/${canisterId}`);

    return storage;
  };

  const get = async (itemType: 'preview' | 'module', itemId: number) => {
    const response = await storage?.match(`/${itemType}/${itemId}`);

    return response?.blob();
  };

  const has = async (itemType: 'preview' | 'module', itemId: number) => {
    return !!(await storage?.match(`/${itemType}/${itemId}`));
  };

  const add = async (
    itemType: 'preview' | 'module',
    itemId: number,
    contents: Blob
  ) => {
    const request = new Response(contents);

    await storage?.put(`/${itemType}/${itemId}`, request);

    return itemId;
  };

  const getOr = async (itemType: 'preview' | 'module', itemId: number, creator: () => Blob) => {
    let item = await get(itemType, itemId);

    if (item) {
      return item;
    }

    item = creator();

    await add(itemType, itemId, item);

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
