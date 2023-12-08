//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
private var __constructor: GDExtensionPtrConstructor = {
    return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_BASIS, 0)!
}()
private var __constructor_basis: GDExtensionPtrConstructor = {
    return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_BASIS, 1)!
}()
private var __constructor_quaternion: GDExtensionPtrConstructor = {
    return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_BASIS, 2)!
}()
private var __constructor_vector3_float: GDExtensionPtrConstructor = {
    return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_BASIS, 3)!
}()
private var __constructor_vector3_vector3_vector3: GDExtensionPtrConstructor = {
    return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_BASIS, 4)!
}()
private var __operator_binding_equal_variant: GDExtensionPtrOperatorEvaluator = {
    return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_BASIS, GDEXTENSION_VARIANT_TYPE_NIL)!
}()
private var __operator_binding_not_equal_variant: GDExtensionPtrOperatorEvaluator = {
    return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_BASIS, GDEXTENSION_VARIANT_TYPE_NIL)!
}()
private var __operator_binding_not: GDExtensionPtrOperatorEvaluator = {
    return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT, GDEXTENSION_VARIANT_TYPE_BASIS, GDEXTENSION_VARIANT_TYPE_NIL)!
}()
private var __operator_binding_multiply_int: GDExtensionPtrOperatorEvaluator = {
    return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_BASIS, GDEXTENSION_VARIANT_TYPE_INT)!
}()
private var __operator_binding_multiply_double: GDExtensionPtrOperatorEvaluator = {
    return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_BASIS, GDEXTENSION_VARIANT_TYPE_FLOAT)!
}()
private var __operator_binding_multiply_vector3: GDExtensionPtrOperatorEvaluator = {
    return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_BASIS, GDEXTENSION_VARIANT_TYPE_VECTOR3)!
}()
private var __operator_binding_equal_basis: GDExtensionPtrOperatorEvaluator = {
    return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_BASIS, GDEXTENSION_VARIANT_TYPE_BASIS)!
}()
private var __operator_binding_not_equal_basis: GDExtensionPtrOperatorEvaluator = {
    return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_BASIS, GDEXTENSION_VARIANT_TYPE_BASIS)!
}()
private var __operator_binding_multiply_basis: GDExtensionPtrOperatorEvaluator = {
    return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_BASIS, GDEXTENSION_VARIANT_TYPE_BASIS)!
}()
private var __operator_binding_in_godotdictionary: GDExtensionPtrOperatorEvaluator = {
    return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_BASIS, GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
}()
private var __operator_binding_in_godotarray: GDExtensionPtrOperatorEvaluator = {
    return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_BASIS, GDEXTENSION_VARIANT_TYPE_ARRAY)!
}()
private var __indexed_setter: GDExtensionPtrIndexedSetter = {
    return gdextension_interface_variant_get_ptr_indexed_setter(GDEXTENSION_VARIANT_TYPE_BASIS)!
}()
private var __indexed_getter: GDExtensionPtrIndexedGetter = {
    return gdextension_interface_variant_get_ptr_indexed_getter(GDEXTENSION_VARIANT_TYPE_BASIS)!
}()
private var __method_binding_inverse: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "inverse").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 594669093)!
    }
}()
private var __method_binding_transposed: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "transposed").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 594669093)!
    }
}()
private var __method_binding_orthonormalized: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "orthonormalized").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 594669093)!
    }
}()
private var __method_binding_determinant: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "determinant").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 466405837)!
    }
}()
private var __method_binding_rotated: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "rotated").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 1998708965)!
    }
}()
private var __method_binding_scaled: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "scaled").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 3934786792)!
    }
}()
private var __method_binding_get_scale: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "get_scale").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 1776574132)!
    }
}()
private var __method_binding_get_euler: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "get_euler").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 1394941017)!
    }
}()
private var __method_binding_tdotx: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "tdotx").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 1047977935)!
    }
}()
private var __method_binding_tdoty: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "tdoty").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 1047977935)!
    }
}()
private var __method_binding_tdotz: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "tdotz").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 1047977935)!
    }
}()
private var __method_binding_slerp: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "slerp").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 3118673011)!
    }
}()
private var __method_binding_is_equal_approx: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "is_equal_approx").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 3165333982)!
    }
}()
private var __method_binding_is_finite: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "is_finite").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 3918633141)!
    }
}()
private var __method_binding_get_rotation_quaternion: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "get_rotation_quaternion").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 4274879941)!
    }
}()
private var __method_binding_looking_at: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "looking_at").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 3728732505)!
    }
}()
private var __method_binding_from_scale: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "from_scale").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 3703240166)!
    }
}()
private var __method_binding_from_euler: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "from_euler").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 2802321791)!
    }
}()
extension Basis {
    public static let identity: Basis = Basis(xAxisX: 1, xAxisY: 0, xAxisZ: 0, yAxisX: 0, yAxisY: 1, yAxisZ: 0, zAxisX: 0, zAxisY: 0, zAxisZ: 1)
    public static let flipX: Basis = Basis(xAxisX: -1, xAxisY: 0, xAxisZ: 0, yAxisX: 0, yAxisY: 1, yAxisZ: 0, zAxisX: 0, zAxisY: 0, zAxisZ: 1)
    public static let flipY: Basis = Basis(xAxisX: 1, xAxisY: 0, xAxisZ: 0, yAxisX: 0, yAxisY: -1, yAxisZ: 0, zAxisX: 0, zAxisY: 0, zAxisZ: 1)
    public static let flipZ: Basis = Basis(xAxisX: 1, xAxisY: 0, xAxisZ: 0, yAxisX: 0, yAxisY: 1, yAxisZ: 0, zAxisX: 0, zAxisY: 0, zAxisZ: -1)

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
        withUnsafePointer(to: from) { (__ptr_from) in
            withUnsafeArgumentPackPointer(__ptr_from) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                    __constructor_basis(__ptr___temporary, __accessPtr)
                }
            }
        }
        return __temporary
    }
    static internal func _ptr_constructor_basis(from: UnsafeRawPointer) -> Self {
        var __temporary = Basis()
        withUnsafeArgumentPackPointer(from) { (__accessPtr) in
            withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                __constructor_basis(__ptr___temporary, __accessPtr)
            }
        }
        return __temporary
    }

    static internal func _constructor_quaternion(from: Godot.Quaternion) -> Self {
        var __temporary = Basis()
        withUnsafePointer(to: from) { (__ptr_from) in
            withUnsafeArgumentPackPointer(__ptr_from) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                    __constructor_quaternion(__ptr___temporary, __accessPtr)
                }
            }
        }
        return __temporary
    }
    static internal func _ptr_constructor_quaternion(from: UnsafeRawPointer) -> Self {
        var __temporary = Basis()
        withUnsafeArgumentPackPointer(from) { (__accessPtr) in
            withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                __constructor_quaternion(__ptr___temporary, __accessPtr)
            }
        }
        return __temporary
    }

    static internal func _constructor_vector3_float(axis: Godot.Vector3, angle: Real) -> Self {
        var __temporary = Basis()
        withUnsafePointer(to: axis) { (__ptr_axis) in
            withUnsafePointer(to: angle) { (__ptr_angle) in
                withUnsafeArgumentPackPointer(__ptr_axis, __ptr_angle) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                        __constructor_vector3_float(__ptr___temporary, __accessPtr)
                    }
                }
            }
        }
        return __temporary
    }
    static internal func _ptr_constructor_vector3_float(axis: UnsafeRawPointer, angle: UnsafeRawPointer) -> Self {
        var __temporary = Basis()
        withUnsafeArgumentPackPointer(axis, angle) { (__accessPtr) in
            withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                __constructor_vector3_float(__ptr___temporary, __accessPtr)
            }
        }
        return __temporary
    }

    static internal func _constructor_vector3_vector3_vector3(xAxis: Godot.Vector3, yAxis: Godot.Vector3, zAxis: Godot.Vector3) -> Self {
        var __temporary = Basis()
        withUnsafePointer(to: xAxis) { (__ptr_xAxis) in
            withUnsafePointer(to: yAxis) { (__ptr_yAxis) in
                withUnsafePointer(to: zAxis) { (__ptr_zAxis) in
                    withUnsafeArgumentPackPointer(__ptr_xAxis, __ptr_yAxis, __ptr_zAxis) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                            __constructor_vector3_vector3_vector3(__ptr___temporary, __accessPtr)
                        }
                    }
                }
            }
        }
        return __temporary
    }
    static internal func _ptr_constructor_vector3_vector3_vector3(xAxis: UnsafeRawPointer, yAxis: UnsafeRawPointer, zAxis: UnsafeRawPointer) -> Self {
        var __temporary = Basis()
        withUnsafeArgumentPackPointer(xAxis, yAxis, zAxis) { (__accessPtr) in
            withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                __constructor_vector3_vector3_vector3(__ptr___temporary, __accessPtr)
            }
        }
        return __temporary
    }

    static internal func _operatorEqual<Value: VariantEncodable>(_ lhs: Godot.Basis, _ rhs: Value) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            Godot.Variant.withStorageUnsafeRawPointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    __operator_binding_equal_variant(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    static internal func _operatorNotEqual<Value: VariantEncodable>(_ lhs: Godot.Basis, _ rhs: Value) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            Godot.Variant.withStorageUnsafeRawPointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    __operator_binding_not_equal_variant(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    static internal func _operatorNot(_ lhs: Godot.Basis) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                __operator_binding_not(__ptr_lhs, nil, __ptr___temporary)
            }
        }
        return __temporary
    }

    static internal func _operatorMultiply(_ lhs: Godot.Basis, _ rhs: Int) -> Godot.Basis {
        var __temporary = Basis()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    __operator_binding_multiply_int(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    static internal func _operatorMultiply(_ lhs: Godot.Basis, _ rhs: Real) -> Godot.Basis {
        var __temporary = Basis()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    __operator_binding_multiply_double(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    static internal func _operatorMultiply(_ lhs: Godot.Basis, _ rhs: Godot.Vector3) -> Godot.Vector3 {
        var __temporary = Vector3()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    __operator_binding_multiply_vector3(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    static internal func _operatorEqual(_ lhs: Godot.Basis, _ rhs: Godot.Basis) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    __operator_binding_equal_basis(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    static internal func _operatorNotEqual(_ lhs: Godot.Basis, _ rhs: Godot.Basis) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    __operator_binding_not_equal_basis(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    static internal func _operatorMultiply(_ lhs: Godot.Basis, _ rhs: Godot.Basis) -> Godot.Basis {
        var __temporary = Basis()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    __operator_binding_multiply_basis(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    static internal func _operatorIn(_ lhs: Godot.Basis, _ rhs: Godot.GodotDictionary) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    __operator_binding_in_godotdictionary(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    static internal func _operatorIn<Value: VariantEncodable & VariantDecodable>(_ lhs: Godot.Basis, _ rhs: Godot.GodotArray<Value>) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    __operator_binding_in_godotarray(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    internal func _getValue(at index: GDExtensionInt) -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (__ptr_self) in
                __indexed_getter(__ptr_self, index, __ptr___temporary)
            }
        }
        return __temporary
    }
    mutating internal func _setValue(_ value: Godot.Vector3, at index: GDExtensionInt) {
        withUnsafePointer(to: value) { (__ptr_value) in
            withUnsafeMutablePointer(to: &`self`) { (__ptr_self) in
                __indexed_setter(__ptr_self, index, __ptr_value)
            }
        }
    }

    internal func _inverse() -> Godot.Basis {
        var __temporary = Godot.Basis()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                __method_binding_inverse(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    internal func _transposed() -> Godot.Basis {
        var __temporary = Godot.Basis()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                __method_binding_transposed(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    internal func _orthonormalized() -> Godot.Basis {
        var __temporary = Godot.Basis()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                __method_binding_orthonormalized(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    internal func _determinant() -> Real {
        var __temporary = Real()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                __method_binding_determinant(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    internal func _rotated(axis: Godot.Vector3, angle: Real) -> Godot.Basis {
        var __temporary = Godot.Basis()
        withUnsafePointer(to: axis) { (__ptr_axis) in
            withUnsafePointer(to: angle) { (__ptr_angle) in
                withUnsafeArgumentPackPointer(__ptr_axis, __ptr_angle) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        withUnsafePointer(to: `self`) { (___ptr_self) in
                            let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                            __method_binding_rotated(__ptr_self, __accessPtr, __ptr___temporary, 2)
                        }
                    }
                }
            }
        }
        return __temporary
    }

    internal func _scaled(scale: Godot.Vector3) -> Godot.Basis {
        var __temporary = Godot.Basis()
        withUnsafePointer(to: scale) { (__ptr_scale) in
            withUnsafeArgumentPackPointer(__ptr_scale) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    withUnsafePointer(to: `self`) { (___ptr_self) in
                        let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                        __method_binding_scaled(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    internal func _scale() -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                __method_binding_get_scale(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    internal func _euler(order: Int = 2) -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        withUnsafePointer(to: order) { (__ptr_order) in
            withUnsafeArgumentPackPointer(__ptr_order) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    withUnsafePointer(to: `self`) { (___ptr_self) in
                        let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                        __method_binding_get_euler(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    internal func _tdotx(with: Godot.Vector3) -> Real {
        var __temporary = Real()
        withUnsafePointer(to: with) { (__ptr_with) in
            withUnsafeArgumentPackPointer(__ptr_with) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    withUnsafePointer(to: `self`) { (___ptr_self) in
                        let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                        __method_binding_tdotx(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    internal func _tdoty(with: Godot.Vector3) -> Real {
        var __temporary = Real()
        withUnsafePointer(to: with) { (__ptr_with) in
            withUnsafeArgumentPackPointer(__ptr_with) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    withUnsafePointer(to: `self`) { (___ptr_self) in
                        let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                        __method_binding_tdoty(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    internal func _tdotz(with: Godot.Vector3) -> Real {
        var __temporary = Real()
        withUnsafePointer(to: with) { (__ptr_with) in
            withUnsafeArgumentPackPointer(__ptr_with) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    withUnsafePointer(to: `self`) { (___ptr_self) in
                        let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                        __method_binding_tdotz(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    internal func _slerp(to: Godot.Basis, weight: Real) -> Godot.Basis {
        var __temporary = Godot.Basis()
        withUnsafePointer(to: to) { (__ptr_to) in
            withUnsafePointer(to: weight) { (__ptr_weight) in
                withUnsafeArgumentPackPointer(__ptr_to, __ptr_weight) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        withUnsafePointer(to: `self`) { (___ptr_self) in
                            let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                            __method_binding_slerp(__ptr_self, __accessPtr, __ptr___temporary, 2)
                        }
                    }
                }
            }
        }
        return __temporary
    }

    internal func _isEqualApprox(_ b: Godot.Basis) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: b) { (__ptr_b) in
            withUnsafeArgumentPackPointer(__ptr_b) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    withUnsafePointer(to: `self`) { (___ptr_self) in
                        let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                        __method_binding_is_equal_approx(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    internal func _isFinite() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                __method_binding_is_finite(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    internal func _rotationQuaternion() -> Godot.Quaternion {
        var __temporary = Godot.Quaternion()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                __method_binding_get_rotation_quaternion(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    static internal func _lookingAt(target: Godot.Vector3, up: Godot.Vector3 = Vector3(x: 0, y: 1, z: 0), useModelFront: Bool = false) -> Godot.Basis {
        var __temporary = Godot.Basis()
        withUnsafePointer(to: target) { (__ptr_target) in
            withUnsafePointer(to: up) { (__ptr_up) in
                withUnsafePointer(to: useModelFront) { (__ptr_useModelFront) in
                    withUnsafeArgumentPackPointer(__ptr_target, __ptr_up, __ptr_useModelFront) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            __method_binding_looking_at(nil, __accessPtr, __ptr___temporary, 3)
                        }
                    }
                }
            }
        }
        return __temporary
    }

    static internal func _fromScale(_ scale: Godot.Vector3) -> Godot.Basis {
        var __temporary = Godot.Basis()
        withUnsafePointer(to: scale) { (__ptr_scale) in
            withUnsafeArgumentPackPointer(__ptr_scale) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    __method_binding_from_scale(nil, __accessPtr, __ptr___temporary, 1)
                }
            }
        }
        return __temporary
    }

    static internal func _fromEuler(_ euler: Godot.Vector3, order: Int = 2) -> Godot.Basis {
        var __temporary = Godot.Basis()
        withUnsafePointer(to: euler) { (__ptr_euler) in
            withUnsafePointer(to: order) { (__ptr_order) in
                withUnsafeArgumentPackPointer(__ptr_euler, __ptr_order) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        __method_binding_from_euler(nil, __accessPtr, __ptr___temporary, 2)
                    }
                }
            }
        }
        return __temporary
    }

    }