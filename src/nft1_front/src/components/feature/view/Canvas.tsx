import { useCallback, useEffect, useRef, useState } from 'react';

import { SmartNftViewCanvas } from '@/nft/core';

export const CanvasView = ({
  view: {
    height,
    width,
    scale,
    memory,
    ptr,
    start,
    tick,
    ticker,
    keyUp,
    keyDown
  }
}: {
  view: SmartNftViewCanvas;
}) => {
  const [focused, setFocused] = useState(false);
  const canvas = useRef<HTMLCanvasElement>(null);

  useEffect(() => {
    if (!canvas.current) {
      return;
    }

    const image = new ImageData(
      new Uint8ClampedArray(memory.buffer, ptr, 4 * width * height),
      width,
      height
    );

    const ctx = canvas.current.getContext('2d');

    start();
    ctx?.putImageData(image, 0, 0);

    if (tick) {
      let interval: number;
      let lastFrame = Date.now();

      const paint = () => {
        const delta = Date.now() - lastFrame;

        if (delta >= ticker) {
          if (tick(delta)) {
            ctx?.putImageData(image, 0, 0);
          }
          lastFrame = Date.now();
        }

        interval = requestAnimationFrame(paint);
      };

      interval = requestAnimationFrame(paint);

      return () => {
        cancelAnimationFrame(interval);
      };
    }
  }, [height, width, memory.buffer, ptr, start, tick, ticker]);

  const onFocus = () => {
    setFocused(true);
  };

  const onKeyUp = useCallback(
    (event: KeyboardEvent) => {
      if (!keyUp || !focused) {
        return;
      }

      if (
        event.key === 'Meta' ||
        event.key === 'Control' ||
        event.key === 'Alt'
      ) {
        return;
      }

      event.preventDefault();

      if (event.repeat) {
        return;
      }

      keyUp(event.keyCode);
    },
    [keyUp, focused]
  );

  const onKeyDown = useCallback(
    (event: KeyboardEvent) => {
      if (!keyDown || !focused) {
        return;
      }

      if (event.metaKey || event.ctrlKey || event.altKey) {
        return;
      }

      event.preventDefault();

      if (event.repeat) {
        return;
      }

      keyDown(event.keyCode);
    },
    [keyDown, focused]
  );

  useEffect(() => {
    window.addEventListener('keyup', onKeyUp);
    window.addEventListener('keydown', onKeyDown);

    return () => {
      window.removeEventListener('keyup', onKeyUp);
      window.removeEventListener('keydown', onKeyDown);
    };
  }, [onKeyUp, onKeyDown]);

  return (
    <canvas
      height={height}
      width={width}
      ref={canvas}
      onClick={onFocus}
      onFocus={onFocus}
      style={{
        imageRendering: 'pixelated',
        height: `${height * scale}px`,
        width: `${width * scale}px`,
        border: focused ? '3px solid red' : '3px solid transparent'
      }}
    />
  );
};
