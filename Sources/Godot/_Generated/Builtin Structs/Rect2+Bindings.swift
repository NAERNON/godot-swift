//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
extension Rect2 {
    private static var __constructor: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_RECT2, 0)!
    }()
    static internal func _constructor() -> Self {
        var __temporary = Rect2()
        withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
            Self.__constructor(__ptr___temporary, nil)
        }
        return __temporary
    }
    static internal func _ptr_constructor() -> Self {
        var __temporary = Rect2()
        withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
            Self.__constructor(__ptr___temporary, nil)
        }
        return __temporary
    }

    private static var __constructor_rect2: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_RECT2, 1)!
    }()
    static internal func _constructor_rect2(from: Godot.Rect2) -> Self {
        var __temporary = Rect2()
        withUnsafePointer(to: from) { (__ptr_from) in
            withUnsafeArgumentPackPointer(__ptr_from) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                    Self.__constructor_rect2(__ptr___temporary, __accessPtr)
                }
            }
        }
        return __temporary
    }
    static internal func _ptr_constructor_rect2(from: UnsafeRawPointer) -> Self {
        var __temporary = Rect2()
        withUnsafeArgumentPackPointer(from) { (__accessPtr) in
            withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                Self.__constructor_rect2(__ptr___temporary, __accessPtr)
            }
        }
        return __temporary
    }

    private static var __constructor_rect2i: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_RECT2, 2)!
    }()
    static internal func _constructor_rect2i(from: Godot.Rect2i) -> Self {
        var __temporary = Rect2()
        withUnsafePointer(to: from) { (__ptr_from) in
            withUnsafeArgumentPackPointer(__ptr_from) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                    Self.__constructor_rect2i(__ptr___temporary, __accessPtr)
                }
            }
        }
        return __temporary
    }
    static internal func _ptr_constructor_rect2i(from: UnsafeRawPointer) -> Self {
        var __temporary = Rect2()
        withUnsafeArgumentPackPointer(from) { (__accessPtr) in
            withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                Self.__constructor_rect2i(__ptr___temporary, __accessPtr)
            }
        }
        return __temporary
    }

    private static var __constructor_vector2_vector2: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_RECT2, 3)!
    }()
    static internal func _constructor_vector2_vector2(position: Godot.Vector2, size: Godot.Vector2) -> Self {
        var __temporary = Rect2()
        withUnsafePointer(to: position) { (__ptr_position) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafeArgumentPackPointer(__ptr_position, __ptr_size) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                        Self.__constructor_vector2_vector2(__ptr___temporary, __accessPtr)
                    }
                }
            }
        }
        return __temporary
    }
    static internal func _ptr_constructor_vector2_vector2(position: UnsafeRawPointer, size: UnsafeRawPointer) -> Self {
        var __temporary = Rect2()
        withUnsafeArgumentPackPointer(position, size) { (__accessPtr) in
            withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                Self.__constructor_vector2_vector2(__ptr___temporary, __accessPtr)
            }
        }
        return __temporary
    }

    private static var __constructor_float_float_float_float: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_RECT2, 4)!
    }()
    static internal func _constructor_float_float_float_float(x: Real, y: Real, width: Real, height: Real) -> Self {
        var __temporary = Rect2()
        withUnsafePointer(to: x) { (__ptr_x) in
            withUnsafePointer(to: y) { (__ptr_y) in
                withUnsafePointer(to: width) { (__ptr_width) in
                    withUnsafePointer(to: height) { (__ptr_height) in
                        withUnsafeArgumentPackPointer(__ptr_x, __ptr_y, __ptr_width, __ptr_height) { (__accessPtr) in
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
    static internal func _ptr_constructor_float_float_float_float(x: UnsafeRawPointer, y: UnsafeRawPointer, width: UnsafeRawPointer, height: UnsafeRawPointer) -> Self {
        var __temporary = Rect2()
        withUnsafeArgumentPackPointer(x, y, width, height) { (__accessPtr) in
            withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                Self.__constructor_float_float_float_float(__ptr___temporary, __accessPtr)
            }
        }
        return __temporary
    }

    private static var __operator_binding_equal_variant: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_RECT2, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorEqual<Variant1 : ConvertibleToVariant>(_ lhs: Godot.Rect2, _ rhs: Variant1) -> Bool {
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
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_RECT2, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorNotEqual<Variant1 : ConvertibleToVariant>(_ lhs: Godot.Rect2, _ rhs: Variant1) -> Bool {
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
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT, GDEXTENSION_VARIANT_TYPE_RECT2, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorNot(_ lhs: Godot.Rect2) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                Self.__operator_binding_not(__ptr_lhs, nil, __ptr___temporary)
            }
        }
        return __temporary
    }

    private static var __operator_binding_equal_rect2: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_RECT2, GDEXTENSION_VARIANT_TYPE_RECT2)!
    }()
    static internal func _operatorEqual(_ lhs: Godot.Rect2, _ rhs: Godot.Rect2) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_equal_rect2(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_not_equal_rect2: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_RECT2, GDEXTENSION_VARIANT_TYPE_RECT2)!
    }()
    static internal func _operatorNotEqual(_ lhs: Godot.Rect2, _ rhs: Godot.Rect2) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_not_equal_rect2(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_multiply_transform2d: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_RECT2, GDEXTENSION_VARIANT_TYPE_TRANSFORM2D)!
    }()
    static internal func _operatorMultiply(_ lhs: Godot.Rect2, _ rhs: Godot.Transform2D) -> Godot.Rect2 {
        var __temporary = Rect2()
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
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_RECT2, GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
    }()
    static internal func _operatorIn(_ lhs: Godot.Rect2, _ rhs: Godot.GodotDictionary) -> Bool {
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
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_RECT2, GDEXTENSION_VARIANT_TYPE_ARRAY)!
    }()
    static internal func _operatorIn(_ lhs: Godot.Rect2, _ rhs: Godot.GodotArray) -> Bool {
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

    private static var __method_binding_get_center: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "get_center").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2, __ptr__method_name, 2428350749)!
        }
    }()
    internal func _center() -> Godot.Vector2 {
        var __temporary = Godot.Vector2()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                Self.__method_binding_get_center(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_get_area: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "get_area").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2, __ptr__method_name, 466405837)!
        }
    }()
    internal func _area() -> Real {
        var __temporary = Real()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                Self.__method_binding_get_area(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_has_area: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "has_area").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2, __ptr__method_name, 3918633141)!
        }
    }()
    internal func _hasArea() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                Self.__method_binding_has_area(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_has_point: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "has_point").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2, __ptr__method_name, 3190634762)!
        }
    }()
    internal func _hasPoint(_ point: Godot.Vector2) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: point) { (__ptr_point) in
            withUnsafeArgumentPackPointer(__ptr_point) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    withUnsafePointer(to: `self`) { (___ptr_self) in
                        let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                        Self.__method_binding_has_point(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_is_equal_approx: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "is_equal_approx").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2, __ptr__method_name, 1908192260)!
        }
    }()
    internal func _isEqualApprox(rect: Godot.Rect2) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: rect) { (__ptr_rect) in
            withUnsafeArgumentPackPointer(__ptr_rect) { (__accessPtr) in
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
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2, __ptr__method_name, 3918633141)!
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

    private static var __method_binding_intersects: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "intersects").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2, __ptr__method_name, 819294880)!
        }
    }()
    internal func _intersects(b: Godot.Rect2, includeBorders: Bool = false) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: b) { (__ptr_b) in
            withUnsafePointer(to: includeBorders) { (__ptr_includeBorders) in
                withUnsafeArgumentPackPointer(__ptr_b, __ptr_includeBorders) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        withUnsafePointer(to: `self`) { (___ptr_self) in
                            let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                            Self.__method_binding_intersects(__ptr_self, __accessPtr, __ptr___temporary, 2)
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_encloses: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "encloses").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2, __ptr__method_name, 1908192260)!
        }
    }()
    internal func _encloses(_ b: Godot.Rect2) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: b) { (__ptr_b) in
            withUnsafeArgumentPackPointer(__ptr_b) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    withUnsafePointer(to: `self`) { (___ptr_self) in
                        let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                        Self.__method_binding_encloses(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_intersection: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "intersection").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2, __ptr__method_name, 2282977743)!
        }
    }()
    internal func _intersection(_ b: Godot.Rect2) -> Godot.Rect2 {
        var __temporary = Godot.Rect2()
        withUnsafePointer(to: b) { (__ptr_b) in
            withUnsafeArgumentPackPointer(__ptr_b) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    withUnsafePointer(to: `self`) { (___ptr_self) in
                        let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                        Self.__method_binding_intersection(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_merge: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "merge").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2, __ptr__method_name, 2282977743)!
        }
    }()
    internal func _merge(_ b: Godot.Rect2) -> Godot.Rect2 {
        var __temporary = Godot.Rect2()
        withUnsafePointer(to: b) { (__ptr_b) in
            withUnsafeArgumentPackPointer(__ptr_b) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    withUnsafePointer(to: `self`) { (___ptr_self) in
                        let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                        Self.__method_binding_merge(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_expand: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "expand").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2, __ptr__method_name, 293272265)!
        }
    }()
    internal func _expand(to: Godot.Vector2) -> Godot.Rect2 {
        var __temporary = Godot.Rect2()
        withUnsafePointer(to: to) { (__ptr_to) in
            withUnsafeArgumentPackPointer(__ptr_to) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    withUnsafePointer(to: `self`) { (___ptr_self) in
                        let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                        Self.__method_binding_expand(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_grow: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "grow").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2, __ptr__method_name, 39664498)!
        }
    }()
    internal func _grow(amount: Real) -> Godot.Rect2 {
        var __temporary = Godot.Rect2()
        withUnsafePointer(to: amount) { (__ptr_amount) in
            withUnsafeArgumentPackPointer(__ptr_amount) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    withUnsafePointer(to: `self`) { (___ptr_self) in
                        let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                        Self.__method_binding_grow(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_grow_side: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "grow_side").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2, __ptr__method_name, 4177736158)!
        }
    }()
    internal func _growSide(_ side: Int, amount: Real) -> Godot.Rect2 {
        var __temporary = Godot.Rect2()
        withUnsafePointer(to: side) { (__ptr_side) in
            withUnsafePointer(to: amount) { (__ptr_amount) in
                withUnsafeArgumentPackPointer(__ptr_side, __ptr_amount) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        withUnsafePointer(to: `self`) { (___ptr_self) in
                            let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                            Self.__method_binding_grow_side(__ptr_self, __accessPtr, __ptr___temporary, 2)
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_grow_individual: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "grow_individual").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2, __ptr__method_name, 3203390369)!
        }
    }()
    internal func _growIndividual(left: Real, top: Real, right: Real, bottom: Real) -> Godot.Rect2 {
        var __temporary = Godot.Rect2()
        withUnsafePointer(to: left) { (__ptr_left) in
            withUnsafePointer(to: top) { (__ptr_top) in
                withUnsafePointer(to: right) { (__ptr_right) in
                    withUnsafePointer(to: bottom) { (__ptr_bottom) in
                        withUnsafeArgumentPackPointer(__ptr_left, __ptr_top, __ptr_right, __ptr_bottom) { (__accessPtr) in
                            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                withUnsafePointer(to: `self`) { (___ptr_self) in
                                    let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                                    Self.__method_binding_grow_individual(__ptr_self, __accessPtr, __ptr___temporary, 4)
                                }
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_abs: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "abs").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2, __ptr__method_name, 3107653634)!
        }
    }()
    internal func _abs() -> Godot.Rect2 {
        var __temporary = Godot.Rect2()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                Self.__method_binding_abs(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    }
extension Rect2: CustomDebugStringConvertible {
    public var debugDescription: String {
        Variant(self).debugDescription
    }
}