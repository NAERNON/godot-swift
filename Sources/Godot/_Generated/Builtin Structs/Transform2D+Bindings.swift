//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
extension Transform2D {
    public static let identity: Transform2D = Transform2D(xAxisX: 1, xAxisY: 0, yAxisX: 0, yAxisY: 1, originX: 0, originY: 0)
    public static let flipX: Transform2D = Transform2D(xAxisX: -1, xAxisY: 0, yAxisX: 0, yAxisY: 1, originX: 0, originY: 0)
    public static let flipY: Transform2D = Transform2D(xAxisX: 1, xAxisY: 0, yAxisX: 0, yAxisY: -1, originX: 0, originY: 0)

    private static var __constructor: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, 0)!
    }()
    static internal func _constructor() -> Self {
        var __temporary = Transform2D()
        withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
            Self.__constructor(__ptr___temporary, nil)
        }
        return __temporary
    }
    static internal func _ptr_constructor() -> Self {
        var __temporary = Transform2D()
        withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
            Self.__constructor(__ptr___temporary, nil)
        }
        return __temporary
    }

    private static var __constructor_transform2d: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, 1)!
    }()
    static internal func _constructor_transform2d(from: Godot.Transform2D) -> Self {
        var __temporary = Transform2D()
        withUnsafePointer(to: from) { (__ptr_from) in
            withUnsafeArgumentPackPointer(__ptr_from) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                    Self.__constructor_transform2d(__ptr___temporary, __accessPtr)
                }
            }
        }
        return __temporary
    }
    static internal func _ptr_constructor_transform2d(from: UnsafeRawPointer) -> Self {
        var __temporary = Transform2D()
        withUnsafeArgumentPackPointer(from) { (__accessPtr) in
            withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                Self.__constructor_transform2d(__ptr___temporary, __accessPtr)
            }
        }
        return __temporary
    }

    private static var __constructor_float_vector2: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, 2)!
    }()
    static internal func _constructor_float_vector2(rotation: Real, position: Godot.Vector2) -> Self {
        var __temporary = Transform2D()
        withUnsafePointer(to: rotation) { (__ptr_rotation) in
            withUnsafePointer(to: position) { (__ptr_position) in
                withUnsafeArgumentPackPointer(__ptr_rotation, __ptr_position) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                        Self.__constructor_float_vector2(__ptr___temporary, __accessPtr)
                    }
                }
            }
        }
        return __temporary
    }
    static internal func _ptr_constructor_float_vector2(rotation: UnsafeRawPointer, position: UnsafeRawPointer) -> Self {
        var __temporary = Transform2D()
        withUnsafeArgumentPackPointer(rotation, position) { (__accessPtr) in
            withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                Self.__constructor_float_vector2(__ptr___temporary, __accessPtr)
            }
        }
        return __temporary
    }

    private static var __constructor_float_vector2_float_vector2: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, 3)!
    }()
    static internal func _constructor_float_vector2_float_vector2(rotation: Real, scale: Godot.Vector2, skew: Real, position: Godot.Vector2) -> Self {
        var __temporary = Transform2D()
        withUnsafePointer(to: rotation) { (__ptr_rotation) in
            withUnsafePointer(to: scale) { (__ptr_scale) in
                withUnsafePointer(to: skew) { (__ptr_skew) in
                    withUnsafePointer(to: position) { (__ptr_position) in
                        withUnsafeArgumentPackPointer(__ptr_rotation, __ptr_scale, __ptr_skew, __ptr_position) { (__accessPtr) in
                            withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                                Self.__constructor_float_vector2_float_vector2(__ptr___temporary, __accessPtr)
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }
    static internal func _ptr_constructor_float_vector2_float_vector2(rotation: UnsafeRawPointer, scale: UnsafeRawPointer, skew: UnsafeRawPointer, position: UnsafeRawPointer) -> Self {
        var __temporary = Transform2D()
        withUnsafeArgumentPackPointer(rotation, scale, skew, position) { (__accessPtr) in
            withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                Self.__constructor_float_vector2_float_vector2(__ptr___temporary, __accessPtr)
            }
        }
        return __temporary
    }

    private static var __constructor_vector2_vector2_vector2: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, 4)!
    }()
    static internal func _constructor_vector2_vector2_vector2(xAxis: Godot.Vector2, yAxis: Godot.Vector2, origin: Godot.Vector2) -> Self {
        var __temporary = Transform2D()
        withUnsafePointer(to: xAxis) { (__ptr_xAxis) in
            withUnsafePointer(to: yAxis) { (__ptr_yAxis) in
                withUnsafePointer(to: origin) { (__ptr_origin) in
                    withUnsafeArgumentPackPointer(__ptr_xAxis, __ptr_yAxis, __ptr_origin) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                            Self.__constructor_vector2_vector2_vector2(__ptr___temporary, __accessPtr)
                        }
                    }
                }
            }
        }
        return __temporary
    }
    static internal func _ptr_constructor_vector2_vector2_vector2(xAxis: UnsafeRawPointer, yAxis: UnsafeRawPointer, origin: UnsafeRawPointer) -> Self {
        var __temporary = Transform2D()
        withUnsafeArgumentPackPointer(xAxis, yAxis, origin) { (__accessPtr) in
            withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                Self.__constructor_vector2_vector2_vector2(__ptr___temporary, __accessPtr)
            }
        }
        return __temporary
    }

    private static var __operator_binding_equal_variant: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorEqual<Variant1 : ConvertibleToVariant>(_ lhs: Godot.Transform2D, _ rhs: Variant1) -> Bool {
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
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorNotEqual<Variant1 : ConvertibleToVariant>(_ lhs: Godot.Transform2D, _ rhs: Variant1) -> Bool {
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

    private static var __operator_binding_not: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT, GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorNot(_ lhs: Godot.Transform2D) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                Self.__operator_binding_not(__ptr_lhs, nil, __ptr___temporary)
            }
        }
        return __temporary
    }

    private static var __operator_binding_multiply_int: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, GDEXTENSION_VARIANT_TYPE_INT)!
    }()
    static internal func _operatorMultiply(_ lhs: Godot.Transform2D, _ rhs: Int) -> Godot.Transform2D {
        var __temporary = Transform2D()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_multiply_int(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_multiply_double: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, GDEXTENSION_VARIANT_TYPE_FLOAT)!
    }()
    static internal func _operatorMultiply(_ lhs: Godot.Transform2D, _ rhs: Real) -> Godot.Transform2D {
        var __temporary = Transform2D()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_multiply_double(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_multiply_vector2: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, GDEXTENSION_VARIANT_TYPE_VECTOR2)!
    }()
    static internal func _operatorMultiply(_ lhs: Godot.Transform2D, _ rhs: Godot.Vector2) -> Godot.Vector2 {
        var __temporary = Vector2()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_multiply_vector2(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_multiply_rect2: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, GDEXTENSION_VARIANT_TYPE_RECT2)!
    }()
    static internal func _operatorMultiply(_ lhs: Godot.Transform2D, _ rhs: Godot.Rect2) -> Godot.Rect2 {
        var __temporary = Rect2()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_multiply_rect2(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_equal_transform2d: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, GDEXTENSION_VARIANT_TYPE_TRANSFORM2D)!
    }()
    static internal func _operatorEqual(_ lhs: Godot.Transform2D, _ rhs: Godot.Transform2D) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_equal_transform2d(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_not_equal_transform2d: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, GDEXTENSION_VARIANT_TYPE_TRANSFORM2D)!
    }()
    static internal func _operatorNotEqual(_ lhs: Godot.Transform2D, _ rhs: Godot.Transform2D) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_not_equal_transform2d(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_multiply_transform2d: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, GDEXTENSION_VARIANT_TYPE_TRANSFORM2D)!
    }()
    static internal func _operatorMultiply(_ lhs: Godot.Transform2D, _ rhs: Godot.Transform2D) -> Godot.Transform2D {
        var __temporary = Transform2D()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_multiply_transform2d(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_in_godotdictionary: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
    }()
    static internal func _operatorIn(_ lhs: Godot.Transform2D, _ rhs: Godot.GodotDictionary) -> Bool {
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
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, GDEXTENSION_VARIANT_TYPE_ARRAY)!
    }()
    static internal func _operatorIn(_ lhs: Godot.Transform2D, _ rhs: Godot.GodotArray) -> Bool {
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

    private static var __operator_binding_multiply_packedvector2array: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR2_ARRAY)!
    }()
    static internal func _operatorMultiply(_ lhs: Godot.Transform2D, _ rhs: Godot.PackedVector2Array) -> Godot.PackedVector2Array {
        let __temporary = PackedVector2Array()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    Self.__operator_binding_multiply_packedvector2array(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __indexed_setter: GDExtensionPtrIndexedSetter = {
        return gdextension_interface_variant_get_ptr_indexed_setter(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D)!
    }()
    private static var __indexed_getter: GDExtensionPtrIndexedGetter = {
        return gdextension_interface_variant_get_ptr_indexed_getter(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D)!
    }()
    internal func _getValue(at index: GDExtensionInt) -> Godot.Vector2 {
        var __temporary = Godot.Vector2()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (__ptr_self) in
                Self.__indexed_getter(__ptr_self, index, __ptr___temporary)
            }
        }
        return __temporary
    }
    mutating internal func _setValue(_ value: Godot.Vector2, at index: GDExtensionInt) {
        withUnsafePointer(to: value) { (__ptr_value) in
            withUnsafeMutablePointer(to: &`self`) { (__ptr_self) in
                Self.__indexed_setter(__ptr_self, index, __ptr_value)
            }
        }
    }

    private static var __method_binding_inverse: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "inverse").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, __ptr__method_name, 1420440541)!
        }
    }()
    internal func _inverse() -> Godot.Transform2D {
        var __temporary = Godot.Transform2D()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                Self.__method_binding_inverse(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_affine_inverse: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "affine_inverse").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, __ptr__method_name, 1420440541)!
        }
    }()
    internal func _affineInverse() -> Godot.Transform2D {
        var __temporary = Godot.Transform2D()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                Self.__method_binding_affine_inverse(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_get_rotation: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "get_rotation").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, __ptr__method_name, 466405837)!
        }
    }()
    internal func _rotation() -> Real {
        var __temporary = Real()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                Self.__method_binding_get_rotation(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_get_origin: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "get_origin").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, __ptr__method_name, 2428350749)!
        }
    }()
    internal func _origin() -> Godot.Vector2 {
        var __temporary = Godot.Vector2()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                Self.__method_binding_get_origin(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_get_scale: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "get_scale").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, __ptr__method_name, 2428350749)!
        }
    }()
    internal func _scale() -> Godot.Vector2 {
        var __temporary = Godot.Vector2()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                Self.__method_binding_get_scale(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_get_skew: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "get_skew").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, __ptr__method_name, 466405837)!
        }
    }()
    internal func _skew() -> Real {
        var __temporary = Real()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                Self.__method_binding_get_skew(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_orthonormalized: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "orthonormalized").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, __ptr__method_name, 1420440541)!
        }
    }()
    internal func _orthonormalized() -> Godot.Transform2D {
        var __temporary = Godot.Transform2D()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                Self.__method_binding_orthonormalized(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_rotated: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "rotated").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, __ptr__method_name, 729597514)!
        }
    }()
    internal func _rotated(angle: Real) -> Godot.Transform2D {
        var __temporary = Godot.Transform2D()
        withUnsafePointer(to: angle) { (__ptr_angle) in
            withUnsafeArgumentPackPointer(__ptr_angle) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    withUnsafePointer(to: `self`) { (___ptr_self) in
                        let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                        Self.__method_binding_rotated(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_rotated_local: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "rotated_local").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, __ptr__method_name, 729597514)!
        }
    }()
    internal func _rotatedLocal(angle: Real) -> Godot.Transform2D {
        var __temporary = Godot.Transform2D()
        withUnsafePointer(to: angle) { (__ptr_angle) in
            withUnsafeArgumentPackPointer(__ptr_angle) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    withUnsafePointer(to: `self`) { (___ptr_self) in
                        let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                        Self.__method_binding_rotated_local(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_scaled: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "scaled").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, __ptr__method_name, 1446323263)!
        }
    }()
    internal func _scaled(scale: Godot.Vector2) -> Godot.Transform2D {
        var __temporary = Godot.Transform2D()
        withUnsafePointer(to: scale) { (__ptr_scale) in
            withUnsafeArgumentPackPointer(__ptr_scale) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    withUnsafePointer(to: `self`) { (___ptr_self) in
                        let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                        Self.__method_binding_scaled(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_scaled_local: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "scaled_local").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, __ptr__method_name, 1446323263)!
        }
    }()
    internal func _scaledLocal(scale: Godot.Vector2) -> Godot.Transform2D {
        var __temporary = Godot.Transform2D()
        withUnsafePointer(to: scale) { (__ptr_scale) in
            withUnsafeArgumentPackPointer(__ptr_scale) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    withUnsafePointer(to: `self`) { (___ptr_self) in
                        let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                        Self.__method_binding_scaled_local(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_translated: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "translated").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, __ptr__method_name, 1446323263)!
        }
    }()
    internal func _translated(offset: Godot.Vector2) -> Godot.Transform2D {
        var __temporary = Godot.Transform2D()
        withUnsafePointer(to: offset) { (__ptr_offset) in
            withUnsafeArgumentPackPointer(__ptr_offset) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    withUnsafePointer(to: `self`) { (___ptr_self) in
                        let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                        Self.__method_binding_translated(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_translated_local: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "translated_local").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, __ptr__method_name, 1446323263)!
        }
    }()
    internal func _translatedLocal(offset: Godot.Vector2) -> Godot.Transform2D {
        var __temporary = Godot.Transform2D()
        withUnsafePointer(to: offset) { (__ptr_offset) in
            withUnsafeArgumentPackPointer(__ptr_offset) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    withUnsafePointer(to: `self`) { (___ptr_self) in
                        let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                        Self.__method_binding_translated_local(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_determinant: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "determinant").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, __ptr__method_name, 466405837)!
        }
    }()
    internal func _determinant() -> Real {
        var __temporary = Real()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                Self.__method_binding_determinant(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_basis_xform: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "basis_xform").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, __ptr__method_name, 2026743667)!
        }
    }()
    internal func _basisXform(_ v: Godot.Vector2) -> Godot.Vector2 {
        var __temporary = Godot.Vector2()
        withUnsafePointer(to: v) { (__ptr_v) in
            withUnsafeArgumentPackPointer(__ptr_v) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    withUnsafePointer(to: `self`) { (___ptr_self) in
                        let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                        Self.__method_binding_basis_xform(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_basis_xform_inv: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "basis_xform_inv").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, __ptr__method_name, 2026743667)!
        }
    }()
    internal func _basisXformInv(_ v: Godot.Vector2) -> Godot.Vector2 {
        var __temporary = Godot.Vector2()
        withUnsafePointer(to: v) { (__ptr_v) in
            withUnsafeArgumentPackPointer(__ptr_v) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    withUnsafePointer(to: `self`) { (___ptr_self) in
                        let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                        Self.__method_binding_basis_xform_inv(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_interpolate_with: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "interpolate_with").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, __ptr__method_name, 359399686)!
        }
    }()
    internal func _interpolateWith(xform: Godot.Transform2D, weight: Real) -> Godot.Transform2D {
        var __temporary = Godot.Transform2D()
        withUnsafePointer(to: xform) { (__ptr_xform) in
            withUnsafePointer(to: weight) { (__ptr_weight) in
                withUnsafeArgumentPackPointer(__ptr_xform, __ptr_weight) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        withUnsafePointer(to: `self`) { (___ptr_self) in
                            let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                            Self.__method_binding_interpolate_with(__ptr_self, __accessPtr, __ptr___temporary, 2)
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_is_equal_approx: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "is_equal_approx").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, __ptr__method_name, 3837431929)!
        }
    }()
    internal func _isEqualApprox(xform: Godot.Transform2D) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: xform) { (__ptr_xform) in
            withUnsafeArgumentPackPointer(__ptr_xform) { (__accessPtr) in
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
        GodotStringName(swiftString: "is_finite").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, __ptr__method_name, 3918633141)!
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

    private static var __method_binding_looking_at: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "looking_at").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM2D, __ptr__method_name, 1446323263)!
        }
    }()
    internal func _lookingAt(target: Godot.Vector2 = Vector2(x: 0, y: 0)) -> Godot.Transform2D {
        var __temporary = Godot.Transform2D()
        withUnsafePointer(to: target) { (__ptr_target) in
            withUnsafeArgumentPackPointer(__ptr_target) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    withUnsafePointer(to: `self`) { (___ptr_self) in
                        let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                        Self.__method_binding_looking_at(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    }
extension Transform2D: CustomDebugStringConvertible {
    public var debugDescription: String {
        Variant(self).debugDescription
    }
}