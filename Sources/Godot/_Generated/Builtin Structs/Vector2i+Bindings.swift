//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
extension Vector2i {
    public static let axisX: Int = 0
    public static let axisY: Int = 1
    public static let zero: Vector2i = Vector2i(x: 0, y: 0)
    public static let one: Vector2i = Vector2i(x: 1, y: 1)
    public static let left: Vector2i = Vector2i(x: -1, y: 0)
    public static let right: Vector2i = Vector2i(x: 1, y: 0)
    public static let up: Vector2i = Vector2i(x: 0, y: -1)
    public static let down: Vector2i = Vector2i(x: 0, y: 1)

    public enum Axis: UInt32, GodotEnum {
        case x = 0
        case y = 1
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("X", 0),
            ("Y", 1),]
        }
    }

    private static var __constructor: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR2I, 0)!
    }()
    static internal func _constructor() -> Self {
        var __temporary = Vector2i()
        withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
            Self.__constructor(__ptr___temporary, nil)
        }
        return __temporary
    }
    static internal func _ptr_constructor() -> Self {
        var __temporary = Vector2i()
        withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
            Self.__constructor(__ptr___temporary, nil)
        }
        return __temporary
    }

    private static var __constructor_vector2i: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR2I, 1)!
    }()
    static internal func _constructor_vector2i(from: Godot.Vector2i) -> Self {
        var __temporary = Vector2i()
        withUnsafePointer(to: from) { (__ptr_from) in
            withUnsafeArgumentPackPointer(__ptr_from) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                    Self.__constructor_vector2i(__ptr___temporary, __accessPtr)
                }
            }
        }
        return __temporary
    }
    static internal func _ptr_constructor_vector2i(from: UnsafeRawPointer) -> Self {
        var __temporary = Vector2i()
        withUnsafeArgumentPackPointer(from) { (__accessPtr) in
            withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                Self.__constructor_vector2i(__ptr___temporary, __accessPtr)
            }
        }
        return __temporary
    }

    private static var __constructor_vector2: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR2I, 2)!
    }()
    static internal func _constructor_vector2(from: Godot.Vector2) -> Self {
        var __temporary = Vector2i()
        withUnsafePointer(to: from) { (__ptr_from) in
            withUnsafeArgumentPackPointer(__ptr_from) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                    Self.__constructor_vector2(__ptr___temporary, __accessPtr)
                }
            }
        }
        return __temporary
    }
    static internal func _ptr_constructor_vector2(from: UnsafeRawPointer) -> Self {
        var __temporary = Vector2i()
        withUnsafeArgumentPackPointer(from) { (__accessPtr) in
            withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                Self.__constructor_vector2(__ptr___temporary, __accessPtr)
            }
        }
        return __temporary
    }

    private static var __constructor_int_int: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_VECTOR2I, 3)!
    }()
    static internal func _constructor_int_int(x: Int, y: Int) -> Self {
        var __temporary = Vector2i()
        withUnsafePointer(to: x) { (__ptr_x) in
            withUnsafePointer(to: y) { (__ptr_y) in
                withUnsafeArgumentPackPointer(__ptr_x, __ptr_y) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                        Self.__constructor_int_int(__ptr___temporary, __accessPtr)
                    }
                }
            }
        }
        return __temporary
    }
    static internal func _ptr_constructor_int_int(x: UnsafeRawPointer, y: UnsafeRawPointer) -> Self {
        var __temporary = Vector2i()
        withUnsafeArgumentPackPointer(x, y) { (__accessPtr) in
            withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                Self.__constructor_int_int(__ptr___temporary, __accessPtr)
            }
        }
        return __temporary
    }

    private static var __operator_binding_equal_variant: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_VECTOR2I, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorEqual<Variant1 : VariantEncodable>(_ lhs: Godot.Vector2i, _ rhs: Variant1) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            Godot.Variant.Storage(rhs).withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_equal_variant(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_not_equal_variant: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_VECTOR2I, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorNotEqual<Variant1 : VariantEncodable>(_ lhs: Godot.Vector2i, _ rhs: Variant1) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            Godot.Variant.Storage(rhs).withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_not_equal_variant(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_negate: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NEGATE, GDEXTENSION_VARIANT_TYPE_VECTOR2I, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorNegate(_ lhs: Godot.Vector2i) -> Godot.Vector2i {
        var __temporary = Vector2i()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                Self.__operator_binding_negate(__ptr_lhs, nil, __ptr___temporary)
            }
        }
        return __temporary
    }

    private static var __operator_binding_positive: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_POSITIVE, GDEXTENSION_VARIANT_TYPE_VECTOR2I, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorPositive(_ lhs: Godot.Vector2i) -> Godot.Vector2i {
        var __temporary = Vector2i()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                Self.__operator_binding_positive(__ptr_lhs, nil, __ptr___temporary)
            }
        }
        return __temporary
    }

    private static var __operator_binding_not: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT, GDEXTENSION_VARIANT_TYPE_VECTOR2I, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorNot(_ lhs: Godot.Vector2i) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                Self.__operator_binding_not(__ptr_lhs, nil, __ptr___temporary)
            }
        }
        return __temporary
    }

    private static var __operator_binding_multiply_int: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_VECTOR2I, GDEXTENSION_VARIANT_TYPE_INT)!
    }()
    static internal func _operatorMultiply(_ lhs: Godot.Vector2i, _ rhs: Int) -> Godot.Vector2i {
        var __temporary = Vector2i()
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
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_DIVIDE, GDEXTENSION_VARIANT_TYPE_VECTOR2I, GDEXTENSION_VARIANT_TYPE_INT)!
    }()
    static internal func _operatorDivide(_ lhs: Godot.Vector2i, _ rhs: Int) -> Godot.Vector2i {
        var __temporary = Vector2i()
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
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_VECTOR2I, GDEXTENSION_VARIANT_TYPE_INT)!
    }()
    static internal func _operatorModule(_ lhs: Godot.Vector2i, _ rhs: Int) -> Godot.Vector2i {
        var __temporary = Vector2i()
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
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_VECTOR2I, GDEXTENSION_VARIANT_TYPE_FLOAT)!
    }()
    static internal func _operatorMultiply(_ lhs: Godot.Vector2i, _ rhs: Real) -> Godot.Vector2 {
        var __temporary = Vector2()
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
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_DIVIDE, GDEXTENSION_VARIANT_TYPE_VECTOR2I, GDEXTENSION_VARIANT_TYPE_FLOAT)!
    }()
    static internal func _operatorDivide(_ lhs: Godot.Vector2i, _ rhs: Real) -> Godot.Vector2 {
        var __temporary = Vector2()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_divide_double(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_equal_vector2i: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_VECTOR2I, GDEXTENSION_VARIANT_TYPE_VECTOR2I)!
    }()
    static internal func _operatorEqual(_ lhs: Godot.Vector2i, _ rhs: Godot.Vector2i) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_equal_vector2i(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_not_equal_vector2i: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_VECTOR2I, GDEXTENSION_VARIANT_TYPE_VECTOR2I)!
    }()
    static internal func _operatorNotEqual(_ lhs: Godot.Vector2i, _ rhs: Godot.Vector2i) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_not_equal_vector2i(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_less_vector2i: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_LESS, GDEXTENSION_VARIANT_TYPE_VECTOR2I, GDEXTENSION_VARIANT_TYPE_VECTOR2I)!
    }()
    static internal func _operatorLess(_ lhs: Godot.Vector2i, _ rhs: Godot.Vector2i) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_less_vector2i(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_less_equal_vector2i: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_LESS_EQUAL, GDEXTENSION_VARIANT_TYPE_VECTOR2I, GDEXTENSION_VARIANT_TYPE_VECTOR2I)!
    }()
    static internal func _operatorLessEqual(_ lhs: Godot.Vector2i, _ rhs: Godot.Vector2i) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_less_equal_vector2i(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_greater_vector2i: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_GREATER, GDEXTENSION_VARIANT_TYPE_VECTOR2I, GDEXTENSION_VARIANT_TYPE_VECTOR2I)!
    }()
    static internal func _operatorGreater(_ lhs: Godot.Vector2i, _ rhs: Godot.Vector2i) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_greater_vector2i(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_greater_equal_vector2i: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_GREATER_EQUAL, GDEXTENSION_VARIANT_TYPE_VECTOR2I, GDEXTENSION_VARIANT_TYPE_VECTOR2I)!
    }()
    static internal func _operatorGreaterEqual(_ lhs: Godot.Vector2i, _ rhs: Godot.Vector2i) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_greater_equal_vector2i(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_add_vector2i: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_ADD, GDEXTENSION_VARIANT_TYPE_VECTOR2I, GDEXTENSION_VARIANT_TYPE_VECTOR2I)!
    }()
    static internal func _operatorAdd(_ lhs: Godot.Vector2i, _ rhs: Godot.Vector2i) -> Godot.Vector2i {
        var __temporary = Vector2i()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_add_vector2i(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_subtract_vector2i: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_SUBTRACT, GDEXTENSION_VARIANT_TYPE_VECTOR2I, GDEXTENSION_VARIANT_TYPE_VECTOR2I)!
    }()
    static internal func _operatorSubtract(_ lhs: Godot.Vector2i, _ rhs: Godot.Vector2i) -> Godot.Vector2i {
        var __temporary = Vector2i()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_subtract_vector2i(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_multiply_vector2i: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_VECTOR2I, GDEXTENSION_VARIANT_TYPE_VECTOR2I)!
    }()
    static internal func _operatorMultiply(_ lhs: Godot.Vector2i, _ rhs: Godot.Vector2i) -> Godot.Vector2i {
        var __temporary = Vector2i()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_multiply_vector2i(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_divide_vector2i: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_DIVIDE, GDEXTENSION_VARIANT_TYPE_VECTOR2I, GDEXTENSION_VARIANT_TYPE_VECTOR2I)!
    }()
    static internal func _operatorDivide(_ lhs: Godot.Vector2i, _ rhs: Godot.Vector2i) -> Godot.Vector2i {
        var __temporary = Vector2i()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_divide_vector2i(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_module_vector2i: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_VECTOR2I, GDEXTENSION_VARIANT_TYPE_VECTOR2I)!
    }()
    static internal func _operatorModule(_ lhs: Godot.Vector2i, _ rhs: Godot.Vector2i) -> Godot.Vector2i {
        var __temporary = Vector2i()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_module_vector2i(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_in_godotdictionary: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_VECTOR2I, GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
    }()
    static internal func _operatorIn(_ lhs: Godot.Vector2i, _ rhs: Godot.GodotDictionary) -> Bool {
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
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_VECTOR2I, GDEXTENSION_VARIANT_TYPE_ARRAY)!
    }()
    static internal func _operatorIn(_ lhs: Godot.Vector2i, _ rhs: Godot.GodotArray) -> Bool {
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
        return gdextension_interface_variant_get_ptr_indexed_setter(GDEXTENSION_VARIANT_TYPE_VECTOR2I)!
    }()
    private static var __indexed_getter: GDExtensionPtrIndexedGetter = {
        return gdextension_interface_variant_get_ptr_indexed_getter(GDEXTENSION_VARIANT_TYPE_VECTOR2I)!
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

    private static var __method_binding_aspect: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "aspect").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2I, __ptr__method_name, 466405837)!
        }
    }()
    internal func _aspect() -> Real {
        var __temporary = Real()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                Self.__method_binding_aspect(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_max_axis_index: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "max_axis_index").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2I, __ptr__method_name, 3173160232)!
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

    private static var __method_binding_min_axis_index: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "min_axis_index").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2I, __ptr__method_name, 3173160232)!
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

    private static var __method_binding_length: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "length").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2I, __ptr__method_name, 466405837)!
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
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2I, __ptr__method_name, 3173160232)!
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
        GodotStringName(swiftStaticString: "sign").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2I, __ptr__method_name, 3444277866)!
        }
    }()
    internal func _sign() -> Godot.Vector2i {
        var __temporary = Godot.Vector2i()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                Self.__method_binding_sign(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_abs: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "abs").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2I, __ptr__method_name, 3444277866)!
        }
    }()
    internal func _abs() -> Godot.Vector2i {
        var __temporary = Godot.Vector2i()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                Self.__method_binding_abs(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_clamp: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "clamp").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2I, __ptr__method_name, 186568249)!
        }
    }()
    internal func _clamp(min: Godot.Vector2i, max: Godot.Vector2i) -> Godot.Vector2i {
        var __temporary = Godot.Vector2i()
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
        GodotStringName(swiftStaticString: "snapped").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_VECTOR2I, __ptr__method_name, 1735278196)!
        }
    }()
    internal func _snapped(step: Godot.Vector2i) -> Godot.Vector2i {
        var __temporary = Godot.Vector2i()
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