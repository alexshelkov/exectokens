import { useEffect, useState } from 'react';

import { CommandInfo, SmartNftViewCommand } from '@/nft/core';
import { CommandInteractions } from '@/components/blocks/CommandInteractions';
import {
  CommandDescriptor as PostcardCommandDescriptor,
  CommandInput as PostcardCommandInput,
  Input as PostcardInput
} from '@/nft/bindings/core';

const commandMatch = (
  commandsList: PostcardCommandDescriptor[],
  rawCommand: string
) => {
  if (!rawCommand.startsWith('/')) {
    return undefined;
  }

  rawCommand = (rawCommand.slice(1).split(' ')[0] || '').trim();

  return commandsList.find((cmd) => cmd.name === rawCommand);
};

const mapRawCommand = async (
  commandsList: PostcardCommandDescriptor[],
  rawCommand: string,
  file: File | null = null
): Promise<PostcardCommandInput> => {
  const command = commandMatch(commandsList, rawCommand);

  const input: PostcardInput = file
    ? {
        tag: 'File',
        value: [
          rawCommand.trim(),
          file.type,
          new Uint8Array(await file.arrayBuffer()) as unknown as number[]
        ]
      }
    : { tag: 'Text', value: rawCommand.trim() };

  if (command) {
    return {
      tag: 'Id',
      value: [command.id, input]
    };
  }

  return {
    tag: 'Raw',
    value: input
  };
};

export const CommandView = ({
  view: { run }
}: {
  view: SmartNftViewCommand;
}) => {
  const [commandsList, setCommandList] = useState<PostcardCommandDescriptor[]>(
    []
  );
  const [commandsHistory, setCommandHistory] = useState<CommandInfo[]>([]);

  const handleRun = async (rawCommand: string, file: File | null) => {
    const command = await mapRawCommand(commandsList, rawCommand, file);

    const commands = commandsHistory.concat({
      origin: 'user',
      content: command
    });

    setCommandHistory(commands);

    const response = await run(command);

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

  useEffect(() => {
    (async () => {
      const response = await run({
        tag: 'Init'
      });

      if (response?.tag === 'Init') {
        setCommandList(response.value);
      }
    })();
  }, [run]);

  return (
    <CommandInteractions
      commandsLists={commandsList}
      commandsHistory={commandsHistory}
      onRun={handleRun}
    />
  );
};
