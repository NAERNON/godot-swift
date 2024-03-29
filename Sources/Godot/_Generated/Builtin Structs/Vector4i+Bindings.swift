//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
extension Vector4i {
    public static let axisX: Int = 0
    public static let axisY: Int = 1
    public static let axisZ: Int = 2
    public static let axisW: Int = 3
    public static let zero: Vector4i = Vector4i(x: 0, y: 0, z: 0, w: 0)
    public static let one: Vector4i = Vector4i(x: 1, y: 1, z: 1, w: 1)

    public enum Axis: UInt32 {
        case x = 0
        case y = 1
        case z = 2
        case w = 3
    }

    private static var __constructor: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR4I, 0)!
    }()
    static internal func _constructor() -> Self {
        var __temporary = Vector4i()
        withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
            Self.__constructor(__ptr___temporary, nil)
        }
        return __temporary
    }
    static internal func _ptr_constructor() -> Self {
        var __temporary = Vector4i()
        withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
            Self.__constructor(__ptr___temporary, nil)
        }
        return __temporary
    }

    private static var __constructor_vector4i: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR4I, 1)!
    }()
    static internal func _constructor_vector4i(from: Godot.Vector4i) -> Self {
        var __temporary = Vector4i()
        withUnsafePointer(to: from) { (__ptr_from) in
            withUnsafeArgumentPackPointer(__ptr_from) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                    Self.__constructor_vector4i(__ptr___temporary, __accessPtr)
                }
            }
        }
        return __temporary
    }
    static internal func _ptr_constructor_vector4i(from: UnsafeRawPointer) -> Self {
        var __temporary = Vector4i()
        withUnsafeArgumentPackPointer(from) { (__accessPtr) in
            withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                Self.__constructor_vector4i(__ptr___temporary, __accessPtr)
            }
        }
        return __temporary
    }

    private static var __constructor_vector4: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR4I, 2)!
    }()
    static internal func _constructor_vector4(from: Godot.Vector4) -> Self {
        var __temporary = Vector4i()
        withUnsafePointer(to: from) { (__ptr_from) in
            withUnsafeArgumentPackPointer(__ptr_from) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                    Self.__constructor_vector4(__ptr___temporary, __accessPtr)
                }
            }
        }
        return __temporary
    }
    static internal func _ptr_constructor_vector4(from: UnsafeRawPointer) -> Self {
        var __temporary = Vector4i()
        withUnsafeArgumentPackPointer(from) { (__accessPtr) in
            withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                Self.__constructor_vector4(__ptr___temporary, __accessPtr)
            }
        }
        return __temporary
    }

    private static var __constructor_int_int_int_int: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR4I, 3)!
    }()
    static internal func _constructor_int_int_int_int(x: Int, y: Int, z: Int, w: Int) -> Self {
        var __temporary = Vector4i()
        withUnsafePointer(to: x) { (__ptr_x) in
            withUnsafePointer(to: y) { (__ptr_y) in
                withUnsafePointer(to: z) { (__ptr_z) in
                    withUnsafePointer(to: w) { (__ptr_w) in
                        withUnsafeArgumentPackPointer(__ptr_x, __ptr_y, __ptr_z, __ptr_w) { (__accessPtr) in
                            withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                                Self.__constructor_int_int_int_int(__ptr___temporary, __accessPtr)
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }
    static internal func _ptr_constructor_int_int_int_int(x: UnsafeRawPointer, y: UnsafeRawPointer, z: UnsafeRawPointer, w: UnsafeRawPointer) -> Self {
        var __temporary = Vector4i()
        withUnsafeArgumentPackPointer(x, y, z, w) { (__accessPtr) in
            withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                Self.__constructor_int_int_int_int(__ptr___temporary, __accessPtr)
            }
        }
        return __temporary
    }

    private static var __operator_binding_equal_variant: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_VECTOR4I, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorEqual<Variant1 : ConvertibleToVariant>(_ lhs: Godot.Vector4i, _ rhs: Variant1) -> Bool {
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
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_VECTOR4I, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorNotEqual<Variant1 : ConvertibleToVariant>(_ lhs: Godot.Vector4i, _ rhs: Variant1) -> Bool {
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
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NEGATE, GDEXTENSION_VARIANT_TYPE_VECTOR4I, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorNegate(_ lhs: Godot.Vector4i) -> Godot.Vector4i {
        var __temporary = Vector4i()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                Self.__operator_binding_negate(__ptr_lhs, nil, __ptr___temporary)
            }
        }
        return __temporary
    }

    private static var __operator_binding_positive: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_POSITIVE, GDEXTENSION_VARIANT_TYPE_VECTOR4I, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorPositive(_ lhs: Godot.Vector4i) -> Godot.Vector4i {
        var __temporary = Vector4i()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                Self.__operator_binding_positive(__ptr_lhs, nil, __ptr___temporary)
            }
        }
        return __temporary
    }

    private static var __operator_binding_not: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT, GDEXTENSION_VARIANT_TYPE_VECTOR4I, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorNot(_ lhs: Godot.Vector4i) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                Self.__operator_binding_not(__ptr_lhs, nil, __ptr___temporary)
            }
        }
        return __temporary
    }

    private static var __operator_binding_multiply_int: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_VECTOR4I, GDEXTENSION_VARIANT_TYPE_INT)!
    }()
    static internal func _operatorMultiply(_ lhs: Godot.Vector4i, _ rhs: Int) -> Godot.Vector4i {
        var __temporary = Vector4i()
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
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_DIVIDE, GDEXTENSION_VARIANT_TYPE_VECTOR4I, GDEXTENSION_VARIANT_TYPE_INT)!
    }()
    static internal func _operatorDivide(_ lhs: Godot.Vector4i, _ rhs: Int) -> Godot.Vector4i {
        var __temporary = Vector4i()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_divide_int(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_module_int: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_VECTOR4I, GDEXTENSION_VARIANT_TYPE_INT)!
    }()
    static internal func _operatorModule(_ lhs: Godot.Vector4i, _ rhs: Int) -> Godot.Vector4i {
        var __temporary = Vector4i()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_module_int(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_multiply_double: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_VECTOR4I, GDEXTENSION_VARIANT_TYPE_FLOAT)!
    }()
    static internal func _operatorMultiply(_ lhs: Godot.Vector4i, _ rhs: Real) -> Godot.Vector4 {
        var __temporary = Vector4()
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
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_DIVIDE, GDEXTENSION_VARIANT_TYPE_VECTOR4I, GDEXTENSION_VARIANT_TYPE_FLOAT)!
    }()
    static internal func _operatorDivide(_ lhs: Godot.Vector4i, _ rhs: Real) -> Godot.Vector4 {
        var __temporary = Vector4()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_divide_double(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_equal_vector4i: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_VECTOR4I, GDEXTENSION_VARIANT_TYPE_VECTOR4I)!
    }()
    static internal func _operatorEqual(_ lhs: Godot.Vector4i, _ rhs: Godot.Vector4i) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_equal_vector4i(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_not_equal_vector4i: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_VECTOR4I, GDEXTENSION_VARIANT_TYPE_VECTOR4I)!
    }()
    static internal func _operatorNotEqual(_ lhs: Godot.Vector4i, _ rhs: Godot.Vector4i) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_not_equal_vector4i(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_less_vector4i: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_LESS, GDEXTENSION_VARIANT_TYPE_VECTOR4I, GDEXTENSION_VARIANT_TYPE_VECTOR4I)!
    }()
    static internal func _operatorLess(_ lhs: Godot.Vector4i, _ rhs: Godot.Vector4i) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_less_vector4i(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_less_equal_vector4i: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_LESS_EQUAL, GDEXTENSION_VARIANT_TYPE_VECTOR4I, GDEXTENSION_VARIANT_TYPE_VECTOR4I)!
    }()
    static internal func _operatorLessEqual(_ lhs: Godot.Vector4i, _ rhs: Godot.Vector4i) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_less_equal_vector4i(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_greater_vector4i: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_GREATER, GDEXTENSION_VARIANT_TYPE_VECTOR4I, GDEXTENSION_VARIANT_TYPE_VECTOR4I)!
    }()
    static internal func _operatorGreater(_ lhs: Godot.Vector4i, _ rhs: Godot.Vector4i) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_greater_vector4i(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_greater_equal_vector4i: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_GREATER_EQUAL, GDEXTENSION_VARIANT_TYPE_VECTOR4I, GDEXTENSION_VARIANT_TYPE_VECTOR4I)!
    }()
    static internal func _operatorGreaterEqual(_ lhs: Godot.Vector4i, _ rhs: Godot.Vector4i) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_greater_equal_vector4i(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_add_vector4i: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_ADD, GDEXTENSION_VARIANT_TYPE_VECTOR4I, GDEXTENSION_VARIANT_TYPE_VECTOR4I)!
    }()
    static internal func _operatorAdd(_ lhs: Godot.Vector4i, _ rhs: Godot.Vector4i) -> Godot.Vector4i {
        var __temporary = Vector4i()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_add_vector4i(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_subtract_vector4i: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_SUBTRACT, GDEXTENSION_VARIANT_TYPE_VECTOR4I, GDEXTENSION_VARIANT_TYPE_VECTOR4I)!
    }()
    static internal func _operatorSubtract(_ lhs: Godot.Vector4i, _ rhs: Godot.Vector4i) -> Godot.Vector4i {
        var __temporary = Vector4i()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_subtract_vector4i(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_multiply_vector4i: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_VECTOR4I, GDEXTENSION_VARIANT_TYPE_VECTOR4I)!
    }()
    static internal func _operatorMultiply(_ lhs: Godot.Vector4i, _ rhs: Godot.Vector4i) -> Godot.Vector4i {
        var __temporary = Vector4i()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_multiply_vector4i(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_divide_vector4i: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_DIVIDE, GDEXTENSION_VARIANT_TYPE_VECTOR4I, GDEXTENSION_VARIANT_TYPE_VECTOR4I)!
    }()
    static internal func _operatorDivide(_ lhs: Godot.Vector4i, _ rhs: Godot.Vector4i) -> Godot.Vector4i {
        var __temporary = Vector4i()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_divide_vector4i(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_module_vector4i: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_VECTOR4I, GDEXTENSION_VARIANT_TYPE_VECTOR4I)!
    }()
    static internal func _operatorModule(_ lhs: Godot.Vector4i, _ rhs: Godot.Vector4i) -> Godot.Vector4i {
        var __temporary = Vector4i()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_module_vector4i(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_in_godotdictionary: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_VECTOR4I, GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
    }()
    static internal func _operatorIn(_ lhs: Godot.Vector4i, _ rhs: Godot.GodotDictionary) -> Bool {
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
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_VECTOR4I, GDEXTENSION_VARIANT_TYPE_ARRAY)!
    }()
    static internal func _operatorIn(_ lhs: Godot.Vector4i, _ rhs: Godot.GodotArray) -> Bool {
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
        return gdextension_interface_variant_get_ptr_indexed_setter(GDEXTENSION_VARIANT_TYPE_VECTOR4I)!
    }()
    private static var __indexed_getter: GDExtensionPtrIndexedGetter = {
        return gdextension_interface_variant_get_ptr_indexed_getter(GDEXTENSION_VARIANT_TYPE_VECTOR4I)!
    }()
    internal func _getValue(at index: GDExtensionInt) -> Int {
        var __temporary = Int()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (__ptr_self) in
                Self.__indexed_getter(__ptr_self, index, __ptr___temporary)
            }
        }
        return __temporary
    }
    mutating internal func _setValue(_ value: Int, at index: GDExtensionInt) {
        withUnsafePointer(to: value) { (__ptr_value) in
            withUnsafeMutablePointer(to: &`self`) { (__ptr_self) in
                Self.__indexed_setter(__ptr_self, index, __ptr_value)
            }
        }
    }

    private static var __method_binding_min_axis_index: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "min_axis_index").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4I, __ptr__method_name, 3173160232)!
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
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4I, __ptr__method_name, 3173160232)!
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

    private static var __method_binding_length: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "length").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4I, __ptr__method_name, 466405837)!
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
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4I, __ptr__method_name, 3173160232)!
        }
    }()
    internal func _lengthSquared() -> Int {
        var __temporary = Int()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                Self.__method_binding_length_squared(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_sign: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "sign").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4I, __ptr__method_name, 4134919947)!
        }
    }()
    internal func _sign() -> Godot.Vector4i {
        var __temporary = Godot.Vector4i()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                Self.__method_binding_sign(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_abs: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "abs").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4I, __ptr__method_name, 4134919947)!
        }
    }()
    internal func _abs() -> Godot.Vector4i {
        var __temporary = Godot.Vector4i()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                Self.__method_binding_abs(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_clamp: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "clamp").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4I, __ptr__method_name, 3046490913)!
        }
    }()
    internal func _clamp(min: Godot.Vector4i, max: Godot.Vector4i) -> Godot.Vector4i {
        var __temporary = Godot.Vector4i()
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
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR4I, __ptr__method_name, 1181693102)!
        }
    }()
    internal func _snapped(step: Godot.Vector4i) -> Godot.Vector4i {
        var __temporary = Godot.Vector4i()
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

    }
extension Vector4i: CustomDebugStringConvertible {
    public var debugDescription: String {
        Variant(self).debugDescription
    }
}