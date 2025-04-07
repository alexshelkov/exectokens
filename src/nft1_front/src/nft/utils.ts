export const getPreviewBlob = (contents: Uint8Array<ArrayBufferLike> | number[]): Blob => {
  const blob = new Blob([contents as Uint8Array], {
    type: 'image/png'
  });

  return blob;
};

const toResponse = (bytes: Uint8Array | number[]) => {
  return new Response(bytes as Uint8Array, {
    headers: { 'Content-Type': 'application/wasm' }
  });
};

export const createWebAsmModule = async (
  moduleCode: Uint8Array | number[],
  imports: object = {}
) => {
  const { instance } = await WebAssembly.instantiateStreaming(
    toResponse(moduleCode),
    {
      smart_nft: imports
    } as unknown as WebAssembly.Imports
  );

  return instance;
};
