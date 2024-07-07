//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

internal enum Int32GodotContiguousArrayStorageBindings {
    static private var areBindingsLoaded = false
    
    internal static func loadBindings() {
        precondition(!areBindingsLoaded, "GodotContiguousArray<Int32> bindings are already loaded.")
        areBindingsLoaded = true
        
        destructor = GodotExtension.Interface.variantGetPtrDestructor(GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY)!
        constructor = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY, 0)!
        constructorFromGodotContiguousArrayInt32 = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY, 1)!
        constructorFromGodotArray = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY, 2)!
        operatorEqualVariant = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY, GDEXTENSION_VARIANT_TYPE_NIL)!
        operatorNotEqualVariant = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY, GDEXTENSION_VARIANT_TYPE_NIL)!
        operatorNot = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT, GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY, GDEXTENSION_VARIANT_TYPE_NIL)!
        operatorInGodotdictionary = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY, GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
        operatorInGodotarray = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY, GDEXTENSION_VARIANT_TYPE_ARRAY)!
        operatorEqualGodotcontiguousarrayint32 = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY, GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY)!
        operatorNotEqualGodotcontiguousarrayint32 = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY, GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY)!
        operatorAddGodotcontiguousarrayint32 = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_ADD, GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY, GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY)!
        indexedSetter = GodotExtension.Interface.variantGetPtrIndexedSetter(GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY)!
        indexedGetter = GodotExtension.Interface.variantGetPtrIndexedGetter(GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY)!
        methodSize = GodotStringName(swiftStaticString: "size").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY, __ptr__method_name, 3173160232)!
        }
        methodIsEmpty = GodotStringName(swiftStaticString: "is_empty").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY, __ptr__method_name, 3918633141)!
        }
        methodSet = GodotStringName(swiftStaticString: "set").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY, __ptr__method_name, 3638975848)!
        }
        methodPushBack = GodotStringName(swiftStaticString: "push_back").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY, __ptr__method_name, 694024632)!
        }
        methodAppend = GodotStringName(swiftStaticString: "append").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY, __ptr__method_name, 694024632)!
        }
        methodAppendArray = GodotStringName(swiftStaticString: "append_array").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY, __ptr__method_name, 1087733270)!
        }
        methodRemoveAt = GodotStringName(swiftStaticString: "remove_at").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY, __ptr__method_name, 2823966027)!
        }
        methodInsert = GodotStringName(swiftStaticString: "insert").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY, __ptr__method_name, 1487112728)!
        }
        methodFill = GodotStringName(swiftStaticString: "fill").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY, __ptr__method_name, 2823966027)!
        }
        methodResize = GodotStringName(swiftStaticString: "resize").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY, __ptr__method_name, 848867239)!
        }
        methodClear = GodotStringName(swiftStaticString: "clear").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY, __ptr__method_name, 3218959716)!
        }
        methodHas = GodotStringName(swiftStaticString: "has").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY, __ptr__method_name, 931488181)!
        }
        methodReverse = GodotStringName(swiftStaticString: "reverse").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY, __ptr__method_name, 3218959716)!
        }
        methodSlice = GodotStringName(swiftStaticString: "slice").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY, __ptr__method_name, 1216021098)!
        }
        methodToByteArray = GodotStringName(swiftStaticString: "to_byte_array").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY, __ptr__method_name, 247621236)!
        }
        methodSort = GodotStringName(swiftStaticString: "sort").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY, __ptr__method_name, 3218959716)!
        }
        methodBsearch = GodotStringName(swiftStaticString: "bsearch").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY, __ptr__method_name, 3380005890)!
        }
        methodDuplicate = GodotStringName(swiftStaticString: "duplicate").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY, __ptr__method_name, 1997843129)!
        }
        methodFind = GodotStringName(swiftStaticString: "find").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY, __ptr__method_name, 2984303840)!
        }
        methodRfind = GodotStringName(swiftStaticString: "rfind").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY, __ptr__method_name, 2984303840)!
        }
        methodCount = GodotStringName(swiftStaticString: "count").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY, __ptr__method_name, 4103005248)!
        }
    }
    
    static private(set) var destructor: GDExtensionPtrDestructor!
    static private(set) var constructor: GDExtensionPtrConstructor!
    static private(set) var constructorFromGodotContiguousArrayInt32: GDExtensionPtrConstructor!
    static private(set) var constructorFromGodotArray: GDExtensionPtrConstructor!
    static private(set) var operatorEqualVariant: GDExtensionPtrOperatorEvaluator!
    static private(set) var operatorNotEqualVariant: GDExtensionPtrOperatorEvaluator!
    static private(set) var operatorNot: GDExtensionPtrOperatorEvaluator!
    static private(set) var operatorInGodotdictionary: GDExtensionPtrOperatorEvaluator!
    static private(set) var operatorInGodotarray: GDExtensionPtrOperatorEvaluator!
    static private(set) var operatorEqualGodotcontiguousarrayint32: GDExtensionPtrOperatorEvaluator!
    static private(set) var operatorNotEqualGodotcontiguousarrayint32: GDExtensionPtrOperatorEvaluator!
    static private(set) var operatorAddGodotcontiguousarrayint32: GDExtensionPtrOperatorEvaluator!
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
    static private(set) var methodToByteArray: GDExtensionPtrBuiltInMethod!
    static private(set) var methodSort: GDExtensionPtrBuiltInMethod!
    static private(set) var methodBsearch: GDExtensionPtrBuiltInMethod!
    static private(set) var methodDuplicate: GDExtensionPtrBuiltInMethod!
    static private(set) var methodFind: GDExtensionPtrBuiltInMethod!
    static private(set) var methodRfind: GDExtensionPtrBuiltInMethod!
    static private(set) var methodCount: GDExtensionPtrBuiltInMethod!
}

extension Int32.GodotContiguousArrayStorage {
    static internal func makeOpaqueStorage(
        useDestructor: Bool = true
    ) -> Opaque.Storage {
        Opaque.Storage(size: 16, destructorPtr: useDestructor ? Int32GodotContiguousArrayStorageBindings.destructor : nil)
    }
    
    static internal func make() -> Opaque.Storage {
        var __temporary: Opaque.Storage = makeOpaqueStorage()
        __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
            Int32GodotContiguousArrayStorageBindings.constructor(__ptr___temporary, nil)
        }
        return __temporary
    }
    
    static internal func make(
        from: Int32.GodotContiguousArrayStorage
    ) -> Opaque.Storage {
        var __temporary: Opaque.Storage = makeOpaqueStorage()
        withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
            withUnsafeArgumentPackPointer(__ptr_from) { __accessPtr in
                __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                    Int32GodotContiguousArrayStorageBindings.constructorFromGodotContiguousArrayInt32(__ptr___temporary, __accessPtr)
                }
            }
        }
        return __temporary
    }
    
    static internal func make<Value: Variant.Storable>(
        from: Godot.GodotArray<Value>
    ) -> Opaque.Storage {
        var __temporary: Opaque.Storage = makeOpaqueStorage()
        withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
            withUnsafeArgumentPackPointer(__ptr_from) { __accessPtr in
                __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                    Int32GodotContiguousArrayStorageBindings.constructorFromGodotArray(__ptr___temporary, __accessPtr)
                }
            }
        }
        return __temporary
    }
    
    static internal func _operatorEqual<Value: Variant.Storable>(
        _ lhs: Int32.GodotContiguousArrayStorage,
        _ rhs: Value
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                Godot.Variant.withStorageUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    Int32GodotContiguousArrayStorageBindings.operatorEqualVariant(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }
    
    static internal func _operatorNotEqual<Value: Variant.Storable>(
        _ lhs: Int32.GodotContiguousArrayStorage,
        _ rhs: Value
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                Godot.Variant.withStorageUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    Int32GodotContiguousArrayStorageBindings.operatorNotEqualVariant(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }
    
    static internal func _operatorNot(
        _ lhs: Int32.GodotContiguousArrayStorage
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                Int32GodotContiguousArrayStorageBindings.operatorNot(__ptr_lhs, nil, __temporary)
            }
        }
    }
    
    static internal func _operatorIn<Value1: Variant.Storable, Value2: Variant.Storable>(
        _ lhs: Int32.GodotContiguousArrayStorage,
        _ rhs: Godot.GodotDictionary<Value1, Value2>
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    Int32GodotContiguousArrayStorageBindings.operatorInGodotdictionary(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }
    
    static internal func _operatorIn<Value: Variant.Storable>(
        _ lhs: Int32.GodotContiguousArrayStorage,
        _ rhs: Godot.GodotArray<Value>
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    Int32GodotContiguousArrayStorageBindings.operatorInGodotarray(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }
    
    static internal func _operatorEqual(
        _ lhs: Int32.GodotContiguousArrayStorage,
        _ rhs: Int32.GodotContiguousArrayStorage
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    Int32GodotContiguousArrayStorageBindings.operatorEqualGodotcontiguousarrayint32(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }
    
    static internal func _operatorNotEqual(
        _ lhs: Int32.GodotContiguousArrayStorage,
        _ rhs: Int32.GodotContiguousArrayStorage
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    Int32GodotContiguousArrayStorageBindings.operatorNotEqualGodotcontiguousarrayint32(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }
    
    static internal func _operatorAdd(
        _ lhs: Int32.GodotContiguousArrayStorage,
        _ rhs: Int32.GodotContiguousArrayStorage
    ) -> Int32.GodotContiguousArrayStorage {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    Int32GodotContiguousArrayStorageBindings.operatorAddGodotcontiguousarrayint32(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }
    
    internal func _getValue(at index: GDExtensionInt) -> Int {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                Int32GodotContiguousArrayStorageBindings.indexedGetter(__ptr_self, index, __temporary)
            }
        }
    }
    
    internal func _setValue(_ value: Int, at index: GDExtensionInt) {
        withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                Int32GodotContiguousArrayStorageBindings.indexedSetter(UnsafeMutableRawPointer(mutating: __ptr_self), index, __ptr_value)
            }
        }
    }
    
    internal func _size() -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                Int32GodotContiguousArrayStorageBindings.methodSize(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }
    
    internal func _isEmpty() -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                Int32GodotContiguousArrayStorageBindings.methodIsEmpty(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
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
                        Int32GodotContiguousArrayStorageBindings.methodSet(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, nil, 2)
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
                        Int32GodotContiguousArrayStorageBindings.methodPushBack(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
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
                        Int32GodotContiguousArrayStorageBindings.methodAppend(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }
    
    internal func _appendArray(
        _ array: Int32.GodotContiguousArrayStorage
    ) {
        withTransferrableUnsafeRawPointer(to: array) { __ptr_array in
            withUnsafeArgumentPackPointer(__ptr_array) { __accessPtr in
                withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                    Int32GodotContiguousArrayStorageBindings.methodAppendArray(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, nil, 1)
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
                    Int32GodotContiguousArrayStorageBindings.methodRemoveAt(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, nil, 1)
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
                            Int32GodotContiguousArrayStorageBindings.methodInsert(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
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
                    Int32GodotContiguousArrayStorageBindings.methodFill(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, nil, 1)
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
                        Int32GodotContiguousArrayStorageBindings.methodResize(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }
    
    internal func _clear() {
        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
            Int32GodotContiguousArrayStorageBindings.methodClear(UnsafeMutableRawPointer(mutating: __ptr_self), nil, nil, 0)
        }
    }
    
    internal func _has(
        value: Int
    ) -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        Int32GodotContiguousArrayStorageBindings.methodHas(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }
    
    internal func _reverse() {
        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
            Int32GodotContiguousArrayStorageBindings.methodReverse(UnsafeMutableRawPointer(mutating: __ptr_self), nil, nil, 0)
        }
    }
    
    internal func _slice(
        begin: Int,
        end: Int = 2147483647
    ) -> Int32.GodotContiguousArrayStorage {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: begin) { __ptr_begin in
                withTransferrableUnsafeRawPointer(to: end) { __ptr_end in
                    withUnsafeArgumentPackPointer(__ptr_begin, __ptr_end) { __accessPtr in
                        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                            Int32GodotContiguousArrayStorageBindings.methodSlice(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }
    
    internal func _toByteArray() -> UInt8.GodotContiguousArrayStorage {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                Int32GodotContiguousArrayStorageBindings.methodToByteArray(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }
    
    internal func _sort() {
        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
            Int32GodotContiguousArrayStorageBindings.methodSort(UnsafeMutableRawPointer(mutating: __ptr_self), nil, nil, 0)
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
                            Int32GodotContiguousArrayStorageBindings.methodBsearch(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }
    
    internal func _duplicate() -> Int32.GodotContiguousArrayStorage {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                Int32GodotContiguousArrayStorageBindings.methodDuplicate(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
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
                            Int32GodotContiguousArrayStorageBindings.methodFind(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
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
                            Int32GodotContiguousArrayStorageBindings.methodRfind(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
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
                        Int32GodotContiguousArrayStorageBindings.methodCount(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }
}