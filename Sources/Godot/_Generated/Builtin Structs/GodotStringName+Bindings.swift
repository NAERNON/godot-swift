//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
extension GodotStringName {
    private static var __destructor: GDExtensionPtrDestructor = {
        return gdextension_interface_variant_get_ptr_destructor(GDEXTENSION_VARIANT_TYPE_STRING_NAME)!
    }()
    private static var __constructor: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_STRING_NAME, 0)!
    }()
    static internal func _constructor() -> Self {
        let __temporary: Opaque = .init(size: 8, destructorPtr: Self.__destructor)
        __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
            Self.__constructor(__ptr___temporary, nil)
        }
        return Self.init(opaque: __temporary)
    }
    static internal func _ptr_constructor() -> Self {
        let __temporary: Opaque = .init(size: 8, destructorPtr: Self.__destructor)
        __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
            Self.__constructor(__ptr___temporary, nil)
        }
        return Self.init(opaque: __temporary)
    }

    private static var __constructor_godotstringname: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_STRING_NAME, 1)!
    }()
    static internal func _constructor_godotstringname(from: Godot.GodotStringName) -> Self {
        let __temporary: Opaque = .init(size: 8, destructorPtr: Self.__destructor)
        from.withUnsafeRawPointer { (__ptr_from) in
            withUnsafeArgumentPackPointer(__ptr_from) { (__accessPtr) in
                __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                    Self.__constructor_godotstringname(__ptr___temporary, __accessPtr)
                }
            }
        }
        return Self.init(opaque: __temporary)
    }
    static internal func _ptr_constructor_godotstringname(from: UnsafeRawPointer) -> Self {
        let __temporary: Opaque = .init(size: 8, destructorPtr: Self.__destructor)
        withUnsafeArgumentPackPointer(from) { (__accessPtr) in
            __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                Self.__constructor_godotstringname(__ptr___temporary, __accessPtr)
            }
        }
        return Self.init(opaque: __temporary)
    }

    private static var __constructor_godotstring: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_STRING_NAME, 2)!
    }()
    static internal func _constructor_godotstring(from: Godot.GodotString) -> Self {
        let __temporary: Opaque = .init(size: 8, destructorPtr: Self.__destructor)
        from.withUnsafeRawPointer { (__ptr_from) in
            withUnsafeArgumentPackPointer(__ptr_from) { (__accessPtr) in
                __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                    Self.__constructor_godotstring(__ptr___temporary, __accessPtr)
                }
            }
        }
        return Self.init(opaque: __temporary)
    }
    static internal func _ptr_constructor_godotstring(from: UnsafeRawPointer) -> Self {
        let __temporary: Opaque = .init(size: 8, destructorPtr: Self.__destructor)
        withUnsafeArgumentPackPointer(from) { (__accessPtr) in
            __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                Self.__constructor_godotstring(__ptr___temporary, __accessPtr)
            }
        }
        return Self.init(opaque: __temporary)
    }

    private static var __operator_binding_equal_variant: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorEqual<Variant1 : VariantEncodable>(_ lhs: Godot.GodotStringName, _ rhs: Variant1) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            Godot.Variant.withStorageUnsafeRawPointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_equal_variant(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_not_equal_variant: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorNotEqual<Variant1 : VariantEncodable>(_ lhs: Godot.GodotStringName, _ rhs: Variant1) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            Godot.Variant.withStorageUnsafeRawPointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_not_equal_variant(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_module_variant: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorModule<Variant1 : VariantEncodable>(_ lhs: Godot.GodotStringName, _ rhs: Variant1) -> Godot.GodotString {
        let __temporary = GodotString()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            Godot.Variant.withStorageUnsafeRawPointer(to: rhs) { (__ptr_rhs) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    Self.__operator_binding_module_variant(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_not: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorNot(_ lhs: Godot.GodotStringName) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                Self.__operator_binding_not(__ptr_lhs, nil, __ptr___temporary)
            }
        }
        return __temporary
    }

    private static var __operator_binding_module_bool: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_BOOL)!
    }()
    static internal func _operatorModule(_ lhs: Godot.GodotStringName, _ rhs: Bool) -> Godot.GodotString {
        let __temporary = GodotString()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    Self.__operator_binding_module_bool(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_module_int: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_INT)!
    }()
    static internal func _operatorModule(_ lhs: Godot.GodotStringName, _ rhs: Int) -> Godot.GodotString {
        let __temporary = GodotString()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    Self.__operator_binding_module_int(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_module_double: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_FLOAT)!
    }()
    static internal func _operatorModule(_ lhs: Godot.GodotStringName, _ rhs: Double) -> Godot.GodotString {
        let __temporary = GodotString()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    Self.__operator_binding_module_double(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_equal_godotstring: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_STRING)!
    }()
    static internal func _operatorEqual(_ lhs: Godot.GodotStringName, _ rhs: Godot.GodotString) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_equal_godotstring(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_not_equal_godotstring: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_STRING)!
    }()
    static internal func _operatorNotEqual(_ lhs: Godot.GodotStringName, _ rhs: Godot.GodotString) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_not_equal_godotstring(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_add_godotstring: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_ADD, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_STRING)!
    }()
    static internal func _operatorAdd(_ lhs: Godot.GodotStringName, _ rhs: Godot.GodotString) -> Godot.GodotString {
        let __temporary = GodotString()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    Self.__operator_binding_add_godotstring(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_module_godotstring: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_STRING)!
    }()
    static internal func _operatorModule(_ lhs: Godot.GodotStringName, _ rhs: Godot.GodotString) -> Godot.GodotString {
        let __temporary = GodotString()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    Self.__operator_binding_module_godotstring(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_in_godotstring: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_STRING)!
    }()
    static internal func _operatorIn(_ lhs: Godot.GodotStringName, _ rhs: Godot.GodotString) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_in_godotstring(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_module_vector2: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_VECTOR2)!
    }()
    static internal func _operatorModule(_ lhs: Godot.GodotStringName, _ rhs: Godot.Vector2) -> Godot.GodotString {
        let __temporary = GodotString()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    Self.__operator_binding_module_vector2(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_module_vector2i: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_VECTOR2I)!
    }()
    static internal func _operatorModule(_ lhs: Godot.GodotStringName, _ rhs: Godot.Vector2i) -> Godot.GodotString {
        let __temporary = GodotString()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    Self.__operator_binding_module_vector2i(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_module_rect2: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_RECT2)!
    }()
    static internal func _operatorModule(_ lhs: Godot.GodotStringName, _ rhs: Godot.Rect2) -> Godot.GodotString {
        let __temporary = GodotString()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    Self.__operator_binding_module_rect2(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_module_rect2i: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_RECT2I)!
    }()
    static internal func _operatorModule(_ lhs: Godot.GodotStringName, _ rhs: Godot.Rect2i) -> Godot.GodotString {
        let __temporary = GodotString()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    Self.__operator_binding_module_rect2i(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_module_vector3: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_VECTOR3)!
    }()
    static internal func _operatorModule(_ lhs: Godot.GodotStringName, _ rhs: Godot.Vector3) -> Godot.GodotString {
        let __temporary = GodotString()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    Self.__operator_binding_module_vector3(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_module_vector3i: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_VECTOR3I)!
    }()
    static internal func _operatorModule(_ lhs: Godot.GodotStringName, _ rhs: Godot.Vector3i) -> Godot.GodotString {
        let __temporary = GodotString()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    Self.__operator_binding_module_vector3i(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_module_transform2d: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_TRANSFORM2D)!
    }()
    static internal func _operatorModule(_ lhs: Godot.GodotStringName, _ rhs: Godot.Transform2D) -> Godot.GodotString {
        let __temporary = GodotString()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    Self.__operator_binding_module_transform2d(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_module_vector4: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_VECTOR4)!
    }()
    static internal func _operatorModule(_ lhs: Godot.GodotStringName, _ rhs: Godot.Vector4) -> Godot.GodotString {
        let __temporary = GodotString()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    Self.__operator_binding_module_vector4(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_module_vector4i: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_VECTOR4I)!
    }()
    static internal func _operatorModule(_ lhs: Godot.GodotStringName, _ rhs: Godot.Vector4i) -> Godot.GodotString {
        let __temporary = GodotString()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    Self.__operator_binding_module_vector4i(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_module_plane: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_PLANE)!
    }()
    static internal func _operatorModule(_ lhs: Godot.GodotStringName, _ rhs: Godot.Plane) -> Godot.GodotString {
        let __temporary = GodotString()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    Self.__operator_binding_module_plane(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_module_quaternion: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_QUATERNION)!
    }()
    static internal func _operatorModule(_ lhs: Godot.GodotStringName, _ rhs: Godot.Quaternion) -> Godot.GodotString {
        let __temporary = GodotString()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    Self.__operator_binding_module_quaternion(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_module_aabb: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_AABB)!
    }()
    static internal func _operatorModule(_ lhs: Godot.GodotStringName, _ rhs: Godot.AABB) -> Godot.GodotString {
        let __temporary = GodotString()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    Self.__operator_binding_module_aabb(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_module_basis: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_BASIS)!
    }()
    static internal func _operatorModule(_ lhs: Godot.GodotStringName, _ rhs: Godot.Basis) -> Godot.GodotString {
        let __temporary = GodotString()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    Self.__operator_binding_module_basis(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_module_transform3d: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_TRANSFORM3D)!
    }()
    static internal func _operatorModule(_ lhs: Godot.GodotStringName, _ rhs: Godot.Transform3D) -> Godot.GodotString {
        let __temporary = GodotString()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    Self.__operator_binding_module_transform3d(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_module_projection: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_PROJECTION)!
    }()
    static internal func _operatorModule(_ lhs: Godot.GodotStringName, _ rhs: Godot.Projection) -> Godot.GodotString {
        let __temporary = GodotString()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    Self.__operator_binding_module_projection(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_module_color: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_COLOR)!
    }()
    static internal func _operatorModule(_ lhs: Godot.GodotStringName, _ rhs: Godot.Color) -> Godot.GodotString {
        let __temporary = GodotString()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    Self.__operator_binding_module_color(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_equal_godotstringname: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_STRING_NAME)!
    }()
    static internal func _operatorEqual(_ lhs: Godot.GodotStringName, _ rhs: Godot.GodotStringName) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_equal_godotstringname(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_not_equal_godotstringname: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_STRING_NAME)!
    }()
    static internal func _operatorNotEqual(_ lhs: Godot.GodotStringName, _ rhs: Godot.GodotStringName) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_not_equal_godotstringname(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_less_godotstringname: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_LESS, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_STRING_NAME)!
    }()
    static internal func _operatorLess(_ lhs: Godot.GodotStringName, _ rhs: Godot.GodotStringName) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_less_godotstringname(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_less_equal_godotstringname: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_LESS_EQUAL, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_STRING_NAME)!
    }()
    static internal func _operatorLessEqual(_ lhs: Godot.GodotStringName, _ rhs: Godot.GodotStringName) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_less_equal_godotstringname(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_greater_godotstringname: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_GREATER, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_STRING_NAME)!
    }()
    static internal func _operatorGreater(_ lhs: Godot.GodotStringName, _ rhs: Godot.GodotStringName) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_greater_godotstringname(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_greater_equal_godotstringname: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_GREATER_EQUAL, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_STRING_NAME)!
    }()
    static internal func _operatorGreaterEqual(_ lhs: Godot.GodotStringName, _ rhs: Godot.GodotStringName) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_greater_equal_godotstringname(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_add_godotstringname: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_ADD, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_STRING_NAME)!
    }()
    static internal func _operatorAdd(_ lhs: Godot.GodotStringName, _ rhs: Godot.GodotStringName) -> Godot.GodotString {
        let __temporary = GodotString()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    Self.__operator_binding_add_godotstringname(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_module_godotstringname: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_STRING_NAME)!
    }()
    static internal func _operatorModule(_ lhs: Godot.GodotStringName, _ rhs: Godot.GodotStringName) -> Godot.GodotString {
        let __temporary = GodotString()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    Self.__operator_binding_module_godotstringname(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_in_godotstringname: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_STRING_NAME)!
    }()
    static internal func _operatorIn(_ lhs: Godot.GodotStringName, _ rhs: Godot.GodotStringName) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_in_godotstringname(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_module_nodepath: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_NODE_PATH)!
    }()
    static internal func _operatorModule(_ lhs: Godot.GodotStringName, _ rhs: Godot.NodePath) -> Godot.GodotString {
        let __temporary = GodotString()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    Self.__operator_binding_module_nodepath(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_module_object: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_OBJECT)!
    }()
    static internal func _operatorModule(_ lhs: Godot.GodotStringName, _ rhs: Godot.Object?) -> Godot.GodotString {
        let __temporary = GodotString()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafePointer(to: __ptr_rhs) { (_ptr___ptr_rhs) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        Self.__operator_binding_module_object(__ptr_lhs, _ptr___ptr_rhs, __ptr___temporary)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_in_object: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_OBJECT)!
    }()
    static internal func _operatorIn(_ lhs: Godot.GodotStringName, _ rhs: Godot.Object?) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafePointer(to: __ptr_rhs) { (_ptr___ptr_rhs) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        Self.__operator_binding_in_object(__ptr_lhs, _ptr___ptr_rhs, __ptr___temporary)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_module_callable: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_CALLABLE)!
    }()
    static internal func _operatorModule(_ lhs: Godot.GodotStringName, _ rhs: Godot.Callable) -> Godot.GodotString {
        let __temporary = GodotString()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    Self.__operator_binding_module_callable(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_module_signal: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_SIGNAL)!
    }()
    static internal func _operatorModule(_ lhs: Godot.GodotStringName, _ rhs: Godot.Signal) -> Godot.GodotString {
        let __temporary = GodotString()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    Self.__operator_binding_module_signal(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_module_godotdictionary: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
    }()
    static internal func _operatorModule(_ lhs: Godot.GodotStringName, _ rhs: Godot.GodotDictionary) -> Godot.GodotString {
        let __temporary = GodotString()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    Self.__operator_binding_module_godotdictionary(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_in_godotdictionary: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
    }()
    static internal func _operatorIn(_ lhs: Godot.GodotStringName, _ rhs: Godot.GodotDictionary) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_in_godotdictionary(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_module_godotarray: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_ARRAY)!
    }()
    static internal func _operatorModule(_ lhs: Godot.GodotStringName, _ rhs: Godot.GodotArray) -> Godot.GodotString {
        let __temporary = GodotString()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    Self.__operator_binding_module_godotarray(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_in_godotarray: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_ARRAY)!
    }()
    static internal func _operatorIn(_ lhs: Godot.GodotStringName, _ rhs: Godot.GodotArray) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_in_godotarray(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_module_packedbytearray: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY)!
    }()
    static internal func _operatorModule(_ lhs: Godot.GodotStringName, _ rhs: Godot.PackedByteArray) -> Godot.GodotString {
        let __temporary = GodotString()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    Self.__operator_binding_module_packedbytearray(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_module_packedint32array: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY)!
    }()
    static internal func _operatorModule(_ lhs: Godot.GodotStringName, _ rhs: Godot.PackedInt32Array) -> Godot.GodotString {
        let __temporary = GodotString()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    Self.__operator_binding_module_packedint32array(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_module_packedint64array: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY)!
    }()
    static internal func _operatorModule(_ lhs: Godot.GodotStringName, _ rhs: Godot.PackedInt64Array) -> Godot.GodotString {
        let __temporary = GodotString()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    Self.__operator_binding_module_packedint64array(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_module_packedfloat32array: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT32_ARRAY)!
    }()
    static internal func _operatorModule(_ lhs: Godot.GodotStringName, _ rhs: Godot.PackedFloat32Array) -> Godot.GodotString {
        let __temporary = GodotString()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    Self.__operator_binding_module_packedfloat32array(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_module_packedfloat64array: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY)!
    }()
    static internal func _operatorModule(_ lhs: Godot.GodotStringName, _ rhs: Godot.PackedFloat64Array) -> Godot.GodotString {
        let __temporary = GodotString()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    Self.__operator_binding_module_packedfloat64array(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_module_packedstringarray: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY)!
    }()
    static internal func _operatorModule(_ lhs: Godot.GodotStringName, _ rhs: Godot.PackedStringArray) -> Godot.GodotString {
        let __temporary = GodotString()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    Self.__operator_binding_module_packedstringarray(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_in_packedstringarray: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY)!
    }()
    static internal func _operatorIn(_ lhs: Godot.GodotStringName, _ rhs: Godot.PackedStringArray) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_in_packedstringarray(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_module_packedvector2array: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR2_ARRAY)!
    }()
    static internal func _operatorModule(_ lhs: Godot.GodotStringName, _ rhs: Godot.PackedVector2Array) -> Godot.GodotString {
        let __temporary = GodotString()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    Self.__operator_binding_module_packedvector2array(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_module_packedvector3array: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY)!
    }()
    static internal func _operatorModule(_ lhs: Godot.GodotStringName, _ rhs: Godot.PackedVector3Array) -> Godot.GodotString {
        let __temporary = GodotString()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    Self.__operator_binding_module_packedvector3array(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_module_packedcolorarray: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING_NAME, GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY)!
    }()
    static internal func _operatorModule(_ lhs: Godot.GodotStringName, _ rhs: Godot.PackedColorArray) -> Godot.GodotString {
        let __temporary = GodotString()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    Self.__operator_binding_module_packedcolorarray(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_casecmp_to: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "casecmp_to").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 2920860731)!
        }
    }()
    internal func _casecmpTo(_ to: Godot.GodotString) -> Int {
        var __temporary = Int()
        to.withUnsafeRawPointer { (__ptr_to) in
            withUnsafeArgumentPackPointer(__ptr_to) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_casecmp_to(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_nocasecmp_to: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "nocasecmp_to").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 2920860731)!
        }
    }()
    internal func _nocasecmpTo(_ to: Godot.GodotString) -> Int {
        var __temporary = Int()
        to.withUnsafeRawPointer { (__ptr_to) in
            withUnsafeArgumentPackPointer(__ptr_to) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_nocasecmp_to(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_naturalcasecmp_to: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "naturalcasecmp_to").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 2920860731)!
        }
    }()
    internal func _naturalcasecmpTo(_ to: Godot.GodotString) -> Int {
        var __temporary = Int()
        to.withUnsafeRawPointer { (__ptr_to) in
            withUnsafeArgumentPackPointer(__ptr_to) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_naturalcasecmp_to(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_naturalnocasecmp_to: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "naturalnocasecmp_to").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 2920860731)!
        }
    }()
    internal func _naturalnocasecmpTo(_ to: Godot.GodotString) -> Int {
        var __temporary = Int()
        to.withUnsafeRawPointer { (__ptr_to) in
            withUnsafeArgumentPackPointer(__ptr_to) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_naturalnocasecmp_to(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_length: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "length").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3173160232)!
        }
    }()
    internal func _length() -> Int {
        var __temporary = Int()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_length(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_substr: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "substr").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 787537301)!
        }
    }()
    internal func _substr(from: Int, len: Int = -1) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        withUnsafePointer(to: from) { (__ptr_from) in
            withUnsafePointer(to: len) { (__ptr_len) in
                withUnsafeArgumentPackPointer(__ptr_from, __ptr_len) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            Self.__method_binding_substr(__ptr_self, __accessPtr, __ptr___temporary, 2)
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_slice: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "get_slice").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3535100402)!
        }
    }()
    internal func _slice(delimiter: Godot.GodotString, slice: Int) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        delimiter.withUnsafeRawPointer { (__ptr_delimiter) in
            withUnsafePointer(to: slice) { (__ptr_slice) in
                withUnsafeArgumentPackPointer(__ptr_delimiter, __ptr_slice) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            Self.__method_binding_get_slice(__ptr_self, __accessPtr, __ptr___temporary, 2)
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_slicec: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "get_slicec").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 787537301)!
        }
    }()
    internal func _slicec(delimiter: Int, slice: Int) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        withUnsafePointer(to: delimiter) { (__ptr_delimiter) in
            withUnsafePointer(to: slice) { (__ptr_slice) in
                withUnsafeArgumentPackPointer(__ptr_delimiter, __ptr_slice) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            Self.__method_binding_get_slicec(__ptr_self, __accessPtr, __ptr___temporary, 2)
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_slice_count: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "get_slice_count").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 2920860731)!
        }
    }()
    internal func _sliceCount(delimiter: Godot.GodotString) -> Int {
        var __temporary = Int()
        delimiter.withUnsafeRawPointer { (__ptr_delimiter) in
            withUnsafeArgumentPackPointer(__ptr_delimiter) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_get_slice_count(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_find: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "find").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 1760645412)!
        }
    }()
    internal func _find(what: Godot.GodotString, from: Int = 0) -> Int {
        var __temporary = Int()
        what.withUnsafeRawPointer { (__ptr_what) in
            withUnsafePointer(to: from) { (__ptr_from) in
                withUnsafeArgumentPackPointer(__ptr_what, __ptr_from) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            Self.__method_binding_find(__ptr_self, __accessPtr, __ptr___temporary, 2)
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_count: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "count").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 2343087891)!
        }
    }()
    internal func _count(what: Godot.GodotString, from: Int = 0, to: Int = 0) -> Int {
        var __temporary = Int()
        what.withUnsafeRawPointer { (__ptr_what) in
            withUnsafePointer(to: from) { (__ptr_from) in
                withUnsafePointer(to: to) { (__ptr_to) in
                    withUnsafeArgumentPackPointer(__ptr_what, __ptr_from, __ptr_to) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                Self.__method_binding_count(__ptr_self, __accessPtr, __ptr___temporary, 3)
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_countn: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "countn").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 2343087891)!
        }
    }()
    internal func _countn(what: Godot.GodotString, from: Int = 0, to: Int = 0) -> Int {
        var __temporary = Int()
        what.withUnsafeRawPointer { (__ptr_what) in
            withUnsafePointer(to: from) { (__ptr_from) in
                withUnsafePointer(to: to) { (__ptr_to) in
                    withUnsafeArgumentPackPointer(__ptr_what, __ptr_from, __ptr_to) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                Self.__method_binding_countn(__ptr_self, __accessPtr, __ptr___temporary, 3)
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_findn: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "findn").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 1760645412)!
        }
    }()
    internal func _findn(what: Godot.GodotString, from: Int = 0) -> Int {
        var __temporary = Int()
        what.withUnsafeRawPointer { (__ptr_what) in
            withUnsafePointer(to: from) { (__ptr_from) in
                withUnsafeArgumentPackPointer(__ptr_what, __ptr_from) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            Self.__method_binding_findn(__ptr_self, __accessPtr, __ptr___temporary, 2)
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_rfind: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "rfind").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 1760645412)!
        }
    }()
    internal func _rfind(what: Godot.GodotString, from: Int = -1) -> Int {
        var __temporary = Int()
        what.withUnsafeRawPointer { (__ptr_what) in
            withUnsafePointer(to: from) { (__ptr_from) in
                withUnsafeArgumentPackPointer(__ptr_what, __ptr_from) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            Self.__method_binding_rfind(__ptr_self, __accessPtr, __ptr___temporary, 2)
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_rfindn: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "rfindn").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 1760645412)!
        }
    }()
    internal func _rfindn(what: Godot.GodotString, from: Int = -1) -> Int {
        var __temporary = Int()
        what.withUnsafeRawPointer { (__ptr_what) in
            withUnsafePointer(to: from) { (__ptr_from) in
                withUnsafeArgumentPackPointer(__ptr_what, __ptr_from) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            Self.__method_binding_rfindn(__ptr_self, __accessPtr, __ptr___temporary, 2)
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_match: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "match").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 2566493496)!
        }
    }()
    internal func _match(expr: Godot.GodotString) -> Bool {
        var __temporary = Bool()
        expr.withUnsafeRawPointer { (__ptr_expr) in
            withUnsafeArgumentPackPointer(__ptr_expr) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_match(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_matchn: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "matchn").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 2566493496)!
        }
    }()
    internal func _matchn(expr: Godot.GodotString) -> Bool {
        var __temporary = Bool()
        expr.withUnsafeRawPointer { (__ptr_expr) in
            withUnsafeArgumentPackPointer(__ptr_expr) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_matchn(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_begins_with: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "begins_with").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 2566493496)!
        }
    }()
    internal func _beginsWith(text: Godot.GodotString) -> Bool {
        var __temporary = Bool()
        text.withUnsafeRawPointer { (__ptr_text) in
            withUnsafeArgumentPackPointer(__ptr_text) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_begins_with(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_ends_with: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "ends_with").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 2566493496)!
        }
    }()
    internal func _endsWith(text: Godot.GodotString) -> Bool {
        var __temporary = Bool()
        text.withUnsafeRawPointer { (__ptr_text) in
            withUnsafeArgumentPackPointer(__ptr_text) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_ends_with(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_is_subsequence_of: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "is_subsequence_of").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 2566493496)!
        }
    }()
    internal func _isSubsequenceOf(text: Godot.GodotString) -> Bool {
        var __temporary = Bool()
        text.withUnsafeRawPointer { (__ptr_text) in
            withUnsafeArgumentPackPointer(__ptr_text) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_is_subsequence_of(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_is_subsequence_ofn: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "is_subsequence_ofn").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 2566493496)!
        }
    }()
    internal func _isSubsequenceOfn(text: Godot.GodotString) -> Bool {
        var __temporary = Bool()
        text.withUnsafeRawPointer { (__ptr_text) in
            withUnsafeArgumentPackPointer(__ptr_text) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_is_subsequence_ofn(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_bigrams: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "bigrams").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 747180633)!
        }
    }()
    internal func _bigrams() -> Godot.PackedStringArray {
        let __temporary = Godot.PackedStringArray()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_bigrams(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_similarity: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "similarity").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 2697460964)!
        }
    }()
    internal func _similarity(text: Godot.GodotString) -> Double {
        var __temporary = Double()
        text.withUnsafeRawPointer { (__ptr_text) in
            withUnsafeArgumentPackPointer(__ptr_text) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_similarity(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_format: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "format").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3212199029)!
        }
    }()
    internal func _format<Variant1 : VariantEncodable>(values: Variant1, placeholder: Godot.GodotString = "{_}") -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        Godot.Variant.withStorageUnsafeRawPointer(to: values) { (__ptr_values) in
            placeholder.withUnsafeRawPointer { (__ptr_placeholder) in
                withUnsafeArgumentPackPointer(__ptr_values, __ptr_placeholder) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            Self.__method_binding_format(__ptr_self, __accessPtr, __ptr___temporary, 2)
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_replace: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "replace").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 1340436205)!
        }
    }()
    internal func _replace(what: Godot.GodotString, forwhat: Godot.GodotString) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        what.withUnsafeRawPointer { (__ptr_what) in
            forwhat.withUnsafeRawPointer { (__ptr_forwhat) in
                withUnsafeArgumentPackPointer(__ptr_what, __ptr_forwhat) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            Self.__method_binding_replace(__ptr_self, __accessPtr, __ptr___temporary, 2)
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_replacen: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "replacen").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 1340436205)!
        }
    }()
    internal func _replacen(what: Godot.GodotString, forwhat: Godot.GodotString) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        what.withUnsafeRawPointer { (__ptr_what) in
            forwhat.withUnsafeRawPointer { (__ptr_forwhat) in
                withUnsafeArgumentPackPointer(__ptr_what, __ptr_forwhat) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            Self.__method_binding_replacen(__ptr_self, __accessPtr, __ptr___temporary, 2)
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_repeat: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "repeat").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 2162347432)!
        }
    }()
    internal func _repeat(count: Int) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        withUnsafePointer(to: count) { (__ptr_count) in
            withUnsafeArgumentPackPointer(__ptr_count) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_repeat(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_insert: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "insert").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 248737229)!
        }
    }()
    internal func _insert(position: Int, what: Godot.GodotString) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        withUnsafePointer(to: position) { (__ptr_position) in
            what.withUnsafeRawPointer { (__ptr_what) in
                withUnsafeArgumentPackPointer(__ptr_position, __ptr_what) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            Self.__method_binding_insert(__ptr_self, __accessPtr, __ptr___temporary, 2)
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_erase: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "erase").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 787537301)!
        }
    }()
    internal func _erase(position: Int, chars: Int = 1) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        withUnsafePointer(to: position) { (__ptr_position) in
            withUnsafePointer(to: chars) { (__ptr_chars) in
                withUnsafeArgumentPackPointer(__ptr_position, __ptr_chars) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            Self.__method_binding_erase(__ptr_self, __accessPtr, __ptr___temporary, 2)
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_capitalize: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "capitalize").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3942272618)!
        }
    }()
    internal func _capitalize() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_capitalize(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_to_camel_case: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "to_camel_case").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3942272618)!
        }
    }()
    internal func _toCamelCase() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_to_camel_case(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_to_pascal_case: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "to_pascal_case").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3942272618)!
        }
    }()
    internal func _toPascalCase() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_to_pascal_case(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_to_snake_case: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "to_snake_case").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3942272618)!
        }
    }()
    internal func _toSnakeCase() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_to_snake_case(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_split: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "split").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 1252735785)!
        }
    }()
    internal func _split(delimiter: Godot.GodotString = "", allowEmpty: Bool = true, maxsplit: Int = 0) -> Godot.PackedStringArray {
        let __temporary = Godot.PackedStringArray()
        delimiter.withUnsafeRawPointer { (__ptr_delimiter) in
            withUnsafePointer(to: allowEmpty) { (__ptr_allowEmpty) in
                withUnsafePointer(to: maxsplit) { (__ptr_maxsplit) in
                    withUnsafeArgumentPackPointer(__ptr_delimiter, __ptr_allowEmpty, __ptr_maxsplit) { (__accessPtr) in
                        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                Self.__method_binding_split(__ptr_self, __accessPtr, __ptr___temporary, 3)
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_rsplit: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "rsplit").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 1252735785)!
        }
    }()
    internal func _rsplit(delimiter: Godot.GodotString = "", allowEmpty: Bool = true, maxsplit: Int = 0) -> Godot.PackedStringArray {
        let __temporary = Godot.PackedStringArray()
        delimiter.withUnsafeRawPointer { (__ptr_delimiter) in
            withUnsafePointer(to: allowEmpty) { (__ptr_allowEmpty) in
                withUnsafePointer(to: maxsplit) { (__ptr_maxsplit) in
                    withUnsafeArgumentPackPointer(__ptr_delimiter, __ptr_allowEmpty, __ptr_maxsplit) { (__accessPtr) in
                        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                Self.__method_binding_rsplit(__ptr_self, __accessPtr, __ptr___temporary, 3)
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_split_floats: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "split_floats").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 2092079095)!
        }
    }()
    internal func _splitFloats(delimiter: Godot.GodotString, allowEmpty: Bool = true) -> Godot.PackedFloat64Array {
        let __temporary = Godot.PackedFloat64Array()
        delimiter.withUnsafeRawPointer { (__ptr_delimiter) in
            withUnsafePointer(to: allowEmpty) { (__ptr_allowEmpty) in
                withUnsafeArgumentPackPointer(__ptr_delimiter, __ptr_allowEmpty) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            Self.__method_binding_split_floats(__ptr_self, __accessPtr, __ptr___temporary, 2)
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_join: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "join").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3595973238)!
        }
    }()
    internal func _join(parts: Godot.PackedStringArray) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        parts.withUnsafeRawPointer { (__ptr_parts) in
            withUnsafeArgumentPackPointer(__ptr_parts) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_join(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_to_upper: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "to_upper").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3942272618)!
        }
    }()
    internal func _toUpper() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_to_upper(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_to_lower: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "to_lower").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3942272618)!
        }
    }()
    internal func _toLower() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_to_lower(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_left: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "left").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 2162347432)!
        }
    }()
    internal func _left(length: Int) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        withUnsafePointer(to: length) { (__ptr_length) in
            withUnsafeArgumentPackPointer(__ptr_length) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_left(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_right: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "right").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 2162347432)!
        }
    }()
    internal func _right(length: Int) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        withUnsafePointer(to: length) { (__ptr_length) in
            withUnsafeArgumentPackPointer(__ptr_length) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_right(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_strip_edges: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "strip_edges").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 907855311)!
        }
    }()
    internal func _stripEdges(left: Bool = true, right: Bool = true) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        withUnsafePointer(to: left) { (__ptr_left) in
            withUnsafePointer(to: right) { (__ptr_right) in
                withUnsafeArgumentPackPointer(__ptr_left, __ptr_right) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            Self.__method_binding_strip_edges(__ptr_self, __accessPtr, __ptr___temporary, 2)
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_strip_escapes: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "strip_escapes").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3942272618)!
        }
    }()
    internal func _stripEscapes() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_strip_escapes(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_lstrip: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "lstrip").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3134094431)!
        }
    }()
    internal func _lstrip(chars: Godot.GodotString) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        chars.withUnsafeRawPointer { (__ptr_chars) in
            withUnsafeArgumentPackPointer(__ptr_chars) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_lstrip(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_rstrip: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "rstrip").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3134094431)!
        }
    }()
    internal func _rstrip(chars: Godot.GodotString) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        chars.withUnsafeRawPointer { (__ptr_chars) in
            withUnsafeArgumentPackPointer(__ptr_chars) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_rstrip(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_extension: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "get_extension").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3942272618)!
        }
    }()
    internal func _extension() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_get_extension(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_get_basename: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "get_basename").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3942272618)!
        }
    }()
    internal func _basename() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_get_basename(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_path_join: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "path_join").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3134094431)!
        }
    }()
    internal func _pathJoin(file: Godot.GodotString) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        file.withUnsafeRawPointer { (__ptr_file) in
            withUnsafeArgumentPackPointer(__ptr_file) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_path_join(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_unicode_at: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "unicode_at").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 4103005248)!
        }
    }()
    internal func _unicodeAt(_ at: Int) -> Int {
        var __temporary = Int()
        withUnsafePointer(to: at) { (__ptr_at) in
            withUnsafeArgumentPackPointer(__ptr_at) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_unicode_at(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_indent: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "indent").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3134094431)!
        }
    }()
    internal func _indent(prefix: Godot.GodotString) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        prefix.withUnsafeRawPointer { (__ptr_prefix) in
            withUnsafeArgumentPackPointer(__ptr_prefix) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_indent(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_dedent: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "dedent").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3942272618)!
        }
    }()
    internal func _dedent() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_dedent(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_md5_text: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "md5_text").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3942272618)!
        }
    }()
    internal func _md5Text() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_md5_text(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_sha1_text: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "sha1_text").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3942272618)!
        }
    }()
    internal func _sha1Text() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_sha1_text(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_sha256_text: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "sha256_text").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3942272618)!
        }
    }()
    internal func _sha256Text() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_sha256_text(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_md5_buffer: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "md5_buffer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 247621236)!
        }
    }()
    internal func _md5Buffer() -> Godot.PackedByteArray {
        let __temporary = Godot.PackedByteArray()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_md5_buffer(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_sha1_buffer: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "sha1_buffer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 247621236)!
        }
    }()
    internal func _sha1Buffer() -> Godot.PackedByteArray {
        let __temporary = Godot.PackedByteArray()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_sha1_buffer(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_sha256_buffer: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "sha256_buffer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 247621236)!
        }
    }()
    internal func _sha256Buffer() -> Godot.PackedByteArray {
        let __temporary = Godot.PackedByteArray()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_sha256_buffer(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_is_empty: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "is_empty").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3918633141)!
        }
    }()
    internal func _isEmpty() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_is_empty(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_contains: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "contains").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 2566493496)!
        }
    }()
    internal func _contains(what: Godot.GodotString) -> Bool {
        var __temporary = Bool()
        what.withUnsafeRawPointer { (__ptr_what) in
            withUnsafeArgumentPackPointer(__ptr_what) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_contains(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_is_absolute_path: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "is_absolute_path").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3918633141)!
        }
    }()
    internal func _isAbsolutePath() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_is_absolute_path(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_is_relative_path: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "is_relative_path").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3918633141)!
        }
    }()
    internal func _isRelativePath() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_is_relative_path(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_simplify_path: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "simplify_path").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3942272618)!
        }
    }()
    internal func _simplifyPath() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_simplify_path(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_get_base_dir: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "get_base_dir").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3942272618)!
        }
    }()
    internal func _baseDir() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_get_base_dir(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_get_file: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "get_file").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3942272618)!
        }
    }()
    internal func _file() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_get_file(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_xml_escape: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "xml_escape").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3429816538)!
        }
    }()
    internal func _xmlEscape(escapeQuotes: Bool = false) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        withUnsafePointer(to: escapeQuotes) { (__ptr_escapeQuotes) in
            withUnsafeArgumentPackPointer(__ptr_escapeQuotes) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_xml_escape(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_xml_unescape: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "xml_unescape").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3942272618)!
        }
    }()
    internal func _xmlUnescape() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_xml_unescape(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_uri_encode: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "uri_encode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3942272618)!
        }
    }()
    internal func _uriEncode() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_uri_encode(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_uri_decode: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "uri_decode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3942272618)!
        }
    }()
    internal func _uriDecode() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_uri_decode(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_c_escape: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "c_escape").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3942272618)!
        }
    }()
    internal func _cEscape() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_c_escape(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_c_unescape: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "c_unescape").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3942272618)!
        }
    }()
    internal func _cUnescape() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_c_unescape(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_json_escape: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "json_escape").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3942272618)!
        }
    }()
    internal func _jsonEscape() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_json_escape(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_validate_node_name: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "validate_node_name").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3942272618)!
        }
    }()
    internal func _validateNodeName() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_validate_node_name(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_validate_filename: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "validate_filename").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3942272618)!
        }
    }()
    internal func _validateFilename() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_validate_filename(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_is_valid_identifier: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "is_valid_identifier").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3918633141)!
        }
    }()
    internal func _isValidIdentifier() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_is_valid_identifier(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_is_valid_int: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "is_valid_int").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3918633141)!
        }
    }()
    internal func _isValidInt() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_is_valid_int(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_is_valid_float: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "is_valid_float").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3918633141)!
        }
    }()
    internal func _isValidFloat() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_is_valid_float(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_is_valid_hex_number: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "is_valid_hex_number").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 593672999)!
        }
    }()
    internal func _isValidHexNumber(withPrefix prefix: Bool = false) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: prefix) { (__ptr_prefix) in
            withUnsafeArgumentPackPointer(__ptr_prefix) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_is_valid_hex_number(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_is_valid_html_color: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "is_valid_html_color").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3918633141)!
        }
    }()
    internal func _isValidHtmlColor() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_is_valid_html_color(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_is_valid_ip_address: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "is_valid_ip_address").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3918633141)!
        }
    }()
    internal func _isValidIpAddress() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_is_valid_ip_address(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_is_valid_filename: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "is_valid_filename").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3918633141)!
        }
    }()
    internal func _isValidFilename() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_is_valid_filename(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_to_int: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "to_int").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3173160232)!
        }
    }()
    internal func _toInt() -> Int {
        var __temporary = Int()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_to_int(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_to_float: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "to_float").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 466405837)!
        }
    }()
    internal func _toFloat() -> Double {
        var __temporary = Double()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_to_float(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_hex_to_int: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "hex_to_int").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3173160232)!
        }
    }()
    internal func _hexToInt() -> Int {
        var __temporary = Int()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_hex_to_int(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_bin_to_int: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "bin_to_int").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3173160232)!
        }
    }()
    internal func _binToInt() -> Int {
        var __temporary = Int()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_bin_to_int(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_lpad: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "lpad").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 248737229)!
        }
    }()
    internal func _lpad(minLength: Int, character: Godot.GodotString = " ") -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        withUnsafePointer(to: minLength) { (__ptr_minLength) in
            character.withUnsafeRawPointer { (__ptr_character) in
                withUnsafeArgumentPackPointer(__ptr_minLength, __ptr_character) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            Self.__method_binding_lpad(__ptr_self, __accessPtr, __ptr___temporary, 2)
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_rpad: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "rpad").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 248737229)!
        }
    }()
    internal func _rpad(minLength: Int, character: Godot.GodotString = " ") -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        withUnsafePointer(to: minLength) { (__ptr_minLength) in
            character.withUnsafeRawPointer { (__ptr_character) in
                withUnsafeArgumentPackPointer(__ptr_minLength, __ptr_character) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            Self.__method_binding_rpad(__ptr_self, __accessPtr, __ptr___temporary, 2)
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_pad_decimals: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "pad_decimals").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 2162347432)!
        }
    }()
    internal func _padDecimals(digits: Int) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        withUnsafePointer(to: digits) { (__ptr_digits) in
            withUnsafeArgumentPackPointer(__ptr_digits) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_pad_decimals(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_pad_zeros: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "pad_zeros").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 2162347432)!
        }
    }()
    internal func _padZeros(digits: Int) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        withUnsafePointer(to: digits) { (__ptr_digits) in
            withUnsafeArgumentPackPointer(__ptr_digits) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_pad_zeros(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_trim_prefix: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "trim_prefix").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3134094431)!
        }
    }()
    internal func _trimPrefix(_ prefix: Godot.GodotString) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        prefix.withUnsafeRawPointer { (__ptr_prefix) in
            withUnsafeArgumentPackPointer(__ptr_prefix) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_trim_prefix(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_trim_suffix: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "trim_suffix").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3134094431)!
        }
    }()
    internal func _trimSuffix(_ suffix: Godot.GodotString) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        suffix.withUnsafeRawPointer { (__ptr_suffix) in
            withUnsafeArgumentPackPointer(__ptr_suffix) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_trim_suffix(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_to_ascii_buffer: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "to_ascii_buffer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 247621236)!
        }
    }()
    internal func _toAsciiBuffer() -> Godot.PackedByteArray {
        let __temporary = Godot.PackedByteArray()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_to_ascii_buffer(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_to_utf8_buffer: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "to_utf8_buffer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 247621236)!
        }
    }()
    internal func _toUtf8Buffer() -> Godot.PackedByteArray {
        let __temporary = Godot.PackedByteArray()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_to_utf8_buffer(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_to_utf16_buffer: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "to_utf16_buffer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 247621236)!
        }
    }()
    internal func _toUtf16Buffer() -> Godot.PackedByteArray {
        let __temporary = Godot.PackedByteArray()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_to_utf16_buffer(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_to_utf32_buffer: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "to_utf32_buffer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 247621236)!
        }
    }()
    internal func _toUtf32Buffer() -> Godot.PackedByteArray {
        let __temporary = Godot.PackedByteArray()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_to_utf32_buffer(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_hex_decode: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "hex_decode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 247621236)!
        }
    }()
    internal func _hexDecode() -> Godot.PackedByteArray {
        let __temporary = Godot.PackedByteArray()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_hex_decode(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_to_wchar_buffer: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "to_wchar_buffer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 247621236)!
        }
    }()
    internal func _toWcharBuffer() -> Godot.PackedByteArray {
        let __temporary = Godot.PackedByteArray()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_to_wchar_buffer(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_hash: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "hash").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_STRING_NAME, __ptr__method_name, 3173160232)!
        }
    }()
    internal func _hash() -> Int {
        var __temporary = Int()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_hash(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    }