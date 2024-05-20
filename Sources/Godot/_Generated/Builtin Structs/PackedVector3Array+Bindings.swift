//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

internal enum PackedVector3ArrayBindings {
    static private var areBindingsLoaded = false

    internal static func loadBindings() {
        precondition(!areBindingsLoaded, "PackedVector3Array bindings are already loaded.")
        areBindingsLoaded = true
        destructor = GodotExtension.Interface.variantGetPtrDestructor(GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY)!
        constructor = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, 0)!
        constructorFromPackedVector3Array = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, 1)!
        constructorFromGodotArray = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, 2)!
        operatorEqualVariant = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, GDEXTENSION_VARIANT_TYPE_NIL)!
        operatorNotEqualVariant = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, GDEXTENSION_VARIANT_TYPE_NIL)!
        operatorNot = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT, GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, GDEXTENSION_VARIANT_TYPE_NIL)!
        operatorMultiplyTransform3d = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, GDEXTENSION_VARIANT_TYPE_TRANSFORM3D)!
        operatorInGodotdictionary = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
        operatorInGodotarray = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, GDEXTENSION_VARIANT_TYPE_ARRAY)!
        operatorEqualPackedvector3array = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY)!
        operatorNotEqualPackedvector3array = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY)!
        operatorAddPackedvector3array = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_ADD, GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY)!
        indexedSetter = GodotExtension.Interface.variantGetPtrIndexedSetter(GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY)!
        indexedGetter = GodotExtension.Interface.variantGetPtrIndexedGetter(GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY)!
        methodSize = GodotStringName(swiftStaticString: "size").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, __ptr__method_name, 3173160232)!
        }
        methodIsEmpty = GodotStringName(swiftStaticString: "is_empty").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, __ptr__method_name, 3918633141)!
        }
        methodSet = GodotStringName(swiftStaticString: "set").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, __ptr__method_name, 3975343409)!
        }
        methodPushBack = GodotStringName(swiftStaticString: "push_back").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, __ptr__method_name, 3295363524)!
        }
        methodAppend = GodotStringName(swiftStaticString: "append").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, __ptr__method_name, 3295363524)!
        }
        methodAppendArray = GodotStringName(swiftStaticString: "append_array").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, __ptr__method_name, 203538016)!
        }
        methodRemoveAt = GodotStringName(swiftStaticString: "remove_at").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, __ptr__method_name, 2823966027)!
        }
        methodInsert = GodotStringName(swiftStaticString: "insert").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, __ptr__method_name, 3892262309)!
        }
        methodFill = GodotStringName(swiftStaticString: "fill").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, __ptr__method_name, 3726392409)!
        }
        methodResize = GodotStringName(swiftStaticString: "resize").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, __ptr__method_name, 848867239)!
        }
        methodClear = GodotStringName(swiftStaticString: "clear").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, __ptr__method_name, 3218959716)!
        }
        methodHas = GodotStringName(swiftStaticString: "has").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, __ptr__method_name, 1749054343)!
        }
        methodReverse = GodotStringName(swiftStaticString: "reverse").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, __ptr__method_name, 3218959716)!
        }
        methodSlice = GodotStringName(swiftStaticString: "slice").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, __ptr__method_name, 2086131305)!
        }
        methodToByteArray = GodotStringName(swiftStaticString: "to_byte_array").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, __ptr__method_name, 247621236)!
        }
        methodSort = GodotStringName(swiftStaticString: "sort").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, __ptr__method_name, 3218959716)!
        }
        methodBsearch = GodotStringName(swiftStaticString: "bsearch").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, __ptr__method_name, 219263630)!
        }
        methodDuplicate = GodotStringName(swiftStaticString: "duplicate").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, __ptr__method_name, 2754175465)!
        }
        methodFind = GodotStringName(swiftStaticString: "find").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, __ptr__method_name, 3718155780)!
        }
        methodRfind = GodotStringName(swiftStaticString: "rfind").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, __ptr__method_name, 3718155780)!
        }
        methodCount = GodotStringName(swiftStaticString: "count").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY, __ptr__method_name, 194580386)!
        }
    }

    static private (set) var destructor: GDExtensionPtrDestructor!

    static private (set) var constructor: GDExtensionPtrConstructor!

    static private (set) var constructorFromPackedVector3Array: GDExtensionPtrConstructor!

    static private (set) var constructorFromGodotArray: GDExtensionPtrConstructor!

    static private (set) var operatorEqualVariant: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorNotEqualVariant: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorNot: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorMultiplyTransform3d: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorInGodotdictionary: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorInGodotarray: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorEqualPackedvector3array: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorNotEqualPackedvector3array: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorAddPackedvector3array: GDExtensionPtrOperatorEvaluator!

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

extension PackedVector3Array {
    static internal func makeOpaque(
        useDestructor: Bool = true
    ) -> Opaque {
        Opaque(size: 16, destructorPtr: useDestructor ? PackedVector3ArrayBindings.destructor : nil)
    }

    static internal func make() -> Self {
        let __temporary: Opaque = makeOpaque()
        __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
            PackedVector3ArrayBindings.constructor(__ptr___temporary, nil)
        }
        return Self.init(opaque: __temporary)
    }

    static internal func make(
        from: Godot.PackedVector3Array
    ) -> Self {
        let __temporary: Opaque = makeOpaque()
        withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
            withUnsafeArgumentPackPointer(__ptr_from) { __accessPtr in
                __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                    PackedVector3ArrayBindings.constructorFromPackedVector3Array(__ptr___temporary, __accessPtr)
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
                    PackedVector3ArrayBindings.constructorFromGodotArray(__ptr___temporary, __accessPtr)
                }
            }
        }
        return Self.init(opaque: __temporary)
    }

    static internal func _operatorEqual<Value: Variant.Storable>(
        _ lhs: Godot.PackedVector3Array,
        _ rhs: Value
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                Godot.Variant.withStorageUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    PackedVector3ArrayBindings.operatorEqualVariant(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorNotEqual<Value: Variant.Storable>(
        _ lhs: Godot.PackedVector3Array,
        _ rhs: Value
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                Godot.Variant.withStorageUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    PackedVector3ArrayBindings.operatorNotEqualVariant(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorNot(
        _ lhs: Godot.PackedVector3Array
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                PackedVector3ArrayBindings.operatorNot(__ptr_lhs, nil, __temporary)
            }
        }
    }

    static internal func _operatorMultiply(
        _ lhs: Godot.PackedVector3Array,
        _ rhs: Godot.Transform3D
    ) -> Godot.PackedVector3Array {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    PackedVector3ArrayBindings.operatorMultiplyTransform3d(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorIn<Value1: Variant.Storable, Value2: Variant.Storable>(
        _ lhs: Godot.PackedVector3Array,
        _ rhs: Godot.GodotDictionary<Value1, Value2>
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    PackedVector3ArrayBindings.operatorInGodotdictionary(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorIn<Value: Variant.Storable>(
        _ lhs: Godot.PackedVector3Array,
        _ rhs: Godot.GodotArray<Value>
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    PackedVector3ArrayBindings.operatorInGodotarray(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorEqual(
        _ lhs: Godot.PackedVector3Array,
        _ rhs: Godot.PackedVector3Array
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    PackedVector3ArrayBindings.operatorEqualPackedvector3array(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorNotEqual(
        _ lhs: Godot.PackedVector3Array,
        _ rhs: Godot.PackedVector3Array
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    PackedVector3ArrayBindings.operatorNotEqualPackedvector3array(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorAdd(
        _ lhs: Godot.PackedVector3Array,
        _ rhs: Godot.PackedVector3Array
    ) -> Godot.PackedVector3Array {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    PackedVector3ArrayBindings.operatorAddPackedvector3array(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    internal func _getValue(
        at index: GDExtensionInt
    ) -> Godot.Vector3 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                PackedVector3ArrayBindings.indexedGetter(__ptr_self, index, __temporary)
            }
        }
    }

    mutating internal func _setValue(
        _ value: Godot.Vector3,
        at index: GDExtensionInt
    ) {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
            withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                PackedVector3ArrayBindings.indexedSetter(__ptr_self, index, __ptr_value)
            }
        }
    }

    internal func _size() -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                PackedVector3ArrayBindings.methodSize(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _isEmpty() -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                PackedVector3ArrayBindings.methodIsEmpty(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    mutating internal func _set(
        index: Int,
        value: Godot.Vector3
    ) {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeRawPointer(to: index) { __ptr_index in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_index, __ptr_value) { __accessPtr in
                    withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                        PackedVector3ArrayBindings.methodSet(__ptr_self, __accessPtr, nil, 2)
                    }
                }
            }
        }
    }

    @discardableResult
    mutating internal func _pushBack(
        value: Godot.Vector3
    ) -> Bool {
        makeUniqueIfSharedOpaque()
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
                    withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                        PackedVector3ArrayBindings.methodPushBack(__ptr_self, __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    @discardableResult
    mutating internal func _append(
        value: Godot.Vector3
    ) -> Bool {
        makeUniqueIfSharedOpaque()
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
                    withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                        PackedVector3ArrayBindings.methodAppend(__ptr_self, __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    mutating internal func _appendArray(
        _ array: Godot.PackedVector3Array
    ) {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeRawPointer(to: array) { __ptr_array in
            withUnsafeArgumentPackPointer(__ptr_array) { __accessPtr in
                withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                    PackedVector3ArrayBindings.methodAppendArray(__ptr_self, __accessPtr, nil, 1)
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
                    PackedVector3ArrayBindings.methodRemoveAt(__ptr_self, __accessPtr, nil, 1)
                }
            }
        }
    }

    @discardableResult
    mutating internal func _insert(
        atIndex index: Int,
        value: Godot.Vector3
    ) -> Int {
        makeUniqueIfSharedOpaque()
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: index) { __ptr_index in
                withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                    withUnsafeArgumentPackPointer(__ptr_index, __ptr_value) { __accessPtr in
                        withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                            PackedVector3ArrayBindings.methodInsert(__ptr_self, __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }

    mutating internal func _fill(
        value: Godot.Vector3
    ) {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
            withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
                withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                    PackedVector3ArrayBindings.methodFill(__ptr_self, __accessPtr, nil, 1)
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
                        PackedVector3ArrayBindings.methodResize(__ptr_self, __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    mutating internal func _clear() {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
            PackedVector3ArrayBindings.methodClear(__ptr_self, nil, nil, 0)
        }
    }

    internal func _has(
        value: Godot.Vector3
    ) -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        PackedVector3ArrayBindings.methodHas(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    mutating internal func _reverse() {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
            PackedVector3ArrayBindings.methodReverse(__ptr_self, nil, nil, 0)
        }
    }

    internal func _slice(
        begin: Int,
        end: Int = 2147483647
    ) -> Godot.PackedVector3Array {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: begin) { __ptr_begin in
                withTransferrableUnsafeRawPointer(to: end) { __ptr_end in
                    withUnsafeArgumentPackPointer(__ptr_begin, __ptr_end) { __accessPtr in
                        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                            PackedVector3ArrayBindings.methodSlice(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }

    internal func _toByteArray() -> Godot.PackedByteArray {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                PackedVector3ArrayBindings.methodToByteArray(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    mutating internal func _sort() {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
            PackedVector3ArrayBindings.methodSort(__ptr_self, nil, nil, 0)
        }
    }

    @discardableResult
    mutating internal func _bsearch(
        value: Godot.Vector3,
        before: Bool = true
    ) -> Int {
        makeUniqueIfSharedOpaque()
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withTransferrableUnsafeRawPointer(to: before) { __ptr_before in
                    withUnsafeArgumentPackPointer(__ptr_value, __ptr_before) { __accessPtr in
                        withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                            PackedVector3ArrayBindings.methodBsearch(__ptr_self, __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }

    @discardableResult
    mutating internal func _duplicate() -> Godot.PackedVector3Array {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                PackedVector3ArrayBindings.methodDuplicate(__ptr_self, nil, __temporary, 0)
            }
        }
    }

    internal func _find(
        value: Godot.Vector3,
        from: Int = 0
    ) -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
                    withUnsafeArgumentPackPointer(__ptr_value, __ptr_from) { __accessPtr in
                        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                            PackedVector3ArrayBindings.methodFind(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }

    internal func _rfind(
        value: Godot.Vector3,
        from: Int = -1
    ) -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
                    withUnsafeArgumentPackPointer(__ptr_value, __ptr_from) { __accessPtr in
                        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                            PackedVector3ArrayBindings.methodRfind(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }

    internal func _count(
        value: Godot.Vector3
    ) -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        PackedVector3ArrayBindings.methodCount(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }
}