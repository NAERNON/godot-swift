//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
extension Vector3 {
    public static let axisX: Int = 0
    public static let axisY: Int = 1
    public static let axisZ: Int = 2
    public static let zero: Vector3 = Vector3(x: 0, y: 0, z: 0)
    public static let one: Vector3 = Vector3(x: 1, y: 1, z: 1)
    public static let inf: Vector3 = Vector3(x: .infinity, y: .infinity, z: .infinity)
    public static let left: Vector3 = Vector3(x: -1, y: 0, z: 0)
    public static let right: Vector3 = Vector3(x: 1, y: 0, z: 0)
    public static let up: Vector3 = Vector3(x: 0, y: 1, z: 0)
    public static let down: Vector3 = Vector3(x: 0, y: -1, z: 0)
    public static let forward: Vector3 = Vector3(x: 0, y: 0, z: -1)
    public static let back: Vector3 = Vector3(x: 0, y: 0, z: 1)
    public static let modelLeft: Vector3 = Vector3(x: 1, y: 0, z: 0)
    public static let modelRight: Vector3 = Vector3(x: -1, y: 0, z: 0)
    public static let modelTop: Vector3 = Vector3(x: 0, y: 1, z: 0)
    public static let modelBottom: Vector3 = Vector3(x: 0, y: -1, z: 0)
    public static let modelFront: Vector3 = Vector3(x: 0, y: 0, z: 1)
    public static let modelRear: Vector3 = Vector3(x: 0, y: 0, z: -1)

    public enum Axis: UInt32 {
        case x = 0
        case y = 1
        case z = 2
    }

    private static var __constructor: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR3, 0)!
    }()
    static internal func _constructor() -> Self {
        var __temporary = Vector3()
        withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
            Self.__constructor(__ptr___temporary, nil)
        }
        return __temporary
    }
    static internal func _ptr_constructor() -> Self {
        var __temporary = Vector3()
        withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
            Self.__constructor(__ptr___temporary, nil)
        }
        return __temporary
    }

    private static var __constructor_vector3: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR3, 1)!
    }()
    static internal func _constructor_vector3(from: Godot.Vector3) -> Self {
        var __temporary = Vector3()
        withUnsafePointer(to: from) { (__ptr_from) in
            withUnsafeArgumentPackPointer(__ptr_from) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                    Self.__constructor_vector3(__ptr___temporary, __accessPtr)
                }
            }
        }
        return __temporary
    }
    static internal func _ptr_constructor_vector3(from: UnsafeRawPointer) -> Self {
        var __temporary = Vector3()
        withUnsafeArgumentPackPointer(from) { (__accessPtr) in
            withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                Self.__constructor_vector3(__ptr___temporary, __accessPtr)
            }
        }
        return __temporary
    }

    private static var __constructor_vector3i: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR3, 2)!
    }()
    static internal func _constructor_vector3i(from: Godot.Vector3i) -> Self {
        var __temporary = Vector3()
        withUnsafePointer(to: from) { (__ptr_from) in
            withUnsafeArgumentPackPointer(__ptr_from) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                    Self.__constructor_vector3i(__ptr___temporary, __accessPtr)
                }
            }
        }
        return __temporary
    }
    static internal func _ptr_constructor_vector3i(from: UnsafeRawPointer) -> Self {
        var __temporary = Vector3()
        withUnsafeArgumentPackPointer(from) { (__accessPtr) in
            withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                Self.__constructor_vector3i(__ptr___temporary, __accessPtr)
            }
        }
        return __temporary
    }

    private static var __constructor_float_float_float: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR3, 3)!
    }()
    static internal func _constructor_float_float_float(x: Real, y: Real, z: Real) -> Self {
        var __temporary = Vector3()
        withUnsafePointer(to: x) { (__ptr_x) in
            withUnsafePointer(to: y) { (__ptr_y) in
                withUnsafePointer(to: z) { (__ptr_z) in
                    withUnsafeArgumentPackPointer(__ptr_x, __ptr_y, __ptr_z) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                            Self.__constructor_float_float_float(__ptr___temporary, __accessPtr)
                        }
                    }
                }
            }
        }
        return __temporary
    }
    static internal func _ptr_constructor_float_float_float(x: UnsafeRawPointer, y: UnsafeRawPointer, z: UnsafeRawPointer) -> Self {
        var __temporary = Vector3()
        withUnsafeArgumentPackPointer(x, y, z) { (__accessPtr) in
            withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                Self.__constructor_float_float_float(__ptr___temporary, __accessPtr)
            }
        }
        return __temporary
    }

    private static var __operator_binding_equal_variant: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_VECTOR3, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorEqual<Variant1 : ConvertibleToVariant>(_ lhs: Godot.Vector3, _ rhs: Variant1) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            rhs.makeVariant().withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_equal_variant(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_not_equal_variant: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_VECTOR3, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorNotEqual<Variant1 : ConvertibleToVariant>(_ lhs: Godot.Vector3, _ rhs: Variant1) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            rhs.makeVariant().withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_not_equal_variant(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_negate: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NEGATE, GDEXTENSION_VARIANT_TYPE_VECTOR3, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorNegate(_ lhs: Godot.Vector3) -> Godot.Vector3 {
        var __temporary = Vector3()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                Self.__operator_binding_negate(__ptr_lhs, nil, __ptr___temporary)
            }
        }
        return __temporary
    }

    private static var __operator_binding_positive: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_POSITIVE, GDEXTENSION_VARIANT_TYPE_VECTOR3, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorPositive(_ lhs: Godot.Vector3) -> Godot.Vector3 {
        var __temporary = Vector3()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                Self.__operator_binding_positive(__ptr_lhs, nil, __ptr___temporary)
            }
        }
        return __temporary
    }

    private static var __operator_binding_not: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT, GDEXTENSION_VARIANT_TYPE_VECTOR3, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorNot(_ lhs: Godot.Vector3) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                Self.__operator_binding_not(__ptr_lhs, nil, __ptr___temporary)
            }
        }
        return __temporary
    }

    private static var __operator_binding_multiply_int: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_VECTOR3, GDEXTENSION_VARIANT_TYPE_INT)!
    }()
    static internal func _operatorMultiply(_ lhs: Godot.Vector3, _ rhs: Int) -> Godot.Vector3 {
        var __temporary = Vector3()
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
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_DIVIDE, GDEXTENSION_VARIANT_TYPE_VECTOR3, GDEXTENSION_VARIANT_TYPE_INT)!
    }()
    static internal func _operatorDivide(_ lhs: Godot.Vector3, _ rhs: Int) -> Godot.Vector3 {
        var __temporary = Vector3()
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
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_VECTOR3, GDEXTENSION_VARIANT_TYPE_FLOAT)!
    }()
    static internal func _operatorMultiply(_ lhs: Godot.Vector3, _ rhs: Real) -> Godot.Vector3 {
        var __temporary = Vector3()
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
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_DIVIDE, GDEXTENSION_VARIANT_TYPE_VECTOR3, GDEXTENSION_VARIANT_TYPE_FLOAT)!
    }()
    static internal func _operatorDivide(_ lhs: Godot.Vector3, _ rhs: Real) -> Godot.Vector3 {
        var __temporary = Vector3()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_divide_double(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_equal_vector3: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_VECTOR3, GDEXTENSION_VARIANT_TYPE_VECTOR3)!
    }()
    static internal func _operatorEqual(_ lhs: Godot.Vector3, _ rhs: Godot.Vector3) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_equal_vector3(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_not_equal_vector3: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_VECTOR3, GDEXTENSION_VARIANT_TYPE_VECTOR3)!
    }()
    static internal func _operatorNotEqual(_ lhs: Godot.Vector3, _ rhs: Godot.Vector3) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_not_equal_vector3(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_less_vector3: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_LESS, GDEXTENSION_VARIANT_TYPE_VECTOR3, GDEXTENSION_VARIANT_TYPE_VECTOR3)!
    }()
    static internal func _operatorLess(_ lhs: Godot.Vector3, _ rhs: Godot.Vector3) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_less_vector3(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_less_equal_vector3: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_LESS_EQUAL, GDEXTENSION_VARIANT_TYPE_VECTOR3, GDEXTENSION_VARIANT_TYPE_VECTOR3)!
    }()
    static internal func _operatorLessEqual(_ lhs: Godot.Vector3, _ rhs: Godot.Vector3) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_less_equal_vector3(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_greater_vector3: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_GREATER, GDEXTENSION_VARIANT_TYPE_VECTOR3, GDEXTENSION_VARIANT_TYPE_VECTOR3)!
    }()
    static internal func _operatorGreater(_ lhs: Godot.Vector3, _ rhs: Godot.Vector3) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_greater_vector3(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_greater_equal_vector3: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_GREATER_EQUAL, GDEXTENSION_VARIANT_TYPE_VECTOR3, GDEXTENSION_VARIANT_TYPE_VECTOR3)!
    }()
    static internal func _operatorGreaterEqual(_ lhs: Godot.Vector3, _ rhs: Godot.Vector3) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_greater_equal_vector3(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_add_vector3: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_ADD, GDEXTENSION_VARIANT_TYPE_VECTOR3, GDEXTENSION_VARIANT_TYPE_VECTOR3)!
    }()
    static internal func _operatorAdd(_ lhs: Godot.Vector3, _ rhs: Godot.Vector3) -> Godot.Vector3 {
        var __temporary = Vector3()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_add_vector3(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_subtract_vector3: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_SUBTRACT, GDEXTENSION_VARIANT_TYPE_VECTOR3, GDEXTENSION_VARIANT_TYPE_VECTOR3)!
    }()
    static internal func _operatorSubtract(_ lhs: Godot.Vector3, _ rhs: Godot.Vector3) -> Godot.Vector3 {
        var __temporary = Vector3()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_subtract_vector3(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_multiply_vector3: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_VECTOR3, GDEXTENSION_VARIANT_TYPE_VECTOR3)!
    }()
    static internal func _operatorMultiply(_ lhs: Godot.Vector3, _ rhs: Godot.Vector3) -> Godot.Vector3 {
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

    private static var __operator_binding_divide_vector3: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_DIVIDE, GDEXTENSION_VARIANT_TYPE_VECTOR3, GDEXTENSION_VARIANT_TYPE_VECTOR3)!
    }()
    static internal func _operatorDivide(_ lhs: Godot.Vector3, _ rhs: Godot.Vector3) -> Godot.Vector3 {
        var __temporary = Vector3()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_divide_vector3(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_multiply_quaternion: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_VECTOR3, GDEXTENSION_VARIANT_TYPE_QUATERNION)!
    }()
    static internal func _operatorMultiply(_ lhs: Godot.Vector3, _ rhs: Godot.Quaternion) -> Godot.Vector3 {
        var __temporary = Vector3()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_multiply_quaternion(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_multiply_basis: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_VECTOR3, GDEXTENSION_VARIANT_TYPE_BASIS)!
    }()
    static internal func _operatorMultiply(_ lhs: Godot.Vector3, _ rhs: Godot.Basis) -> Godot.Vector3 {
        var __temporary = Vector3()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_multiply_basis(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_multiply_transform3d: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_VECTOR3, GDEXTENSION_VARIANT_TYPE_TRANSFORM3D)!
    }()
    static internal func _operatorMultiply(_ lhs: Godot.Vector3, _ rhs: Godot.Transform3D) -> Godot.Vector3 {
        var __temporary = Vector3()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_multiply_transform3d(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_in_godotdictionary: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_VECTOR3, GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
    }()
    static internal func _operatorIn(_ lhs: Godot.Vector3, _ rhs: Godot.GodotDictionary) -> Bool {
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
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_VECTOR3, GDEXTENSION_VARIANT_TYPE_ARRAY)!
    }()
    static internal func _operatorIn(_ lhs: Godot.Vector3, _ rhs: Godot.GodotArray) -> Bool {
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

    private static var __operator_binding_in_packedvector3array: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_VECTOR3, GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY)!
    }()
    static internal func _operatorIn(_ lhs: Godot.Vector3, _ rhs: Godot.PackedVector3Array) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_in_packedvector3array(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __indexed_setter: GDExtensionPtrIndexedSetter = {
        return gdextension_interface_variant_get_ptr_indexed_setter(GDEXTENSION_VARIANT_TYPE_VECTOR3)!
    }()
    private static var __indexed_getter: GDExtensionPtrIndexedGetter = {
        return gdextension_interface_variant_get_ptr_indexed_getter(GDEXTENSION_VARIANT_TYPE_VECTOR3)!
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

    private static var __method_binding_min_axis_index: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "min_axis_index").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, __ptr__method_name, 3173160232)!
        }
    }()
    internal func _minAxisIndex() -> Int {
        var __temporary = Int()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                Self.__method_binding_min_axis_index(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_max_axis_index: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "max_axis_index").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, __ptr__method_name, 3173160232)!
        }
    }()
    internal func _maxAxisIndex() -> Int {
        var __temporary = Int()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                Self.__method_binding_max_axis_index(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_angle_to: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "angle_to").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, __ptr__method_name, 1047977935)!
        }
    }()
    internal func _angleTo(_ to: Godot.Vector3) -> Real {
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

    private static var __method_binding_signed_angle_to: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "signed_angle_to").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, __ptr__method_name, 2781412522)!
        }
    }()
    internal func _signedAngleTo(_ to: Godot.Vector3, axis: Godot.Vector3) -> Real {
        var __temporary = Real()
        withUnsafePointer(to: to) { (__ptr_to) in
            withUnsafePointer(to: axis) { (__ptr_axis) in
                withUnsafeArgumentPackPointer(__ptr_to, __ptr_axis) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        withUnsafePointer(to: `self`) { (___ptr_self) in
                            let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                            Self.__method_binding_signed_angle_to(__ptr_self, __accessPtr, __ptr___temporary, 2)
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_direction_to: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "direction_to").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, __ptr__method_name, 2923479887)!
        }
    }()
    internal func _directionTo(_ to: Godot.Vector3) -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        withUnsafePointer(to: to) { (__ptr_to) in
            withUnsafeArgumentPackPointer(__ptr_to) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    withUnsafePointer(to: `self`) { (___ptr_self) in
                        let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                        Self.__method_binding_direction_to(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_distance_to: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "distance_to").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, __ptr__method_name, 1047977935)!
        }
    }()
    internal func _distanceTo(_ to: Godot.Vector3) -> Real {
        var __temporary = Real()
        withUnsafePointer(to: to) { (__ptr_to) in
            withUnsafeArgumentPackPointer(__ptr_to) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    withUnsafePointer(to: `self`) { (___ptr_self) in
                        let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                        Self.__method_binding_distance_to(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_distance_squared_to: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "distance_squared_to").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, __ptr__method_name, 1047977935)!
        }
    }()
    internal func _distanceSquaredTo(_ to: Godot.Vector3) -> Real {
        var __temporary = Real()
        withUnsafePointer(to: to) { (__ptr_to) in
            withUnsafeArgumentPackPointer(__ptr_to) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    withUnsafePointer(to: `self`) { (___ptr_self) in
                        let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                        Self.__method_binding_distance_squared_to(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_length: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "length").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, __ptr__method_name, 466405837)!
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
        GodotStringName(swiftString: "length_squared").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, __ptr__method_name, 466405837)!
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

    private static var __method_binding_limit_length: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "limit_length").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, __ptr__method_name, 514930144)!
        }
    }()
    internal func _limitLength(_ length: Real = 1.0) -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        withUnsafePointer(to: length) { (__ptr_length) in
            withUnsafeArgumentPackPointer(__ptr_length) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    withUnsafePointer(to: `self`) { (___ptr_self) in
                        let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                        Self.__method_binding_limit_length(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_normalized: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "normalized").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, __ptr__method_name, 1776574132)!
        }
    }()
    internal func _normalized() -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                Self.__method_binding_normalized(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_is_normalized: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "is_normalized").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, __ptr__method_name, 3918633141)!
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
        GodotStringName(swiftString: "is_equal_approx").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, __ptr__method_name, 1749054343)!
        }
    }()
    internal func _isEqualApprox(to: Godot.Vector3) -> Bool {
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

    private static var __method_binding_is_zero_approx: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "is_zero_approx").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, __ptr__method_name, 3918633141)!
        }
    }()
    internal func _isZeroApprox() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                Self.__method_binding_is_zero_approx(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_is_finite: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "is_finite").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, __ptr__method_name, 3918633141)!
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
        GodotStringName(swiftString: "inverse").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, __ptr__method_name, 1776574132)!
        }
    }()
    internal func _inverse() -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                Self.__method_binding_inverse(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_clamp: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "clamp").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, __ptr__method_name, 4145107892)!
        }
    }()
    internal func _clamp(min: Godot.Vector3, max: Godot.Vector3) -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        withUnsafePointer(to: min) { (__ptr_min) in
            withUnsafePointer(to: max) { (__ptr_max) in
                withUnsafeArgumentPackPointer(__ptr_min, __ptr_max) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        withUnsafePointer(to: `self`) { (___ptr_self) in
                            let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                            Self.__method_binding_clamp(__ptr_self, __accessPtr, __ptr___temporary, 2)
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_snapped: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "snapped").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, __ptr__method_name, 2923479887)!
        }
    }()
    internal func _snapped(step: Godot.Vector3) -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        withUnsafePointer(to: step) { (__ptr_step) in
            withUnsafeArgumentPackPointer(__ptr_step) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    withUnsafePointer(to: `self`) { (___ptr_self) in
                        let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                        Self.__method_binding_snapped(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_rotated: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "rotated").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, __ptr__method_name, 1682608829)!
        }
    }()
    internal func _rotated(axis: Godot.Vector3, angle: Real) -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        withUnsafePointer(to: axis) { (__ptr_axis) in
            withUnsafePointer(to: angle) { (__ptr_angle) in
                withUnsafeArgumentPackPointer(__ptr_axis, __ptr_angle) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        withUnsafePointer(to: `self`) { (___ptr_self) in
                            let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                            Self.__method_binding_rotated(__ptr_self, __accessPtr, __ptr___temporary, 2)
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_lerp: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "lerp").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, __ptr__method_name, 1682608829)!
        }
    }()
    internal func _lerp(to: Godot.Vector3, weight: Real) -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        withUnsafePointer(to: to) { (__ptr_to) in
            withUnsafePointer(to: weight) { (__ptr_weight) in
                withUnsafeArgumentPackPointer(__ptr_to, __ptr_weight) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        withUnsafePointer(to: `self`) { (___ptr_self) in
                            let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                            Self.__method_binding_lerp(__ptr_self, __accessPtr, __ptr___temporary, 2)
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_slerp: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "slerp").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, __ptr__method_name, 1682608829)!
        }
    }()
    internal func _slerp(to: Godot.Vector3, weight: Real) -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
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

    private static var __method_binding_cubic_interpolate: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "cubic_interpolate").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, __ptr__method_name, 2597922253)!
        }
    }()
    internal func _cubicInterpolate(b: Godot.Vector3, preA: Godot.Vector3, postB: Godot.Vector3, weight: Real) -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        withUnsafePointer(to: b) { (__ptr_b) in
            withUnsafePointer(to: preA) { (__ptr_preA) in
                withUnsafePointer(to: postB) { (__ptr_postB) in
                    withUnsafePointer(to: weight) { (__ptr_weight) in
                        withUnsafeArgumentPackPointer(__ptr_b, __ptr_preA, __ptr_postB, __ptr_weight) { (__accessPtr) in
                            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                withUnsafePointer(to: `self`) { (___ptr_self) in
                                    let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                                    Self.__method_binding_cubic_interpolate(__ptr_self, __accessPtr, __ptr___temporary, 4)
                                }
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_cubic_interpolate_in_time: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "cubic_interpolate_in_time").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, __ptr__method_name, 3256682901)!
        }
    }()
    internal func _cubicInterpolateInTime(b: Godot.Vector3, preA: Godot.Vector3, postB: Godot.Vector3, weight: Real, bT: Real, preAT: Real, postBT: Real) -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
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
                                                Self.__method_binding_cubic_interpolate_in_time(__ptr_self, __accessPtr, __ptr___temporary, 7)
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

    private static var __method_binding_bezier_interpolate: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "bezier_interpolate").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, __ptr__method_name, 2597922253)!
        }
    }()
    internal func _bezierInterpolate(control1: Godot.Vector3, control2: Godot.Vector3, end: Godot.Vector3, t: Real) -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        withUnsafePointer(to: control1) { (__ptr_control1) in
            withUnsafePointer(to: control2) { (__ptr_control2) in
                withUnsafePointer(to: end) { (__ptr_end) in
                    withUnsafePointer(to: t) { (__ptr_t) in
                        withUnsafeArgumentPackPointer(__ptr_control1, __ptr_control2, __ptr_end, __ptr_t) { (__accessPtr) in
                            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                withUnsafePointer(to: `self`) { (___ptr_self) in
                                    let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                                    Self.__method_binding_bezier_interpolate(__ptr_self, __accessPtr, __ptr___temporary, 4)
                                }
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_bezier_derivative: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "bezier_derivative").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, __ptr__method_name, 2597922253)!
        }
    }()
    internal func _bezierDerivative(control1: Godot.Vector3, control2: Godot.Vector3, end: Godot.Vector3, t: Real) -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        withUnsafePointer(to: control1) { (__ptr_control1) in
            withUnsafePointer(to: control2) { (__ptr_control2) in
                withUnsafePointer(to: end) { (__ptr_end) in
                    withUnsafePointer(to: t) { (__ptr_t) in
                        withUnsafeArgumentPackPointer(__ptr_control1, __ptr_control2, __ptr_end, __ptr_t) { (__accessPtr) in
                            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                withUnsafePointer(to: `self`) { (___ptr_self) in
                                    let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                                    Self.__method_binding_bezier_derivative(__ptr_self, __accessPtr, __ptr___temporary, 4)
                                }
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_move_toward: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "move_toward").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, __ptr__method_name, 1682608829)!
        }
    }()
    internal func _moveToward(to: Godot.Vector3, delta: Real) -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        withUnsafePointer(to: to) { (__ptr_to) in
            withUnsafePointer(to: delta) { (__ptr_delta) in
                withUnsafeArgumentPackPointer(__ptr_to, __ptr_delta) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        withUnsafePointer(to: `self`) { (___ptr_self) in
                            let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                            Self.__method_binding_move_toward(__ptr_self, __accessPtr, __ptr___temporary, 2)
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_dot: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "dot").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, __ptr__method_name, 1047977935)!
        }
    }()
    internal func _dot(with: Godot.Vector3) -> Real {
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

    private static var __method_binding_cross: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "cross").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, __ptr__method_name, 2923479887)!
        }
    }()
    internal func _cross(with: Godot.Vector3) -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        withUnsafePointer(to: with) { (__ptr_with) in
            withUnsafeArgumentPackPointer(__ptr_with) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    withUnsafePointer(to: `self`) { (___ptr_self) in
                        let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                        Self.__method_binding_cross(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_outer: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "outer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, __ptr__method_name, 3934786792)!
        }
    }()
    internal func _outer(with: Godot.Vector3) -> Godot.Basis {
        var __temporary = Godot.Basis()
        withUnsafePointer(to: with) { (__ptr_with) in
            withUnsafeArgumentPackPointer(__ptr_with) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    withUnsafePointer(to: `self`) { (___ptr_self) in
                        let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                        Self.__method_binding_outer(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_abs: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "abs").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, __ptr__method_name, 1776574132)!
        }
    }()
    internal func _abs() -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                Self.__method_binding_abs(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_floor: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "floor").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, __ptr__method_name, 1776574132)!
        }
    }()
    internal func _floor() -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                Self.__method_binding_floor(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_ceil: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "ceil").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, __ptr__method_name, 1776574132)!
        }
    }()
    internal func _ceil() -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                Self.__method_binding_ceil(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_round: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "round").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, __ptr__method_name, 1776574132)!
        }
    }()
    internal func _round() -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                Self.__method_binding_round(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_posmod: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "posmod").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, __ptr__method_name, 514930144)!
        }
    }()
    internal func _posmod(mod: Real) -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        withUnsafePointer(to: mod) { (__ptr_mod) in
            withUnsafeArgumentPackPointer(__ptr_mod) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    withUnsafePointer(to: `self`) { (___ptr_self) in
                        let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                        Self.__method_binding_posmod(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_posmodv: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "posmodv").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, __ptr__method_name, 2923479887)!
        }
    }()
    internal func _posmodv(modv: Godot.Vector3) -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        withUnsafePointer(to: modv) { (__ptr_modv) in
            withUnsafeArgumentPackPointer(__ptr_modv) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    withUnsafePointer(to: `self`) { (___ptr_self) in
                        let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                        Self.__method_binding_posmodv(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_project: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "project").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, __ptr__method_name, 2923479887)!
        }
    }()
    internal func _project(_ b: Godot.Vector3) -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        withUnsafePointer(to: b) { (__ptr_b) in
            withUnsafeArgumentPackPointer(__ptr_b) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    withUnsafePointer(to: `self`) { (___ptr_self) in
                        let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                        Self.__method_binding_project(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_slide: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "slide").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, __ptr__method_name, 2923479887)!
        }
    }()
    internal func _slide(_ n: Godot.Vector3) -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        withUnsafePointer(to: n) { (__ptr_n) in
            withUnsafeArgumentPackPointer(__ptr_n) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    withUnsafePointer(to: `self`) { (___ptr_self) in
                        let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                        Self.__method_binding_slide(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_bounce: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "bounce").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, __ptr__method_name, 2923479887)!
        }
    }()
    internal func _bounce(_ n: Godot.Vector3) -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        withUnsafePointer(to: n) { (__ptr_n) in
            withUnsafeArgumentPackPointer(__ptr_n) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    withUnsafePointer(to: `self`) { (___ptr_self) in
                        let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                        Self.__method_binding_bounce(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_reflect: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "reflect").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, __ptr__method_name, 2923479887)!
        }
    }()
    internal func _reflect(_ n: Godot.Vector3) -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        withUnsafePointer(to: n) { (__ptr_n) in
            withUnsafeArgumentPackPointer(__ptr_n) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    withUnsafePointer(to: `self`) { (___ptr_self) in
                        let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                        Self.__method_binding_reflect(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_sign: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "sign").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, __ptr__method_name, 1776574132)!
        }
    }()
    internal func _sign() -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                Self.__method_binding_sign(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_octahedron_encode: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "octahedron_encode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, __ptr__method_name, 2428350749)!
        }
    }()
    internal func _octahedronEncode() -> Godot.Vector2 {
        var __temporary = Godot.Vector2()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                Self.__method_binding_octahedron_encode(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_octahedron_decode: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "octahedron_decode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR3, __ptr__method_name, 3991820552)!
        }
    }()
    static internal func _octahedronDecode(uv: Godot.Vector2) -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        withUnsafePointer(to: uv) { (__ptr_uv) in
            withUnsafeArgumentPackPointer(__ptr_uv) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__method_binding_octahedron_decode(nil, __accessPtr, __ptr___temporary, 1)
                }
            }
        }
        return __temporary
    }

    }
extension Vector3: CustomDebugStringConvertible {
    public var debugDescription: String {
        Variant(self).debugDescription
    }
}