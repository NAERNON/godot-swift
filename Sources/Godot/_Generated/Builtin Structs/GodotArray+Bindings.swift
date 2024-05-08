//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

internal enum GodotArrayBindings {
    static private var areBindingsLoaded = false

    internal static func loadBindings() {
        precondition(!areBindingsLoaded, "GodotArray bindings are already loaded.")
        areBindingsLoaded = true
        destructor = GodotExtension.Interface.variantGetPtrDestructor(GDEXTENSION_VARIANT_TYPE_ARRAY)!
        constructor = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_ARRAY, 0)!
        constructorFromGodotArray = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_ARRAY, 1)!
        constructorFromGodotArrayIntGodotStringNameVariant = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_ARRAY, 2)!
        constructorFromGodotContiguousArrayUInt8 = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_ARRAY, 3)!
        constructorFromGodotContiguousArrayInt32 = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_ARRAY, 4)!
        constructorFromGodotContiguousArrayInt64 = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_ARRAY, 5)!
        constructorFromGodotContiguousArrayFloat = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_ARRAY, 6)!
        constructorFromGodotContiguousArrayDouble = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_ARRAY, 7)!
        constructorFromGodotContiguousArrayGodotString = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_ARRAY, 8)!
        constructorFromGodotContiguousArrayVector2 = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_ARRAY, 9)!
        constructorFromGodotContiguousArrayVector3 = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_ARRAY, 10)!
        constructorFromGodotContiguousArrayColor = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_ARRAY, 11)!
        operatorEqualVariant = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_ARRAY, GDEXTENSION_VARIANT_TYPE_NIL)!
        operatorNotEqualVariant = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_ARRAY, GDEXTENSION_VARIANT_TYPE_NIL)!
        operatorNot = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT, GDEXTENSION_VARIANT_TYPE_ARRAY, GDEXTENSION_VARIANT_TYPE_NIL)!
        operatorInGodotdictionary = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_ARRAY, GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
        operatorEqualGodotarray = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_ARRAY, GDEXTENSION_VARIANT_TYPE_ARRAY)!
        operatorNotEqualGodotarray = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_ARRAY, GDEXTENSION_VARIANT_TYPE_ARRAY)!
        operatorLessGodotarray = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_LESS, GDEXTENSION_VARIANT_TYPE_ARRAY, GDEXTENSION_VARIANT_TYPE_ARRAY)!
        operatorLessEqualGodotarray = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_LESS_EQUAL, GDEXTENSION_VARIANT_TYPE_ARRAY, GDEXTENSION_VARIANT_TYPE_ARRAY)!
        operatorGreaterGodotarray = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_GREATER, GDEXTENSION_VARIANT_TYPE_ARRAY, GDEXTENSION_VARIANT_TYPE_ARRAY)!
        operatorGreaterEqualGodotarray = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_GREATER_EQUAL, GDEXTENSION_VARIANT_TYPE_ARRAY, GDEXTENSION_VARIANT_TYPE_ARRAY)!
        operatorAddGodotarray = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_ADD, GDEXTENSION_VARIANT_TYPE_ARRAY, GDEXTENSION_VARIANT_TYPE_ARRAY)!
        operatorInGodotarray = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_ARRAY, GDEXTENSION_VARIANT_TYPE_ARRAY)!
        indexedSetter = GodotExtension.Interface.variantGetPtrIndexedSetter(GDEXTENSION_VARIANT_TYPE_ARRAY)!
        indexedGetter = GodotExtension.Interface.variantGetPtrIndexedGetter(GDEXTENSION_VARIANT_TYPE_ARRAY)!
        methodSize = GodotStringName(swiftStaticString: "size").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 3173160232)!
        }
        methodIsEmpty = GodotStringName(swiftStaticString: "is_empty").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 3918633141)!
        }
        methodClear = GodotStringName(swiftStaticString: "clear").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 3218959716)!
        }
        methodHash = GodotStringName(swiftStaticString: "hash").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 3173160232)!
        }
        methodAssign = GodotStringName(swiftStaticString: "assign").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 2307260970)!
        }
        methodPushBack = GodotStringName(swiftStaticString: "push_back").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 3316032543)!
        }
        methodPushFront = GodotStringName(swiftStaticString: "push_front").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 3316032543)!
        }
        methodAppend = GodotStringName(swiftStaticString: "append").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 3316032543)!
        }
        methodAppendArray = GodotStringName(swiftStaticString: "append_array").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 2307260970)!
        }
        methodResize = GodotStringName(swiftStaticString: "resize").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 848867239)!
        }
        methodInsert = GodotStringName(swiftStaticString: "insert").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 3176316662)!
        }
        methodRemoveAt = GodotStringName(swiftStaticString: "remove_at").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 2823966027)!
        }
        methodFill = GodotStringName(swiftStaticString: "fill").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 3316032543)!
        }
        methodErase = GodotStringName(swiftStaticString: "erase").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 3316032543)!
        }
        methodFront = GodotStringName(swiftStaticString: "front").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 1460142086)!
        }
        methodBack = GodotStringName(swiftStaticString: "back").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 1460142086)!
        }
        methodPickRandom = GodotStringName(swiftStaticString: "pick_random").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 1460142086)!
        }
        methodFind = GodotStringName(swiftStaticString: "find").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 2336346817)!
        }
        methodRfind = GodotStringName(swiftStaticString: "rfind").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 2336346817)!
        }
        methodCount = GodotStringName(swiftStaticString: "count").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 1481661226)!
        }
        methodHas = GodotStringName(swiftStaticString: "has").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 3680194679)!
        }
        methodPopBack = GodotStringName(swiftStaticString: "pop_back").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 1321915136)!
        }
        methodPopFront = GodotStringName(swiftStaticString: "pop_front").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 1321915136)!
        }
        methodPopAt = GodotStringName(swiftStaticString: "pop_at").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 3518259424)!
        }
        methodSort = GodotStringName(swiftStaticString: "sort").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 3218959716)!
        }
        methodSortCustom = GodotStringName(swiftStaticString: "sort_custom").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 3470848906)!
        }
        methodShuffle = GodotStringName(swiftStaticString: "shuffle").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 3218959716)!
        }
        methodBsearch = GodotStringName(swiftStaticString: "bsearch").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 3372222236)!
        }
        methodBsearchCustom = GodotStringName(swiftStaticString: "bsearch_custom").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 161317131)!
        }
        methodReverse = GodotStringName(swiftStaticString: "reverse").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 3218959716)!
        }
        methodDuplicate = GodotStringName(swiftStaticString: "duplicate").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 636440122)!
        }
        methodSlice = GodotStringName(swiftStaticString: "slice").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 1393718243)!
        }
        methodFilter = GodotStringName(swiftStaticString: "filter").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 4075186556)!
        }
        methodMap = GodotStringName(swiftStaticString: "map").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 4075186556)!
        }
        methodReduce = GodotStringName(swiftStaticString: "reduce").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 4272450342)!
        }
        methodAny = GodotStringName(swiftStaticString: "any").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 4129521963)!
        }
        methodAll = GodotStringName(swiftStaticString: "all").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 4129521963)!
        }
        methodMax = GodotStringName(swiftStaticString: "max").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 1460142086)!
        }
        methodMin = GodotStringName(swiftStaticString: "min").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 1460142086)!
        }
        methodIsTyped = GodotStringName(swiftStaticString: "is_typed").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 3918633141)!
        }
        methodIsSameTyped = GodotStringName(swiftStaticString: "is_same_typed").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 2988181878)!
        }
        methodGetTypedBuiltin = GodotStringName(swiftStaticString: "get_typed_builtin").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 3173160232)!
        }
        methodGetTypedClassName = GodotStringName(swiftStaticString: "get_typed_class_name").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 1825232092)!
        }
        methodGetTypedScript = GodotStringName(swiftStaticString: "get_typed_script").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 1460142086)!
        }
        methodMakeReadOnly = GodotStringName(swiftStaticString: "make_read_only").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 3218959716)!
        }
        methodIsReadOnly = GodotStringName(swiftStaticString: "is_read_only").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 3918633141)!
        }
    }

    static private (set) var destructor: GDExtensionPtrDestructor!

    static private (set) var constructor: GDExtensionPtrConstructor!

    static private (set) var constructorFromGodotArray: GDExtensionPtrConstructor!

    static private (set) var constructorFromGodotArrayIntGodotStringNameVariant: GDExtensionPtrConstructor!

    static private (set) var constructorFromGodotContiguousArrayUInt8: GDExtensionPtrConstructor!

    static private (set) var constructorFromGodotContiguousArrayInt32: GDExtensionPtrConstructor!

    static private (set) var constructorFromGodotContiguousArrayInt64: GDExtensionPtrConstructor!

    static private (set) var constructorFromGodotContiguousArrayFloat: GDExtensionPtrConstructor!

    static private (set) var constructorFromGodotContiguousArrayDouble: GDExtensionPtrConstructor!

    static private (set) var constructorFromGodotContiguousArrayGodotString: GDExtensionPtrConstructor!

    static private (set) var constructorFromGodotContiguousArrayVector2: GDExtensionPtrConstructor!

    static private (set) var constructorFromGodotContiguousArrayVector3: GDExtensionPtrConstructor!

    static private (set) var constructorFromGodotContiguousArrayColor: GDExtensionPtrConstructor!

    static private (set) var operatorEqualVariant: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorNotEqualVariant: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorNot: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorInGodotdictionary: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorEqualGodotarray: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorNotEqualGodotarray: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorLessGodotarray: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorLessEqualGodotarray: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorGreaterGodotarray: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorGreaterEqualGodotarray: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorAddGodotarray: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorInGodotarray: GDExtensionPtrOperatorEvaluator!

    static private (set) var indexedSetter: GDExtensionPtrIndexedSetter!

    static private (set) var indexedGetter: GDExtensionPtrIndexedGetter!

    static private (set) var methodSize: GDExtensionPtrBuiltInMethod!

    static private (set) var methodIsEmpty: GDExtensionPtrBuiltInMethod!

    static private (set) var methodClear: GDExtensionPtrBuiltInMethod!

    static private (set) var methodHash: GDExtensionPtrBuiltInMethod!

    static private (set) var methodAssign: GDExtensionPtrBuiltInMethod!

    static private (set) var methodPushBack: GDExtensionPtrBuiltInMethod!

    static private (set) var methodPushFront: GDExtensionPtrBuiltInMethod!

    static private (set) var methodAppend: GDExtensionPtrBuiltInMethod!

    static private (set) var methodAppendArray: GDExtensionPtrBuiltInMethod!

    static private (set) var methodResize: GDExtensionPtrBuiltInMethod!

    static private (set) var methodInsert: GDExtensionPtrBuiltInMethod!

    static private (set) var methodRemoveAt: GDExtensionPtrBuiltInMethod!

    static private (set) var methodFill: GDExtensionPtrBuiltInMethod!

    static private (set) var methodErase: GDExtensionPtrBuiltInMethod!

    static private (set) var methodFront: GDExtensionPtrBuiltInMethod!

    static private (set) var methodBack: GDExtensionPtrBuiltInMethod!

    static private (set) var methodPickRandom: GDExtensionPtrBuiltInMethod!

    static private (set) var methodFind: GDExtensionPtrBuiltInMethod!

    static private (set) var methodRfind: GDExtensionPtrBuiltInMethod!

    static private (set) var methodCount: GDExtensionPtrBuiltInMethod!

    static private (set) var methodHas: GDExtensionPtrBuiltInMethod!

    static private (set) var methodPopBack: GDExtensionPtrBuiltInMethod!

    static private (set) var methodPopFront: GDExtensionPtrBuiltInMethod!

    static private (set) var methodPopAt: GDExtensionPtrBuiltInMethod!

    static private (set) var methodSort: GDExtensionPtrBuiltInMethod!

    static private (set) var methodSortCustom: GDExtensionPtrBuiltInMethod!

    static private (set) var methodShuffle: GDExtensionPtrBuiltInMethod!

    static private (set) var methodBsearch: GDExtensionPtrBuiltInMethod!

    static private (set) var methodBsearchCustom: GDExtensionPtrBuiltInMethod!

    static private (set) var methodReverse: GDExtensionPtrBuiltInMethod!

    static private (set) var methodDuplicate: GDExtensionPtrBuiltInMethod!

    static private (set) var methodSlice: GDExtensionPtrBuiltInMethod!

    static private (set) var methodFilter: GDExtensionPtrBuiltInMethod!

    static private (set) var methodMap: GDExtensionPtrBuiltInMethod!

    static private (set) var methodReduce: GDExtensionPtrBuiltInMethod!

    static private (set) var methodAny: GDExtensionPtrBuiltInMethod!

    static private (set) var methodAll: GDExtensionPtrBuiltInMethod!

    static private (set) var methodMax: GDExtensionPtrBuiltInMethod!

    static private (set) var methodMin: GDExtensionPtrBuiltInMethod!

    static private (set) var methodIsTyped: GDExtensionPtrBuiltInMethod!

    static private (set) var methodIsSameTyped: GDExtensionPtrBuiltInMethod!

    static private (set) var methodGetTypedBuiltin: GDExtensionPtrBuiltInMethod!

    static private (set) var methodGetTypedClassName: GDExtensionPtrBuiltInMethod!

    static private (set) var methodGetTypedScript: GDExtensionPtrBuiltInMethod!

    static private (set) var methodMakeReadOnly: GDExtensionPtrBuiltInMethod!

    static private (set) var methodIsReadOnly: GDExtensionPtrBuiltInMethod!
}

extension GodotArray {
    static internal func makeOpaque(
        useDestructor: Bool = true
    ) -> Opaque {
        Opaque(size: 8, destructorPtr: useDestructor ? GodotArrayBindings.destructor : nil)
    }

    static internal func make() -> Self {
        let __temporary: Opaque = makeOpaque()
        __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
            GodotArrayBindings.constructor(__ptr___temporary, nil)
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
                    GodotArrayBindings.constructorFromGodotArray(__ptr___temporary, __accessPtr)
                }
            }
        }
        return Self.init(opaque: __temporary)
    }

    static internal func make<Value1: Variant.Storable, Value2: Variant.Storable>(
        base: Godot.GodotArray<Value1>,
        type: Int,
        className: Godot.GodotStringName,
        script: Value2
    ) -> Self {
        let __temporary: Opaque = makeOpaque()
        withTransferrableUnsafeRawPointer(to: base) { __ptr_base in
            withTransferrableUnsafeRawPointer(to: type) { __ptr_type in
                withTransferrableUnsafeRawPointer(to: className) { __ptr_className in
                    Godot.Variant.withStorageUnsafeRawPointer(to: script) { __ptr_script in
                        withUnsafeArgumentPackPointer(__ptr_base, __ptr_type, __ptr_className, __ptr_script) { __accessPtr in
                            __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                                GodotArrayBindings.constructorFromGodotArrayIntGodotStringNameVariant(__ptr___temporary, __accessPtr)
                            }
                        }
                    }
                }
            }
        }
        return Self.init(opaque: __temporary)
    }

    static internal func make(
        from: UInt8.GodotContiguousArrayStorage
    ) -> Self {
        let __temporary: Opaque = makeOpaque()
        withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
            withUnsafeArgumentPackPointer(__ptr_from) { __accessPtr in
                __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                    GodotArrayBindings.constructorFromGodotContiguousArrayUInt8(__ptr___temporary, __accessPtr)
                }
            }
        }
        return Self.init(opaque: __temporary)
    }

    static internal func make(
        from: Int32.GodotContiguousArrayStorage
    ) -> Self {
        let __temporary: Opaque = makeOpaque()
        withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
            withUnsafeArgumentPackPointer(__ptr_from) { __accessPtr in
                __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                    GodotArrayBindings.constructorFromGodotContiguousArrayInt32(__ptr___temporary, __accessPtr)
                }
            }
        }
        return Self.init(opaque: __temporary)
    }

    static internal func make(
        from: Int64.GodotContiguousArrayStorage
    ) -> Self {
        let __temporary: Opaque = makeOpaque()
        withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
            withUnsafeArgumentPackPointer(__ptr_from) { __accessPtr in
                __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                    GodotArrayBindings.constructorFromGodotContiguousArrayInt64(__ptr___temporary, __accessPtr)
                }
            }
        }
        return Self.init(opaque: __temporary)
    }

    static internal func make(
        from: Float.GodotContiguousArrayStorage
    ) -> Self {
        let __temporary: Opaque = makeOpaque()
        withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
            withUnsafeArgumentPackPointer(__ptr_from) { __accessPtr in
                __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                    GodotArrayBindings.constructorFromGodotContiguousArrayFloat(__ptr___temporary, __accessPtr)
                }
            }
        }
        return Self.init(opaque: __temporary)
    }

    static internal func make(
        from: Double.GodotContiguousArrayStorage
    ) -> Self {
        let __temporary: Opaque = makeOpaque()
        withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
            withUnsafeArgumentPackPointer(__ptr_from) { __accessPtr in
                __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                    GodotArrayBindings.constructorFromGodotContiguousArrayDouble(__ptr___temporary, __accessPtr)
                }
            }
        }
        return Self.init(opaque: __temporary)
    }

    static internal func make(
        from: GodotString.GodotContiguousArrayStorage
    ) -> Self {
        let __temporary: Opaque = makeOpaque()
        withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
            withUnsafeArgumentPackPointer(__ptr_from) { __accessPtr in
                __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                    GodotArrayBindings.constructorFromGodotContiguousArrayGodotString(__ptr___temporary, __accessPtr)
                }
            }
        }
        return Self.init(opaque: __temporary)
    }

    static internal func make(
        from: Vector2.GodotContiguousArrayStorage
    ) -> Self {
        let __temporary: Opaque = makeOpaque()
        withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
            withUnsafeArgumentPackPointer(__ptr_from) { __accessPtr in
                __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                    GodotArrayBindings.constructorFromGodotContiguousArrayVector2(__ptr___temporary, __accessPtr)
                }
            }
        }
        return Self.init(opaque: __temporary)
    }

    static internal func make(
        from: Vector3.GodotContiguousArrayStorage
    ) -> Self {
        let __temporary: Opaque = makeOpaque()
        withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
            withUnsafeArgumentPackPointer(__ptr_from) { __accessPtr in
                __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                    GodotArrayBindings.constructorFromGodotContiguousArrayVector3(__ptr___temporary, __accessPtr)
                }
            }
        }
        return Self.init(opaque: __temporary)
    }

    static internal func make(
        from: Color.GodotContiguousArrayStorage
    ) -> Self {
        let __temporary: Opaque = makeOpaque()
        withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
            withUnsafeArgumentPackPointer(__ptr_from) { __accessPtr in
                __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                    GodotArrayBindings.constructorFromGodotContiguousArrayColor(__ptr___temporary, __accessPtr)
                }
            }
        }
        return Self.init(opaque: __temporary)
    }

    static internal func _operatorEqual<Value1: Variant.Storable, Value2: Variant.Storable>(
        _ lhs: Godot.GodotArray<Value1>,
        _ rhs: Value2
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                Godot.Variant.withStorageUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotArrayBindings.operatorEqualVariant(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorNotEqual<Value1: Variant.Storable, Value2: Variant.Storable>(
        _ lhs: Godot.GodotArray<Value1>,
        _ rhs: Value2
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                Godot.Variant.withStorageUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotArrayBindings.operatorNotEqualVariant(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorNot<Value: Variant.Storable>(
        _ lhs: Godot.GodotArray<Value>
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                GodotArrayBindings.operatorNot(__ptr_lhs, nil, __temporary)
            }
        }
    }

    static internal func _operatorIn<Value1: Variant.Storable, Value2: Variant.Storable, Value3: Variant.Storable>(
        _ lhs: Godot.GodotArray<Value1>,
        _ rhs: Godot.GodotDictionary<Value2, Value3>
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotArrayBindings.operatorInGodotdictionary(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorEqual<Value1: Variant.Storable, Value2: Variant.Storable>(
        _ lhs: Godot.GodotArray<Value1>,
        _ rhs: Godot.GodotArray<Value2>
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotArrayBindings.operatorEqualGodotarray(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorNotEqual<Value1: Variant.Storable, Value2: Variant.Storable>(
        _ lhs: Godot.GodotArray<Value1>,
        _ rhs: Godot.GodotArray<Value2>
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotArrayBindings.operatorNotEqualGodotarray(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorLess<Value1: Variant.Storable, Value2: Variant.Storable>(
        _ lhs: Godot.GodotArray<Value1>,
        _ rhs: Godot.GodotArray<Value2>
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotArrayBindings.operatorLessGodotarray(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorLessEqual<Value1: Variant.Storable, Value2: Variant.Storable>(
        _ lhs: Godot.GodotArray<Value1>,
        _ rhs: Godot.GodotArray<Value2>
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotArrayBindings.operatorLessEqualGodotarray(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorGreater<Value1: Variant.Storable, Value2: Variant.Storable>(
        _ lhs: Godot.GodotArray<Value1>,
        _ rhs: Godot.GodotArray<Value2>
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotArrayBindings.operatorGreaterGodotarray(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorGreaterEqual<Value1: Variant.Storable, Value2: Variant.Storable>(
        _ lhs: Godot.GodotArray<Value1>,
        _ rhs: Godot.GodotArray<Value2>
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotArrayBindings.operatorGreaterEqualGodotarray(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorAdd<Value1: Variant.Storable, Value2: Variant.Storable>(
        _ lhs: Godot.GodotArray<Value1>,
        _ rhs: Godot.GodotArray<Value2>
    ) -> Godot.GodotArray<Element> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotArrayBindings.operatorAddGodotarray(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorIn<Value1: Variant.Storable, Value2: Variant.Storable>(
        _ lhs: Godot.GodotArray<Value1>,
        _ rhs: Godot.GodotArray<Value2>
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotArrayBindings.operatorInGodotarray(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    internal func _getValue(
        at index: GDExtensionInt
    ) -> Godot.Variant.Storage {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotArrayBindings.indexedGetter(__ptr_self, index, __temporary)
            }
        }
    }

    mutating internal func _setValue(
        _ value: borrowing Godot.Variant.Storage,
        at index: GDExtensionInt
    ) {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
            withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                GodotArrayBindings.indexedSetter(__ptr_self, index, __ptr_value)
            }
        }
    }

    internal func _size() -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotArrayBindings.methodSize(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _isEmpty() -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotArrayBindings.methodIsEmpty(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    mutating internal func _clear() {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
            GodotArrayBindings.methodClear(__ptr_self, nil, nil, 0)
        }
    }

    internal func _hash() -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotArrayBindings.methodHash(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    mutating internal func _assign<Value: Variant.Storable>(
        array: Godot.GodotArray<Value>
    ) {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeRawPointer(to: array) { __ptr_array in
            withUnsafeArgumentPackPointer(__ptr_array) { __accessPtr in
                withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                    GodotArrayBindings.methodAssign(__ptr_self, __accessPtr, nil, 1)
                }
            }
        }
    }

    mutating internal func _pushBack(
        value: borrowing Godot.Variant.Storage
    ) {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
            withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
                withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                    GodotArrayBindings.methodPushBack(__ptr_self, __accessPtr, nil, 1)
                }
            }
        }
    }

    mutating internal func _pushFront(
        value: borrowing Godot.Variant.Storage
    ) {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
            withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
                withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                    GodotArrayBindings.methodPushFront(__ptr_self, __accessPtr, nil, 1)
                }
            }
        }
    }

    mutating internal func _append(
        value: borrowing Godot.Variant.Storage
    ) {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
            withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
                withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                    GodotArrayBindings.methodAppend(__ptr_self, __accessPtr, nil, 1)
                }
            }
        }
    }

    mutating internal func _appendArray<Value: Variant.Storable>(
        _ array: Godot.GodotArray<Value>
    ) {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeRawPointer(to: array) { __ptr_array in
            withUnsafeArgumentPackPointer(__ptr_array) { __accessPtr in
                withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                    GodotArrayBindings.methodAppendArray(__ptr_self, __accessPtr, nil, 1)
                }
            }
        }
    }

    @discardableResult
    mutating internal func _resize(
        size: Int
    ) -> Int {
        makeUniqueIfSharedOpaque()
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withUnsafeArgumentPackPointer(__ptr_size) { __accessPtr in
                    withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                        GodotArrayBindings.methodResize(__ptr_self, __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    @discardableResult
    mutating internal func _insert(
        position: Int,
        value: borrowing Godot.Variant.Storage
    ) -> Int {
        makeUniqueIfSharedOpaque()
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: position) { __ptr_position in
                withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                    withUnsafeArgumentPackPointer(__ptr_position, __ptr_value) { __accessPtr in
                        withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                            GodotArrayBindings.methodInsert(__ptr_self, __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }

    mutating internal func _removeAt(
        position: Int
    ) {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeRawPointer(to: position) { __ptr_position in
            withUnsafeArgumentPackPointer(__ptr_position) { __accessPtr in
                withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                    GodotArrayBindings.methodRemoveAt(__ptr_self, __accessPtr, nil, 1)
                }
            }
        }
    }

    mutating internal func _fill(
        value: borrowing Godot.Variant.Storage
    ) {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
            withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
                withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                    GodotArrayBindings.methodFill(__ptr_self, __accessPtr, nil, 1)
                }
            }
        }
    }

    mutating internal func _erase(
        value: borrowing Godot.Variant.Storage
    ) {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
            withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
                withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                    GodotArrayBindings.methodErase(__ptr_self, __accessPtr, nil, 1)
                }
            }
        }
    }

    internal func _front() -> Godot.Variant.Storage {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotArrayBindings.methodFront(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _back() -> Godot.Variant.Storage {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotArrayBindings.methodBack(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _pickRandom() -> Godot.Variant.Storage {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotArrayBindings.methodPickRandom(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _find(
        what: borrowing Godot.Variant.Storage,
        from: Int = 0
    ) -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: what) { __ptr_what in
                withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
                    withUnsafeArgumentPackPointer(__ptr_what, __ptr_from) { __accessPtr in
                        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                            GodotArrayBindings.methodFind(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }

    internal func _rfind(
        what: borrowing Godot.Variant.Storage,
        from: Int = -1
    ) -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: what) { __ptr_what in
                withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
                    withUnsafeArgumentPackPointer(__ptr_what, __ptr_from) { __accessPtr in
                        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                            GodotArrayBindings.methodRfind(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }

    internal func _count(
        value: borrowing Godot.Variant.Storage
    ) -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        GodotArrayBindings.methodCount(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _has(
        value: borrowing Godot.Variant.Storage
    ) -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        GodotArrayBindings.methodHas(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    @discardableResult
    mutating internal func _popBack() -> Godot.Variant.Storage {
        makeUniqueIfSharedOpaque()
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                GodotArrayBindings.methodPopBack(__ptr_self, nil, __temporary, 0)
            }
        }
    }

    @discardableResult
    mutating internal func _popFront() -> Godot.Variant.Storage {
        makeUniqueIfSharedOpaque()
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                GodotArrayBindings.methodPopFront(__ptr_self, nil, __temporary, 0)
            }
        }
    }

    @discardableResult
    mutating internal func _popAt(
        position: Int
    ) -> Godot.Variant.Storage {
        makeUniqueIfSharedOpaque()
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: position) { __ptr_position in
                withUnsafeArgumentPackPointer(__ptr_position) { __accessPtr in
                    withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                        GodotArrayBindings.methodPopAt(__ptr_self, __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    mutating internal func _sort() {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
            GodotArrayBindings.methodSort(__ptr_self, nil, nil, 0)
        }
    }

    mutating internal func _sortCustom(
        `func`: Godot.Callable
    ) {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeRawPointer(to: `func`) { __ptr_func in
            withUnsafeArgumentPackPointer(__ptr_func) { __accessPtr in
                withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                    GodotArrayBindings.methodSortCustom(__ptr_self, __accessPtr, nil, 1)
                }
            }
        }
    }

    mutating internal func _shuffle() {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
            GodotArrayBindings.methodShuffle(__ptr_self, nil, nil, 0)
        }
    }

    internal func _bsearch(
        value: borrowing Godot.Variant.Storage,
        before: Bool = true
    ) -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withTransferrableUnsafeRawPointer(to: before) { __ptr_before in
                    withUnsafeArgumentPackPointer(__ptr_value, __ptr_before) { __accessPtr in
                        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                            GodotArrayBindings.methodBsearch(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }

    internal func _bsearchCustom(
        value: borrowing Godot.Variant.Storage,
        `func`: Godot.Callable,
        before: Bool = true
    ) -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withTransferrableUnsafeRawPointer(to: `func`) { __ptr_func in
                    withTransferrableUnsafeRawPointer(to: before) { __ptr_before in
                        withUnsafeArgumentPackPointer(__ptr_value, __ptr_func, __ptr_before) { __accessPtr in
                            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                                GodotArrayBindings.methodBsearchCustom(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 3)
                            }
                        }
                    }
                }
            }
        }
    }

    mutating internal func _reverse() {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
            GodotArrayBindings.methodReverse(__ptr_self, nil, nil, 0)
        }
    }

    internal func _duplicate(
        deep: Bool = false
    ) -> Godot.GodotArray<Element> {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: deep) { __ptr_deep in
                withUnsafeArgumentPackPointer(__ptr_deep) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        GodotArrayBindings.methodDuplicate(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _slice(
        begin: Int,
        end: Int = 2147483647,
        step: Int = 1,
        deep: Bool = false
    ) -> Godot.GodotArray<Element> {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: begin) { __ptr_begin in
                withTransferrableUnsafeRawPointer(to: end) { __ptr_end in
                    withTransferrableUnsafeRawPointer(to: step) { __ptr_step in
                        withTransferrableUnsafeRawPointer(to: deep) { __ptr_deep in
                            withUnsafeArgumentPackPointer(__ptr_begin, __ptr_end, __ptr_step, __ptr_deep) { __accessPtr in
                                withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                                    GodotArrayBindings.methodSlice(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 4)
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    internal func _filter(
        method: Godot.Callable
    ) -> Godot.GodotArray<Element> {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: method) { __ptr_method in
                withUnsafeArgumentPackPointer(__ptr_method) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        GodotArrayBindings.methodFilter(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _map(
        method: Godot.Callable
    ) -> Godot.GodotArray<Element> {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: method) { __ptr_method in
                withUnsafeArgumentPackPointer(__ptr_method) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        GodotArrayBindings.methodMap(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _reduce(
        method: Godot.Callable,
        accum: borrowing Godot.Variant.Storage
    ) -> Godot.Variant.Storage {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: method) { __ptr_method in
                withTransferrableUnsafeRawPointer(to: accum) { __ptr_accum in
                    withUnsafeArgumentPackPointer(__ptr_method, __ptr_accum) { __accessPtr in
                        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                            GodotArrayBindings.methodReduce(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }

    internal func _any(
        method: Godot.Callable
    ) -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: method) { __ptr_method in
                withUnsafeArgumentPackPointer(__ptr_method) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        GodotArrayBindings.methodAny(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _all(
        method: Godot.Callable
    ) -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: method) { __ptr_method in
                withUnsafeArgumentPackPointer(__ptr_method) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        GodotArrayBindings.methodAll(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _max() -> Godot.Variant.Storage {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotArrayBindings.methodMax(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _min() -> Godot.Variant.Storage {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotArrayBindings.methodMin(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _isTyped() -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotArrayBindings.methodIsTyped(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _isSameTyped<Value: Variant.Storable>(
        array: Godot.GodotArray<Value>
    ) -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: array) { __ptr_array in
                withUnsafeArgumentPackPointer(__ptr_array) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        GodotArrayBindings.methodIsSameTyped(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _typedBuiltin() -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotArrayBindings.methodGetTypedBuiltin(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _typedClassName() -> Godot.GodotStringName {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotArrayBindings.methodGetTypedClassName(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _typedScript() -> Godot.Variant.Storage {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotArrayBindings.methodGetTypedScript(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    mutating internal func _makeReadOnly() {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
            GodotArrayBindings.methodMakeReadOnly(__ptr_self, nil, nil, 0)
        }
    }

    internal func _isReadOnly() -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotArrayBindings.methodIsReadOnly(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }
}