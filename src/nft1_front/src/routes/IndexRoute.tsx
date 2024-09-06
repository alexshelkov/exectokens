import { createRoute } from '@tanstack/react-router';

import NftDetails from '@/components/feature/NftDetails';
import { SmartNftModule } from '@/nft';
import { CollectionAttrs, Nft } from '@/routes/types';
import { rootRoute } from '@/routes/RootRoute';
import { useEffect, useRef } from 'react';

export const indexRoute = createRoute({
  getParentRoute: () => rootRoute,
  path: '/',
  component: IndexRoute
});

export default function IndexRoute() {
  const height = 101;
  const width = 101;
  const scale = 10;

  const ref = useRef<HTMLCanvasElement>(null);

  useEffect(() => {
    (async () => {
      const arr = new Uint8ClampedArray(4 * height * width).fill(255);

      const draw = (x: number, y: number, color: [number, number, number] | [number, number, number, number]) => {
        const [r, g, b, a = 255] = color;

        arr[4 * x + 4 * width * y + 0] = r; // R value
        arr[4 * x + 4 * width * y + 1] = g; // G value
        arr[4 * x + 4 * width * y + 2] = b; // B value
        arr[4 * x + 4 * width * y + 3] = a; // A alpha
      };

      draw(0, 0, [255, 0, 0]);
      draw(99, 50, [0, 0, 255])

      const image = new ImageData(
        arr,
        width,
        height
      );

      const ctx = ref.current?.getContext('2d');
      // ctx?.scale(scale, scale);
      ctx?.putImageData(image, 0, 0);
      // ctx?.scale(scale, scale);
    })();
  }, []);

  return (
    <div className="pt-2 w-full">
      <div style={{ /*transform: 'scale(9)', transformOrigin: 'left top' */}}>
        <canvas
          ref={ref}
          width={width}
          height={height}
          style={{
            imageRendering: 'pixelated',
            border: '1px solid black',
            width: `${width * scale}px`,
            height: `${height * scale}px`
          }}
        />
      </div>
    </div>
  );
}
