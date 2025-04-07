const BITS_PER_BYTE = 8, BITS_PER_VARINT_BYTE = 7, U8_BYTES = 1, U16_BYTES = 2, U32_BYTES = 4, U64_BYTES = 8, U128_BYTES = 16

const de_zig_zag_signed = (n) => (n >> 1n) ^ (-(n & 0b1n))
const zig_zag = (n_bytes, n) => (n << 1n) ^ (n >> BigInt(n_bytes * BITS_PER_BYTE - 1))
const varint_max = (n_bytes) => Math.floor((n_bytes * BITS_PER_BYTE + (BITS_PER_BYTE - 1)) / BITS_PER_VARINT_BYTE)
const max_of_last_byte = (n_bytes) => (1 << (n_bytes * BITS_PER_BYTE) % 7) - 1
const to_number_if_safe = (n) => Number.MAX_SAFE_INTEGER < ((n < 0n) ? -n : n) ? n : Number(n)
const varint = (n_bytes, n) => { let value = BigInt(n), out = []; for (let i = 0; i < varint_max(n_bytes); i++) { out.push(Number(value & 0xFFn)); if (value < 128n) { return out } out[i] |= 0x80; value >>= 7n } }

class Serializer {
    constructor() { this.bytes = [] }
    finish = () => this.bytes
    push_n = (bytes) => bytes.forEach((byte) => this.bytes.push(byte))
    serialize_bool = (value) => this.serialize_number(U8_BYTES, false, value ? 1 : 0)
    serialize_number = (n_bytes, signed, value) => { if (n_bytes === U8_BYTES) { this.bytes.push(value) } else if (n_bytes === U16_BYTES || n_bytes === U32_BYTES || n_bytes === U64_BYTES || n_bytes === U128_BYTES) { const value_b = BigInt(value), buffer = signed ? varint(n_bytes, zig_zag(n_bytes, value_b)) : varint(n_bytes, value_b); this.push_n(buffer) } else { throw "byte count not supported" } }
    serialize_number_float = (n_bytes, value) => { const b_buffer = new ArrayBuffer(n_bytes), b_view = new DataView(b_buffer); if (n_bytes === U32_BYTES) { b_view.setFloat32(0, value, true) } else if (n_bytes === U64_BYTES) { b_view.setFloat64(0, value, true) } else { throw "byte count not supported" } this.push_n(new Uint8Array(b_buffer)) }
    serialize_string = (str) => { this.push_n(varint(U32_BYTES, str.length)); const bytes = []; for (const c of str) { bytes.push(c.charCodeAt(0)) } this.push_n(bytes) }
    serialize_array = (ser, array, len) => { if (len == undefined) this.push_n(varint(U32_BYTES, array.length)); array.slice(0, len != undefined ? len : array.length).forEach((v) => ser(this, v)) }
    serialize_string_key_map = (ser, obj) => { const entries = Object.entries(obj); this.push_n(varint(U32_BYTES, entries.length)); entries.forEach(([i, v]) => { this.serialize_string(i); ser(this, v) }) }
    serialize_map = (ser, map) => { this.push_n(varint(U32_BYTES, map.size)); map.forEach((v, k) => ser(this, k, v)) }
}

class Deserializer {
    constructor(bytes_in) { this.bytes = Array.from(bytes_in) }
    pop_next = () => { const next = this.bytes.shift(); if (next === undefined) { throw "input buffer too small" } return next }
    pop_n = (n) => { const bytes = Array(); for (let i = 0; i < n; i++) { bytes.push(this.bytes.shift()) } return bytes }
    get_uint8 = () => this.pop_next()
    try_take = (n_bytes) => { let out = 0n, v_max = varint_max(n_bytes); for (let i = 0; i < v_max; i++) { const val = this.pop_next(), carry = BigInt(val & 0x7F); out |= carry << BigInt(7 * i); if ((val & 0x80) === 0) { if (i === v_max - 1 && val > max_of_last_byte(n_bytes)) { throw "Bad Variant" } else return Number(out) } } throw "Bad Variant"; }
    deserialize_bool = () => { const byte = this.pop_next(); return byte === undefined ? undefined : byte > 0 ? true : false }
    deserialize_number = (n_bytes, signed) => { if (n_bytes === U8_BYTES) { return this.get_uint8() } else if (n_bytes === U16_BYTES || n_bytes === U32_BYTES || n_bytes === U64_BYTES || n_bytes === U128_BYTES) { const val = this.try_take(n_bytes); return to_number_if_safe(signed ? de_zig_zag_signed(val) : val) } else { throw "byte count not supported" } }
    deserialize_number_float = (n_bytes) => { const b_buffer = new ArrayBuffer(n_bytes), b_view = new DataView(b_buffer); this.pop_n(n_bytes).forEach((b, i) => b_view.setUint8(i, b)); if (n_bytes === U32_BYTES) { return b_view.getFloat32(0, true) } else if (n_bytes === U64_BYTES) { return b_view.getFloat64(0, true) } else { throw "byte count not supported" } }
    deserialize_string = () => { const str = this.pop_n(this.try_take(U32_BYTES)); return String.fromCharCode(...str) }
    deserialize_array = (des, len) => Array.from({length: len === undefined ? this.try_take(U32_BYTES) : len}, (v, i) => des(this))
    deserialize_string_key_map = (des) => { return [...Array(this.try_take(U32_BYTES))].reduce((prev) => { prev[this.deserialize_string()] = des(this); return prev }, {}) }
    deserialize_map = (des) => { return [...Array(this.try_take(U32_BYTES))].reduce((prev) => { const d = des(this); prev.set(d[0], d[1]); return prev }, new Map()) }
}

function serialize_ATTR(s, v) {
    s.serialize_number(U32_BYTES, false, v.id);
    s.serialize_string(v.name);
    serialize_ATTR_VAL(s, v.val);
}

function serialize_ATTR_VAL(s, v) {
    switch (v.tag) {
    case "Bool":
        s.serialize_number(U32_BYTES, false, 0);
        s.serialize_bool(v.value);
        break;
    case "Num":
        s.serialize_number(U32_BYTES, false, 1);
        s.serialize_number(U32_BYTES, true, v.value);
        break;
    case "Principal":
        s.serialize_number(U32_BYTES, false, 2);
        s.serialize_string(v.value);
        break;
    case "Text":
        s.serialize_number(U32_BYTES, false, 3);
        s.serialize_string(v.value);
        break;
    case "Time":
        s.serialize_number(U32_BYTES, false, 4);
        s.serialize_string(v.value);
        break;
    case "Date":
        s.serialize_number(U32_BYTES, false, 5);
        s.serialize_string(v.value);
        break;
    case "DateTime":
        s.serialize_number(U32_BYTES, false, 6);
        s.serialize_string(v.value);
        break;
    case "RGBA":
        s.serialize_number(U32_BYTES, false, 7);
        s.serialize_number(U8_BYTES, false, v.value[0]);
        s.serialize_number(U8_BYTES, false, v.value[1]);
        s.serialize_number(U8_BYTES, false, v.value[2]);
        s.serialize_number(U8_BYTES, false, v.value[3]);
        break;
    default:
        throw "variant not implemented"
    }
}

function serialize_ATTRS(s, v) {
    s.serialize_array((s, v) => serialize_ATTR(s, v), v[0]);
}

function serialize_INPUT(s, v) {
    switch (v.tag) {
    case "Empty":
        s.serialize_number(U32_BYTES, false, 0);
        break;
    case "Text":
        s.serialize_number(U32_BYTES, false, 1);
        s.serialize_string(v.value);
        break;
    case "File":
        s.serialize_number(U32_BYTES, false, 2);
        s.serialize_string(v.value[0]);
        s.serialize_string(v.value[1]);
        s.serialize_array((s, v) => s.serialize_number(U8_BYTES, false, v), v.value[2]);
        break;
    default:
        throw "variant not implemented"
    }
}

function serialize_OUTPUT(s, v) {
    switch (v.tag) {
    case "Empty":
        s.serialize_number(U32_BYTES, false, 0);
        break;
    case "Text":
        s.serialize_number(U32_BYTES, false, 1);
        s.serialize_string(v.value);
        break;
    case "File":
        s.serialize_number(U32_BYTES, false, 2);
        s.serialize_string(v.value[0]);
        s.serialize_array((s, v) => s.serialize_number(U8_BYTES, false, v), v.value[1]);
        break;
    case "Blocks":
        s.serialize_number(U32_BYTES, false, 3);
        s.serialize_array((s, v) => serialize_BLOCK(s, v), v.value);
        break;
    default:
        throw "variant not implemented"
    }
}

function serialize_BLOCK(s, v) {
    switch (v.tag) {
    case "Button":
        s.serialize_number(U32_BYTES, false, 0);
        break;
    case "Header":
        s.serialize_number(U32_BYTES, false, 1);
        s.serialize_string(v.value);
        break;
    case "Text":
        s.serialize_number(U32_BYTES, false, 2);
        s.serialize_string(v.value);
        break;
    default:
        throw "variant not implemented"
    }
}

function serialize_COMMAND_INPUT(s, v) {
    switch (v.tag) {
    case "Init":
        s.serialize_number(U32_BYTES, false, 0);
        break;
    case "Raw":
        s.serialize_number(U32_BYTES, false, 1);
        serialize_INPUT(s, v.value);
        break;
    case "Id":
        s.serialize_number(U32_BYTES, false, 2);
        s.serialize_number(U32_BYTES, false, v.value[0]);
        serialize_INPUT(s, v.value[1]);
        break;
    default:
        throw "variant not implemented"
    }
}

function serialize_COMMAND_OUTPUT(s, v) {
    switch (v.tag) {
    case "Empty":
        s.serialize_number(U32_BYTES, false, 0);
        break;
    case "Init":
        s.serialize_number(U32_BYTES, false, 1);
        s.serialize_array((s, v) => serialize_COMMAND_DESCRIPTOR(s, v), v.value);
        break;
    case "Raw":
        s.serialize_number(U32_BYTES, false, 2);
        serialize_OUTPUT(s, v.value);
        break;
    case "Id":
        s.serialize_number(U32_BYTES, false, 3);
        s.serialize_number(U32_BYTES, false, v.value[0]);
        serialize_OUTPUT(s, v.value[1]);
        break;
    default:
        throw "variant not implemented"
    }
}

function serialize_COMMAND_DESCRIPTOR(s, v) {
    s.serialize_number(U32_BYTES, false, v.id);
    s.serialize_string(v.name);
    s.serialize_string(v.desc);
}

function serialize(type, value) {
    if (!(typeof type === "string")) {
        throw "type must be a string";
    }
    const s = new Serializer();
    switch (type) {
    case "Attr":
        serialize_ATTR(s, value);
        break;
    case "AttrVal":
        serialize_ATTR_VAL(s, value);
        break;
    case "Attrs":
        serialize_ATTRS(s, value);
        break;
    case "Input":
        serialize_INPUT(s, value);
        break;
    case "Output":
        serialize_OUTPUT(s, value);
        break;
    case "Block":
        serialize_BLOCK(s, value);
        break;
    case "CommandInput":
        serialize_COMMAND_INPUT(s, value);
        break;
    case "CommandOutput":
        serialize_COMMAND_OUTPUT(s, value);
        break;
    case "CommandDescriptor":
        serialize_COMMAND_DESCRIPTOR(s, value);
        break;
    default:
        throw "type not implemented";
    }
    return s.finish();
}

export {
    serialize
};

function deserialize_ATTR(d) {
    return {
        id: d.deserialize_number(U32_BYTES, false),
        name: d.deserialize_string(),
        val: deserialize_ATTR_VAL(d)
    };
}

function deserialize_ATTR_VAL(d) {
    switch (d.deserialize_number(U32_BYTES, false)) {
    case 0:
        return {
            tag: "Bool",
            value: d.deserialize_bool()
        };
    case 1:
        return {
            tag: "Num",
            value: d.deserialize_number(U32_BYTES, true)
        };
    case 2:
        return {
            tag: "Principal",
            value: d.deserialize_string()
        };
    case 3:
        return {
            tag: "Text",
            value: d.deserialize_string()
        };
    case 4:
        return {
            tag: "Time",
            value: d.deserialize_string()
        };
    case 5:
        return {
            tag: "Date",
            value: d.deserialize_string()
        };
    case 6:
        return {
            tag: "DateTime",
            value: d.deserialize_string()
        };
    case 7:
        return {
            tag: "RGBA",
            value: [
                d.deserialize_number(U8_BYTES, false),
                d.deserialize_number(U8_BYTES, false),
                d.deserialize_number(U8_BYTES, false),
                d.deserialize_number(U8_BYTES, false)
            ]
        };
    default:
        throw "variant not implemented"
    }
}

function deserialize_ATTRS(d) {
    return [
        d.deserialize_array(() => deserialize_ATTR(d))
    ];
}

function deserialize_INPUT(d) {
    switch (d.deserialize_number(U32_BYTES, false)) {
    case 0:
        return {
            tag: "Empty"
        };
    case 1:
        return {
            tag: "Text",
            value: d.deserialize_string()
        };
    case 2:
        return {
            tag: "File",
            value: [
                d.deserialize_string(),
                d.deserialize_string(),
                d.deserialize_array(() => d.deserialize_number(U8_BYTES, false))
            ]
        };
    default:
        throw "variant not implemented"
    }
}

function deserialize_OUTPUT(d) {
    switch (d.deserialize_number(U32_BYTES, false)) {
    case 0:
        return {
            tag: "Empty"
        };
    case 1:
        return {
            tag: "Text",
            value: d.deserialize_string()
        };
    case 2:
        return {
            tag: "File",
            value: [
                d.deserialize_string(),
                d.deserialize_array(() => d.deserialize_number(U8_BYTES, false))
            ]
        };
    case 3:
        return {
            tag: "Blocks",
            value: d.deserialize_array(() => deserialize_BLOCK(d))
        };
    default:
        throw "variant not implemented"
    }
}

function deserialize_BLOCK(d) {
    switch (d.deserialize_number(U32_BYTES, false)) {
    case 0:
        return {
            tag: "Button"
        };
    case 1:
        return {
            tag: "Header",
            value: d.deserialize_string()
        };
    case 2:
        return {
            tag: "Text",
            value: d.deserialize_string()
        };
    default:
        throw "variant not implemented"
    }
}

function deserialize_COMMAND_INPUT(d) {
    switch (d.deserialize_number(U32_BYTES, false)) {
    case 0:
        return {
            tag: "Init"
        };
    case 1:
        return {
            tag: "Raw",
            value: deserialize_INPUT(d)
        };
    case 2:
        return {
            tag: "Id",
            value: [
                d.deserialize_number(U32_BYTES, false),
                deserialize_INPUT(d)
            ]
        };
    default:
        throw "variant not implemented"
    }
}

function deserialize_COMMAND_OUTPUT(d) {
    switch (d.deserialize_number(U32_BYTES, false)) {
    case 0:
        return {
            tag: "Empty"
        };
    case 1:
        return {
            tag: "Init",
            value: d.deserialize_array(() => deserialize_COMMAND_DESCRIPTOR(d))
        };
    case 2:
        return {
            tag: "Raw",
            value: deserialize_OUTPUT(d)
        };
    case 3:
        return {
            tag: "Id",
            value: [
                d.deserialize_number(U32_BYTES, false),
                deserialize_OUTPUT(d)
            ]
        };
    default:
        throw "variant not implemented"
    }
}

function deserialize_COMMAND_DESCRIPTOR(d) {
    return {
        id: d.deserialize_number(U32_BYTES, false),
        name: d.deserialize_string(),
        desc: d.deserialize_string()
    };
}

function deserialize(type, bytes) {
    if (!(typeof type === "string")) {
        throw "type must be a string";
    }
    const d = new Deserializer(bytes);
    switch (type) {
    case "Attr":
        return deserialize_ATTR(d);
    case "AttrVal":
        return deserialize_ATTR_VAL(d);
    case "Attrs":
        return deserialize_ATTRS(d);
    case "Input":
        return deserialize_INPUT(d);
    case "Output":
        return deserialize_OUTPUT(d);
    case "Block":
        return deserialize_BLOCK(d);
    case "CommandInput":
        return deserialize_COMMAND_INPUT(d);
    case "CommandOutput":
        return deserialize_COMMAND_OUTPUT(d);
    case "CommandDescriptor":
        return deserialize_COMMAND_DESCRIPTOR(d);
    default:
        throw "type not implemented";
    }
}

export {
    deserialize
};
