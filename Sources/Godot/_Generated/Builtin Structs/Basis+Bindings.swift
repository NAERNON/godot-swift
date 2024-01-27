//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
private var __constructor: GDExtensionPtrConstructor = {
    return GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_BASIS, 0)!
}()
private var __constructor_basis: GDExtensionPtrConstructor = {
    return GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_BASIS, 1)!
}()
private var __constructor_quaternion: GDExtensionPtrConstructor = {
    return GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_BASIS, 2)!
}()
private var __constructor_vector3_float: GDExtensionPtrConstructor = {
    return GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_BASIS, 3)!
}()
private var __constructor_vector3_vector3_vector3: GDExtensionPtrConstructor = {
    return GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_BASIS, 4)!
}()
private var __operator_binding_equal_variant: GDExtensionPtrOperatorEvaluator = {
    return GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_BASIS, GDEXTENSION_VARIANT_TYPE_NIL)!
}()
private var __operator_binding_not_equal_variant: GDExtensionPtrOperatorEvaluator = {
    return GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_BASIS, GDEXTENSION_VARIANT_TYPE_NIL)!
}()
private var __operator_binding_not: GDExtensionPtrOperatorEvaluator = {
    return GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT, GDEXTENSION_VARIANT_TYPE_BASIS, GDEXTENSION_VARIANT_TYPE_NIL)!
}()
private var __operator_binding_multiply_int: GDExtensionPtrOperatorEvaluator = {
    return GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_BASIS, GDEXTENSION_VARIANT_TYPE_INT)!
}()
private var __operator_binding_multiply_double: GDExtensionPtrOperatorEvaluator = {
    return GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_BASIS, GDEXTENSION_VARIANT_TYPE_FLOAT)!
}()
private var __operator_binding_multiply_vector3: GDExtensionPtrOperatorEvaluator = {
    return GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_BASIS, GDEXTENSION_VARIANT_TYPE_VECTOR3)!
}()
private var __operator_binding_equal_basis: GDExtensionPtrOperatorEvaluator = {
    return GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_BASIS, GDEXTENSION_VARIANT_TYPE_BASIS)!
}()
private var __operator_binding_not_equal_basis: GDExtensionPtrOperatorEvaluator = {
    return GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_BASIS, GDEXTENSION_VARIANT_TYPE_BASIS)!
}()
private var __operator_binding_multiply_basis: GDExtensionPtrOperatorEvaluator = {
    return GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_BASIS, GDEXTENSION_VARIANT_TYPE_BASIS)!
}()
private var __operator_binding_in_godotdictionary: GDExtensionPtrOperatorEvaluator = {
    return GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_BASIS, GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
}()
private var __operator_binding_in_godotarray: GDExtensionPtrOperatorEvaluator = {
    return GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_BASIS, GDEXTENSION_VARIANT_TYPE_ARRAY)!
}()
private var __indexed_setter: GDExtensionPtrIndexedSetter = {
    return GodotExtension.Interface.variantGetPtrIndexedSetter(GDEXTENSION_VARIANT_TYPE_BASIS)!
}()
private var __indexed_getter: GDExtensionPtrIndexedGetter = {
    return GodotExtension.Interface.variantGetPtrIndexedGetter(GDEXTENSION_VARIANT_TYPE_BASIS)!
}()
private var __method_binding_inverse: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "inverse").withGodotUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 594669093)!
    }
}()
private var __method_binding_transposed: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "transposed").withGodotUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 594669093)!
    }
}()
private var __method_binding_orthonormalized: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "orthonormalized").withGodotUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 594669093)!
    }
}()
private var __method_binding_determinant: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "determinant").withGodotUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 466405837)!
    }
}()
private var __method_binding_rotated: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "rotated").withGodotUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 1998708965)!
    }
}()
private var __method_binding_scaled: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "scaled").withGodotUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 3934786792)!
    }
}()
private var __method_binding_get_scale: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "get_scale").withGodotUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 1776574132)!
    }
}()
private var __method_binding_get_euler: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "get_euler").withGodotUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 1394941017)!
    }
}()
private var __method_binding_tdotx: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "tdotx").withGodotUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 1047977935)!
    }
}()
private var __method_binding_tdoty: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "tdoty").withGodotUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 1047977935)!
    }
}()
private var __method_binding_tdotz: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "tdotz").withGodotUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 1047977935)!
    }
}()
private var __method_binding_slerp: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "slerp").withGodotUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 3118673011)!
    }
}()
private var __method_binding_is_conformal: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "is_conformal").withGodotUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 3918633141)!
    }
}()
private var __method_binding_is_equal_approx: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "is_equal_approx").withGodotUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 3165333982)!
    }
}()
private var __method_binding_is_finite: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "is_finite").withGodotUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 3918633141)!
    }
}()
private var __method_binding_get_rotation_quaternion: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "get_rotation_quaternion").withGodotUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 4274879941)!
    }
}()
private var __method_binding_looking_at: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "looking_at").withGodotUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 3728732505)!
    }
}()
private var __method_binding_from_scale: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "from_scale").withGodotUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 3703240166)!
    }
}()
private var __method_binding_from_euler: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "from_euler").withGodotUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 2802321791)!
    }
}()
extension Basis {
    static internal func _constructor() -> Self {
        var __temporary = Basis()
        withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
            __constructor(__ptr___temporary, nil)
        }
        return __temporary
    }
    static internal func _ptr_constructor() -> Self {
        var __temporary = Basis()
        withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
            __constructor(__ptr___temporary, nil)
        }
        return __temporary
    }

    static internal func _constructor_basis(from: Godot.Basis) -> Self {
        var __temporary = Basis()
        from.withGodotUnsafeRawPointer { __ptr_from in
        withUnsafeArgumentPackPointer(__ptr_from) { __accessPtr in
        withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
            __constructor_basis(__ptr___temporary, __accessPtr)
        }}}
        return __temporary
    }
    static internal func _ptr_constructor_basis(from: UnsafeRawPointer) -> Self {
        var __temporary = Basis()
        withUnsafeArgumentPackPointer(from) { __accessPtr in
        withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
            __constructor_basis(__ptr___temporary, __accessPtr)
        }}
        return __temporary
    }

    static internal func _constructor_quaternion(from: Godot.Quaternion) -> Self {
        var __temporary = Basis()
        from.withGodotUnsafeRawPointer { __ptr_from in
        withUnsafeArgumentPackPointer(__ptr_from) { __accessPtr in
        withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
            __constructor_quaternion(__ptr___temporary, __accessPtr)
        }}}
        return __temporary
    }
    static internal func _ptr_constructor_quaternion(from: UnsafeRawPointer) -> Self {
        var __temporary = Basis()
        withUnsafeArgumentPackPointer(from) { __accessPtr in
        withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
            __constructor_quaternion(__ptr___temporary, __accessPtr)
        }}
        return __temporary
    }

    static internal func _constructor_vector3_float(axis: Godot.Vector3, angle: Real) -> Self {
        var __temporary = Basis()
        axis.withGodotUnsafeRawPointer { __ptr_axis in
        angle.withGodotUnsafeRawPointer { __ptr_angle in
        withUnsafeArgumentPackPointer(__ptr_axis, __ptr_angle) { __accessPtr in
        withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
            __constructor_vector3_float(__ptr___temporary, __accessPtr)
        }}}}
        return __temporary
    }
    static internal func _ptr_constructor_vector3_float(axis: UnsafeRawPointer, angle: UnsafeRawPointer) -> Self {
        var __temporary = Basis()
        withUnsafeArgumentPackPointer(axis, angle) { __accessPtr in
        withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
            __constructor_vector3_float(__ptr___temporary, __accessPtr)
        }}
        return __temporary
    }

    static internal func _constructor_vector3_vector3_vector3(xAxis: Godot.Vector3, yAxis: Godot.Vector3, zAxis: Godot.Vector3) -> Self {
        var __temporary = Basis()
        xAxis.withGodotUnsafeRawPointer { __ptr_xAxis in
        yAxis.withGodotUnsafeRawPointer { __ptr_yAxis in
        zAxis.withGodotUnsafeRawPointer { __ptr_zAxis in
        withUnsafeArgumentPackPointer(__ptr_xAxis, __ptr_yAxis, __ptr_zAxis) { __accessPtr in
        withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
            __constructor_vector3_vector3_vector3(__ptr___temporary, __accessPtr)
        }}}}}
        return __temporary
    }
    static internal func _ptr_constructor_vector3_vector3_vector3(xAxis: UnsafeRawPointer, yAxis: UnsafeRawPointer, zAxis: UnsafeRawPointer) -> Self {
        var __temporary = Basis()
        withUnsafeArgumentPackPointer(xAxis, yAxis, zAxis) { __accessPtr in
        withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
            __constructor_vector3_vector3_vector3(__ptr___temporary, __accessPtr)
        }}
        return __temporary
    }

    static internal func _operatorEqual<Value: VariantStorableIn>(_ lhs: Godot.Basis, _ rhs: Value) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        lhs.withGodotUnsafeRawPointer { __ptr_lhs in
        Godot.Variant.withStorageUnsafeRawPointer(to: rhs) { __ptr_rhs in
        __operator_binding_equal_variant(__ptr_lhs, __ptr_rhs, __temporary)}}}
    }

    static internal func _operatorNotEqual<Value: VariantStorableIn>(_ lhs: Godot.Basis, _ rhs: Value) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        lhs.withGodotUnsafeRawPointer { __ptr_lhs in
        Godot.Variant.withStorageUnsafeRawPointer(to: rhs) { __ptr_rhs in
        __operator_binding_not_equal_variant(__ptr_lhs, __ptr_rhs, __temporary)}}}
    }

    static internal func _operatorNot(_ lhs: Godot.Basis) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        lhs.withGodotUnsafeRawPointer { __ptr_lhs in
        __operator_binding_not(__ptr_lhs, nil, __temporary)}}
    }

    static internal func _operatorMultiply(_ lhs: Godot.Basis, _ rhs: Int) -> Godot.Basis {
        Basis.fromMutatingGodotUnsafePointer { __temporary in
        lhs.withGodotUnsafeRawPointer { __ptr_lhs in
        rhs.withGodotUnsafeRawPointer { __ptr_rhs in
        __operator_binding_multiply_int(__ptr_lhs, __ptr_rhs, __temporary)}}}
    }

    static internal func _operatorMultiply(_ lhs: Godot.Basis, _ rhs: Real) -> Godot.Basis {
        Basis.fromMutatingGodotUnsafePointer { __temporary in
        lhs.withGodotUnsafeRawPointer { __ptr_lhs in
        rhs.withGodotUnsafeRawPointer { __ptr_rhs in
        __operator_binding_multiply_double(__ptr_lhs, __ptr_rhs, __temporary)}}}
    }

    static internal func _operatorMultiply(_ lhs: Godot.Basis, _ rhs: Godot.Vector3) -> Godot.Vector3 {
        Vector3.fromMutatingGodotUnsafePointer { __temporary in
        lhs.withGodotUnsafeRawPointer { __ptr_lhs in
        rhs.withGodotUnsafeRawPointer { __ptr_rhs in
        __operator_binding_multiply_vector3(__ptr_lhs, __ptr_rhs, __temporary)}}}
    }

    static internal func _operatorEqual(_ lhs: Godot.Basis, _ rhs: Godot.Basis) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        lhs.withGodotUnsafeRawPointer { __ptr_lhs in
        rhs.withGodotUnsafeRawPointer { __ptr_rhs in
        __operator_binding_equal_basis(__ptr_lhs, __ptr_rhs, __temporary)}}}
    }

    static internal func _operatorNotEqual(_ lhs: Godot.Basis, _ rhs: Godot.Basis) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        lhs.withGodotUnsafeRawPointer { __ptr_lhs in
        rhs.withGodotUnsafeRawPointer { __ptr_rhs in
        __operator_binding_not_equal_basis(__ptr_lhs, __ptr_rhs, __temporary)}}}
    }

    static internal func _operatorMultiply(_ lhs: Godot.Basis, _ rhs: Godot.Basis) -> Godot.Basis {
        Basis.fromMutatingGodotUnsafePointer { __temporary in
        lhs.withGodotUnsafeRawPointer { __ptr_lhs in
        rhs.withGodotUnsafeRawPointer { __ptr_rhs in
        __operator_binding_multiply_basis(__ptr_lhs, __ptr_rhs, __temporary)}}}
    }

    static internal func _operatorIn<Value1: VariantStorable, Value2: VariantStorable>(_ lhs: Godot.Basis, _ rhs: Godot.GodotDictionary<Value1, Value2>) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        lhs.withGodotUnsafeRawPointer { __ptr_lhs in
        rhs.withGodotUnsafeRawPointer { __ptr_rhs in
        __operator_binding_in_godotdictionary(__ptr_lhs, __ptr_rhs, __temporary)}}}
    }

    static internal func _operatorIn<Value: VariantStorable>(_ lhs: Godot.Basis, _ rhs: Godot.GodotArray<Value>) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        lhs.withGodotUnsafeRawPointer { __ptr_lhs in
        rhs.withGodotUnsafeRawPointer { __ptr_rhs in
        __operator_binding_in_godotarray(__ptr_lhs, __ptr_rhs, __temporary)}}}
    }

    internal func _getValue(at index: GDExtensionInt) -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeRawPointer { __ptr_self in
        __indexed_getter(__ptr_self, index, __temporary)}}
    }
    mutating internal func _setValue(_ value: Godot.Vector3, at index: GDExtensionInt) {
        value.withGodotUnsafeRawPointer { __ptr_value in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        __indexed_setter(__ptr_self, index, __ptr_value)}}
    }

    internal func _inverse() -> Godot.Basis {
        return Godot.Basis.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeRawPointer { __ptr_self in
        __method_binding_inverse(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)}}
    }

    internal func _transposed() -> Godot.Basis {
        return Godot.Basis.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeRawPointer { __ptr_self in
        __method_binding_transposed(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)}}
    }

    internal func _orthonormalized() -> Godot.Basis {
        return Godot.Basis.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeRawPointer { __ptr_self in
        __method_binding_orthonormalized(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)}}
    }

    internal func _determinant() -> Real {
        return Real.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeRawPointer { __ptr_self in
        __method_binding_determinant(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)}}
    }

    internal func _rotated(axis: Godot.Vector3, angle: Real) -> Godot.Basis {
        return Godot.Basis.fromMutatingGodotUnsafePointer { __temporary in
        axis.withGodotUnsafeRawPointer { __ptr_axis in
        angle.withGodotUnsafeRawPointer { __ptr_angle in
        withUnsafeArgumentPackPointer(__ptr_axis, __ptr_angle) { __accessPtr in
        `self`.withGodotUnsafeRawPointer { __ptr_self in
        __method_binding_rotated(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)}}}}}
    }

    internal func _scaled(scale: Godot.Vector3) -> Godot.Basis {
        return Godot.Basis.fromMutatingGodotUnsafePointer { __temporary in
        scale.withGodotUnsafeRawPointer { __ptr_scale in
        withUnsafeArgumentPackPointer(__ptr_scale) { __accessPtr in
        `self`.withGodotUnsafeRawPointer { __ptr_self in
        __method_binding_scaled(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)}}}}
    }

    internal func _scale() -> Godot.Vector3 {
        return Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeRawPointer { __ptr_self in
        __method_binding_get_scale(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)}}
    }

    internal func _euler(order: Int = 2) -> Godot.Vector3 {
        return Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        order.withGodotUnsafeRawPointer { __ptr_order in
        withUnsafeArgumentPackPointer(__ptr_order) { __accessPtr in
        `self`.withGodotUnsafeRawPointer { __ptr_self in
        __method_binding_get_euler(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)}}}}
    }

    internal func _tdotx(with: Godot.Vector3) -> Real {
        return Real.fromMutatingGodotUnsafePointer { __temporary in
        with.withGodotUnsafeRawPointer { __ptr_with in
        withUnsafeArgumentPackPointer(__ptr_with) { __accessPtr in
        `self`.withGodotUnsafeRawPointer { __ptr_self in
        __method_binding_tdotx(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)}}}}
    }

    internal func _tdoty(with: Godot.Vector3) -> Real {
        return Real.fromMutatingGodotUnsafePointer { __temporary in
        with.withGodotUnsafeRawPointer { __ptr_with in
        withUnsafeArgumentPackPointer(__ptr_with) { __accessPtr in
        `self`.withGodotUnsafeRawPointer { __ptr_self in
        __method_binding_tdoty(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)}}}}
    }

    internal func _tdotz(with: Godot.Vector3) -> Real {
        return Real.fromMutatingGodotUnsafePointer { __temporary in
        with.withGodotUnsafeRawPointer { __ptr_with in
        withUnsafeArgumentPackPointer(__ptr_with) { __accessPtr in
        `self`.withGodotUnsafeRawPointer { __ptr_self in
        __method_binding_tdotz(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)}}}}
    }

    internal func _slerp(to: Godot.Basis, weight: Real) -> Godot.Basis {
        return Godot.Basis.fromMutatingGodotUnsafePointer { __temporary in
        to.withGodotUnsafeRawPointer { __ptr_to in
        weight.withGodotUnsafeRawPointer { __ptr_weight in
        withUnsafeArgumentPackPointer(__ptr_to, __ptr_weight) { __accessPtr in
        `self`.withGodotUnsafeRawPointer { __ptr_self in
        __method_binding_slerp(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)}}}}}
    }

    internal func _isConformal() -> Bool {
        return Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeRawPointer { __ptr_self in
        __method_binding_is_conformal(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)}}
    }

    internal func _isEqualApprox(_ b: Godot.Basis) -> Bool {
        return Bool.fromMutatingGodotUnsafePointer { __temporary in
        b.withGodotUnsafeRawPointer { __ptr_b in
        withUnsafeArgumentPackPointer(__ptr_b) { __accessPtr in
        `self`.withGodotUnsafeRawPointer { __ptr_self in
        __method_binding_is_equal_approx(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)}}}}
    }

    internal func _isFinite() -> Bool {
        return Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeRawPointer { __ptr_self in
        __method_binding_is_finite(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)}}
    }

    internal func _rotationQuaternion() -> Godot.Quaternion {
        return Godot.Quaternion.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeRawPointer { __ptr_self in
        __method_binding_get_rotation_quaternion(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)}}
    }

    static internal func _lookingAt(target: Godot.Vector3, up: Godot.Vector3 = Vector3(x: 0, y: 1, z: 0), useModelFront: Bool = false) -> Godot.Basis {
        return Godot.Basis.fromMutatingGodotUnsafePointer { __temporary in
        target.withGodotUnsafeRawPointer { __ptr_target in
        up.withGodotUnsafeRawPointer { __ptr_up in
        useModelFront.withGodotUnsafeRawPointer { __ptr_useModelFront in
        withUnsafeArgumentPackPointer(__ptr_target, __ptr_up, __ptr_useModelFront) { __accessPtr in
        __method_binding_looking_at(nil, __accessPtr, __temporary, 3)}}}}}
    }

    static internal func _fromScale(_ scale: Godot.Vector3) -> Godot.Basis {
        return Godot.Basis.fromMutatingGodotUnsafePointer { __temporary in
        scale.withGodotUnsafeRawPointer { __ptr_scale in
        withUnsafeArgumentPackPointer(__ptr_scale) { __accessPtr in
        __method_binding_from_scale(nil, __accessPtr, __temporary, 1)}}}
    }

    static internal func _fromEuler(_ euler: Godot.Vector3, order: Int = 2) -> Godot.Basis {
        return Godot.Basis.fromMutatingGodotUnsafePointer { __temporary in
        euler.withGodotUnsafeRawPointer { __ptr_euler in
        order.withGodotUnsafeRawPointer { __ptr_order in
        withUnsafeArgumentPackPointer(__ptr_euler, __ptr_order) { __accessPtr in
        __method_binding_from_euler(nil, __accessPtr, __temporary, 2)}}}}
    }

    }