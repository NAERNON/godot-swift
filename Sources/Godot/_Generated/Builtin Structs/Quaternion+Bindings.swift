//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
extension Quaternion {
    public static let identity: Quaternion = Quaternion(x: 0, y: 0, z: 0, w: 1)

    private static var __constructor: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_QUATERNION, 0)!
    }()
    static internal func _constructor() -> Self {
        var __temporary = Quaternion()
        withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
            Self.__constructor(__ptr___temporary, nil)
        }
        return __temporary
    }
    static internal func _ptr_constructor() -> Self {
        var __temporary = Quaternion()
        withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
            Self.__constructor(__ptr___temporary, nil)
        }
        return __temporary
    }

    private static var __constructor_quaternion: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_QUATERNION, 1)!
    }()
    static internal func _constructor_quaternion(from: Godot.Quaternion) -> Self {
        var __temporary = Quaternion()
        withUnsafePointer(to: from) { (__ptr_from) in
            withUnsafeArgumentPackPointer(__ptr_from) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                    Self.__constructor_quaternion(__ptr___temporary, __accessPtr)
                }
            }
        }
        return __temporary
    }
    static internal func _ptr_constructor_quaternion(from: UnsafeRawPointer) -> Self {
        var __temporary = Quaternion()
        withUnsafeArgumentPackPointer(from) { (__accessPtr) in
            withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                Self.__constructor_quaternion(__ptr___temporary, __accessPtr)
            }
        }
        return __temporary
    }

    private static var __constructor_basis: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_QUATERNION, 2)!
    }()
    static internal func _constructor_basis(from: Godot.Basis) -> Self {
        var __temporary = Quaternion()
        withUnsafePointer(to: from) { (__ptr_from) in
            withUnsafeArgumentPackPointer(__ptr_from) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                    Self.__constructor_basis(__ptr___temporary, __accessPtr)
                }
            }
        }
        return __temporary
    }
    static internal func _ptr_constructor_basis(from: UnsafeRawPointer) -> Self {
        var __temporary = Quaternion()
        withUnsafeArgumentPackPointer(from) { (__accessPtr) in
            withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                Self.__constructor_basis(__ptr___temporary, __accessPtr)
            }
        }
        return __temporary
    }

    private static var __constructor_vector3_float: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_QUATERNION, 3)!
    }()
    static internal func _constructor_vector3_float(axis: Godot.Vector3, angle: Real) -> Self {
        var __temporary = Quaternion()
        withUnsafePointer(to: axis) { (__ptr_axis) in
            withUnsafePointer(to: angle) { (__ptr_angle) in
                withUnsafeArgumentPackPointer(__ptr_axis, __ptr_angle) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                        Self.__constructor_vector3_float(__ptr___temporary, __accessPtr)
                    }
                }
            }
        }
        return __temporary
    }
    static internal func _ptr_constructor_vector3_float(axis: UnsafeRawPointer, angle: UnsafeRawPointer) -> Self {
        var __temporary = Quaternion()
        withUnsafeArgumentPackPointer(axis, angle) { (__accessPtr) in
            withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                Self.__constructor_vector3_float(__ptr___temporary, __accessPtr)
            }
        }
        return __temporary
    }

    private static var __constructor_vector3_vector3: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_QUATERNION, 4)!
    }()
    static internal func _constructor_vector3_vector3(arcFrom: Godot.Vector3, arcTo: Godot.Vector3) -> Self {
        var __temporary = Quaternion()
        withUnsafePointer(to: arcFrom) { (__ptr_arcFrom) in
            withUnsafePointer(to: arcTo) { (__ptr_arcTo) in
                withUnsafeArgumentPackPointer(__ptr_arcFrom, __ptr_arcTo) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                        Self.__constructor_vector3_vector3(__ptr___temporary, __accessPtr)
                    }
                }
            }
        }
        return __temporary
    }
    static internal func _ptr_constructor_vector3_vector3(arcFrom: UnsafeRawPointer, arcTo: UnsafeRawPointer) -> Self {
        var __temporary = Quaternion()
        withUnsafeArgumentPackPointer(arcFrom, arcTo) { (__accessPtr) in
            withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                Self.__constructor_vector3_vector3(__ptr___temporary, __accessPtr)
            }
        }
        return __temporary
    }

    private static var __constructor_float_float_float_float: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_QUATERNION, 5)!
    }()
    static internal func _constructor_float_float_float_float(x: Real, y: Real, z: Real, w: Real) -> Self {
        var __temporary = Quaternion()
        withUnsafePointer(to: x) { (__ptr_x) in
            withUnsafePointer(to: y) { (__ptr_y) in
                withUnsafePointer(to: z) { (__ptr_z) in
                    withUnsafePointer(to: w) { (__ptr_w) in
                        withUnsafeArgumentPackPointer(__ptr_x, __ptr_y, __ptr_z, __ptr_w) { (__accessPtr) in
                            withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                                Self.__constructor_float_float_float_float(__ptr___temporary, __accessPtr)
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }
    static internal func _ptr_constructor_float_float_float_float(x: UnsafeRawPointer, y: UnsafeRawPointer, z: UnsafeRawPointer, w: UnsafeRawPointer) -> Self {
        var __temporary = Quaternion()
        withUnsafeArgumentPackPointer(x, y, z, w) { (__accessPtr) in
            withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                Self.__constructor_float_float_float_float(__ptr___temporary, __accessPtr)
            }
        }
        return __temporary
    }

    private static var __operator_binding_equal_variant: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_QUATERNION, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorEqual<Variant1 : VariantEncodable>(_ lhs: Godot.Quaternion, _ rhs: Variant1) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            Godot.Variant.withStorageUnsafeRawPointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_equal_variant(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_not_equal_variant: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_QUATERNION, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorNotEqual<Variant1 : VariantEncodable>(_ lhs: Godot.Quaternion, _ rhs: Variant1) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            Godot.Variant.withStorageUnsafeRawPointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_not_equal_variant(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_negate: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NEGATE, GDEXTENSION_VARIANT_TYPE_QUATERNION, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorNegate(_ lhs: Godot.Quaternion) -> Godot.Quaternion {
        var __temporary = Quaternion()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                Self.__operator_binding_negate(__ptr_lhs, nil, __ptr___temporary)
            }
        }
        return __temporary
    }

    private static var __operator_binding_positive: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_POSITIVE, GDEXTENSION_VARIANT_TYPE_QUATERNION, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorPositive(_ lhs: Godot.Quaternion) -> Godot.Quaternion {
        var __temporary = Quaternion()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                Self.__operator_binding_positive(__ptr_lhs, nil, __ptr___temporary)
            }
        }
        return __temporary
    }

    private static var __operator_binding_not: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT, GDEXTENSION_VARIANT_TYPE_QUATERNION, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorNot(_ lhs: Godot.Quaternion) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                Self.__operator_binding_not(__ptr_lhs, nil, __ptr___temporary)
            }
        }
        return __temporary
    }

    private static var __operator_binding_multiply_int: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_QUATERNION, GDEXTENSION_VARIANT_TYPE_INT)!
    }()
    static internal func _operatorMultiply(_ lhs: Godot.Quaternion, _ rhs: Int) -> Godot.Quaternion {
        var __temporary = Quaternion()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_multiply_int(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_divide_int: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_DIVIDE, GDEXTENSION_VARIANT_TYPE_QUATERNION, GDEXTENSION_VARIANT_TYPE_INT)!
    }()
    static internal func _operatorDivide(_ lhs: Godot.Quaternion, _ rhs: Int) -> Godot.Quaternion {
        var __temporary = Quaternion()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_divide_int(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_multiply_double: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_QUATERNION, GDEXTENSION_VARIANT_TYPE_FLOAT)!
    }()
    static internal func _operatorMultiply(_ lhs: Godot.Quaternion, _ rhs: Real) -> Godot.Quaternion {
        var __temporary = Quaternion()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_multiply_double(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_divide_double: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_DIVIDE, GDEXTENSION_VARIANT_TYPE_QUATERNION, GDEXTENSION_VARIANT_TYPE_FLOAT)!
    }()
    static internal func _operatorDivide(_ lhs: Godot.Quaternion, _ rhs: Real) -> Godot.Quaternion {
        var __temporary = Quaternion()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_divide_double(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_multiply_vector3: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_QUATERNION, GDEXTENSION_VARIANT_TYPE_VECTOR3)!
    }()
    static internal func _operatorMultiply(_ lhs: Godot.Quaternion, _ rhs: Godot.Vector3) -> Godot.Vector3 {
        var __temporary = Vector3()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_multiply_vector3(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_equal_quaternion: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_QUATERNION, GDEXTENSION_VARIANT_TYPE_QUATERNION)!
    }()
    static internal func _operatorEqual(_ lhs: Godot.Quaternion, _ rhs: Godot.Quaternion) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_equal_quaternion(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_not_equal_quaternion: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_QUATERNION, GDEXTENSION_VARIANT_TYPE_QUATERNION)!
    }()
    static internal func _operatorNotEqual(_ lhs: Godot.Quaternion, _ rhs: Godot.Quaternion) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_not_equal_quaternion(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_add_quaternion: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_ADD, GDEXTENSION_VARIANT_TYPE_QUATERNION, GDEXTENSION_VARIANT_TYPE_QUATERNION)!
    }()
    static internal func _operatorAdd(_ lhs: Godot.Quaternion, _ rhs: Godot.Quaternion) -> Godot.Quaternion {
        var __temporary = Quaternion()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_add_quaternion(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_subtract_quaternion: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_SUBTRACT, GDEXTENSION_VARIANT_TYPE_QUATERNION, GDEXTENSION_VARIANT_TYPE_QUATERNION)!
    }()
    static internal func _operatorSubtract(_ lhs: Godot.Quaternion, _ rhs: Godot.Quaternion) -> Godot.Quaternion {
        var __temporary = Quaternion()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_subtract_quaternion(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_multiply_quaternion: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_QUATERNION, GDEXTENSION_VARIANT_TYPE_QUATERNION)!
    }()
    static internal func _operatorMultiply(_ lhs: Godot.Quaternion, _ rhs: Godot.Quaternion) -> Godot.Quaternion {
        var __temporary = Quaternion()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_multiply_quaternion(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_in_godotdictionary: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_QUATERNION, GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
    }()
    static internal func _operatorIn(_ lhs: Godot.Quaternion, _ rhs: Godot.GodotDictionary) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_in_godotdictionary(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_in_godotarray: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_QUATERNION, GDEXTENSION_VARIANT_TYPE_ARRAY)!
    }()
    static internal func _operatorIn(_ lhs: Godot.Quaternion, _ rhs: Godot.GodotArray) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_in_godotarray(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __indexed_setter: GDExtensionPtrIndexedSetter = {
        return gdextension_interface_variant_get_ptr_indexed_setter(GDEXTENSION_VARIANT_TYPE_QUATERNION)!
    }()
    private static var __indexed_getter: GDExtensionPtrIndexedGetter = {
        return gdextension_interface_variant_get_ptr_indexed_getter(GDEXTENSION_VARIANT_TYPE_QUATERNION)!
    }()
    internal func _getValue(at index: GDExtensionInt) -> Real {
        var __temporary = Real()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (__ptr_self) in
                Self.__indexed_getter(__ptr_self, index, __ptr___temporary)
            }
        }
        return __temporary
    }
    mutating internal func _setValue(_ value: Real, at index: GDExtensionInt) {
        withUnsafePointer(to: value) { (__ptr_value) in
            withUnsafeMutablePointer(to: &`self`) { (__ptr_self) in
                Self.__indexed_setter(__ptr_self, index, __ptr_value)
            }
        }
    }

    private static var __method_binding_length: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "length").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_QUATERNION, __ptr__method_name, 466405837)!
        }
    }()
    internal func _length() -> Real {
        var __temporary = Real()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                Self.__method_binding_length(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_length_squared: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "length_squared").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_QUATERNION, __ptr__method_name, 466405837)!
        }
    }()
    internal func _lengthSquared() -> Real {
        var __temporary = Real()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                Self.__method_binding_length_squared(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_normalized: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "normalized").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_QUATERNION, __ptr__method_name, 4274879941)!
        }
    }()
    internal func _normalized() -> Godot.Quaternion {
        var __temporary = Godot.Quaternion()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                Self.__method_binding_normalized(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_is_normalized: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "is_normalized").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_QUATERNION, __ptr__method_name, 3918633141)!
        }
    }()
    internal func _isNormalized() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                Self.__method_binding_is_normalized(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_is_equal_approx: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "is_equal_approx").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_QUATERNION, __ptr__method_name, 1682156903)!
        }
    }()
    internal func _isEqualApprox(to: Godot.Quaternion) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: to) { (__ptr_to) in
            withUnsafeArgumentPackPointer(__ptr_to) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    withUnsafePointer(to: `self`) { (___ptr_self) in
                        let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                        Self.__method_binding_is_equal_approx(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_is_finite: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "is_finite").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_QUATERNION, __ptr__method_name, 3918633141)!
        }
    }()
    internal func _isFinite() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                Self.__method_binding_is_finite(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_inverse: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "inverse").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_QUATERNION, __ptr__method_name, 4274879941)!
        }
    }()
    internal func _inverse() -> Godot.Quaternion {
        var __temporary = Godot.Quaternion()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                Self.__method_binding_inverse(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_log: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "log").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_QUATERNION, __ptr__method_name, 4274879941)!
        }
    }()
    internal func _log() -> Godot.Quaternion {
        var __temporary = Godot.Quaternion()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                Self.__method_binding_log(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_exp: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "exp").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_QUATERNION, __ptr__method_name, 4274879941)!
        }
    }()
    internal func _exp() -> Godot.Quaternion {
        var __temporary = Godot.Quaternion()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                Self.__method_binding_exp(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_angle_to: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "angle_to").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_QUATERNION, __ptr__method_name, 3244682419)!
        }
    }()
    internal func _angleTo(_ to: Godot.Quaternion) -> Real {
        var __temporary = Real()
        withUnsafePointer(to: to) { (__ptr_to) in
            withUnsafeArgumentPackPointer(__ptr_to) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    withUnsafePointer(to: `self`) { (___ptr_self) in
                        let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                        Self.__method_binding_angle_to(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_dot: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "dot").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_QUATERNION, __ptr__method_name, 3244682419)!
        }
    }()
    internal func _dot(with: Godot.Quaternion) -> Real {
        var __temporary = Real()
        withUnsafePointer(to: with) { (__ptr_with) in
            withUnsafeArgumentPackPointer(__ptr_with) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    withUnsafePointer(to: `self`) { (___ptr_self) in
                        let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                        Self.__method_binding_dot(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_slerp: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "slerp").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_QUATERNION, __ptr__method_name, 1773590316)!
        }
    }()
    internal func _slerp(to: Godot.Quaternion, weight: Real) -> Godot.Quaternion {
        var __temporary = Godot.Quaternion()
        withUnsafePointer(to: to) { (__ptr_to) in
            withUnsafePointer(to: weight) { (__ptr_weight) in
                withUnsafeArgumentPackPointer(__ptr_to, __ptr_weight) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        withUnsafePointer(to: `self`) { (___ptr_self) in
                            let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                            Self.__method_binding_slerp(__ptr_self, __accessPtr, __ptr___temporary, 2)
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_slerpni: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "slerpni").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_QUATERNION, __ptr__method_name, 1773590316)!
        }
    }()
    internal func _slerpni(to: Godot.Quaternion, weight: Real) -> Godot.Quaternion {
        var __temporary = Godot.Quaternion()
        withUnsafePointer(to: to) { (__ptr_to) in
            withUnsafePointer(to: weight) { (__ptr_weight) in
                withUnsafeArgumentPackPointer(__ptr_to, __ptr_weight) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        withUnsafePointer(to: `self`) { (___ptr_self) in
                            let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                            Self.__method_binding_slerpni(__ptr_self, __accessPtr, __ptr___temporary, 2)
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_spherical_cubic_interpolate: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "spherical_cubic_interpolate").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_QUATERNION, __ptr__method_name, 2150967576)!
        }
    }()
    internal func _sphericalCubicInterpolate(b: Godot.Quaternion, preA: Godot.Quaternion, postB: Godot.Quaternion, weight: Real) -> Godot.Quaternion {
        var __temporary = Godot.Quaternion()
        withUnsafePointer(to: b) { (__ptr_b) in
            withUnsafePointer(to: preA) { (__ptr_preA) in
                withUnsafePointer(to: postB) { (__ptr_postB) in
                    withUnsafePointer(to: weight) { (__ptr_weight) in
                        withUnsafeArgumentPackPointer(__ptr_b, __ptr_preA, __ptr_postB, __ptr_weight) { (__accessPtr) in
                            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                withUnsafePointer(to: `self`) { (___ptr_self) in
                                    let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                                    Self.__method_binding_spherical_cubic_interpolate(__ptr_self, __accessPtr, __ptr___temporary, 4)
                                }
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_spherical_cubic_interpolate_in_time: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "spherical_cubic_interpolate_in_time").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_QUATERNION, __ptr__method_name, 1436023539)!
        }
    }()
    internal func _sphericalCubicInterpolateInTime(b: Godot.Quaternion, preA: Godot.Quaternion, postB: Godot.Quaternion, weight: Real, bT: Real, preAT: Real, postBT: Real) -> Godot.Quaternion {
        var __temporary = Godot.Quaternion()
        withUnsafePointer(to: b) { (__ptr_b) in
            withUnsafePointer(to: preA) { (__ptr_preA) in
                withUnsafePointer(to: postB) { (__ptr_postB) in
                    withUnsafePointer(to: weight) { (__ptr_weight) in
                        withUnsafePointer(to: bT) { (__ptr_bT) in
                            withUnsafePointer(to: preAT) { (__ptr_preAT) in
                                withUnsafePointer(to: postBT) { (__ptr_postBT) in
                                    withUnsafeArgumentPackPointer(__ptr_b, __ptr_preA, __ptr_postB, __ptr_weight, __ptr_bT, __ptr_preAT, __ptr_postBT) { (__accessPtr) in
                                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                            withUnsafePointer(to: `self`) { (___ptr_self) in
                                                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                                                Self.__method_binding_spherical_cubic_interpolate_in_time(__ptr_self, __accessPtr, __ptr___temporary, 7)
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_euler: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "get_euler").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_QUATERNION, __ptr__method_name, 1394941017)!
        }
    }()
    internal func _euler(order: Int = 2) -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        withUnsafePointer(to: order) { (__ptr_order) in
            withUnsafeArgumentPackPointer(__ptr_order) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    withUnsafePointer(to: `self`) { (___ptr_self) in
                        let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                        Self.__method_binding_get_euler(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_from_euler: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "from_euler").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_QUATERNION, __ptr__method_name, 4053467903)!
        }
    }()
    static internal func _fromEuler(_ euler: Godot.Vector3) -> Godot.Quaternion {
        var __temporary = Godot.Quaternion()
        withUnsafePointer(to: euler) { (__ptr_euler) in
            withUnsafeArgumentPackPointer(__ptr_euler) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__method_binding_from_euler(nil, __accessPtr, __ptr___temporary, 1)
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_axis: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "get_axis").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_QUATERNION, __ptr__method_name, 1776574132)!
        }
    }()
    internal func _axis() -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                Self.__method_binding_get_axis(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_get_angle: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "get_angle").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_QUATERNION, __ptr__method_name, 466405837)!
        }
    }()
    internal func _angle() -> Real {
        var __temporary = Real()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                Self.__method_binding_get_angle(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    }