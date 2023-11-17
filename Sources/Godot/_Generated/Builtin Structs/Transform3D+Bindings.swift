//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
extension Transform3D {
    public static let identity: Transform3D = Transform3D(xAxisX: 1, xAxisY: 0, xAxisZ: 0, yAxisX: 0, yAxisY: 1, yAxisZ: 0, zAxisX: 0, zAxisY: 0, zAxisZ: 1, originX: 0, originY: 0, originZ: 0)
    public static let flipX: Transform3D = Transform3D(xAxisX: -1, xAxisY: 0, xAxisZ: 0, yAxisX: 0, yAxisY: 1, yAxisZ: 0, zAxisX: 0, zAxisY: 0, zAxisZ: 1, originX: 0, originY: 0, originZ: 0)
    public static let flipY: Transform3D = Transform3D(xAxisX: 1, xAxisY: 0, xAxisZ: 0, yAxisX: 0, yAxisY: -1, yAxisZ: 0, zAxisX: 0, zAxisY: 0, zAxisZ: 1, originX: 0, originY: 0, originZ: 0)
    public static let flipZ: Transform3D = Transform3D(xAxisX: 1, xAxisY: 0, xAxisZ: 0, yAxisX: 0, yAxisY: 1, yAxisZ: 0, zAxisX: 0, zAxisY: 0, zAxisZ: -1, originX: 0, originY: 0, originZ: 0)

    private static var __constructor: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, 0)!
    }()
    static internal func _constructor() -> Self {
        var __temporary = Transform3D()
        withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
            Self.__constructor(__ptr___temporary, nil)
        }
        return __temporary
    }
    static internal func _ptr_constructor() -> Self {
        var __temporary = Transform3D()
        withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
            Self.__constructor(__ptr___temporary, nil)
        }
        return __temporary
    }

    private static var __constructor_transform3d: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, 1)!
    }()
    static internal func _constructor_transform3d(from: Godot.Transform3D) -> Self {
        var __temporary = Transform3D()
        withUnsafePointer(to: from) { (__ptr_from) in
            withUnsafeArgumentPackPointer(__ptr_from) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                    Self.__constructor_transform3d(__ptr___temporary, __accessPtr)
                }
            }
        }
        return __temporary
    }
    static internal func _ptr_constructor_transform3d(from: UnsafeRawPointer) -> Self {
        var __temporary = Transform3D()
        withUnsafeArgumentPackPointer(from) { (__accessPtr) in
            withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                Self.__constructor_transform3d(__ptr___temporary, __accessPtr)
            }
        }
        return __temporary
    }

    private static var __constructor_basis_vector3: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, 2)!
    }()
    static internal func _constructor_basis_vector3(basis: Godot.Basis, origin: Godot.Vector3) -> Self {
        var __temporary = Transform3D()
        withUnsafePointer(to: basis) { (__ptr_basis) in
            withUnsafePointer(to: origin) { (__ptr_origin) in
                withUnsafeArgumentPackPointer(__ptr_basis, __ptr_origin) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                        Self.__constructor_basis_vector3(__ptr___temporary, __accessPtr)
                    }
                }
            }
        }
        return __temporary
    }
    static internal func _ptr_constructor_basis_vector3(basis: UnsafeRawPointer, origin: UnsafeRawPointer) -> Self {
        var __temporary = Transform3D()
        withUnsafeArgumentPackPointer(basis, origin) { (__accessPtr) in
            withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                Self.__constructor_basis_vector3(__ptr___temporary, __accessPtr)
            }
        }
        return __temporary
    }

    private static var __constructor_vector3_vector3_vector3_vector3: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, 3)!
    }()
    static internal func _constructor_vector3_vector3_vector3_vector3(xAxis: Godot.Vector3, yAxis: Godot.Vector3, zAxis: Godot.Vector3, origin: Godot.Vector3) -> Self {
        var __temporary = Transform3D()
        withUnsafePointer(to: xAxis) { (__ptr_xAxis) in
            withUnsafePointer(to: yAxis) { (__ptr_yAxis) in
                withUnsafePointer(to: zAxis) { (__ptr_zAxis) in
                    withUnsafePointer(to: origin) { (__ptr_origin) in
                        withUnsafeArgumentPackPointer(__ptr_xAxis, __ptr_yAxis, __ptr_zAxis, __ptr_origin) { (__accessPtr) in
                            withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                                Self.__constructor_vector3_vector3_vector3_vector3(__ptr___temporary, __accessPtr)
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }
    static internal func _ptr_constructor_vector3_vector3_vector3_vector3(xAxis: UnsafeRawPointer, yAxis: UnsafeRawPointer, zAxis: UnsafeRawPointer, origin: UnsafeRawPointer) -> Self {
        var __temporary = Transform3D()
        withUnsafeArgumentPackPointer(xAxis, yAxis, zAxis, origin) { (__accessPtr) in
            withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                Self.__constructor_vector3_vector3_vector3_vector3(__ptr___temporary, __accessPtr)
            }
        }
        return __temporary
    }

    private static var __constructor_projection: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, 4)!
    }()
    static internal func _constructor_projection(from: Godot.Projection) -> Self {
        var __temporary = Transform3D()
        withUnsafePointer(to: from) { (__ptr_from) in
            withUnsafeArgumentPackPointer(__ptr_from) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                    Self.__constructor_projection(__ptr___temporary, __accessPtr)
                }
            }
        }
        return __temporary
    }
    static internal func _ptr_constructor_projection(from: UnsafeRawPointer) -> Self {
        var __temporary = Transform3D()
        withUnsafeArgumentPackPointer(from) { (__accessPtr) in
            withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                Self.__constructor_projection(__ptr___temporary, __accessPtr)
            }
        }
        return __temporary
    }

    private static var __operator_binding_equal_variant: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorEqual<Variant1 : VariantEncodable>(_ lhs: Godot.Transform3D, _ rhs: Variant1) -> Bool {
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
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorNotEqual<Variant1 : VariantEncodable>(_ lhs: Godot.Transform3D, _ rhs: Variant1) -> Bool {
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
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT, GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorNot(_ lhs: Godot.Transform3D) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                Self.__operator_binding_not(__ptr_lhs, nil, __ptr___temporary)
            }
        }
        return __temporary
    }

    private static var __operator_binding_multiply_int: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, GDEXTENSION_VARIANT_TYPE_INT)!
    }()
    static internal func _operatorMultiply(_ lhs: Godot.Transform3D, _ rhs: Int) -> Godot.Transform3D {
        var __temporary = Transform3D()
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
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, GDEXTENSION_VARIANT_TYPE_FLOAT)!
    }()
    static internal func _operatorMultiply(_ lhs: Godot.Transform3D, _ rhs: Real) -> Godot.Transform3D {
        var __temporary = Transform3D()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_multiply_double(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_multiply_vector3: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, GDEXTENSION_VARIANT_TYPE_VECTOR3)!
    }()
    static internal func _operatorMultiply(_ lhs: Godot.Transform3D, _ rhs: Godot.Vector3) -> Godot.Vector3 {
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

    private static var __operator_binding_multiply_plane: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, GDEXTENSION_VARIANT_TYPE_PLANE)!
    }()
    static internal func _operatorMultiply(_ lhs: Godot.Transform3D, _ rhs: Godot.Plane) -> Godot.Plane {
        var __temporary = Plane()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_multiply_plane(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_multiply_aabb: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, GDEXTENSION_VARIANT_TYPE_AABB)!
    }()
    static internal func _operatorMultiply(_ lhs: Godot.Transform3D, _ rhs: Godot.AABB) -> Godot.AABB {
        var __temporary = AABB()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_multiply_aabb(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_equal_transform3d: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, GDEXTENSION_VARIANT_TYPE_TRANSFORM3D)!
    }()
    static internal func _operatorEqual(_ lhs: Godot.Transform3D, _ rhs: Godot.Transform3D) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_equal_transform3d(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_not_equal_transform3d: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, GDEXTENSION_VARIANT_TYPE_TRANSFORM3D)!
    }()
    static internal func _operatorNotEqual(_ lhs: Godot.Transform3D, _ rhs: Godot.Transform3D) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            withUnsafePointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_not_equal_transform3d(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_multiply_transform3d: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, GDEXTENSION_VARIANT_TYPE_TRANSFORM3D)!
    }()
    static internal func _operatorMultiply(_ lhs: Godot.Transform3D, _ rhs: Godot.Transform3D) -> Godot.Transform3D {
        var __temporary = Transform3D()
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
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
    }()
    static internal func _operatorIn(_ lhs: Godot.Transform3D, _ rhs: Godot.GodotDictionary) -> Bool {
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
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, GDEXTENSION_VARIANT_TYPE_ARRAY)!
    }()
    static internal func _operatorIn(_ lhs: Godot.Transform3D, _ rhs: Godot.GodotArray) -> Bool {
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

    private static var __operator_binding_multiply_packedvector3array: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY)!
    }()
    static internal func _operatorMultiply(_ lhs: Godot.Transform3D, _ rhs: Godot.PackedVector3Array) -> Godot.PackedVector3Array {
        let __temporary = PackedVector3Array()
        withUnsafePointer(to: lhs) { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    Self.__operator_binding_multiply_packedvector3array(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_inverse: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "inverse").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, __ptr__method_name, 3816817146)!
        }
    }()
    internal func _inverse() -> Godot.Transform3D {
        var __temporary = Godot.Transform3D()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                Self.__method_binding_inverse(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_affine_inverse: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "affine_inverse").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, __ptr__method_name, 3816817146)!
        }
    }()
    internal func _affineInverse() -> Godot.Transform3D {
        var __temporary = Godot.Transform3D()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                Self.__method_binding_affine_inverse(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_orthonormalized: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "orthonormalized").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, __ptr__method_name, 3816817146)!
        }
    }()
    internal func _orthonormalized() -> Godot.Transform3D {
        var __temporary = Godot.Transform3D()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            withUnsafePointer(to: `self`) { (___ptr_self) in
                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                Self.__method_binding_orthonormalized(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_rotated: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "rotated").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, __ptr__method_name, 1563203923)!
        }
    }()
    internal func _rotated(axis: Godot.Vector3, angle: Real) -> Godot.Transform3D {
        var __temporary = Godot.Transform3D()
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

    private static var __method_binding_rotated_local: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "rotated_local").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, __ptr__method_name, 1563203923)!
        }
    }()
    internal func _rotatedLocal(axis: Godot.Vector3, angle: Real) -> Godot.Transform3D {
        var __temporary = Godot.Transform3D()
        withUnsafePointer(to: axis) { (__ptr_axis) in
            withUnsafePointer(to: angle) { (__ptr_angle) in
                withUnsafeArgumentPackPointer(__ptr_axis, __ptr_angle) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        withUnsafePointer(to: `self`) { (___ptr_self) in
                            let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                            Self.__method_binding_rotated_local(__ptr_self, __accessPtr, __ptr___temporary, 2)
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_scaled: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "scaled").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, __ptr__method_name, 1405596198)!
        }
    }()
    internal func _scaled(scale: Godot.Vector3) -> Godot.Transform3D {
        var __temporary = Godot.Transform3D()
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
        GodotStringName(swiftStaticString: "scaled_local").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, __ptr__method_name, 1405596198)!
        }
    }()
    internal func _scaledLocal(scale: Godot.Vector3) -> Godot.Transform3D {
        var __temporary = Godot.Transform3D()
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
        GodotStringName(swiftStaticString: "translated").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, __ptr__method_name, 1405596198)!
        }
    }()
    internal func _translated(offset: Godot.Vector3) -> Godot.Transform3D {
        var __temporary = Godot.Transform3D()
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
        GodotStringName(swiftStaticString: "translated_local").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, __ptr__method_name, 1405596198)!
        }
    }()
    internal func _translatedLocal(offset: Godot.Vector3) -> Godot.Transform3D {
        var __temporary = Godot.Transform3D()
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

    private static var __method_binding_looking_at: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "looking_at").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, __ptr__method_name, 90889270)!
        }
    }()
    internal func _lookingAt(target: Godot.Vector3, up: Godot.Vector3 = Vector3(x: 0, y: 1, z: 0), useModelFront: Bool = false) -> Godot.Transform3D {
        var __temporary = Godot.Transform3D()
        withUnsafePointer(to: target) { (__ptr_target) in
            withUnsafePointer(to: up) { (__ptr_up) in
                withUnsafePointer(to: useModelFront) { (__ptr_useModelFront) in
                    withUnsafeArgumentPackPointer(__ptr_target, __ptr_up, __ptr_useModelFront) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            withUnsafePointer(to: `self`) { (___ptr_self) in
                                let __ptr_self = UnsafeMutableRawPointer(mutating: ___ptr_self)
                                Self.__method_binding_looking_at(__ptr_self, __accessPtr, __ptr___temporary, 3)
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_interpolate_with: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "interpolate_with").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, __ptr__method_name, 1786453358)!
        }
    }()
    internal func _interpolateWith(xform: Godot.Transform3D, weight: Real) -> Godot.Transform3D {
        var __temporary = Godot.Transform3D()
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
        GodotStringName(swiftStaticString: "is_equal_approx").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, __ptr__method_name, 696001652)!
        }
    }()
    internal func _isEqualApprox(xform: Godot.Transform3D) -> Bool {
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
        GodotStringName(swiftStaticString: "is_finite").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_TRANSFORM3D, __ptr__method_name, 3918633141)!
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

    }