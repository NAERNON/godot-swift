//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

internal enum PackedStringArrayBindings {
    static private var areBindingsLoaded = false

    internal static func loadBindings() {
        precondition(!areBindingsLoaded, "PackedStringArray bindings are already loaded.")
        areBindingsLoaded = true
        destructor = GodotExtension.Interface.variantGetPtrDestructor(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY)!
        constructor = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, 0)!
        constructorFromPackedStringArray = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, 1)!
        constructorFromGodotArray = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, 2)!
        operatorEqualVariant = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, GDEXTENSION_VARIANT_TYPE_NIL)!
        operatorNotEqualVariant = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, GDEXTENSION_VARIANT_TYPE_NIL)!
        operatorNot = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT, GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, GDEXTENSION_VARIANT_TYPE_NIL)!
        operatorInGodotdictionary = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
        operatorInGodotarray = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, GDEXTENSION_VARIANT_TYPE_ARRAY)!
        operatorEqualPackedstringarray = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY)!
        operatorNotEqualPackedstringarray = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY)!
        operatorAddPackedstringarray = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_ADD, GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY)!
        indexedSetter = GodotExtension.Interface.variantGetPtrIndexedSetter(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY)!
        indexedGetter = GodotExtension.Interface.variantGetPtrIndexedGetter(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY)!
        methodSize = GodotStringName(swiftStaticString: "size").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, __ptr__method_name, 3173160232)!
        }
        methodIsEmpty = GodotStringName(swiftStaticString: "is_empty").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, __ptr__method_name, 3918633141)!
        }
        methodSet = GodotStringName(swiftStaticString: "set").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, __ptr__method_name, 725585539)!
        }
        methodPushBack = GodotStringName(swiftStaticString: "push_back").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, __ptr__method_name, 816187996)!
        }
        methodAppend = GodotStringName(swiftStaticString: "append").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, __ptr__method_name, 816187996)!
        }
        methodAppendArray = GodotStringName(swiftStaticString: "append_array").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, __ptr__method_name, 1120103966)!
        }
        methodRemoveAt = GodotStringName(swiftStaticString: "remove_at").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, __ptr__method_name, 2823966027)!
        }
        methodInsert = GodotStringName(swiftStaticString: "insert").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, __ptr__method_name, 2432393153)!
        }
        methodFill = GodotStringName(swiftStaticString: "fill").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, __ptr__method_name, 3174917410)!
        }
        methodResize = GodotStringName(swiftStaticString: "resize").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, __ptr__method_name, 848867239)!
        }
        methodClear = GodotStringName(swiftStaticString: "clear").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, __ptr__method_name, 3218959716)!
        }
        methodHas = GodotStringName(swiftStaticString: "has").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, __ptr__method_name, 2566493496)!
        }
        methodReverse = GodotStringName(swiftStaticString: "reverse").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, __ptr__method_name, 3218959716)!
        }
        methodSlice = GodotStringName(swiftStaticString: "slice").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, __ptr__method_name, 2094601407)!
        }
        methodToByteArray = GodotStringName(swiftStaticString: "to_byte_array").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, __ptr__method_name, 247621236)!
        }
        methodSort = GodotStringName(swiftStaticString: "sort").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, __ptr__method_name, 3218959716)!
        }
        methodBsearch = GodotStringName(swiftStaticString: "bsearch").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, __ptr__method_name, 328976671)!
        }
        methodDuplicate = GodotStringName(swiftStaticString: "duplicate").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, __ptr__method_name, 2991231410)!
        }
        methodFind = GodotStringName(swiftStaticString: "find").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, __ptr__method_name, 1760645412)!
        }
        methodRfind = GodotStringName(swiftStaticString: "rfind").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, __ptr__method_name, 1760645412)!
        }
        methodCount = GodotStringName(swiftStaticString: "count").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, __ptr__method_name, 2920860731)!
        }
    }

    static private (set) var destructor: GDExtensionPtrDestructor!

    static private (set) var constructor: GDExtensionPtrConstructor!

    static private (set) var constructorFromPackedStringArray: GDExtensionPtrConstructor!

    static private (set) var constructorFromGodotArray: GDExtensionPtrConstructor!

    static private (set) var operatorEqualVariant: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorNotEqualVariant: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorNot: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorInGodotdictionary: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorInGodotarray: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorEqualPackedstringarray: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorNotEqualPackedstringarray: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorAddPackedstringarray: GDExtensionPtrOperatorEvaluator!

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

    static private (set) var methodToByteArray: GDExtensionPtrBuiltInMethod!

    static private (set) var methodSort: GDExtensionPtrBuiltInMethod!

    static private (set) var methodBsearch: GDExtensionPtrBuiltInMethod!

    static private (set) var methodDuplicate: GDExtensionPtrBuiltInMethod!

    static private (set) var methodFind: GDExtensionPtrBuiltInMethod!

    static private (set) var methodRfind: GDExtensionPtrBuiltInMethod!

    static private (set) var methodCount: GDExtensionPtrBuiltInMethod!
}

extension PackedStringArray {
    static internal func makeOpaque(
        useDestructor: Bool = true
    ) -> Opaque {
        Opaque(size: 16, destructorPtr: useDestructor ? PackedStringArrayBindings.destructor : nil)
    }

    static internal func make() -> Self {
        let __temporary: Opaque = makeOpaque()
        __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
            PackedStringArrayBindings.constructor(__ptr___temporary, nil)
        }
        return Self.init(opaque: __temporary)
    }

    static internal func make(
        from: Godot.PackedStringArray
    ) -> Self {
        let __temporary: Opaque = makeOpaque()
        withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
            withUnsafeArgumentPackPointer(__ptr_from) { __accessPtr in
                __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                    PackedStringArrayBindings.constructorFromPackedStringArray(__ptr___temporary, __accessPtr)
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
                    PackedStringArrayBindings.constructorFromGodotArray(__ptr___temporary, __accessPtr)
                }
            }
        }
        return Self.init(opaque: __temporary)
    }

    static internal func _operatorEqual<Value: Variant.Storable>(
        _ lhs: Godot.PackedStringArray,
        _ rhs: Value
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                Godot.Variant.withStorageUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    PackedStringArrayBindings.operatorEqualVariant(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorNotEqual<Value: Variant.Storable>(
        _ lhs: Godot.PackedStringArray,
        _ rhs: Value
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                Godot.Variant.withStorageUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    PackedStringArrayBindings.operatorNotEqualVariant(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorNot(
        _ lhs: Godot.PackedStringArray
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                PackedStringArrayBindings.operatorNot(__ptr_lhs, nil, __temporary)
            }
        }
    }

    static internal func _operatorIn<Value1: Variant.Storable, Value2: Variant.Storable>(
        _ lhs: Godot.PackedStringArray,
        _ rhs: Godot.GodotDictionary<Value1, Value2>
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    PackedStringArrayBindings.operatorInGodotdictionary(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorIn<Value: Variant.Storable>(
        _ lhs: Godot.PackedStringArray,
        _ rhs: Godot.GodotArray<Value>
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    PackedStringArrayBindings.operatorInGodotarray(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorEqual(
        _ lhs: Godot.PackedStringArray,
        _ rhs: Godot.PackedStringArray
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    PackedStringArrayBindings.operatorEqualPackedstringarray(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorNotEqual(
        _ lhs: Godot.PackedStringArray,
        _ rhs: Godot.PackedStringArray
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    PackedStringArrayBindings.operatorNotEqualPackedstringarray(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorAdd(
        _ lhs: Godot.PackedStringArray,
        _ rhs: Godot.PackedStringArray
    ) -> Godot.PackedStringArray {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    PackedStringArrayBindings.operatorAddPackedstringarray(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    internal func _getValue(
        at index: GDExtensionInt
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                PackedStringArrayBindings.indexedGetter(__ptr_self, index, __temporary)
            }
        }
    }

    mutating internal func _setValue(
        _ value: Godot.GodotString,
        at index: GDExtensionInt
    ) {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
            withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                PackedStringArrayBindings.indexedSetter(__ptr_self, index, __ptr_value)
            }
        }
    }

    internal func _size() -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                PackedStringArrayBindings.methodSize(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _isEmpty() -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                PackedStringArrayBindings.methodIsEmpty(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    mutating internal func _set(
        index: Int,
        value: Godot.GodotString
    ) {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeRawPointer(to: index) { __ptr_index in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_index, __ptr_value) { __accessPtr in
                    withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                        PackedStringArrayBindings.methodSet(__ptr_self, __accessPtr, nil, 2)
                    }
                }
            }
        }
    }

    @discardableResult
    mutating internal func _pushBack(
        value: Godot.GodotString
    ) -> Bool {
        makeUniqueIfSharedOpaque()
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
                    withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                        PackedStringArrayBindings.methodPushBack(__ptr_self, __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    @discardableResult
    mutating internal func _append(
        value: Godot.GodotString
    ) -> Bool {
        makeUniqueIfSharedOpaque()
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
                    withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                        PackedStringArrayBindings.methodAppend(__ptr_self, __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    mutating internal func _appendArray(
        _ array: Godot.PackedStringArray
    ) {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeRawPointer(to: array) { __ptr_array in
            withUnsafeArgumentPackPointer(__ptr_array) { __accessPtr in
                withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                    PackedStringArrayBindings.methodAppendArray(__ptr_self, __accessPtr, nil, 1)
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
                    PackedStringArrayBindings.methodRemoveAt(__ptr_self, __accessPtr, nil, 1)
                }
            }
        }
    }

    @discardableResult
    mutating internal func _insert(
        atIndex index: Int,
        value: Godot.GodotString
    ) -> Int {
        makeUniqueIfSharedOpaque()
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: index) { __ptr_index in
                withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                    withUnsafeArgumentPackPointer(__ptr_index, __ptr_value) { __accessPtr in
                        withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                            PackedStringArrayBindings.methodInsert(__ptr_self, __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }

    mutating internal func _fill(
        value: Godot.GodotString
    ) {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
            withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
                withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                    PackedStringArrayBindings.methodFill(__ptr_self, __accessPtr, nil, 1)
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
                        PackedStringArrayBindings.methodResize(__ptr_self, __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    mutating internal func _clear() {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
            PackedStringArrayBindings.methodClear(__ptr_self, nil, nil, 0)
        }
    }

    internal func _has(
        value: Godot.GodotString
    ) -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        PackedStringArrayBindings.methodHas(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    mutating internal func _reverse() {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
            PackedStringArrayBindings.methodReverse(__ptr_self, nil, nil, 0)
        }
    }

    internal func _slice(
        begin: Int,
        end: Int = 2147483647
    ) -> Godot.PackedStringArray {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: begin) { __ptr_begin in
                withTransferrableUnsafeRawPointer(to: end) { __ptr_end in
                    withUnsafeArgumentPackPointer(__ptr_begin, __ptr_end) { __accessPtr in
                        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                            PackedStringArrayBindings.methodSlice(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }

    internal func _toByteArray() -> Godot.PackedByteArray {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                PackedStringArrayBindings.methodToByteArray(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    mutating internal func _sort() {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
            PackedStringArrayBindings.methodSort(__ptr_self, nil, nil, 0)
        }
    }

    @discardableResult
    mutating internal func _bsearch(
        value: Godot.GodotString,
        before: Bool = true
    ) -> Int {
        makeUniqueIfSharedOpaque()
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withTransferrableUnsafeRawPointer(to: before) { __ptr_before in
                    withUnsafeArgumentPackPointer(__ptr_value, __ptr_before) { __accessPtr in
                        withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                            PackedStringArrayBindings.methodBsearch(__ptr_self, __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }

    @discardableResult
    mutating internal func _duplicate() -> Godot.PackedStringArray {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                PackedStringArrayBindings.methodDuplicate(__ptr_self, nil, __temporary, 0)
            }
        }
    }

    internal func _find(
        value: Godot.GodotString,
        from: Int = 0
    ) -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
                    withUnsafeArgumentPackPointer(__ptr_value, __ptr_from) { __accessPtr in
                        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                            PackedStringArrayBindings.methodFind(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }

    internal func _rfind(
        value: Godot.GodotString,
        from: Int = -1
    ) -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
                    withUnsafeArgumentPackPointer(__ptr_value, __ptr_from) { __accessPtr in
                        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                            PackedStringArrayBindings.methodRfind(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }

    internal func _count(
        value: Godot.GodotString
    ) -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        PackedStringArrayBindings.methodCount(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }
}