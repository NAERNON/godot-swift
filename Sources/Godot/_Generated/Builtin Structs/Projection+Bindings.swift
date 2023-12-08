//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
private var __constructor: GDExtensionPtrConstructor = {
    return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_PROJECTION, 0)!
}()
private var __constructor_projection: GDExtensionPtrConstructor = {
    return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_PROJECTION, 1)!
}()
private var __constructor_transform3d: GDExtensionPtrConstructor = {
    return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_PROJECTION, 2)!
}()
private var __constructor_vector4_vector4_vector4_vector4: GDExtensionPtrConstructor = {
    return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_PROJECTION, 3)!
}()
private var __operator_binding_equal_variant: GDExtensionPtrOperatorEvaluator = {
    return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_PROJECTION, GDEXTENSION_VARIANT_TYPE_NIL)!
}()
private var __operator_binding_not_equal_variant: GDExtensionPtrOperatorEvaluator = {
    return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_PROJECTION, GDEXTENSION_VARIANT_TYPE_NIL)!
}()
private var __operator_binding_not: GDExtensionPtrOperatorEvaluator = {
    return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT, GDEXTENSION_VARIANT_TYPE_PROJECTION, GDEXTENSION_VARIANT_TYPE_NIL)!
}()
private var __operator_binding_multiply_vector4: GDExtensionPtrOperatorEvaluator = {
    return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_PROJECTION, GDEXTENSION_VARIANT_TYPE_VECTOR4)!
}()
private var __operator_binding_equal_projection: GDExtensionPtrOperatorEvaluator = {
    return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_PROJECTION, GDEXTENSION_VARIANT_TYPE_PROJECTION)!
}()
private var __operator_binding_not_equal_projection: GDExtensionPtrOperatorEvaluator = {
    return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_PROJECTION, GDEXTENSION_VARIANT_TYPE_PROJECTION)!
}()
private var __operator_binding_multiply_projection: GDExtensionPtrOperatorEvaluator = {
    return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_PROJECTION, GDEXTENSION_VARIANT_TYPE_PROJECTION)!
}()
private var __operator_binding_in_godotdictionary: GDExtensionPtrOperatorEvaluator = {
    return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_PROJECTION, GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
}()
private var __operator_binding_in_godotarray: GDExtensionPtrOperatorEvaluator = {
    return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_PROJECTION, GDEXTENSION_VARIANT_TYPE_ARRAY)!
}()
private var __indexed_setter: GDExtensionPtrIndexedSetter = {
    return gdextension_interface_variant_get_ptr_indexed_setter(GDEXTENSION_VARIANT_TYPE_PROJECTION)!
}()
private var __indexed_getter: GDExtensionPtrIndexedGetter = {
    return gdextension_interface_variant_get_ptr_indexed_getter(GDEXTENSION_VARIANT_TYPE_PROJECTION)!
}()
private var __method_binding_create_depth_correction: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "create_depth_correction").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PROJECTION, __ptr__method_name, 1228516048)!
    }
}()
private var __method_binding_create_light_atlas_rect: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "create_light_atlas_rect").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PROJECTION, __ptr__method_name, 2654950662)!
    }
}()
private var __method_binding_create_perspective: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "create_perspective").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PROJECTION, __ptr__method_name, 390915442)!
    }
}()
private var __method_binding_create_perspective_hmd: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "create_perspective_hmd").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PROJECTION, __ptr__method_name, 2857674800)!
    }
}()
private var __method_binding_create_for_hmd: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "create_for_hmd").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PROJECTION, __ptr__method_name, 4184144994)!
    }
}()
private var __method_binding_create_orthogonal: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "create_orthogonal").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PROJECTION, __ptr__method_name, 3707929169)!
    }
}()
private var __method_binding_create_orthogonal_aspect: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "create_orthogonal_aspect").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PROJECTION, __ptr__method_name, 390915442)!
    }
}()
private var __method_binding_create_frustum: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "create_frustum").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PROJECTION, __ptr__method_name, 3707929169)!
    }
}()
private var __method_binding_create_frustum_aspect: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "create_frustum_aspect").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PROJECTION, __ptr__method_name, 1535076251)!
    }
}()
private var __method_binding_create_fit_aabb: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "create_fit_aabb").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PROJECTION, __ptr__method_name, 2264694907)!
    }
}()
private var __method_binding_determinant: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "determinant").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PROJECTION, __ptr__method_name, 466405837)!
    }
}()
private var __method_binding_perspective_znear_adjusted: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "perspective_znear_adjusted").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PROJECTION, __ptr__method_name, 3584785443)!
    }
}()
private var __method_binding_get_projection_plane: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "get_projection_plane").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PROJECTION, __ptr__method_name, 1551184160)!
    }
}()
private var __method_binding_flipped_y: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "flipped_y").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PROJECTION, __ptr__method_name, 4212530932)!
    }
}()
private var __method_binding_jitter_offseted: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "jitter_offseted").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PROJECTION, __ptr__method_name, 2448438599)!
    }
}()
private var __method_binding_get_fovy: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "get_fovy").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PROJECTION, __ptr__method_name, 3514207532)!
    }
}()
private var __method_binding_get_z_far: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "get_z_far").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PROJECTION, __ptr__method_name, 466405837)!
    }
}()
private var __method_binding_get_z_near: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "get_z_near").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PROJECTION, __ptr__method_name, 466405837)!
    }
}()
private var __method_binding_get_aspect: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "get_aspect").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PROJECTION, __ptr__method_name, 466405837)!
    }
}()
private var __method_binding_get_fov: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "get_fov").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PROJECTION, __ptr__method_name, 466405837)!
    }
}()
private var __method_binding_is_orthogonal: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "is_orthogonal").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PROJECTION, __ptr__method_name, 3918633141)!
    }
}()
private var __method_binding_get_viewport_half_extents: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "get_viewport_half_extents").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PROJECTION, __ptr__method_name, 2428350749)!
    }
}()
private var __method_binding_get_far_plane_half_extents: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "get_far_plane_half_extents").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PROJECTION, __ptr__method_name, 2428350749)!
    }
}()
private var __method_binding_inverse: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "inverse").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PROJECTION, __ptr__method_name, 4212530932)!
    }
}()
private var __method_binding_get_pixels_per_meter: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "get_pixels_per_meter").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PROJECTION, __ptr__method_name, 4103005248)!
    }
}()
private var __method_binding_get_lod_multiplier: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "get_lod_multiplier").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PROJECTION, __ptr__method_name, 466405837)!
    }
}()
extension Projection {
    public static let planeNear: Int = 0
    public static let planeFar: Int = 1
    public static let planeLeft: Int = 2
    public static let planeTop: Int = 3
    public static let planeRight: Int = 4
    public static let planeBottom: Int = 5
    public static let identity: Projection = Projection(xAxisX: 1, xAxisY: 0, xAxisZ: 0, xAxisW: 0, yAxisX: 0, yAxisY: 1, yAxisZ: 0, yAxisW: 0, zAxisX: 0, zAxisY: 0, zAxisZ: 1, zAxisW: 0, wAxisX: 0, wAxisY: 0, wAxisZ: 0, wAxisW: 1)
    public static let zero: Projection = Projection(xAxisX: 0, xAxisY: 0, xAxisZ: 0, xAxisW: 0, yAxisX: 0, yAxisY: 0, yAxisZ: 0, yAxisW: 0, zAxisX: 0, zAxisY: 0, zAxisZ: 0, zAxisW: 0, wAxisX: 0, wAxisY: 0, wAxisZ: 0, wAxisW: 0)

    public enum Planes: UInt32, GodotEnum {
        case near = 0
        case far = 1
        case left = 2
        case top = 3
        case right = 4
        case bottom = 5
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Near", 0),
            ("Far", 1),
            ("Left", 2),
            ("Top", 3),
            ("Right", 4),
            ("Bottom", 5),]
        }
    }

    static internal func _constructor() -> Self {
        var __temporary = Projection()
        withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
            __constructor(__ptr___temporary, nil)
        }
        return __temporary
    }
    static internal func _ptr_constructor() -> Self {
        var __temporary = Projection()
        withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
            __constructor(__ptr___temporary, nil)
        }
        return __temporary
    }

    static internal func _constructor_projection(from: Godot.Projection) -> Self {
        var __temporary = Projection()
        withUnsafePointer(to: from) { (__ptr_from) in
            withUnsafeArgumentPackPointer(__ptr_from) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                    __constructor_projection(__ptr___temporary, __accessPtr)
                }
            }
        }
        return __temporary
    }
    static internal func _ptr_constructor_projection(from: UnsafeRawPointer) -> Self {
        var __temporary = Projection()
        withUnsafeArgumentPackPointer(from) { (__accessPtr) in
            withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                __constructor_projection(__ptr___temporary, __accessPtr)
            }
        }
        return __temporary
    }

    static internal func _constructor_transform3d(from: Godot.Transform3D) -> Self {
        var __temporary = Projection()
        withUnsafePointer(to: from) { (__ptr_from) in
            withUnsafeArgumentPackPointer(__ptr_from) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                    __constructor_transform3d(__ptr___temporary, __accessPtr)
                }
            }
        }
        return __temporary
    }
    static internal func _ptr_constructor_transform3d(from: UnsafeRawPointer) -> Self {
        var __temporary = Projection()
        withUnsafeArgumentPackPointer(from) { (__accessPtr) in
            withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                __constructor_transform3d(__ptr___temporary, __accessPtr)
            }
        }
        return __temporary
    }

    static internal func _constructor_vector4_vector4_vector4_vector4(xAxis: Godot.Vector4, yAxis: Godot.Vector4, zAxis: Godot.Vector4, wAxis: Godot.Vector4) -> Self {
        var __temporary = Projection()
        withUnsafePointer(to: xAxis) { (__ptr_xAxis) in
            withUnsafePointer(to: yAxis) { (__ptr_yAxis) in
                withUnsafePointer(to: zAxis) { (__ptr_zAxis) in
                    withUnsafePointer(to: wAxis) { (__ptr_wAxis) in
                        withUnsafeArgumentPackPointer(__ptr_xAxis, __ptr_yAxis, __ptr_zAxis, __ptr_wAxis) { (__accessPtr) in
                            withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                                __constructor_vector4_vector4_vector4_vector4(__ptr___temporary, __accessPtr)
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }
    static internal func _ptr_constructor_vector4_vector4_vector4_vector4(xAxis: UnsafeRawPointer, yAxis: UnsafeRawPointer, zAxis: UnsafeRawPointer, wAxis: UnsafeRawPointer) -> Self {
        var __temporary = Projection()
        withUnsafeArgumentPackPointer(xAxis, yAxis, zAxis, wAxis) { (__accessPtr) in
            withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                __constructor_vector4_vector4_vector4_vector4(__ptr___temporary, __accessPtr)
            }
        }
        return __temporary
    }

    static internal func _operatorEqual<Value: VariantStorableIn>(_ lhs: Godot.Projection, _ rhs: Value) -> Bool {
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

    static internal func _operatorNotEqual<Value: VariantStorableIn>(_ lhs: Godot.Projection, _ rhs: Value) -> Bool {
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

    static internal func _operatorNot(_ lhs: Godot.Projection) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                __operator_binding_not(__ptr_lhs, nil, __ptr___temporary)
            }
        }
        return __temporary
    }

    static internal func _operatorMultiply(_ lhs: Godot.Projection, _ rhs: Godot.Vector4) -> Godot.Vector4 {
        var __temporary = Vector4()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    __operator_binding_multiply_vector4(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    static internal func _operatorEqual(_ lhs: Godot.Projection, _ rhs: Godot.Projection) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    __operator_binding_equal_projection(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    static internal func _operatorNotEqual(_ lhs: Godot.Projection, _ rhs: Godot.Projection) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    __operator_binding_not_equal_projection(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    static internal func _operatorMultiply(_ lhs: Godot.Projection, _ rhs: Godot.Projection) -> Godot.Projection {
        var __temporary = Projection()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    __operator_binding_multiply_projection(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    static internal func _operatorIn(_ lhs: Godot.Projection, _ rhs: Godot.GodotDictionary) -> Bool {
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

    static internal func _operatorIn<Value: VariantStorable>(_ lhs: Godot.Projection, _ rhs: Godot.GodotArray<Value>) -> Bool {
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

    internal func _getValue(at index: GDExtensionInt) -> Godot.Vector4 {
        var __temporary = Godot.Vector4()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (__ptr_self) in
                __indexed_getter(__ptr_self, index, __ptr___temporary)
            }
        }
        return __temporary
    }
    mutating internal func _setValue(_ value: Godot.Vector4, at index: GDExtensionInt) {
        withUnsafePointer(to: value) { (__ptr_value) in
            withUnsafeMutablePointer(to: &`self`) { (__ptr_self) in
                __indexed_setter(__ptr_self, index, __ptr_value)
            }
        }
    }

    static internal func _createDepthCorrection(flipY: Bool) -> Godot.Projection {
        var __temporary = Godot.Projection()
        withUnsafePointer(to: flipY) { (__ptr_flipY) in
            withUnsafeArgumentPackPointer(__ptr_flipY) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    __method_binding_create_depth_correction(nil, __accessPtr, __ptr___temporary, 1)
                }
            }
        }
        return __temporary
    }

    static internal func _createLightAtlasRect(_ rect: Godot.Rect2) -> Godot.Projection {
        var __temporary = Godot.Projection()
        withUnsafePointer(to: rect) { (__ptr_rect) in
            withUnsafeArgumentPackPointer(__ptr_rect) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    __method_binding_create_light_atlas_rect(nil, __accessPtr, __ptr___temporary, 1)
                }
            }
        }
        return __temporary
    }

    static internal func _createPerspective(fovy: Real, aspect: Real, zNear: Real, zFar: Real, flipFov: Bool = false) -> Godot.Projection {
        var __temporary = Godot.Projection()
        withUnsafePointer(to: fovy) { (__ptr_fovy) in
            withUnsafePointer(to: aspect) { (__ptr_aspect) in
                withUnsafePointer(to: zNear) { (__ptr_zNear) in
                    withUnsafePointer(to: zFar) { (__ptr_zFar) in
                        withUnsafePointer(to: flipFov) { (__ptr_flipFov) in
                            withUnsafeArgumentPackPointer(__ptr_fovy, __ptr_aspect, __ptr_zNear, __ptr_zFar, __ptr_flipFov) { (__accessPtr) in
                                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                    __method_binding_create_perspective(nil, __accessPtr, __ptr___temporary, 5)
                                }
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    static internal func _createPerspectiveHmd(fovy: Real, aspect: Real, zNear: Real, zFar: Real, flipFov: Bool, eye: Int, intraocularDist: Real, convergenceDist: Real) -> Godot.Projection {
        var __temporary = Godot.Projection()
        withUnsafePointer(to: fovy) { (__ptr_fovy) in
            withUnsafePointer(to: aspect) { (__ptr_aspect) in
                withUnsafePointer(to: zNear) { (__ptr_zNear) in
                    withUnsafePointer(to: zFar) { (__ptr_zFar) in
                        withUnsafePointer(to: flipFov) { (__ptr_flipFov) in
                            withUnsafePointer(to: eye) { (__ptr_eye) in
                                withUnsafePointer(to: intraocularDist) { (__ptr_intraocularDist) in
                                    withUnsafePointer(to: convergenceDist) { (__ptr_convergenceDist) in
                                        withUnsafeArgumentPackPointer(__ptr_fovy, __ptr_aspect, __ptr_zNear, __ptr_zFar, __ptr_flipFov, __ptr_eye, __ptr_intraocularDist, __ptr_convergenceDist) { (__accessPtr) in
                                            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                                __method_binding_create_perspective_hmd(nil, __accessPtr, __ptr___temporary, 8)
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

    static internal func _createForHmd(eye: Int, aspect: Real, intraocularDist: Real, displayWidth: Real, displayToLens: Real, oversample: Real, zNear: Real, zFar: Real) -> Godot.Projection {
        var __temporary = Godot.Projection()
        withUnsafePointer(to: eye) { (__ptr_eye) in
            withUnsafePointer(to: aspect) { (__ptr_aspect) in
                withUnsafePointer(to: intraocularDist) { (__ptr_intraocularDist) in
                    withUnsafePointer(to: displayWidth) { (__ptr_displayWidth) in
                        withUnsafePointer(to: displayToLens) { (__ptr_displayToLens) in
                            withUnsafePointer(to: oversample) { (__ptr_oversample) in
                                withUnsafePointer(to: zNear) { (__ptr_zNear) in
                                    withUnsafePointer(to: zFar) { (__ptr_zFar) in
                                        withUnsafeArgumentPackPointer(__ptr_eye, __ptr_aspect, __ptr_intraocularDist, __ptr_displayWidth, __ptr_displayToLens, __ptr_oversample, __ptr_zNear, __ptr_zFar) { (__accessPtr) in
                                            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                                __method_binding_create_for_hmd(nil, __accessPtr, __ptr___temporary, 8)
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

    static internal func _createOrthogonal(left: Real, right: Real, bottom: Real, top: Real, zNear: Real, zFar: Real) -> Godot.Projection {
        var __temporary = Godot.Projection()
        withUnsafePointer(to: left) { (__ptr_left) in
            withUnsafePointer(to: right) { (__ptr_right) in
                withUnsafePointer(to: bottom) { (__ptr_bottom) in
                    withUnsafePointer(to: top) { (__ptr_top) in
                        withUnsafePointer(to: zNear) { (__ptr_zNear) in
                            withUnsafePointer(to: zFar) { (__ptr_zFar) in
                                withUnsafeArgumentPackPointer(__ptr_left, __ptr_right, __ptr_bottom, __ptr_top, __ptr_zNear, __ptr_zFar) { (__accessPtr) in
                                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                        __method_binding_create_orthogonal(nil, __accessPtr, __ptr___temporary, 6)
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

    static internal func _createOrthogonalAspect(size: Real, aspect: Real, zNear: Real, zFar: Real, flipFov: Bool = false) -> Godot.Projection {
        var __temporary = Godot.Projection()
        withUnsafePointer(to: size) { (__ptr_size) in
            withUnsafePointer(to: aspect) { (__ptr_aspect) in
                withUnsafePointer(to: zNear) { (__ptr_zNear) in
                    withUnsafePointer(to: zFar) { (__ptr_zFar) in
                        withUnsafePointer(to: flipFov) { (__ptr_flipFov) in
                            withUnsafeArgumentPackPointer(__ptr_size, __ptr_aspect, __ptr_zNear, __ptr_zFar, __ptr_flipFov) { (__accessPtr) in
                                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                    __method_binding_create_orthogonal_aspect(nil, __accessPtr, __ptr___temporary, 5)
                                }
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    static internal func _createFrustum(left: Real, right: Real, bottom: Real, top: Real, zNear: Real, zFar: Real) -> Godot.Projection {
        var __temporary = Godot.Projection()
        withUnsafePointer(to: left) { (__ptr_left) in
            withUnsafePointer(to: right) { (__ptr_right) in
                withUnsafePointer(to: bottom) { (__ptr_bottom) in
                    withUnsafePointer(to: top) { (__ptr_top) in
                        withUnsafePointer(to: zNear) { (__ptr_zNear) in
                            withUnsafePointer(to: zFar) { (__ptr_zFar) in
                                withUnsafeArgumentPackPointer(__ptr_left, __ptr_right, __ptr_bottom, __ptr_top, __ptr_zNear, __ptr_zFar) { (__accessPtr) in
                                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                        __method_binding_create_frustum(nil, __accessPtr, __ptr___temporary, 6)
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

    static internal func _createFrustumAspect(size: Real, aspect: Real, offset: Godot.Vector2, zNear: Real, zFar: Real, flipFov: Bool = false) -> Godot.Projection {
        var __temporary = Godot.Projection()
        withUnsafePointer(to: size) { (__ptr_size) in
            withUnsafePointer(to: aspect) { (__ptr_aspect) in
                withUnsafePointer(to: offset) { (__ptr_offset) in
                    withUnsafePointer(to: zNear) { (__ptr_zNear) in
                        withUnsafePointer(to: zFar) { (__ptr_zFar) in
                            withUnsafePointer(to: flipFov) { (__ptr_flipFov) in
                                withUnsafeArgumentPackPointer(__ptr_size, __ptr_aspect, __ptr_offset, __ptr_zNear, __ptr_zFar, __ptr_flipFov) { (__accessPtr) in
                                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                        __method_binding_create_frustum_aspect(nil, __accessPtr, __ptr___temporary, 6)
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

    static internal func _createFitAabb(_ aabb: Godot.AABB) -> Godot.Projection {
        var __temporary = Godot.Projection()
        withUnsafePointer(to: aabb) { (__ptr_aabb) in
            withUnsafeArgumentPackPointer(__ptr_aabb) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    __method_binding_create_fit_aabb(nil, __accessPtr, __ptr___temporary, 1)
                }
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

    internal func _perspectiveZnearAdjusted(newZnear: Real) -> Godot.Projection {
        var __temporary = Godot.Projection()
        withUnsafePointer(to: newZnear) { (__ptr_newZnear) in
            withUnsafeArgumentPackPointer(__ptr_newZnear) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    withUnsafePointer(to: `self`) { (___ptr_self) in
                        let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                        __method_binding_perspective_znear_adjusted(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    internal func _projectionPlane(_ plane: Int) -> Godot.Plane {
        var __temporary = Godot.Plane()
        withUnsafePointer(to: plane) { (__ptr_plane) in
            withUnsafeArgumentPackPointer(__ptr_plane) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    withUnsafePointer(to: `self`) { (___ptr_self) in
                        let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                        __method_binding_get_projection_plane(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    internal func _flippedY() -> Godot.Projection {
        var __temporary = Godot.Projection()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                __method_binding_flipped_y(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    internal func _jitterOffseted(offset: Godot.Vector2) -> Godot.Projection {
        var __temporary = Godot.Projection()
        withUnsafePointer(to: offset) { (__ptr_offset) in
            withUnsafeArgumentPackPointer(__ptr_offset) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    withUnsafePointer(to: `self`) { (___ptr_self) in
                        let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                        __method_binding_jitter_offseted(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    static internal func _fovy(fovx: Real, aspect: Real) -> Real {
        var __temporary = Real()
        withUnsafePointer(to: fovx) { (__ptr_fovx) in
            withUnsafePointer(to: aspect) { (__ptr_aspect) in
                withUnsafeArgumentPackPointer(__ptr_fovx, __ptr_aspect) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        __method_binding_get_fovy(nil, __accessPtr, __ptr___temporary, 2)
                    }
                }
            }
        }
        return __temporary
    }

    internal func _zFar() -> Real {
        var __temporary = Real()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                __method_binding_get_z_far(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    internal func _zNear() -> Real {
        var __temporary = Real()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                __method_binding_get_z_near(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    internal func _aspect() -> Real {
        var __temporary = Real()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                __method_binding_get_aspect(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    internal func _fov() -> Real {
        var __temporary = Real()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                __method_binding_get_fov(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    internal func _isOrthogonal() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                __method_binding_is_orthogonal(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    internal func _viewportHalfExtents() -> Godot.Vector2 {
        var __temporary = Godot.Vector2()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                __method_binding_get_viewport_half_extents(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    internal func _farPlaneHalfExtents() -> Godot.Vector2 {
        var __temporary = Godot.Vector2()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                __method_binding_get_far_plane_half_extents(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    internal func _inverse() -> Godot.Projection {
        var __temporary = Godot.Projection()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                __method_binding_inverse(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    internal func _pixelsPerMeter(forPixelWidth pixelWidth: Int) -> Int {
        var __temporary = Int()
        withUnsafePointer(to: pixelWidth) { (__ptr_pixelWidth) in
            withUnsafeArgumentPackPointer(__ptr_pixelWidth) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    withUnsafePointer(to: `self`) { (___ptr_self) in
                        let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                        __method_binding_get_pixels_per_meter(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    internal func _lodMultiplier() -> Real {
        var __temporary = Real()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                __method_binding_get_lod_multiplier(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    }