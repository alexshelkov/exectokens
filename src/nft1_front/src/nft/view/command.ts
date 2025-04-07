import { serialize, deserialize } from '@/nft/bindings/core';

// type Type = command.Input;

const test: Input = { tag: 'Text', value: 12312555 };

const bytes = serialize('Input', test);

console.log(bytes);

const data = deserialize('Input', bytes);

console.log(data);

const b = [
  2, 1, 4, 116, 101, 115, 116, 0, 1, 0, 4, 116, 101, 115, 116, 2, 5, 116, 101,
  115, 116, 50, 0, 2, 0, 5, 116, 101, 115, 116, 50
];

const data2 = deserialize('CommandDescriptors', b);

console.log('data2', data2);

