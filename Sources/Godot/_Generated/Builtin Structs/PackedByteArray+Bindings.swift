//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

internal enum PackedByteArrayBindings {
    static private var areBindingsLoaded = false

    internal static func loadBindings() {
        precondition(!areBindingsLoaded, "PackedByteArray bindings are already loaded.")
        areBindingsLoaded = true
        destructor = GodotExtension.Interface.variantGetPtrDestructor(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY)!
        constructor = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, 0)!
        constructorFromPackedByteArray = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, 1)!
        constructorFromGodotArray = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, 2)!
        operatorEqualVariant = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, GDEXTENSION_VARIANT_TYPE_NIL)!
        operatorNotEqualVariant = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, GDEXTENSION_VARIANT_TYPE_NIL)!
        operatorNot = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT, GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, GDEXTENSION_VARIANT_TYPE_NIL)!
        operatorInGodotdictionary = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
        operatorInGodotarray = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, GDEXTENSION_VARIANT_TYPE_ARRAY)!
        operatorEqualPackedbytearray = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY)!
        operatorNotEqualPackedbytearray = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY)!
        operatorAddPackedbytearray = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_ADD, GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY)!
        indexedSetter = GodotExtension.Interface.variantGetPtrIndexedSetter(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY)!
        indexedGetter = GodotExtension.Interface.variantGetPtrIndexedGetter(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY)!
        methodSize = GodotStringName(swiftStaticString: "size").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 3173160232)!
        }
        methodIsEmpty = GodotStringName(swiftStaticString: "is_empty").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 3918633141)!
        }
        methodSet = GodotStringName(swiftStaticString: "set").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 3638975848)!
        }
        methodPushBack = GodotStringName(swiftStaticString: "push_back").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 694024632)!
        }
        methodAppend = GodotStringName(swiftStaticString: "append").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 694024632)!
        }
        methodAppendArray = GodotStringName(swiftStaticString: "append_array").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 791097111)!
        }
        methodRemoveAt = GodotStringName(swiftStaticString: "remove_at").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 2823966027)!
        }
        methodInsert = GodotStringName(swiftStaticString: "insert").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 1487112728)!
        }
        methodFill = GodotStringName(swiftStaticString: "fill").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 2823966027)!
        }
        methodResize = GodotStringName(swiftStaticString: "resize").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 848867239)!
        }
        methodClear = GodotStringName(swiftStaticString: "clear").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 3218959716)!
        }
        methodHas = GodotStringName(swiftStaticString: "has").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 931488181)!
        }
        methodReverse = GodotStringName(swiftStaticString: "reverse").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 3218959716)!
        }
        methodSlice = GodotStringName(swiftStaticString: "slice").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 2278869132)!
        }
        methodSort = GodotStringName(swiftStaticString: "sort").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 3218959716)!
        }
        methodBsearch = GodotStringName(swiftStaticString: "bsearch").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 3380005890)!
        }
        methodDuplicate = GodotStringName(swiftStaticString: "duplicate").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 851781288)!
        }
        methodFind = GodotStringName(swiftStaticString: "find").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 2984303840)!
        }
        methodRfind = GodotStringName(swiftStaticString: "rfind").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 2984303840)!
        }
        methodCount = GodotStringName(swiftStaticString: "count").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 4103005248)!
        }
        methodGetStringFromAscii = GodotStringName(swiftStaticString: "get_string_from_ascii").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 3942272618)!
        }
        methodGetStringFromUtf8 = GodotStringName(swiftStaticString: "get_string_from_utf8").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 3942272618)!
        }
        methodGetStringFromUtf16 = GodotStringName(swiftStaticString: "get_string_from_utf16").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 3942272618)!
        }
        methodGetStringFromUtf32 = GodotStringName(swiftStaticString: "get_string_from_utf32").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 3942272618)!
        }
        methodGetStringFromWchar = GodotStringName(swiftStaticString: "get_string_from_wchar").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 3942272618)!
        }
        methodHexEncode = GodotStringName(swiftStaticString: "hex_encode").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 3942272618)!
        }
        methodCompress = GodotStringName(swiftStaticString: "compress").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 1845905913)!
        }
        methodDecompress = GodotStringName(swiftStaticString: "decompress").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 2278869132)!
        }
        methodDecompressDynamic = GodotStringName(swiftStaticString: "decompress_dynamic").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 2278869132)!
        }
        methodDecodeU8 = GodotStringName(swiftStaticString: "decode_u8").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 4103005248)!
        }
        methodDecodeS8 = GodotStringName(swiftStaticString: "decode_s8").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 4103005248)!
        }
        methodDecodeU16 = GodotStringName(swiftStaticString: "decode_u16").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 4103005248)!
        }
        methodDecodeS16 = GodotStringName(swiftStaticString: "decode_s16").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 4103005248)!
        }
        methodDecodeU32 = GodotStringName(swiftStaticString: "decode_u32").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 4103005248)!
        }
        methodDecodeS32 = GodotStringName(swiftStaticString: "decode_s32").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 4103005248)!
        }
        methodDecodeU64 = GodotStringName(swiftStaticString: "decode_u64").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 4103005248)!
        }
        methodDecodeS64 = GodotStringName(swiftStaticString: "decode_s64").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 4103005248)!
        }
        methodDecodeHalf = GodotStringName(swiftStaticString: "decode_half").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 1401583798)!
        }
        methodDecodeFloat = GodotStringName(swiftStaticString: "decode_float").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 1401583798)!
        }
        methodDecodeDouble = GodotStringName(swiftStaticString: "decode_double").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 1401583798)!
        }
        methodHasEncodedVar = GodotStringName(swiftStaticString: "has_encoded_var").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 2914632957)!
        }
        methodDecodeVar = GodotStringName(swiftStaticString: "decode_var").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 1740420038)!
        }
        methodDecodeVarSize = GodotStringName(swiftStaticString: "decode_var_size").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 954237325)!
        }
        methodToInt32Array = GodotStringName(swiftStaticString: "to_int32_array").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 3158844420)!
        }
        methodToInt64Array = GodotStringName(swiftStaticString: "to_int64_array").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 1961294120)!
        }
        methodToFloat32Array = GodotStringName(swiftStaticString: "to_float32_array").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 3575107827)!
        }
        methodToFloat64Array = GodotStringName(swiftStaticString: "to_float64_array").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 1627308337)!
        }
        methodEncodeU8 = GodotStringName(swiftStaticString: "encode_u8").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 3638975848)!
        }
        methodEncodeS8 = GodotStringName(swiftStaticString: "encode_s8").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 3638975848)!
        }
        methodEncodeU16 = GodotStringName(swiftStaticString: "encode_u16").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 3638975848)!
        }
        methodEncodeS16 = GodotStringName(swiftStaticString: "encode_s16").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 3638975848)!
        }
        methodEncodeU32 = GodotStringName(swiftStaticString: "encode_u32").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 3638975848)!
        }
        methodEncodeS32 = GodotStringName(swiftStaticString: "encode_s32").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 3638975848)!
        }
        methodEncodeU64 = GodotStringName(swiftStaticString: "encode_u64").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 3638975848)!
        }
        methodEncodeS64 = GodotStringName(swiftStaticString: "encode_s64").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 3638975848)!
        }
        methodEncodeHalf = GodotStringName(swiftStaticString: "encode_half").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 1113000516)!
        }
        methodEncodeFloat = GodotStringName(swiftStaticString: "encode_float").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 1113000516)!
        }
        methodEncodeDouble = GodotStringName(swiftStaticString: "encode_double").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 1113000516)!
        }
        methodEncodeVar = GodotStringName(swiftStaticString: "encode_var").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 2604460497)!
        }
    }

    static private (set) var destructor: GDExtensionPtrDestructor!

    static private (set) var constructor: GDExtensionPtrConstructor!

    static private (set) var constructorFromPackedByteArray: GDExtensionPtrConstructor!

    static private (set) var constructorFromGodotArray: GDExtensionPtrConstructor!

    static private (set) var operatorEqualVariant: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorNotEqualVariant: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorNot: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorInGodotdictionary: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorInGodotarray: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorEqualPackedbytearray: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorNotEqualPackedbytearray: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorAddPackedbytearray: GDExtensionPtrOperatorEvaluator!

    static private (set) var indexedSetter: GDExtensionPtrIndexedSetter!

    static private (set) var indexedGetter: GDExtensionPtrIndexedGetter!

    static private (set) var methodSize: GDExtensionPtrBuiltInMethod!

    static private (set) var methodIsEmpty: GDExtensionPtrBuiltInMethod!

    static private (set) var methodSet: GDExtensionPtrBuiltInMethod!

    static private (set) var methodPushBack: GDExtensionPtrBuiltInMethod!

    static private (set) var methodAppend: GDExtensionPtrBuiltInMethod!

    static private (set) var methodAppendArray: GDExtensionPtrBuiltInMethod!

    static private (set) var methodRemoveAt: GDExtensionPtrBuiltInMethod!

    static private (set) var methodInsert: GDExtensionPtrBuiltInMethod!

    static private (set) var methodFill: GDExtensionPtrBuiltInMethod!

    static private (set) var methodResize: GDExtensionPtrBuiltInMethod!

    static private (set) var methodClear: GDExtensionPtrBuiltInMethod!

    static private (set) var methodHas: GDExtensionPtrBuiltInMethod!

    static private (set) var methodReverse: GDExtensionPtrBuiltInMethod!

    static private (set) var methodSlice: GDExtensionPtrBuiltInMethod!

    static private (set) var methodSort: GDExtensionPtrBuiltInMethod!

    static private (set) var methodBsearch: GDExtensionPtrBuiltInMethod!

    static private (set) var methodDuplicate: GDExtensionPtrBuiltInMethod!

    static private (set) var methodFind: GDExtensionPtrBuiltInMethod!

    static private (set) var methodRfind: GDExtensionPtrBuiltInMethod!

    static private (set) var methodCount: GDExtensionPtrBuiltInMethod!

    static private (set) var methodGetStringFromAscii: GDExtensionPtrBuiltInMethod!

    static private (set) var methodGetStringFromUtf8: GDExtensionPtrBuiltInMethod!

    static private (set) var methodGetStringFromUtf16: GDExtensionPtrBuiltInMethod!

    static private (set) var methodGetStringFromUtf32: GDExtensionPtrBuiltInMethod!

    static private (set) var methodGetStringFromWchar: GDExtensionPtrBuiltInMethod!

    static private (set) var methodHexEncode: GDExtensionPtrBuiltInMethod!

    static private (set) var methodCompress: GDExtensionPtrBuiltInMethod!

    static private (set) var methodDecompress: GDExtensionPtrBuiltInMethod!

    static private (set) var methodDecompressDynamic: GDExtensionPtrBuiltInMethod!

    static private (set) var methodDecodeU8: GDExtensionPtrBuiltInMethod!

    static private (set) var methodDecodeS8: GDExtensionPtrBuiltInMethod!

    static private (set) var methodDecodeU16: GDExtensionPtrBuiltInMethod!

    static private (set) var methodDecodeS16: GDExtensionPtrBuiltInMethod!

    static private (set) var methodDecodeU32: GDExtensionPtrBuiltInMethod!

    static private (set) var methodDecodeS32: GDExtensionPtrBuiltInMethod!

    static private (set) var methodDecodeU64: GDExtensionPtrBuiltInMethod!

    static private (set) var methodDecodeS64: GDExtensionPtrBuiltInMethod!

    static private (set) var methodDecodeHalf: GDExtensionPtrBuiltInMethod!

    static private (set) var methodDecodeFloat: GDExtensionPtrBuiltInMethod!

    static private (set) var methodDecodeDouble: GDExtensionPtrBuiltInMethod!

    static private (set) var methodHasEncodedVar: GDExtensionPtrBuiltInMethod!

    static private (set) var methodDecodeVar: GDExtensionPtrBuiltInMethod!

    static private (set) var methodDecodeVarSize: GDExtensionPtrBuiltInMethod!

    static private (set) var methodToInt32Array: GDExtensionPtrBuiltInMethod!

    static private (set) var methodToInt64Array: GDExtensionPtrBuiltInMethod!

    static private (set) var methodToFloat32Array: GDExtensionPtrBuiltInMethod!

    static private (set) var methodToFloat64Array: GDExtensionPtrBuiltInMethod!

    static private (set) var methodEncodeU8: GDExtensionPtrBuiltInMethod!

    static private (set) var methodEncodeS8: GDExtensionPtrBuiltInMethod!

    static private (set) var methodEncodeU16: GDExtensionPtrBuiltInMethod!

    static private (set) var methodEncodeS16: GDExtensionPtrBuiltInMethod!

    static private (set) var methodEncodeU32: GDExtensionPtrBuiltInMethod!

    static private (set) var methodEncodeS32: GDExtensionPtrBuiltInMethod!

    static private (set) var methodEncodeU64: GDExtensionPtrBuiltInMethod!

    static private (set) var methodEncodeS64: GDExtensionPtrBuiltInMethod!

    static private (set) var methodEncodeHalf: GDExtensionPtrBuiltInMethod!

    static private (set) var methodEncodeFloat: GDExtensionPtrBuiltInMethod!

    static private (set) var methodEncodeDouble: GDExtensionPtrBuiltInMethod!

    static private (set) var methodEncodeVar: GDExtensionPtrBuiltInMethod!
}

extension PackedByteArray {
    static internal func makeOpaque(
        useDestructor: Bool = true
    ) -> Opaque {
        Opaque(size: 16, destructorPtr: useDestructor ? PackedByteArrayBindings.destructor : nil)
    }

    static internal func make() -> Self {
        let __temporary: Opaque = makeOpaque()
        __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
            PackedByteArrayBindings.constructor(__ptr___temporary, nil)
        }
        return Self.init(opaque: __temporary)
    }

    static internal func make(
        from: Godot.PackedByteArray
    ) -> Self {
        let __temporary: Opaque = makeOpaque()
        withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
            withUnsafeArgumentPackPointer(__ptr_from) { __accessPtr in
                __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                    PackedByteArrayBindings.constructorFromPackedByteArray(__ptr___temporary, __accessPtr)
                }
            }
        }
        return Self.init(opaque: __temporary)
    }

    static internal func make<Value: Variant.Storable>(
        from: Godot.GodotArray<Value>
    ) -> Self {
        let __temporary: Opaque = makeOpaque()
        withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
            withUnsafeArgumentPackPointer(__ptr_from) { __accessPtr in
                __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                    PackedByteArrayBindings.constructorFromGodotArray(__ptr___temporary, __accessPtr)
                }
            }
        }
        return Self.init(opaque: __temporary)
    }

    static internal func _operatorEqual<Value: Variant.Storable>(
        _ lhs: Godot.PackedByteArray,
        _ rhs: Value
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                Godot.Variant.withStorageUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    PackedByteArrayBindings.operatorEqualVariant(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorNotEqual<Value: Variant.Storable>(
        _ lhs: Godot.PackedByteArray,
        _ rhs: Value
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                Godot.Variant.withStorageUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    PackedByteArrayBindings.operatorNotEqualVariant(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorNot(
        _ lhs: Godot.PackedByteArray
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                PackedByteArrayBindings.operatorNot(__ptr_lhs, nil, __temporary)
            }
        }
    }

    static internal func _operatorIn<Value1: Variant.Storable, Value2: Variant.Storable>(
        _ lhs: Godot.PackedByteArray,
        _ rhs: Godot.GodotDictionary<Value1, Value2>
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    PackedByteArrayBindings.operatorInGodotdictionary(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorIn<Value: Variant.Storable>(
        _ lhs: Godot.PackedByteArray,
        _ rhs: Godot.GodotArray<Value>
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    PackedByteArrayBindings.operatorInGodotarray(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorEqual(
        _ lhs: Godot.PackedByteArray,
        _ rhs: Godot.PackedByteArray
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    PackedByteArrayBindings.operatorEqualPackedbytearray(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorNotEqual(
        _ lhs: Godot.PackedByteArray,
        _ rhs: Godot.PackedByteArray
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    PackedByteArrayBindings.operatorNotEqualPackedbytearray(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorAdd(
        _ lhs: Godot.PackedByteArray,
        _ rhs: Godot.PackedByteArray
    ) -> Godot.PackedByteArray {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    PackedByteArrayBindings.operatorAddPackedbytearray(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    internal func _getValue(
        at index: GDExtensionInt
    ) -> Int {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                PackedByteArrayBindings.indexedGetter(__ptr_self, index, __temporary)
            }
        }
    }

    mutating internal func _setValue(
        _ value: Int,
        at index: GDExtensionInt
    ) {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
            withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                PackedByteArrayBindings.indexedSetter(__ptr_self, index, __ptr_value)
            }
        }
    }

    internal func _size() -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                PackedByteArrayBindings.methodSize(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _isEmpty() -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                PackedByteArrayBindings.methodIsEmpty(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    mutating internal func _set(
        index: Int,
        value: Int
    ) {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeRawPointer(to: index) { __ptr_index in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_index, __ptr_value) { __accessPtr in
                    withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                        PackedByteArrayBindings.methodSet(__ptr_self, __accessPtr, nil, 2)
                    }
                }
            }
        }
    }

    @discardableResult
    mutating internal func _pushBack(
        value: Int
    ) -> Bool {
        makeUniqueIfSharedOpaque()
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
                    withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                        PackedByteArrayBindings.methodPushBack(__ptr_self, __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    @discardableResult
    mutating internal func _append(
        value: Int
    ) -> Bool {
        makeUniqueIfSharedOpaque()
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
                    withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                        PackedByteArrayBindings.methodAppend(__ptr_self, __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    mutating internal func _appendArray(
        _ array: Godot.PackedByteArray
    ) {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeRawPointer(to: array) { __ptr_array in
            withUnsafeArgumentPackPointer(__ptr_array) { __accessPtr in
                withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                    PackedByteArrayBindings.methodAppendArray(__ptr_self, __accessPtr, nil, 1)
                }
            }
        }
    }

    mutating internal func _removeAt(
        index: Int
    ) {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeRawPointer(to: index) { __ptr_index in
            withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
                withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                    PackedByteArrayBindings.methodRemoveAt(__ptr_self, __accessPtr, nil, 1)
                }
            }
        }
    }

    @discardableResult
    mutating internal func _insert(
        atIndex index: Int,
        value: Int
    ) -> Int {
        makeUniqueIfSharedOpaque()
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: index) { __ptr_index in
                withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                    withUnsafeArgumentPackPointer(__ptr_index, __ptr_value) { __accessPtr in
                        withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                            PackedByteArrayBindings.methodInsert(__ptr_self, __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }

    mutating internal func _fill(
        value: Int
    ) {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
            withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
                withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                    PackedByteArrayBindings.methodFill(__ptr_self, __accessPtr, nil, 1)
                }
            }
        }
    }

    @discardableResult
    mutating internal func _resize(
        newSize: Int
    ) -> Int {
        makeUniqueIfSharedOpaque()
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: newSize) { __ptr_newSize in
                withUnsafeArgumentPackPointer(__ptr_newSize) { __accessPtr in
                    withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                        PackedByteArrayBindings.methodResize(__ptr_self, __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    mutating internal func _clear() {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
            PackedByteArrayBindings.methodClear(__ptr_self, nil, nil, 0)
        }
    }

    internal func _has(
        value: Int
    ) -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        PackedByteArrayBindings.methodHas(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    mutating internal func _reverse() {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
            PackedByteArrayBindings.methodReverse(__ptr_self, nil, nil, 0)
        }
    }

    internal func _slice(
        begin: Int,
        end: Int = 2147483647
    ) -> Godot.PackedByteArray {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: begin) { __ptr_begin in
                withTransferrableUnsafeRawPointer(to: end) { __ptr_end in
                    withUnsafeArgumentPackPointer(__ptr_begin, __ptr_end) { __accessPtr in
                        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                            PackedByteArrayBindings.methodSlice(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }

    mutating internal func _sort() {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
            PackedByteArrayBindings.methodSort(__ptr_self, nil, nil, 0)
        }
    }

    @discardableResult
    mutating internal func _bsearch(
        value: Int,
        before: Bool = true
    ) -> Int {
        makeUniqueIfSharedOpaque()
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withTransferrableUnsafeRawPointer(to: before) { __ptr_before in
                    withUnsafeArgumentPackPointer(__ptr_value, __ptr_before) { __accessPtr in
                        withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                            PackedByteArrayBindings.methodBsearch(__ptr_self, __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }

    @discardableResult
    mutating internal func _duplicate() -> Godot.PackedByteArray {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                PackedByteArrayBindings.methodDuplicate(__ptr_self, nil, __temporary, 0)
            }
        }
    }

    internal func _find(
        value: Int,
        from: Int = 0
    ) -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
                    withUnsafeArgumentPackPointer(__ptr_value, __ptr_from) { __accessPtr in
                        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                            PackedByteArrayBindings.methodFind(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }

    internal func _rfind(
        value: Int,
        from: Int = -1
    ) -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
                    withUnsafeArgumentPackPointer(__ptr_value, __ptr_from) { __accessPtr in
                        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                            PackedByteArrayBindings.methodRfind(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }

    internal func _count(
        value: Int
    ) -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        PackedByteArrayBindings.methodCount(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _stringFromAscii() -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                PackedByteArrayBindings.methodGetStringFromAscii(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _stringFromUtf8() -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                PackedByteArrayBindings.methodGetStringFromUtf8(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _stringFromUtf16() -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                PackedByteArrayBindings.methodGetStringFromUtf16(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _stringFromUtf32() -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                PackedByteArrayBindings.methodGetStringFromUtf32(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _stringFromWchar() -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                PackedByteArrayBindings.methodGetStringFromWchar(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _hexEncode() -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                PackedByteArrayBindings.methodHexEncode(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _compress(
        compressionMode: Int = 0
    ) -> Godot.PackedByteArray {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: compressionMode) { __ptr_compressionMode in
                withUnsafeArgumentPackPointer(__ptr_compressionMode) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        PackedByteArrayBindings.methodCompress(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _decompress(
        bufferSize: Int,
        compressionMode: Int = 0
    ) -> Godot.PackedByteArray {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: bufferSize) { __ptr_bufferSize in
                withTransferrableUnsafeRawPointer(to: compressionMode) { __ptr_compressionMode in
                    withUnsafeArgumentPackPointer(__ptr_bufferSize, __ptr_compressionMode) { __accessPtr in
                        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                            PackedByteArrayBindings.methodDecompress(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }

    internal func _decompressDynamic(
        maxOutputSize: Int,
        compressionMode: Int = 0
    ) -> Godot.PackedByteArray {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: maxOutputSize) { __ptr_maxOutputSize in
                withTransferrableUnsafeRawPointer(to: compressionMode) { __ptr_compressionMode in
                    withUnsafeArgumentPackPointer(__ptr_maxOutputSize, __ptr_compressionMode) { __accessPtr in
                        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                            PackedByteArrayBindings.methodDecompressDynamic(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }

    internal func _decodeU8(
        byteOffset: Int
    ) -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: byteOffset) { __ptr_byteOffset in
                withUnsafeArgumentPackPointer(__ptr_byteOffset) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        PackedByteArrayBindings.methodDecodeU8(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _decodeS8(
        byteOffset: Int
    ) -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: byteOffset) { __ptr_byteOffset in
                withUnsafeArgumentPackPointer(__ptr_byteOffset) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        PackedByteArrayBindings.methodDecodeS8(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _decodeU16(
        byteOffset: Int
    ) -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: byteOffset) { __ptr_byteOffset in
                withUnsafeArgumentPackPointer(__ptr_byteOffset) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        PackedByteArrayBindings.methodDecodeU16(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _decodeS16(
        byteOffset: Int
    ) -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: byteOffset) { __ptr_byteOffset in
                withUnsafeArgumentPackPointer(__ptr_byteOffset) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        PackedByteArrayBindings.methodDecodeS16(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _decodeU32(
        byteOffset: Int
    ) -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: byteOffset) { __ptr_byteOffset in
                withUnsafeArgumentPackPointer(__ptr_byteOffset) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        PackedByteArrayBindings.methodDecodeU32(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _decodeS32(
        byteOffset: Int
    ) -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: byteOffset) { __ptr_byteOffset in
                withUnsafeArgumentPackPointer(__ptr_byteOffset) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        PackedByteArrayBindings.methodDecodeS32(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _decodeU64(
        byteOffset: Int
    ) -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: byteOffset) { __ptr_byteOffset in
                withUnsafeArgumentPackPointer(__ptr_byteOffset) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        PackedByteArrayBindings.methodDecodeU64(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _decodeS64(
        byteOffset: Int
    ) -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: byteOffset) { __ptr_byteOffset in
                withUnsafeArgumentPackPointer(__ptr_byteOffset) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        PackedByteArrayBindings.methodDecodeS64(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _decodeHalf(
        byteOffset: Int
    ) -> Double {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: byteOffset) { __ptr_byteOffset in
                withUnsafeArgumentPackPointer(__ptr_byteOffset) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        PackedByteArrayBindings.methodDecodeHalf(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _decodeFloat(
        byteOffset: Int
    ) -> Double {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: byteOffset) { __ptr_byteOffset in
                withUnsafeArgumentPackPointer(__ptr_byteOffset) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        PackedByteArrayBindings.methodDecodeFloat(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _decodeDouble(
        byteOffset: Int
    ) -> Double {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: byteOffset) { __ptr_byteOffset in
                withUnsafeArgumentPackPointer(__ptr_byteOffset) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        PackedByteArrayBindings.methodDecodeDouble(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _hasEncodedVar(
        byteOffset: Int,
        allowObjects: Bool = false
    ) -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: byteOffset) { __ptr_byteOffset in
                withTransferrableUnsafeRawPointer(to: allowObjects) { __ptr_allowObjects in
                    withUnsafeArgumentPackPointer(__ptr_byteOffset, __ptr_allowObjects) { __accessPtr in
                        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                            PackedByteArrayBindings.methodHasEncodedVar(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }

    internal func _decodeVar(
        byteOffset: Int,
        allowObjects: Bool = false
    ) -> Godot.Variant.Storage {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: byteOffset) { __ptr_byteOffset in
                withTransferrableUnsafeRawPointer(to: allowObjects) { __ptr_allowObjects in
                    withUnsafeArgumentPackPointer(__ptr_byteOffset, __ptr_allowObjects) { __accessPtr in
                        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                            PackedByteArrayBindings.methodDecodeVar(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }

    internal func _decodeVarSize(
        byteOffset: Int,
        allowObjects: Bool = false
    ) -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: byteOffset) { __ptr_byteOffset in
                withTransferrableUnsafeRawPointer(to: allowObjects) { __ptr_allowObjects in
                    withUnsafeArgumentPackPointer(__ptr_byteOffset, __ptr_allowObjects) { __accessPtr in
                        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                            PackedByteArrayBindings.methodDecodeVarSize(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }

    internal func _toInt32Array() -> Godot.PackedInt32Array {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                PackedByteArrayBindings.methodToInt32Array(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _toInt64Array() -> Godot.PackedInt64Array {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                PackedByteArrayBindings.methodToInt64Array(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _toFloat32Array() -> Godot.PackedFloat32Array {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                PackedByteArrayBindings.methodToFloat32Array(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _toFloat64Array() -> Godot.PackedFloat64Array {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                PackedByteArrayBindings.methodToFloat64Array(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    mutating internal func _encodeU8(
        byteOffset: Int,
        value: Int
    ) {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeRawPointer(to: byteOffset) { __ptr_byteOffset in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_byteOffset, __ptr_value) { __accessPtr in
                    withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                        PackedByteArrayBindings.methodEncodeU8(__ptr_self, __accessPtr, nil, 2)
                    }
                }
            }
        }
    }

    mutating internal func _encodeS8(
        byteOffset: Int,
        value: Int
    ) {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeRawPointer(to: byteOffset) { __ptr_byteOffset in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_byteOffset, __ptr_value) { __accessPtr in
                    withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                        PackedByteArrayBindings.methodEncodeS8(__ptr_self, __accessPtr, nil, 2)
                    }
                }
            }
        }
    }

    mutating internal func _encodeU16(
        byteOffset: Int,
        value: Int
    ) {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeRawPointer(to: byteOffset) { __ptr_byteOffset in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_byteOffset, __ptr_value) { __accessPtr in
                    withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                        PackedByteArrayBindings.methodEncodeU16(__ptr_self, __accessPtr, nil, 2)
                    }
                }
            }
        }
    }

    mutating internal func _encodeS16(
        byteOffset: Int,
        value: Int
    ) {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeRawPointer(to: byteOffset) { __ptr_byteOffset in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_byteOffset, __ptr_value) { __accessPtr in
                    withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                        PackedByteArrayBindings.methodEncodeS16(__ptr_self, __accessPtr, nil, 2)
                    }
                }
            }
        }
    }

    mutating internal func _encodeU32(
        byteOffset: Int,
        value: Int
    ) {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeRawPointer(to: byteOffset) { __ptr_byteOffset in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_byteOffset, __ptr_value) { __accessPtr in
                    withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                        PackedByteArrayBindings.methodEncodeU32(__ptr_self, __accessPtr, nil, 2)
                    }
                }
            }
        }
    }

    mutating internal func _encodeS32(
        byteOffset: Int,
        value: Int
    ) {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeRawPointer(to: byteOffset) { __ptr_byteOffset in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_byteOffset, __ptr_value) { __accessPtr in
                    withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                        PackedByteArrayBindings.methodEncodeS32(__ptr_self, __accessPtr, nil, 2)
                    }
                }
            }
        }
    }

    mutating internal func _encodeU64(
        byteOffset: Int,
        value: Int
    ) {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeRawPointer(to: byteOffset) { __ptr_byteOffset in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_byteOffset, __ptr_value) { __accessPtr in
                    withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                        PackedByteArrayBindings.methodEncodeU64(__ptr_self, __accessPtr, nil, 2)
                    }
                }
            }
        }
    }

    mutating internal func _encodeS64(
        byteOffset: Int,
        value: Int
    ) {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeRawPointer(to: byteOffset) { __ptr_byteOffset in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_byteOffset, __ptr_value) { __accessPtr in
                    withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                        PackedByteArrayBindings.methodEncodeS64(__ptr_self, __accessPtr, nil, 2)
                    }
                }
            }
        }
    }

    mutating internal func _encodeHalf(
        byteOffset: Int,
        value: Double
    ) {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeRawPointer(to: byteOffset) { __ptr_byteOffset in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_byteOffset, __ptr_value) { __accessPtr in
                    withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                        PackedByteArrayBindings.methodEncodeHalf(__ptr_self, __accessPtr, nil, 2)
                    }
                }
            }
        }
    }

    mutating internal func _encodeFloat(
        byteOffset: Int,
        value: Double
    ) {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeRawPointer(to: byteOffset) { __ptr_byteOffset in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_byteOffset, __ptr_value) { __accessPtr in
                    withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                        PackedByteArrayBindings.methodEncodeFloat(__ptr_self, __accessPtr, nil, 2)
                    }
                }
            }
        }
    }

    mutating internal func _encodeDouble(
        byteOffset: Int,
        value: Double
    ) {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeRawPointer(to: byteOffset) { __ptr_byteOffset in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_byteOffset, __ptr_value) { __accessPtr in
                    withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                        PackedByteArrayBindings.methodEncodeDouble(__ptr_self, __accessPtr, nil, 2)
                    }
                }
            }
        }
    }

    @discardableResult
    mutating internal func _encodeVar(
        byteOffset: Int,
        value: borrowing Godot.Variant.Storage,
        allowObjects: Bool = false
    ) -> Int {
        makeUniqueIfSharedOpaque()
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: byteOffset) { __ptr_byteOffset in
                withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                    withTransferrableUnsafeRawPointer(to: allowObjects) { __ptr_allowObjects in
                        withUnsafeArgumentPackPointer(__ptr_byteOffset, __ptr_value, __ptr_allowObjects) { __accessPtr in
                            withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                                PackedByteArrayBindings.methodEncodeVar(__ptr_self, __accessPtr, __temporary, 3)
                            }
                        }
                    }
                }
            }
        }
    }
}