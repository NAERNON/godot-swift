//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
extension Rect2i {
    private static var __constructor: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_RECT2I, 0)!
    }()
    static internal func _constructor() -> Self {
        var __temporary = Rect2i()
        withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
            Self.__constructor(__ptr___temporary, nil)
        }
        return __temporary
    }
    static internal func _ptr_constructor() -> Self {
        var __temporary = Rect2i()
        withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
            Self.__constructor(__ptr___temporary, nil)
        }
        return __temporary
    }

    private static var __constructor_rect2i: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_RECT2I, 1)!
    }()
    static internal func _constructor_rect2i(from: Godot.Rect2i) -> Self {
        var __temporary = Rect2i()
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
        var __temporary = Rect2i()
        withUnsafeArgumentPackPointer(from) { (__accessPtr) in
            withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                Self.__constructor_rect2i(__ptr___temporary, __accessPtr)
            }
        }
        return __temporary
    }

    private static var __constructor_rect2: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_RECT2I, 2)!
    }()
    static internal func _constructor_rect2(from: Godot.Rect2) -> Self {
        var __temporary = Rect2i()
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
        var __temporary = Rect2i()
        withUnsafeArgumentPackPointer(from) { (__accessPtr) in
            withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                Self.__constructor_rect2(__ptr___temporary, __accessPtr)
            }
        }
        return __temporary
    }

    private static var __constructor_vector2i_vector2i: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_RECT2I, 3)!
    }()
    static internal func _constructor_vector2i_vector2i(position: Godot.Vector2i, size: Godot.Vector2i) -> Self {
        var __temporary = Rect2i()
        withUnsafePointer(to: position) { (__ptr_position) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafeArgumentPackPointer(__ptr_position, __ptr_size) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                        Self.__constructor_vector2i_vector2i(__ptr___temporary, __accessPtr)
                    }
                }
            }
        }
        return __temporary
    }
    static internal func _ptr_constructor_vector2i_vector2i(position: UnsafeRawPointer, size: UnsafeRawPointer) -> Self {
        var __temporary = Rect2i()
        withUnsafeArgumentPackPointer(position, size) { (__accessPtr) in
            withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                Self.__constructor_vector2i_vector2i(__ptr___temporary, __accessPtr)
            }
        }
        return __temporary
    }

    private static var __constructor_int_int_int_int: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_RECT2I, 4)!
    }()
    static internal func _constructor_int_int_int_int(x: Int, y: Int, width: Int, height: Int) -> Self {
        var __temporary = Rect2i()
        withUnsafePointer(to: x) { (__ptr_x) in
            withUnsafePointer(to: y) { (__ptr_y) in
                withUnsafePointer(to: width) { (__ptr_width) in
                    withUnsafePointer(to: height) { (__ptr_height) in
                        withUnsafeArgumentPackPointer(__ptr_x, __ptr_y, __ptr_width, __ptr_height) { (__accessPtr) in
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
    static internal func _ptr_constructor_int_int_int_int(x: UnsafeRawPointer, y: UnsafeRawPointer, width: UnsafeRawPointer, height: UnsafeRawPointer) -> Self {
        var __temporary = Rect2i()
        withUnsafeArgumentPackPointer(x, y, width, height) { (__accessPtr) in
            withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                Self.__constructor_int_int_int_int(__ptr___temporary, __accessPtr)
            }
        }
        return __temporary
    }

    private static var __operator_binding_equal_variant: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_RECT2I, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorEqual<Variant1 : VariantEncodable>(_ lhs: Godot.Rect2i, _ rhs: Variant1) -> Bool {
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
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_RECT2I, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorNotEqual<Variant1 : VariantEncodable>(_ lhs: Godot.Rect2i, _ rhs: Variant1) -> Bool {
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

    private static var __operator_binding_not: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT, GDEXTENSION_VARIANT_TYPE_RECT2I, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorNot(_ lhs: Godot.Rect2i) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                Self.__operator_binding_not(__ptr_lhs, nil, __ptr___temporary)
            }
        }
        return __temporary
    }

    private static var __operator_binding_equal_rect2i: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_RECT2I, GDEXTENSION_VARIANT_TYPE_RECT2I)!
    }()
    static internal func _operatorEqual(_ lhs: Godot.Rect2i, _ rhs: Godot.Rect2i) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_equal_rect2i(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_not_equal_rect2i: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_RECT2I, GDEXTENSION_VARIANT_TYPE_RECT2I)!
    }()
    static internal func _operatorNotEqual(_ lhs: Godot.Rect2i, _ rhs: Godot.Rect2i) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_not_equal_rect2i(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_in_godotdictionary: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_RECT2I, GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
    }()
    static internal func _operatorIn(_ lhs: Godot.Rect2i, _ rhs: Godot.GodotDictionary) -> Bool {
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
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_RECT2I, GDEXTENSION_VARIANT_TYPE_ARRAY)!
    }()
    static internal func _operatorIn(_ lhs: Godot.Rect2i, _ rhs: Godot.GodotArray) -> Bool {
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
        GodotStringName(swiftStaticString: "get_center").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2I, __ptr__method_name, 3444277866)!
        }
    }()
    internal func _center() -> Godot.Vector2i {
        var __temporary = Godot.Vector2i()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                Self.__method_binding_get_center(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_get_area: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "get_area").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2I, __ptr__method_name, 3173160232)!
        }
    }()
    internal func _area() -> Int {
        var __temporary = Int()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                Self.__method_binding_get_area(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_has_area: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "has_area").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2I, __ptr__method_name, 3918633141)!
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
        GodotStringName(swiftStaticString: "has_point").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2I, __ptr__method_name, 328189994)!
        }
    }()
    internal func _hasPoint(_ point: Godot.Vector2i) -> Bool {
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

    private static var __method_binding_intersects: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "intersects").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2I, __ptr__method_name, 3434691493)!
        }
    }()
    internal func _intersects(_ b: Godot.Rect2i) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: b) { (__ptr_b) in
            withUnsafeArgumentPackPointer(__ptr_b) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    withUnsafePointer(to: `self`) { (___ptr_self) in
                        let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                        Self.__method_binding_intersects(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_encloses: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "encloses").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2I, __ptr__method_name, 3434691493)!
        }
    }()
    internal func _encloses(_ b: Godot.Rect2i) -> Bool {
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
        GodotStringName(swiftStaticString: "intersection").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2I, __ptr__method_name, 717431873)!
        }
    }()
    internal func _intersection(_ b: Godot.Rect2i) -> Godot.Rect2i {
        var __temporary = Godot.Rect2i()
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
        GodotStringName(swiftStaticString: "merge").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2I, __ptr__method_name, 717431873)!
        }
    }()
    internal func _merge(_ b: Godot.Rect2i) -> Godot.Rect2i {
        var __temporary = Godot.Rect2i()
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
        GodotStringName(swiftStaticString: "expand").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2I, __ptr__method_name, 1355196872)!
        }
    }()
    internal func _expand(to: Godot.Vector2i) -> Godot.Rect2i {
        var __temporary = Godot.Rect2i()
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
        GodotStringName(swiftStaticString: "grow").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2I, __ptr__method_name, 1578070074)!
        }
    }()
    internal func _grow(amount: Int) -> Godot.Rect2i {
        var __temporary = Godot.Rect2i()
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
        GodotStringName(swiftStaticString: "grow_side").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2I, __ptr__method_name, 3191154199)!
        }
    }()
    internal func _growSide(_ side: Int, amount: Int) -> Godot.Rect2i {
        var __temporary = Godot.Rect2i()
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
        GodotStringName(swiftStaticString: "grow_individual").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2I, __ptr__method_name, 1893743416)!
        }
    }()
    internal func _growIndividual(left: Int, top: Int, right: Int, bottom: Int) -> Godot.Rect2i {
        var __temporary = Godot.Rect2i()
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
        GodotStringName(swiftStaticString: "abs").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RECT2I, __ptr__method_name, 1469025700)!
        }
    }()
    internal func _abs() -> Godot.Rect2i {
        var __temporary = Godot.Rect2i()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                Self.__method_binding_abs(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    }