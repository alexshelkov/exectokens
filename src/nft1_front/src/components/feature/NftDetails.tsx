import { SmartNftModule } from '@/nft';
import { NftDetailsCard } from '@/components/blocks/NftDetailsCard';
import { CollectionAttrs, Nft } from '@/routes/types';
import { useEffect, useRef, useState } from 'react';

export interface NftDetailsProps {
  nft: Nft;
  collectionAttrs: CollectionAttrs;
  modules: SmartNftModule[];
}

export interface Command {
  origin: 'user' | 'system';
  content: string;
}

export default function NftDetails({
  collectionAttrs,
  nft,
  modules
}: NftDetailsProps) {
  const viewCommand =
    useRef<(command: string) => Promise<string | undefined>>();
  const init = useRef(false);
  const display = useRef<HTMLCanvasElement>(null);
  const [commandsHistory, setCommandHistory] = useState<Command[]>([]);

  const cardModules = modules.map((module) => {
    return {
      name: module.name,
      exports: module.exports.map((exp) => {
        return JSON.stringify(exp);
      }),
      size: module.size
    };
  });

  const mod = modules.find((module) => module.viewName);
  const viewName = mod?.viewName;

  useEffect(() => {
    if (!(!init.current && mod && viewName)) {
      return;
    }

    init.current = true;

    if (mod.viewCanvas && display.current) {
      const { viewCanvas } = mod;

      const { height, width, memory, ptr, view, tick, scale } = viewCanvas;

      display.current.height = height;
      display.current.width = width;

      const image = new ImageData(
        new Uint8ClampedArray(memory.buffer, ptr, 4 * width * height),
        width,
        height
      );

      display.current.style.width = `${width * scale}px`;
      display.current.style.height = `${height * scale}px`;

      const ctx = display.current.getContext('2d');

      if (tick) {
        let lastFrame = Date.now();

        const draw = () => {
          const delta = Date.now() - lastFrame;

          if (delta >= tick) {
            if (view(delta)) {
              ctx?.putImageData(image, 0, 0);
            }
            lastFrame = Date.now();
          }
          requestAnimationFrame(() => draw());
        };

        draw();
      }

      view(0);

      ctx?.putImageData(image, 0, 0);
    } else if (mod.viewCommand) {
      if (!viewCommand.current) {
        viewCommand.current = mod.viewCommand.run;
      }
    }
  }, [mod, viewName]);

  const handleBack = () => {
    // navigate(-1);
  };

  const handleRun = async (command: string) => {
    if (!viewCommand.current) {
      return;
    }

    const commands = commandsHistory.concat([
      {
        origin: 'user',
        content: command
      }
    ]);

    setCommandHistory(commands);

    const response = await viewCommand.current(command);

    if (response) {
      setCommandHistory(
        commands.concat([
          {
            origin: 'system',
            content: response
          }
        ])
      );
    }
  };

  return (
    <NftDetailsCard
      ref={display}
      name={collectionAttrs.name}
      symbol={collectionAttrs.symbol}
      id={nft.nft.id}
      image={nft.thumbUrl}
      alt=""
      modules={cardModules}
      viewName={viewName}
      commandsHistory={commandsHistory}
      onBack={handleBack}
      onRun={handleRun}
    />
  );
}
