//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

internal enum UInt8GodotContiguousArrayStorageBindings {
    static private var areBindingsLoaded = false
    
    internal static func loadBindings() {
        precondition(!areBindingsLoaded, "GodotContiguousArray<UInt8> bindings are already loaded.")
        areBindingsLoaded = true
        
        destructor = GodotExtension.Interface.variantGetPtrDestructor(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY)!
        constructor = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, 0)!
        constructorFromGodotContiguousArrayUInt8 = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, 1)!
        constructorFromGodotArray = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, 2)!
        operatorEqualVariant = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, GDEXTENSION_VARIANT_TYPE_NIL)!
        operatorNotEqualVariant = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, GDEXTENSION_VARIANT_TYPE_NIL)!
        operatorNot = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT, GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, GDEXTENSION_VARIANT_TYPE_NIL)!
        operatorInGodotdictionary = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
        operatorInGodotarray = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, GDEXTENSION_VARIANT_TYPE_ARRAY)!
        operatorEqualGodotcontiguousarrayuint8 = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY)!
        operatorNotEqualGodotcontiguousarrayuint8 = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY)!
        operatorAddGodotcontiguousarrayuint8 = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_ADD, GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY)!
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
    
    static private(set) var destructor: GDExtensionPtrDestructor!
    static private(set) var constructor: GDExtensionPtrConstructor!
    static private(set) var constructorFromGodotContiguousArrayUInt8: GDExtensionPtrConstructor!
    static private(set) var constructorFromGodotArray: GDExtensionPtrConstructor!
    static private(set) var operatorEqualVariant: GDExtensionPtrOperatorEvaluator!
    static private(set) var operatorNotEqualVariant: GDExtensionPtrOperatorEvaluator!
    static private(set) var operatorNot: GDExtensionPtrOperatorEvaluator!
    static private(set) var operatorInGodotdictionary: GDExtensionPtrOperatorEvaluator!
    static private(set) var operatorInGodotarray: GDExtensionPtrOperatorEvaluator!
    static private(set) var operatorEqualGodotcontiguousarrayuint8: GDExtensionPtrOperatorEvaluator!
    static private(set) var operatorNotEqualGodotcontiguousarrayuint8: GDExtensionPtrOperatorEvaluator!
    static private(set) var operatorAddGodotcontiguousarrayuint8: GDExtensionPtrOperatorEvaluator!
    static private(set) var indexedSetter: GDExtensionPtrIndexedSetter!
    static private(set) var indexedGetter: GDExtensionPtrIndexedGetter!
    static private(set) var methodSize: GDExtensionPtrBuiltInMethod!
    static private(set) var methodIsEmpty: GDExtensionPtrBuiltInMethod!
    static private(set) var methodSet: GDExtensionPtrBuiltInMethod!
    static private(set) var methodPushBack: GDExtensionPtrBuiltInMethod!
    static private(set) var methodAppend: GDExtensionPtrBuiltInMethod!
    static private(set) var methodAppendArray: GDExtensionPtrBuiltInMethod!
    static private(set) var methodRemoveAt: GDExtensionPtrBuiltInMethod!
    static private(set) var methodInsert: GDExtensionPtrBuiltInMethod!
    static private(set) var methodFill: GDExtensionPtrBuiltInMethod!
    static private(set) var methodResize: GDExtensionPtrBuiltInMethod!
    static private(set) var methodClear: GDExtensionPtrBuiltInMethod!
    static private(set) var methodHas: GDExtensionPtrBuiltInMethod!
    static private(set) var methodReverse: GDExtensionPtrBuiltInMethod!
    static private(set) var methodSlice: GDExtensionPtrBuiltInMethod!
    static private(set) var methodSort: GDExtensionPtrBuiltInMethod!
    static private(set) var methodBsearch: GDExtensionPtrBuiltInMethod!
    static private(set) var methodDuplicate: GDExtensionPtrBuiltInMethod!
    static private(set) var methodFind: GDExtensionPtrBuiltInMethod!
    static private(set) var methodRfind: GDExtensionPtrBuiltInMethod!
    static private(set) var methodCount: GDExtensionPtrBuiltInMethod!
    static private(set) var methodGetStringFromAscii: GDExtensionPtrBuiltInMethod!
    static private(set) var methodGetStringFromUtf8: GDExtensionPtrBuiltInMethod!
    static private(set) var methodGetStringFromUtf16: GDExtensionPtrBuiltInMethod!
    static private(set) var methodGetStringFromUtf32: GDExtensionPtrBuiltInMethod!
    static private(set) var methodGetStringFromWchar: GDExtensionPtrBuiltInMethod!
    static private(set) var methodHexEncode: GDExtensionPtrBuiltInMethod!
    static private(set) var methodCompress: GDExtensionPtrBuiltInMethod!
    static private(set) var methodDecompress: GDExtensionPtrBuiltInMethod!
    static private(set) var methodDecompressDynamic: GDExtensionPtrBuiltInMethod!
    static private(set) var methodDecodeU8: GDExtensionPtrBuiltInMethod!
    static private(set) var methodDecodeS8: GDExtensionPtrBuiltInMethod!
    static private(set) var methodDecodeU16: GDExtensionPtrBuiltInMethod!
    static private(set) var methodDecodeS16: GDExtensionPtrBuiltInMethod!
    static private(set) var methodDecodeU32: GDExtensionPtrBuiltInMethod!
    static private(set) var methodDecodeS32: GDExtensionPtrBuiltInMethod!
    static private(set) var methodDecodeU64: GDExtensionPtrBuiltInMethod!
    static private(set) var methodDecodeS64: GDExtensionPtrBuiltInMethod!
    static private(set) var methodDecodeHalf: GDExtensionPtrBuiltInMethod!
    static private(set) var methodDecodeFloat: GDExtensionPtrBuiltInMethod!
    static private(set) var methodDecodeDouble: GDExtensionPtrBuiltInMethod!
    static private(set) var methodHasEncodedVar: GDExtensionPtrBuiltInMethod!
    static private(set) var methodDecodeVar: GDExtensionPtrBuiltInMethod!
    static private(set) var methodDecodeVarSize: GDExtensionPtrBuiltInMethod!
    static private(set) var methodToInt32Array: GDExtensionPtrBuiltInMethod!
    static private(set) var methodToInt64Array: GDExtensionPtrBuiltInMethod!
    static private(set) var methodToFloat32Array: GDExtensionPtrBuiltInMethod!
    static private(set) var methodToFloat64Array: GDExtensionPtrBuiltInMethod!
    static private(set) var methodEncodeU8: GDExtensionPtrBuiltInMethod!
    static private(set) var methodEncodeS8: GDExtensionPtrBuiltInMethod!
    static private(set) var methodEncodeU16: GDExtensionPtrBuiltInMethod!
    static private(set) var methodEncodeS16: GDExtensionPtrBuiltInMethod!
    static private(set) var methodEncodeU32: GDExtensionPtrBuiltInMethod!
    static private(set) var methodEncodeS32: GDExtensionPtrBuiltInMethod!
    static private(set) var methodEncodeU64: GDExtensionPtrBuiltInMethod!
    static private(set) var methodEncodeS64: GDExtensionPtrBuiltInMethod!
    static private(set) var methodEncodeHalf: GDExtensionPtrBuiltInMethod!
    static private(set) var methodEncodeFloat: GDExtensionPtrBuiltInMethod!
    static private(set) var methodEncodeDouble: GDExtensionPtrBuiltInMethod!
    static private(set) var methodEncodeVar: GDExtensionPtrBuiltInMethod!
}

extension UInt8.GodotContiguousArrayStorage {
    static internal func makeOpaqueStorage(
        useDestructor: Bool = true
    ) -> Opaque.Storage {
        Opaque.Storage(size: 16, destructorPtr: useDestructor ? UInt8GodotContiguousArrayStorageBindings.destructor : nil)
    }
    
    static internal func make() -> Opaque.Storage {
        let __temporary: Opaque.Storage = makeOpaqueStorage()
        __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
            UInt8GodotContiguousArrayStorageBindings.constructor(__ptr___temporary, nil)
        }
        return __temporary
    }
    
    static internal func make(
        from: UInt8.GodotContiguousArrayStorage
    ) -> Opaque.Storage {
        let __temporary: Opaque.Storage = makeOpaqueStorage()
        withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
            withUnsafeArgumentPackPointer(__ptr_from) { __accessPtr in
                __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                    UInt8GodotContiguousArrayStorageBindings.constructorFromGodotContiguousArrayUInt8(__ptr___temporary, __accessPtr)
                }
            }
        }
        return __temporary
    }
    
    static internal func make<Value: Variant.Storable>(
        from: Godot.GodotArray<Value>
    ) -> Opaque.Storage {
        let __temporary: Opaque.Storage = makeOpaqueStorage()
        withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
            withUnsafeArgumentPackPointer(__ptr_from) { __accessPtr in
                __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                    UInt8GodotContiguousArrayStorageBindings.constructorFromGodotArray(__ptr___temporary, __accessPtr)
                }
            }
        }
        return __temporary
    }
    
    static internal func _operatorEqual<Value: Variant.Storable>(
        _ lhs: UInt8.GodotContiguousArrayStorage,
        _ rhs: Value
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                Godot.Variant.withStorageUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    UInt8GodotContiguousArrayStorageBindings.operatorEqualVariant(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }
    
    static internal func _operatorNotEqual<Value: Variant.Storable>(
        _ lhs: UInt8.GodotContiguousArrayStorage,
        _ rhs: Value
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                Godot.Variant.withStorageUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    UInt8GodotContiguousArrayStorageBindings.operatorNotEqualVariant(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }
    
    static internal func _operatorNot(
        _ lhs: UInt8.GodotContiguousArrayStorage
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                UInt8GodotContiguousArrayStorageBindings.operatorNot(__ptr_lhs, nil, __temporary)
            }
        }
    }
    
    static internal func _operatorIn<Value1: Variant.Storable, Value2: Variant.Storable>(
        _ lhs: UInt8.GodotContiguousArrayStorage,
        _ rhs: Godot.GodotDictionary<Value1, Value2>
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    UInt8GodotContiguousArrayStorageBindings.operatorInGodotdictionary(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }
    
    static internal func _operatorIn<Value: Variant.Storable>(
        _ lhs: UInt8.GodotContiguousArrayStorage,
        _ rhs: Godot.GodotArray<Value>
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    UInt8GodotContiguousArrayStorageBindings.operatorInGodotarray(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }
    
    static internal func _operatorEqual(
        _ lhs: UInt8.GodotContiguousArrayStorage,
        _ rhs: UInt8.GodotContiguousArrayStorage
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    UInt8GodotContiguousArrayStorageBindings.operatorEqualGodotcontiguousarrayuint8(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }
    
    static internal func _operatorNotEqual(
        _ lhs: UInt8.GodotContiguousArrayStorage,
        _ rhs: UInt8.GodotContiguousArrayStorage
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    UInt8GodotContiguousArrayStorageBindings.operatorNotEqualGodotcontiguousarrayuint8(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }
    
    static internal func _operatorAdd(
        _ lhs: UInt8.GodotContiguousArrayStorage,
        _ rhs: UInt8.GodotContiguousArrayStorage
    ) -> UInt8.GodotContiguousArrayStorage {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    UInt8GodotContiguousArrayStorageBindings.operatorAddGodotcontiguousarrayuint8(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }
    
    internal func _getValue(at index: GDExtensionInt) -> Int {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                UInt8GodotContiguousArrayStorageBindings.indexedGetter(__ptr_self, index, __temporary)
            }
        }
    }
    
    internal func _setValue(_ value: Int, at index: GDExtensionInt) {
        withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                UInt8GodotContiguousArrayStorageBindings.indexedSetter(UnsafeMutableRawPointer(mutating: __ptr_self), index, __ptr_value)
            }
        }
    }
    
    internal func _size() -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                UInt8GodotContiguousArrayStorageBindings.methodSize(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }
    
    internal func _isEmpty() -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                UInt8GodotContiguousArrayStorageBindings.methodIsEmpty(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }
    
    internal func _set(
        index: Int,
        value: Int
    ) {
        withTransferrableUnsafeRawPointer(to: index) { __ptr_index in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_index, __ptr_value) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        UInt8GodotContiguousArrayStorageBindings.methodSet(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, nil, 2)
                    }
                }
            }
        }
    }
    
    internal func _pushBack(
        value: Int
    ) -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        UInt8GodotContiguousArrayStorageBindings.methodPushBack(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }
    
    internal func _append(
        value: Int
    ) -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        UInt8GodotContiguousArrayStorageBindings.methodAppend(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }
    
    internal func _appendArray(
        _ array: UInt8.GodotContiguousArrayStorage
    ) {
        withTransferrableUnsafeRawPointer(to: array) { __ptr_array in
            withUnsafeArgumentPackPointer(__ptr_array) { __accessPtr in
                withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                    UInt8GodotContiguousArrayStorageBindings.methodAppendArray(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, nil, 1)
                }
            }
        }
    }
    
    internal func _removeAt(
        index: Int
    ) {
        withTransferrableUnsafeRawPointer(to: index) { __ptr_index in
            withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
                withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                    UInt8GodotContiguousArrayStorageBindings.methodRemoveAt(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, nil, 1)
                }
            }
        }
    }
    
    internal func _insert(
        atIndex index: Int,
        value: Int
    ) -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: index) { __ptr_index in
                withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                    withUnsafeArgumentPackPointer(__ptr_index, __ptr_value) { __accessPtr in
                        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                            UInt8GodotContiguousArrayStorageBindings.methodInsert(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }
    
    internal func _fill(
        value: Int
    ) {
        withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
            withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
                withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                    UInt8GodotContiguousArrayStorageBindings.methodFill(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, nil, 1)
                }
            }
        }
    }
    
    internal func _resize(
        newSize: Int
    ) -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: newSize) { __ptr_newSize in
                withUnsafeArgumentPackPointer(__ptr_newSize) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        UInt8GodotContiguousArrayStorageBindings.methodResize(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }
    
    internal func _clear() {
        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
            UInt8GodotContiguousArrayStorageBindings.methodClear(UnsafeMutableRawPointer(mutating: __ptr_self), nil, nil, 0)
        }
    }
    
    internal func _has(
        value: Int
    ) -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        UInt8GodotContiguousArrayStorageBindings.methodHas(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }
    
    internal func _reverse() {
        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
            UInt8GodotContiguousArrayStorageBindings.methodReverse(UnsafeMutableRawPointer(mutating: __ptr_self), nil, nil, 0)
        }
    }
    
    internal func _slice(
        begin: Int,
        end: Int = 2147483647
    ) -> UInt8.GodotContiguousArrayStorage {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: begin) { __ptr_begin in
                withTransferrableUnsafeRawPointer(to: end) { __ptr_end in
                    withUnsafeArgumentPackPointer(__ptr_begin, __ptr_end) { __accessPtr in
                        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                            UInt8GodotContiguousArrayStorageBindings.methodSlice(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }
    
    internal func _sort() {
        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
            UInt8GodotContiguousArrayStorageBindings.methodSort(UnsafeMutableRawPointer(mutating: __ptr_self), nil, nil, 0)
        }
    }
    
    internal func _bsearch(
        value: Int,
        before: Bool = true
    ) -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withTransferrableUnsafeRawPointer(to: before) { __ptr_before in
                    withUnsafeArgumentPackPointer(__ptr_value, __ptr_before) { __accessPtr in
                        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                            UInt8GodotContiguousArrayStorageBindings.methodBsearch(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }
    
    internal func _duplicate() -> UInt8.GodotContiguousArrayStorage {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                UInt8GodotContiguousArrayStorageBindings.methodDuplicate(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
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
                            UInt8GodotContiguousArrayStorageBindings.methodFind(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
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
                            UInt8GodotContiguousArrayStorageBindings.methodRfind(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
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
                        UInt8GodotContiguousArrayStorageBindings.methodCount(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }
    
    internal func _stringFromAscii() -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                UInt8GodotContiguousArrayStorageBindings.methodGetStringFromAscii(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }
    
    internal func _stringFromUtf8() -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                UInt8GodotContiguousArrayStorageBindings.methodGetStringFromUtf8(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }
    
    internal func _stringFromUtf16() -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                UInt8GodotContiguousArrayStorageBindings.methodGetStringFromUtf16(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }
    
    internal func _stringFromUtf32() -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                UInt8GodotContiguousArrayStorageBindings.methodGetStringFromUtf32(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }
    
    internal func _stringFromWchar() -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                UInt8GodotContiguousArrayStorageBindings.methodGetStringFromWchar(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }
    
    internal func _hexEncode() -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                UInt8GodotContiguousArrayStorageBindings.methodHexEncode(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }
    
    internal func _compress(
        compressionMode: Int = 0
    ) -> UInt8.GodotContiguousArrayStorage {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: compressionMode) { __ptr_compressionMode in
                withUnsafeArgumentPackPointer(__ptr_compressionMode) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        UInt8GodotContiguousArrayStorageBindings.methodCompress(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }
    
    internal func _decompress(
        bufferSize: Int,
        compressionMode: Int = 0
    ) -> UInt8.GodotContiguousArrayStorage {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: bufferSize) { __ptr_bufferSize in
                withTransferrableUnsafeRawPointer(to: compressionMode) { __ptr_compressionMode in
                    withUnsafeArgumentPackPointer(__ptr_bufferSize, __ptr_compressionMode) { __accessPtr in
                        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                            UInt8GodotContiguousArrayStorageBindings.methodDecompress(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }
    
    internal func _decompressDynamic(
        maxOutputSize: Int,
        compressionMode: Int = 0
    ) -> UInt8.GodotContiguousArrayStorage {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: maxOutputSize) { __ptr_maxOutputSize in
                withTransferrableUnsafeRawPointer(to: compressionMode) { __ptr_compressionMode in
                    withUnsafeArgumentPackPointer(__ptr_maxOutputSize, __ptr_compressionMode) { __accessPtr in
                        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                            UInt8GodotContiguousArrayStorageBindings.methodDecompressDynamic(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
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
                        UInt8GodotContiguousArrayStorageBindings.methodDecodeU8(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
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
                        UInt8GodotContiguousArrayStorageBindings.methodDecodeS8(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
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
                        UInt8GodotContiguousArrayStorageBindings.methodDecodeU16(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
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
                        UInt8GodotContiguousArrayStorageBindings.methodDecodeS16(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
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
                        UInt8GodotContiguousArrayStorageBindings.methodDecodeU32(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
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
                        UInt8GodotContiguousArrayStorageBindings.methodDecodeS32(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
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
                        UInt8GodotContiguousArrayStorageBindings.methodDecodeU64(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
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
                        UInt8GodotContiguousArrayStorageBindings.methodDecodeS64(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
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
                        UInt8GodotContiguousArrayStorageBindings.methodDecodeHalf(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
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
                        UInt8GodotContiguousArrayStorageBindings.methodDecodeFloat(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
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
                        UInt8GodotContiguousArrayStorageBindings.methodDecodeDouble(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
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
                            UInt8GodotContiguousArrayStorageBindings.methodHasEncodedVar(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
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
                            UInt8GodotContiguousArrayStorageBindings.methodDecodeVar(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
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
                            UInt8GodotContiguousArrayStorageBindings.methodDecodeVarSize(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }
    
    internal func _toInt32Array() -> Int32.GodotContiguousArrayStorage {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                UInt8GodotContiguousArrayStorageBindings.methodToInt32Array(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }
    
    internal func _toInt64Array() -> Int64.GodotContiguousArrayStorage {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                UInt8GodotContiguousArrayStorageBindings.methodToInt64Array(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }
    
    internal func _toFloat32Array() -> Float.GodotContiguousArrayStorage {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                UInt8GodotContiguousArrayStorageBindings.methodToFloat32Array(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }
    
    internal func _toFloat64Array() -> Double.GodotContiguousArrayStorage {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                UInt8GodotContiguousArrayStorageBindings.methodToFloat64Array(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }
    
    internal func _encodeU8(
        byteOffset: Int,
        value: Int
    ) {
        withTransferrableUnsafeRawPointer(to: byteOffset) { __ptr_byteOffset in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_byteOffset, __ptr_value) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        UInt8GodotContiguousArrayStorageBindings.methodEncodeU8(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, nil, 2)
                    }
                }
            }
        }
    }
    
    internal func _encodeS8(
        byteOffset: Int,
        value: Int
    ) {
        withTransferrableUnsafeRawPointer(to: byteOffset) { __ptr_byteOffset in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_byteOffset, __ptr_value) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        UInt8GodotContiguousArrayStorageBindings.methodEncodeS8(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, nil, 2)
                    }
                }
            }
        }
    }
    
    internal func _encodeU16(
        byteOffset: Int,
        value: Int
    ) {
        withTransferrableUnsafeRawPointer(to: byteOffset) { __ptr_byteOffset in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_byteOffset, __ptr_value) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        UInt8GodotContiguousArrayStorageBindings.methodEncodeU16(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, nil, 2)
                    }
                }
            }
        }
    }
    
    internal func _encodeS16(
        byteOffset: Int,
        value: Int
    ) {
        withTransferrableUnsafeRawPointer(to: byteOffset) { __ptr_byteOffset in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_byteOffset, __ptr_value) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        UInt8GodotContiguousArrayStorageBindings.methodEncodeS16(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, nil, 2)
                    }
                }
            }
        }
    }
    
    internal func _encodeU32(
        byteOffset: Int,
        value: Int
    ) {
        withTransferrableUnsafeRawPointer(to: byteOffset) { __ptr_byteOffset in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_byteOffset, __ptr_value) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        UInt8GodotContiguousArrayStorageBindings.methodEncodeU32(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, nil, 2)
                    }
                }
            }
        }
    }
    
    internal func _encodeS32(
        byteOffset: Int,
        value: Int
    ) {
        withTransferrableUnsafeRawPointer(to: byteOffset) { __ptr_byteOffset in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_byteOffset, __ptr_value) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        UInt8GodotContiguousArrayStorageBindings.methodEncodeS32(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, nil, 2)
                    }
                }
            }
        }
    }
    
    internal func _encodeU64(
        byteOffset: Int,
        value: Int
    ) {
        withTransferrableUnsafeRawPointer(to: byteOffset) { __ptr_byteOffset in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_byteOffset, __ptr_value) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        UInt8GodotContiguousArrayStorageBindings.methodEncodeU64(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, nil, 2)
                    }
                }
            }
        }
    }
    
    internal func _encodeS64(
        byteOffset: Int,
        value: Int
    ) {
        withTransferrableUnsafeRawPointer(to: byteOffset) { __ptr_byteOffset in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_byteOffset, __ptr_value) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        UInt8GodotContiguousArrayStorageBindings.methodEncodeS64(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, nil, 2)
                    }
                }
            }
        }
    }
    
    internal func _encodeHalf(
        byteOffset: Int,
        value: Double
    ) {
        withTransferrableUnsafeRawPointer(to: byteOffset) { __ptr_byteOffset in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_byteOffset, __ptr_value) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        UInt8GodotContiguousArrayStorageBindings.methodEncodeHalf(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, nil, 2)
                    }
                }
            }
        }
    }
    
    internal func _encodeFloat(
        byteOffset: Int,
        value: Double
    ) {
        withTransferrableUnsafeRawPointer(to: byteOffset) { __ptr_byteOffset in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_byteOffset, __ptr_value) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        UInt8GodotContiguousArrayStorageBindings.methodEncodeFloat(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, nil, 2)
                    }
                }
            }
        }
    }
    
    internal func _encodeDouble(
        byteOffset: Int,
        value: Double
    ) {
        withTransferrableUnsafeRawPointer(to: byteOffset) { __ptr_byteOffset in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_byteOffset, __ptr_value) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        UInt8GodotContiguousArrayStorageBindings.methodEncodeDouble(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, nil, 2)
                    }
                }
            }
        }
    }
    
    internal func _encodeVar(
        byteOffset: Int,
        value: borrowing Godot.Variant.Storage,
        allowObjects: Bool = false
    ) -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: byteOffset) { __ptr_byteOffset in
                withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                    withTransferrableUnsafeRawPointer(to: allowObjects) { __ptr_allowObjects in
                        withUnsafeArgumentPackPointer(__ptr_byteOffset, __ptr_value, __ptr_allowObjects) { __accessPtr in
                            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                                UInt8GodotContiguousArrayStorageBindings.methodEncodeVar(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 3)
                            }
                        }
                    }
                }
            }
        }
    }
}