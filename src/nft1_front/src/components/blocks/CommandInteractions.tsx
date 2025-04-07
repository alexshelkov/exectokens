import { useEffect, useRef, useState } from 'react';
import { Textarea } from '@/components/ui/textarea';
import { Label } from '@/components/ui/label';
import { Button } from '@/components/ui/button';
import { Badge } from '@/components/ui/badge';
import { CornerDownLeft, File as FileIcon, Paperclip, X } from 'lucide-react';
import { CommandInfo } from '@/nft/core';
import {
  CommandInput as PostcardCommandInput,
  CommandOutput as PostcardCommandOutput,
  CommandDescriptor as PostcardCommandDescriptor,
  Input as PostcardInput
} from '@/nft/bindings/core';

export interface CommandInteractionsProps {
  commandsHistory: CommandInfo[];
  commandsLists: PostcardCommandDescriptor[];
  onRun: (command: string, file: File | null) => void;
}

const CommandInputType = ({ input }: { input: PostcardInput }) => {
  if (input.tag === 'Text') {
    return input.value;
  } else if (input.tag === 'File') {
    const file = new File([new Uint8Array(input.value[2])], 'file', {
      type: input.value[1]
    });

    return (
      <>
        <div>{input.value[0]}</div>
        <div className="mt-2">
          <AttachmentPreview attachment={file} />
        </div>
      </>
    );
  }

  return <Badge variant="destructive">Empty</Badge>;
};

const CommandInput = ({ content }: { content: PostcardCommandInput }) => {
  const input: PostcardInput =
    content.tag === 'Raw'
      ? content.value
      : content.tag === 'Id'
        ? content.value[1]
        : { tag: 'Empty' };

  return <CommandInputType input={input} />;
};

const CommandOutput = ({ content }: { content: PostcardCommandOutput }) => {
  if (content.tag === 'Raw') {
    if (content.value.tag === 'Text') {
      return content.value.value;
    }
  } else if (content.tag === 'Id') {
    if (content.value[1].tag === 'Text') {
      return content.value[1].value;
    }
  } else if (content.tag === 'Empty') {
    return <Badge variant="outline">Empty</Badge>;
  }

  return <Badge variant="destructive">Error</Badge>;
};

const AttachmentPreview = ({
  attachment,
  details
}: {
  attachment: File;
  details?: boolean;
}) => {
  return (
    <>
      {attachment.type.startsWith('image/') ? (
        <img
          src={URL.createObjectURL(attachment)}
          alt="Preview"
          className="w-16 h-16 object-cover rounded mr-2"
        />
      ) : (
        <FileIcon className="w-16 h-16 text-green-400 mr-2" />
      )}
      {details ? (
        <div className="flex-grow">
          <p className="text-green-400 font-mono text-sm truncate">
            {attachment.name}
          </p>
          <p className="text-green-600 font-mono text-xs">{attachment.size}</p>
        </div>
      ) : null}
    </>
  );
};

export const CommandInteractions = ({
  commandsLists,
  commandsHistory,
  onRun
}: CommandInteractionsProps) => {
  const textInputRef = useRef<HTMLTextAreaElement>(null);
  const fileInputRef = useRef<HTMLInputElement>(null);
  const commandHistoryRef = useRef<HTMLDivElement>(null);
  const [attachment, setAttachment] = useState<File | null>(null);
  const [command, setCommand] = useState('');

  const handleCommandRun = () => {
    if (command.trim().length) {
      setCommand('');
      setAttachment(null);
      onRun(command, attachment);
    }
  };

  const handleFileChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    if (e.target.files && e.target.files[0]) {
      setAttachment(e.target.files[0]);
    }
  };

  const removeAttachment = () => {
    setAttachment(null);
    if (fileInputRef.current) {
      fileInputRef.current.value = '';
    }
  };

  const selectCommand = (id: number) => {
    const command = commandsLists.find((cmd) => cmd.id === id);

    if (command) {
      setCommand(`/${command.name} `);
      textInputRef.current?.focus();
    }
  };

  const filteredCommandsLists = commandsLists.filter((cmd) => {
    if (command.length === 1) {
      return true;
    }

    return cmd.name.startsWith(command.slice(1));
  });

  const commandListVisible =
    command[0] === '/' && filteredCommandsLists.length > 0;

  useEffect(() => {
    if (commandHistoryRef.current) {
      commandHistoryRef.current.scrollTop =
        commandHistoryRef.current?.scrollHeight;
    }
  }, [commandsHistory.length]);

  return (
    <div className="relative flex h-full min-h-[50vh] flex-col rounded-xl bg-muted/50 p-4">
      <div className="max-h-[400px] overflow-y-auto" ref={commandHistoryRef}>
        {commandsHistory.map(({ content, origin }, index) => {
          return (
            <div
              key={index}
              className={`flex mb-2 ${
                origin === 'user' ? 'text-yellow-400' : 'text-green-400'
              }`}
            >
              <div className="mr-2 font-semibold">
                {origin === 'user' ? '$' : '#'}
              </div>
              <div>
                {origin === 'user' ? <CommandInput content={content} /> : null}
                {origin === 'system' ? (
                  <CommandOutput content={content} />
                ) : null}
              </div>
            </div>
          );
        })}
      </div>

      <Badge variant="outline" className="absolute right-3 top-3">
        Output
      </Badge>

      <div className="flex-1" />

      <form
        className="relative rounded-lg border bg-background focus-within:ring-1 focus-within:ring-ring"
        x-chunk="dashboard-03-chunk-1"
        onSubmit={(e) => {
          e.preventDefault();
          handleCommandRun();
        }}
      >
        {commandListVisible || attachment ? (
          <div className="absolute z-10 w-full left-0 bottom-full mb-4">
            {attachment && (
              <div className="w-full p-2 border bg-background rounded-md shadow-lg flex items-center">
                <AttachmentPreview attachment={attachment} details />
                <Button
                  onClick={removeAttachment}
                  variant="ghost"
                  size="icon"
                  className="text-green-400 hover:text-green-200 hover:bg-green-800"
                >
                  <X className="h-4 w-4" />
                </Button>
              </div>
            )}

            {commandListVisible && (
              <ul className="py-2 border bg-background rounded-md shadow-lg mt-2">
                {filteredCommandsLists.map((cmd) => (
                  <li
                    key={cmd.id}
                    className="px-4 py-2 hover:bg-green-900 cursor-pointer flex items-center"
                    onClick={() => selectCommand(cmd.id)}
                  >
                    <div>
                      <div className="font-medium text-green-400">
                        {cmd.name}
                      </div>
                      <div className="text-sm text-green-600">{cmd.desc}</div>
                    </div>
                  </li>
                ))}
              </ul>
            )}
          </div>
        ) : null}

        <div>
          <Label htmlFor="message" className="sr-only">
            Message
          </Label>
          <Textarea
            id="message"
            value={command}
            onChange={(e) => setCommand(e.target.value)}
            placeholder="Type your command here..."
            className="min-h-12 resize-none border-0 p-3 shadow-none focus-visible:ring-0"
            ref={textInputRef}
            onKeyUp={(e) => {
              if (e.key === 'Enter' && !e.shiftKey) {
                e.preventDefault();
              }
            }}
            onKeyDown={(e) => {
              if (e.key === 'Enter' && !e.shiftKey) {
                handleCommandRun();
                e.preventDefault();
              }
            }}
          />
          <input
            type="file"
            ref={fileInputRef}
            onChange={handleFileChange}
            className="hidden"
          />
          <div className="flex items-end p-3 pt-0">
            <Button
              type="button"
              onClick={() => fileInputRef.current?.click()}
              variant="outline"
              size="sm"
              className="bg-transparent ml-auto mr-3"
            >
              <Paperclip className="h-4 w-4" />
            </Button>
            <Button type="submit" size="sm" className=" gap-1.5">
              Run
              <CornerDownLeft className="size-3.5" />
            </Button>
          </div>
        </div>
      </form>
    </div>
  );
};
