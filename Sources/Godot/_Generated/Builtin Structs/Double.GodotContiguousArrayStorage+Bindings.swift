//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

internal enum DoubleGodotContiguousArrayStorageBindings {
    static private var areBindingsLoaded = false
    
    internal static func loadBindings() {
        precondition(!areBindingsLoaded, "GodotContiguousArray<Double> bindings are already loaded.")
        areBindingsLoaded = true
        
        destructor = GodotExtension.Interface.variantGetPtrDestructor(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY)!
        constructor = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY, 0)!
        constructorFromGodotContiguousArrayDouble = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY, 1)!
        constructorFromGodotArray = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY, 2)!
        operatorEqualVariant = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY, GDEXTENSION_VARIANT_TYPE_NIL)!
        operatorNotEqualVariant = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY, GDEXTENSION_VARIANT_TYPE_NIL)!
        operatorNot = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT, GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY, GDEXTENSION_VARIANT_TYPE_NIL)!
        operatorInGodotdictionary = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY, GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
        operatorInGodotarray = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY, GDEXTENSION_VARIANT_TYPE_ARRAY)!
        operatorEqualGodotcontiguousarraydouble = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY, GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY)!
        operatorNotEqualGodotcontiguousarraydouble = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY, GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY)!
        operatorAddGodotcontiguousarraydouble = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_ADD, GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY, GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY)!
        indexedSetter = GodotExtension.Interface.variantGetPtrIndexedSetter(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY)!
        indexedGetter = GodotExtension.Interface.variantGetPtrIndexedGetter(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY)!
        methodSize = GodotStringName(swiftStaticString: "size").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY, __ptr__method_name, 3173160232)!
        }
        methodIsEmpty = GodotStringName(swiftStaticString: "is_empty").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY, __ptr__method_name, 3918633141)!
        }
        methodSet = GodotStringName(swiftStaticString: "set").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY, __ptr__method_name, 1113000516)!
        }
        methodPushBack = GodotStringName(swiftStaticString: "push_back").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY, __ptr__method_name, 4094791666)!
        }
        methodAppend = GodotStringName(swiftStaticString: "append").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY, __ptr__method_name, 4094791666)!
        }
        methodAppendArray = GodotStringName(swiftStaticString: "append_array").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY, __ptr__method_name, 792078629)!
        }
        methodRemoveAt = GodotStringName(swiftStaticString: "remove_at").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY, __ptr__method_name, 2823966027)!
        }
        methodInsert = GodotStringName(swiftStaticString: "insert").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY, __ptr__method_name, 1379903876)!
        }
        methodFill = GodotStringName(swiftStaticString: "fill").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY, __ptr__method_name, 833936903)!
        }
        methodResize = GodotStringName(swiftStaticString: "resize").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY, __ptr__method_name, 848867239)!
        }
        methodClear = GodotStringName(swiftStaticString: "clear").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY, __ptr__method_name, 3218959716)!
        }
        methodHas = GodotStringName(swiftStaticString: "has").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY, __ptr__method_name, 1296369134)!
        }
        methodReverse = GodotStringName(swiftStaticString: "reverse").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY, __ptr__method_name, 3218959716)!
        }
        methodSlice = GodotStringName(swiftStaticString: "slice").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY, __ptr__method_name, 2192974324)!
        }
        methodToByteArray = GodotStringName(swiftStaticString: "to_byte_array").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY, __ptr__method_name, 247621236)!
        }
        methodSort = GodotStringName(swiftStaticString: "sort").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY, __ptr__method_name, 3218959716)!
        }
        methodBsearch = GodotStringName(swiftStaticString: "bsearch").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY, __ptr__method_name, 1188816338)!
        }
        methodDuplicate = GodotStringName(swiftStaticString: "duplicate").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY, __ptr__method_name, 949266573)!
        }
        methodFind = GodotStringName(swiftStaticString: "find").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY, __ptr__method_name, 1343150241)!
        }
        methodRfind = GodotStringName(swiftStaticString: "rfind").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY, __ptr__method_name, 1343150241)!
        }
        methodCount = GodotStringName(swiftStaticString: "count").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY, __ptr__method_name, 2859915090)!
        }
    }
    
    static private(set) var destructor: GDExtensionPtrDestructor!
    static private(set) var constructor: GDExtensionPtrConstructor!
    static private(set) var constructorFromGodotContiguousArrayDouble: GDExtensionPtrConstructor!
    static private(set) var constructorFromGodotArray: GDExtensionPtrConstructor!
    static private(set) var operatorEqualVariant: GDExtensionPtrOperatorEvaluator!
    static private(set) var operatorNotEqualVariant: GDExtensionPtrOperatorEvaluator!
    static private(set) var operatorNot: GDExtensionPtrOperatorEvaluator!
    static private(set) var operatorInGodotdictionary: GDExtensionPtrOperatorEvaluator!
    static private(set) var operatorInGodotarray: GDExtensionPtrOperatorEvaluator!
    static private(set) var operatorEqualGodotcontiguousarraydouble: GDExtensionPtrOperatorEvaluator!
    static private(set) var operatorNotEqualGodotcontiguousarraydouble: GDExtensionPtrOperatorEvaluator!
    static private(set) var operatorAddGodotcontiguousarraydouble: GDExtensionPtrOperatorEvaluator!
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

extension Double.GodotContiguousArrayStorage {
    static internal func makeOpaqueStorage(
        useDestructor: Bool = true
    ) -> Opaque.Storage {
        Opaque.Storage(size: 16, destructorPtr: useDestructor ? DoubleGodotContiguousArrayStorageBindings.destructor : nil)
    }
    
    static internal func make() -> Opaque.Storage {
        var __temporary: Opaque.Storage = makeOpaqueStorage()
        __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
            DoubleGodotContiguousArrayStorageBindings.constructor(__ptr___temporary, nil)
        }
        return __temporary
    }
    
    static internal func make(
        from: Double.GodotContiguousArrayStorage
    ) -> Opaque.Storage {
        var __temporary: Opaque.Storage = makeOpaqueStorage()
        withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
            withUnsafeArgumentPackPointer(__ptr_from) { __accessPtr in
                __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                    DoubleGodotContiguousArrayStorageBindings.constructorFromGodotContiguousArrayDouble(__ptr___temporary, __accessPtr)
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
                    DoubleGodotContiguousArrayStorageBindings.constructorFromGodotArray(__ptr___temporary, __accessPtr)
                }
            }
        }
        return __temporary
    }
    
    static internal func _operatorEqual<Value: Variant.Storable>(
        _ lhs: Double.GodotContiguousArrayStorage,
        _ rhs: Value
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                Godot.Variant.withStorageUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    DoubleGodotContiguousArrayStorageBindings.operatorEqualVariant(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }
    
    static internal func _operatorNotEqual<Value: Variant.Storable>(
        _ lhs: Double.GodotContiguousArrayStorage,
        _ rhs: Value
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                Godot.Variant.withStorageUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    DoubleGodotContiguousArrayStorageBindings.operatorNotEqualVariant(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }
    
    static internal func _operatorNot(
        _ lhs: Double.GodotContiguousArrayStorage
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                DoubleGodotContiguousArrayStorageBindings.operatorNot(__ptr_lhs, nil, __temporary)
            }
        }
    }
    
    static internal func _operatorIn<Value1: Variant.Storable, Value2: Variant.Storable>(
        _ lhs: Double.GodotContiguousArrayStorage,
        _ rhs: Godot.GodotDictionary<Value1, Value2>
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    DoubleGodotContiguousArrayStorageBindings.operatorInGodotdictionary(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }
    
    static internal func _operatorIn<Value: Variant.Storable>(
        _ lhs: Double.GodotContiguousArrayStorage,
        _ rhs: Godot.GodotArray<Value>
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    DoubleGodotContiguousArrayStorageBindings.operatorInGodotarray(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }
    
    static internal func _operatorEqual(
        _ lhs: Double.GodotContiguousArrayStorage,
        _ rhs: Double.GodotContiguousArrayStorage
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    DoubleGodotContiguousArrayStorageBindings.operatorEqualGodotcontiguousarraydouble(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }
    
    static internal func _operatorNotEqual(
        _ lhs: Double.GodotContiguousArrayStorage,
        _ rhs: Double.GodotContiguousArrayStorage
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    DoubleGodotContiguousArrayStorageBindings.operatorNotEqualGodotcontiguousarraydouble(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }
    
    static internal func _operatorAdd(
        _ lhs: Double.GodotContiguousArrayStorage,
        _ rhs: Double.GodotContiguousArrayStorage
    ) -> Double.GodotContiguousArrayStorage {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    DoubleGodotContiguousArrayStorageBindings.operatorAddGodotcontiguousarraydouble(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }
    
    internal func _getValue(at index: GDExtensionInt) -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                DoubleGodotContiguousArrayStorageBindings.indexedGetter(__ptr_self, index, __temporary)
            }
        }
    }
    
    internal func _setValue(_ value: Double, at index: GDExtensionInt) {
        withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                DoubleGodotContiguousArrayStorageBindings.indexedSetter(UnsafeMutableRawPointer(mutating: __ptr_self), index, __ptr_value)
            }
        }
    }
    
    internal func _size() -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                DoubleGodotContiguousArrayStorageBindings.methodSize(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }
    
    internal func _isEmpty() -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                DoubleGodotContiguousArrayStorageBindings.methodIsEmpty(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }
    
    internal func _set(
        index: Int,
        value: Double
    ) {
        withTransferrableUnsafeRawPointer(to: index) { __ptr_index in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_index, __ptr_value) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        DoubleGodotContiguousArrayStorageBindings.methodSet(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, nil, 2)
                    }
                }
            }
        }
    }
    
    internal func _pushBack(
        value: Double
    ) -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        DoubleGodotContiguousArrayStorageBindings.methodPushBack(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }
    
    internal func _append(
        value: Double
    ) -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        DoubleGodotContiguousArrayStorageBindings.methodAppend(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }
    
    internal func _appendArray(
        _ array: Double.GodotContiguousArrayStorage
    ) {
        withTransferrableUnsafeRawPointer(to: array) { __ptr_array in
            withUnsafeArgumentPackPointer(__ptr_array) { __accessPtr in
                withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                    DoubleGodotContiguousArrayStorageBindings.methodAppendArray(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, nil, 1)
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
                    DoubleGodotContiguousArrayStorageBindings.methodRemoveAt(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, nil, 1)
                }
            }
        }
    }
    
    internal func _insert(
        atIndex index: Int,
        value: Double
    ) -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: index) { __ptr_index in
                withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                    withUnsafeArgumentPackPointer(__ptr_index, __ptr_value) { __accessPtr in
                        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                            DoubleGodotContiguousArrayStorageBindings.methodInsert(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }
    
    internal func _fill(
        value: Double
    ) {
        withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
            withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
                withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                    DoubleGodotContiguousArrayStorageBindings.methodFill(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, nil, 1)
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
                        DoubleGodotContiguousArrayStorageBindings.methodResize(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }
    
    internal func _clear() {
        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
            DoubleGodotContiguousArrayStorageBindings.methodClear(UnsafeMutableRawPointer(mutating: __ptr_self), nil, nil, 0)
        }
    }
    
    internal func _has(
        value: Double
    ) -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        DoubleGodotContiguousArrayStorageBindings.methodHas(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }
    
    internal func _reverse() {
        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
            DoubleGodotContiguousArrayStorageBindings.methodReverse(UnsafeMutableRawPointer(mutating: __ptr_self), nil, nil, 0)
        }
    }
    
    internal func _slice(
        begin: Int,
        end: Int = 2147483647
    ) -> Double.GodotContiguousArrayStorage {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: begin) { __ptr_begin in
                withTransferrableUnsafeRawPointer(to: end) { __ptr_end in
                    withUnsafeArgumentPackPointer(__ptr_begin, __ptr_end) { __accessPtr in
                        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                            DoubleGodotContiguousArrayStorageBindings.methodSlice(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }
    
    internal func _toByteArray() -> UInt8.GodotContiguousArrayStorage {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                DoubleGodotContiguousArrayStorageBindings.methodToByteArray(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }
    
    internal func _sort() {
        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
            DoubleGodotContiguousArrayStorageBindings.methodSort(UnsafeMutableRawPointer(mutating: __ptr_self), nil, nil, 0)
        }
    }
    
    internal func _bsearch(
        value: Double,
        before: Bool = true
    ) -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withTransferrableUnsafeRawPointer(to: before) { __ptr_before in
                    withUnsafeArgumentPackPointer(__ptr_value, __ptr_before) { __accessPtr in
                        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                            DoubleGodotContiguousArrayStorageBindings.methodBsearch(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }
    
    internal func _duplicate() -> Double.GodotContiguousArrayStorage {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                DoubleGodotContiguousArrayStorageBindings.methodDuplicate(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }
    
    internal func _find(
        value: Double,
        from: Int = 0
    ) -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
                    withUnsafeArgumentPackPointer(__ptr_value, __ptr_from) { __accessPtr in
                        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                            DoubleGodotContiguousArrayStorageBindings.methodFind(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }
    
    internal func _rfind(
        value: Double,
        from: Int = -1
    ) -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
                    withUnsafeArgumentPackPointer(__ptr_value, __ptr_from) { __accessPtr in
                        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                            DoubleGodotContiguousArrayStorageBindings.methodRfind(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }
    
    internal func _count(
        value: Double
    ) -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        DoubleGodotContiguousArrayStorageBindings.methodCount(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }
}