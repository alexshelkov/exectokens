import { NftDetailsCard } from '@/components/blocks/NftDetailsCard';
import { SmartCollection, SmartNft, SmartNftModule } from '@/nft/core';
import { useNavigate } from '@tanstack/react-router';
import { useEffect, useRef, useState } from 'react';

export interface NftDetailsProps {
  nft: SmartNft;
  collectionAttrs: SmartCollection;
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
  const navigate = useNavigate({ from: '/$canisterId/$nftId' });
  const viewCommand =
    useRef<(command: string) => Promise<string | undefined>>();
  const init = useRef(false);
  const display = useRef<HTMLCanvasElement>(null);
  const [commandsHistory, setCommandHistory] = useState<Command[]>([]);

  const cardModules = modules.map((module) => {
    return {
      name: module.name,
      imports: module.imports.map((imp) => {
        if ('ImportFn' in imp) {
          return JSON.stringify(imp.ImportFn);
        }

        return imp.Import;
      }),
      exports: module.exports.map((exp) => {
        return JSON.stringify(exp);
      }),

      size: module.size
    };
  });

  const cardAttrs = nft.attrs.map((attr) => {
    return {
      name: attr.name,
      val: JSON.stringify(attr.val)
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
    navigate({
      to: '/$canisterId',
      params: { canisterId: collectionAttrs.id }
    });
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
      id={nft.id}
      image={nft.preview}
      alt=""
      attrs={cardAttrs}
      modules={cardModules}
      viewName={viewName}
      commandsHistory={commandsHistory}
      onBack={handleBack}
      onRun={handleRun}
    />
  );
}
