declare type u8 = number
declare type u16 = number
declare type u32 = number
declare type u64 = number
declare type u128 = number
declare type usize = number
declare type i8 = number
declare type i16 = number
declare type i32 = number
declare type i64 = number
declare type i128 = number
declare type isize = number

declare type ArrayLengthMutationKeys = "splice" | "push" | "pop" | "shift" | "unshift"
declare type FixedLengthArray<T, L extends number, TObj = [T, ...Array<T>]> =
    Pick<TObj, Exclude<keyof TObj, ArrayLengthMutationKeys>>
    & {
        readonly length: L
        [ I : number ] : T
        [Symbol.iterator]: () => IterableIterator<T>
    }

export type Attr = { id: u32, name: string, val: AttrVal }
export type AttrVal = { tag: "Bool", value: boolean } | { tag: "Num", value: i32 } | { tag: "Principal", value: string } | { tag: "Text", value: string } | { tag: "Time", value: string } | { tag: "Date", value: string } | { tag: "DateTime", value: string } | { tag: "RGBA", value: [u8, u8, u8, u8] }
export type Attrs = [Attr[]]
export type Input = { tag: "Empty" } | { tag: "Text", value: string } | { tag: "File", value: [string, string, u8[]] }
export type Output = { tag: "Empty" } | { tag: "Text", value: string } | { tag: "File", value: [string, u8[]] } | { tag: "Blocks", value: Block[] }
export type Block = { tag: "Button" } | { tag: "Header", value: string } | { tag: "Text", value: string }
export type CommandInput = { tag: "Init" } | { tag: "Raw", value: Input } | { tag: "Id", value: [u32, Input] }
export type CommandOutput = { tag: "Empty" } | { tag: "Init", value: CommandDescriptor[] } | { tag: "Raw", value: Output } | { tag: "Id", value: [u32, Output] }
export type CommandDescriptor = { id: u32, name: string, desc: string }

export type Type = "Attr" | "AttrVal" | "Attrs" | "Input" | "Output" | "Block" | "CommandInput" | "CommandOutput" | "CommandDescriptor"
declare type ValueType<T extends Type> = T extends "Attr" ? Attr : T extends "AttrVal" ? AttrVal : T extends "Attrs" ? Attrs : T extends "Input" ? Input : T extends "Output" ? Output : T extends "Block" ? Block : T extends "CommandInput" ? CommandInput : T extends "CommandOutput" ? CommandOutput : T extends "CommandDescriptor" ? CommandDescriptor : void

export function serialize<T extends Type>(type: T, value: ValueType<T>): u8[]
export function deserialize<T extends Type>(type: T, bytes: u8[]): ValueType<T>
