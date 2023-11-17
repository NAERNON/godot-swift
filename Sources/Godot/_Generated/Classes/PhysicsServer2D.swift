//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class PhysicsServer2D: Object {
    public enum SpaceParameter: UInt32, GodotEnum {
        case contactRecycleRadius = 0
        case contactMaxSeparation = 1
        case contactMaxAllowedPenetration = 2
        case contactDefaultBias = 3
        case bodyLinearVelocitySleepThreshold = 4
        case bodyAngularVelocitySleepThreshold = 5
        case bodyTimeToSleep = 6
        case constraintDefaultBias = 7
        case solverIterations = 8
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Contact Recycle Radius", 0),
            ("Contact Max Separation", 1),
            ("Contact Max Allowed Penetration", 2),
            ("Contact Default Bias", 3),
            ("Body Linear Velocity Sleep Threshold", 4),
            ("Body Angular Velocity Sleep Threshold", 5),
            ("Body Time To Sleep", 6),
            ("Constraint Default Bias", 7),
            ("Solver Iterations", 8),]
        }
    }
    public enum ShapeType: UInt32, GodotEnum {
        case worldBoundary = 0
        case separationRay = 1
        case segment = 2
        case circle = 3
        case rectangle = 4
        case capsule = 5
        case convexPolygon = 6
        case concavePolygon = 7
        case custom = 8
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("World Boundary", 0),
            ("Separation Ray", 1),
            ("Segment", 2),
            ("Circle", 3),
            ("Rectangle", 4),
            ("Capsule", 5),
            ("Convex Polygon", 6),
            ("Concave Polygon", 7),
            ("Custom", 8),]
        }
    }
    public enum AreaParameter: UInt32, GodotEnum {
        case gravityOverrideMode = 0
        case gravity = 1
        case gravityVector = 2
        case gravityIsPoint = 3
        case gravityPointUnitDistance = 4
        case linearDampOverrideMode = 5
        case linearDamp = 6
        case angularDampOverrideMode = 7
        case angularDamp = 8
        case priority = 9
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Gravity Override Mode", 0),
            ("Gravity", 1),
            ("Gravity Vector", 2),
            ("Gravity Is Point", 3),
            ("Gravity Point Unit Distance", 4),
            ("Linear Damp Override Mode", 5),
            ("Linear Damp", 6),
            ("Angular Damp Override Mode", 7),
            ("Angular Damp", 8),
            ("Priority", 9),]
        }
    }
    public enum AreaSpaceOverrideMode: UInt32, GodotEnum {
        case disabled = 0
        case combine = 1
        case combineReplace = 2
        case replace = 3
        case replaceCombine = 4
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Disabled", 0),
            ("Combine", 1),
            ("Combine Replace", 2),
            ("Replace", 3),
            ("Replace Combine", 4),]
        }
    }
    public enum BodyMode: UInt32, GodotEnum {
        case `static` = 0
        case kinematic = 1
        case rigid = 2
        case rigidLinear = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Static", 0),
            ("Kinematic", 1),
            ("Rigid", 2),
            ("Rigid Linear", 3),]
        }
    }
    public enum BodyParameter: UInt32, GodotEnum {
        case bounce = 0
        case friction = 1
        case mass = 2
        case inertia = 3
        case centerOfMass = 4
        case gravityScale = 5
        case linearDampMode = 6
        case angularDampMode = 7
        case linearDamp = 8
        case angularDamp = 9
        case max = 10
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Bounce", 0),
            ("Friction", 1),
            ("Mass", 2),
            ("Inertia", 3),
            ("Center Of Mass", 4),
            ("Gravity Scale", 5),
            ("Linear Damp Mode", 6),
            ("Angular Damp Mode", 7),
            ("Linear Damp", 8),
            ("Angular Damp", 9),
            ("Max", 10),]
        }
    }
    public enum BodyDampMode: UInt32, GodotEnum {
        case combine = 0
        case replace = 1
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Combine", 0),
            ("Replace", 1),]
        }
    }
    public enum BodyState: UInt32, GodotEnum {
        case transform = 0
        case linearVelocity = 1
        case angularVelocity = 2
        case sleeping = 3
        case canSleep = 4
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Transform", 0),
            ("Linear Velocity", 1),
            ("Angular Velocity", 2),
            ("Sleeping", 3),
            ("Can Sleep", 4),]
        }
    }
    public enum JointType: UInt32, GodotEnum {
        case pin = 0
        case groove = 1
        case dampedSpring = 2
        case max = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Pin", 0),
            ("Groove", 1),
            ("Damped Spring", 2),
            ("Max", 3),]
        }
    }
    public enum JointParam: UInt32, GodotEnum {
        case bias = 0
        case maxBias = 1
        case maxForce = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Bias", 0),
            ("Max Bias", 1),
            ("Max Force", 2),]
        }
    }
    public enum PinJointParam: UInt32, GodotEnum {
        case pinJointSoftness = 0
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Pin Joint Softness", 0),]
        }
    }
    public enum DampedSpringParam: UInt32, GodotEnum {
        case restLength = 0
        case stiffness = 1
        case damping = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Rest Length", 0),
            ("Stiffness", 1),
            ("Damping", 2),]
        }
    }
    public enum CCDMode: UInt32, GodotEnum {
        case disabled = 0
        case castRay = 1
        case castShape = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Disabled", 0),
            ("Cast Ray", 1),
            ("Cast Shape", 2),]
        }
    }
    public enum AreaBodyStatus: UInt32, GodotEnum {
        case added = 0
        case removed = 1
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Added", 0),
            ("Removed", 1),]
        }
    }
    public enum ProcessInfo: UInt32, GodotEnum {
        case activeObjects = 0
        case collisionPairs = 1
        case islandCount = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Active Objects", 0),
            ("Collision Pairs", 1),
            ("Island Count", 2),]
        }
    }

    private static var __method_binding_world_boundary_shape_create: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "world_boundary_shape_create").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func worldBoundaryShapeCreate() -> Godot.RID {
        let __temporary = Godot.RID()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_world_boundary_shape_create,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_separation_ray_shape_create: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "separation_ray_shape_create").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func separationRayShapeCreate() -> Godot.RID {
        let __temporary = Godot.RID()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_separation_ray_shape_create,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_segment_shape_create: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "segment_shape_create").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func segmentShapeCreate() -> Godot.RID {
        let __temporary = Godot.RID()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_segment_shape_create,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_circle_shape_create: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "circle_shape_create").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func circleShapeCreate() -> Godot.RID {
        let __temporary = Godot.RID()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_circle_shape_create,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_rectangle_shape_create: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "rectangle_shape_create").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func rectangleShapeCreate() -> Godot.RID {
        let __temporary = Godot.RID()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_rectangle_shape_create,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_capsule_shape_create: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "capsule_shape_create").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func capsuleShapeCreate() -> Godot.RID {
        let __temporary = Godot.RID()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_capsule_shape_create,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_convex_polygon_shape_create: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "convex_polygon_shape_create").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func convexPolygonShapeCreate() -> Godot.RID {
        let __temporary = Godot.RID()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_convex_polygon_shape_create,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_concave_polygon_shape_create: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "concave_polygon_shape_create").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func concavePolygonShapeCreate() -> Godot.RID {
        let __temporary = Godot.RID()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_concave_polygon_shape_create,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_shape_set_data: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shape_set_data").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3175752987)!
        }
        }
    }()
    public func shapeSetData<Variant1 : VariantEncodable>(shape: Godot.RID, data: Variant1) {
        shape.withUnsafeRawPointer { (__ptr_shape) in
            Godot.Variant.Storage(data).withUnsafeRawPointer { (__ptr_data) in
                withUnsafeArgumentPackPointer(__ptr_shape, __ptr_data) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_shape_set_data,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_shape_get_type: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shape_get_type").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1240598777)!
        }
        }
    }()
    public func shapeGetType(shape: Godot.RID) -> Godot.PhysicsServer2D.ShapeType {
        var __temporary = Godot.PhysicsServer2D.ShapeType.RawValue(0)
        shape.withUnsafeRawPointer { (__ptr_shape) in
            withUnsafeArgumentPackPointer(__ptr_shape) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_shape_get_type,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.PhysicsServer2D.ShapeType(rawValue: __temporary)!
    }

    private static var __method_binding_shape_get_data: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shape_get_data").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4171304767)!
        }
        }
    }()
    public func shapeGetData(shape: Godot.RID) -> Godot.Variant {
        let __temporary = Godot.Variant()
        shape.withUnsafeRawPointer { (__ptr_shape) in
            withUnsafeArgumentPackPointer(__ptr_shape) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_shape_get_data,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_space_create: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "space_create").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func spaceCreate() -> Godot.RID {
        let __temporary = Godot.RID()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_space_create,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_space_set_active: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "space_set_active").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func spaceSetActive(space: Godot.RID, active: Bool) {
        space.withUnsafeRawPointer { (__ptr_space) in
            withUnsafePointer(to: active) { (__ptr_active) in
                withUnsafeArgumentPackPointer(__ptr_space, __ptr_active) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_space_set_active,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_space_is_active: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "space_is_active").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func spaceIsActive(space: Godot.RID) -> Bool {
        var __temporary = Bool()
        space.withUnsafeRawPointer { (__ptr_space) in
            withUnsafeArgumentPackPointer(__ptr_space) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_space_is_active,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_space_set_param: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "space_set_param").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 949194586)!
        }
        }
    }()
    public func spaceSetParam(space: Godot.RID, param: Godot.PhysicsServer2D.SpaceParameter, value: Double) {
        space.withUnsafeRawPointer { (__ptr_space) in
            withUnsafePointer(to: param) { (__ptr_param) in
                withUnsafePointer(to: value) { (__ptr_value) in
                    withUnsafeArgumentPackPointer(__ptr_space, __ptr_param, __ptr_value) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_space_set_param,
                                __ptr_self,
                                __accessPtr,
                                nil
                            )
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_space_get_param: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "space_get_param").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 874111783)!
        }
        }
    }()
    public func spaceGetParam(space: Godot.RID, param: Godot.PhysicsServer2D.SpaceParameter) -> Double {
        var __temporary = Double()
        space.withUnsafeRawPointer { (__ptr_space) in
            withUnsafePointer(to: param) { (__ptr_param) in
                withUnsafeArgumentPackPointer(__ptr_space, __ptr_param) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_space_get_param,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_space_get_direct_state: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "space_get_direct_state").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3160173886)!
        }
        }
    }()
    public func spaceGetDirectState(space: Godot.RID) -> Godot.PhysicsDirectSpaceState2D? {
        var __temporary: GDExtensionObjectPtr!
        space.withUnsafeRawPointer { (__ptr_space) in
            withUnsafeArgumentPackPointer(__ptr_space) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_space_get_direct_state,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.PhysicsDirectSpaceState2D.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_area_create: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_create").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func areaCreate() -> Godot.RID {
        let __temporary = Godot.RID()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_area_create,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_area_set_space: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_set_space").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func areaSetSpace(area: Godot.RID, space: Godot.RID) {
        area.withUnsafeRawPointer { (__ptr_area) in
            space.withUnsafeRawPointer { (__ptr_space) in
                withUnsafeArgumentPackPointer(__ptr_area, __ptr_space) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_area_set_space,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_area_get_space: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_get_space").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3814569979)!
        }
        }
    }()
    public func areaGetSpace(area: Godot.RID) -> Godot.RID {
        let __temporary = Godot.RID()
        area.withUnsafeRawPointer { (__ptr_area) in
            withUnsafeArgumentPackPointer(__ptr_area) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_area_get_space,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_area_add_shape: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_add_shape").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 754862190)!
        }
        }
    }()
    public func areaAddShape(area: Godot.RID, shape: Godot.RID, transform: Godot.Transform2D = Transform2D(xAxisX: 1, xAxisY: 0, yAxisX: 0, yAxisY: 1, originX: 0, originY: 0), disabled: Bool = false) {
        area.withUnsafeRawPointer { (__ptr_area) in
            shape.withUnsafeRawPointer { (__ptr_shape) in
                withUnsafePointer(to: transform) { (__ptr_transform) in
                    withUnsafePointer(to: disabled) { (__ptr_disabled) in
                        withUnsafeArgumentPackPointer(__ptr_area, __ptr_shape, __ptr_transform, __ptr_disabled) { (__accessPtr) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_area_add_shape,
                                    __ptr_self,
                                    __accessPtr,
                                    nil
                                )
                            }
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_area_set_shape: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_set_shape").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2310537182)!
        }
        }
    }()
    public func areaSetShape(area: Godot.RID, shapeIdx: Int32, shape: Godot.RID) {
        area.withUnsafeRawPointer { (__ptr_area) in
            withUnsafePointer(to: shapeIdx) { (__ptr_shapeIdx) in
                shape.withUnsafeRawPointer { (__ptr_shape) in
                    withUnsafeArgumentPackPointer(__ptr_area, __ptr_shapeIdx, __ptr_shape) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_area_set_shape,
                                __ptr_self,
                                __accessPtr,
                                nil
                            )
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_area_set_shape_transform: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_set_shape_transform").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 736082694)!
        }
        }
    }()
    public func areaSetShapeTransform(area: Godot.RID, shapeIdx: Int32, transform: Godot.Transform2D) {
        area.withUnsafeRawPointer { (__ptr_area) in
            withUnsafePointer(to: shapeIdx) { (__ptr_shapeIdx) in
                withUnsafePointer(to: transform) { (__ptr_transform) in
                    withUnsafeArgumentPackPointer(__ptr_area, __ptr_shapeIdx, __ptr_transform) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_area_set_shape_transform,
                                __ptr_self,
                                __accessPtr,
                                nil
                            )
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_area_set_shape_disabled: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_set_shape_disabled").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2658558584)!
        }
        }
    }()
    public func areaSetShapeDisabled(area: Godot.RID, shapeIdx: Int32, disabled: Bool) {
        area.withUnsafeRawPointer { (__ptr_area) in
            withUnsafePointer(to: shapeIdx) { (__ptr_shapeIdx) in
                withUnsafePointer(to: disabled) { (__ptr_disabled) in
                    withUnsafeArgumentPackPointer(__ptr_area, __ptr_shapeIdx, __ptr_disabled) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_area_set_shape_disabled,
                                __ptr_self,
                                __accessPtr,
                                nil
                            )
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_area_get_shape_count: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_get_shape_count").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func areaGetShapeCount(area: Godot.RID) -> Int32 {
        var __temporary = Int32()
        area.withUnsafeRawPointer { (__ptr_area) in
            withUnsafeArgumentPackPointer(__ptr_area) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_area_get_shape_count,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_area_get_shape: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_get_shape").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1066463050)!
        }
        }
    }()
    public func areaGetShape(area: Godot.RID, shapeIdx: Int32) -> Godot.RID {
        let __temporary = Godot.RID()
        area.withUnsafeRawPointer { (__ptr_area) in
            withUnsafePointer(to: shapeIdx) { (__ptr_shapeIdx) in
                withUnsafeArgumentPackPointer(__ptr_area, __ptr_shapeIdx) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_area_get_shape,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_area_get_shape_transform: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_get_shape_transform").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1324854622)!
        }
        }
    }()
    public func areaGetShapeTransform(area: Godot.RID, shapeIdx: Int32) -> Godot.Transform2D {
        var __temporary = Godot.Transform2D()
        area.withUnsafeRawPointer { (__ptr_area) in
            withUnsafePointer(to: shapeIdx) { (__ptr_shapeIdx) in
                withUnsafeArgumentPackPointer(__ptr_area, __ptr_shapeIdx) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_area_get_shape_transform,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_area_remove_shape: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_remove_shape").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func areaRemoveShape(area: Godot.RID, shapeIdx: Int32) {
        area.withUnsafeRawPointer { (__ptr_area) in
            withUnsafePointer(to: shapeIdx) { (__ptr_shapeIdx) in
                withUnsafeArgumentPackPointer(__ptr_area, __ptr_shapeIdx) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_area_remove_shape,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_area_clear_shapes: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_clear_shapes").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2722037293)!
        }
        }
    }()
    public func areaClearShapes(area: Godot.RID) {
        area.withUnsafeRawPointer { (__ptr_area) in
            withUnsafeArgumentPackPointer(__ptr_area) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_area_clear_shapes,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_area_set_collision_layer: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_set_collision_layer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func areaSetCollisionLayer(area: Godot.RID, layer: UInt32) {
        area.withUnsafeRawPointer { (__ptr_area) in
            withUnsafePointer(to: layer) { (__ptr_layer) in
                withUnsafeArgumentPackPointer(__ptr_area, __ptr_layer) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_area_set_collision_layer,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_area_get_collision_layer: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_get_collision_layer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func areaGetCollisionLayer(area: Godot.RID) -> UInt32 {
        var __temporary = UInt32()
        area.withUnsafeRawPointer { (__ptr_area) in
            withUnsafeArgumentPackPointer(__ptr_area) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_area_get_collision_layer,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_area_set_collision_mask: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_set_collision_mask").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func areaSetCollisionMask(area: Godot.RID, mask: UInt32) {
        area.withUnsafeRawPointer { (__ptr_area) in
            withUnsafePointer(to: mask) { (__ptr_mask) in
                withUnsafeArgumentPackPointer(__ptr_area, __ptr_mask) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_area_set_collision_mask,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_area_get_collision_mask: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_get_collision_mask").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func areaGetCollisionMask(area: Godot.RID) -> UInt32 {
        var __temporary = UInt32()
        area.withUnsafeRawPointer { (__ptr_area) in
            withUnsafeArgumentPackPointer(__ptr_area) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_area_get_collision_mask,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_area_set_param: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_set_param").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1257146028)!
        }
        }
    }()
    public func areaSetParam<Variant1 : VariantEncodable>(area: Godot.RID, param: Godot.PhysicsServer2D.AreaParameter, value: Variant1) {
        area.withUnsafeRawPointer { (__ptr_area) in
            withUnsafePointer(to: param) { (__ptr_param) in
                Godot.Variant.Storage(value).withUnsafeRawPointer { (__ptr_value) in
                    withUnsafeArgumentPackPointer(__ptr_area, __ptr_param, __ptr_value) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_area_set_param,
                                __ptr_self,
                                __accessPtr,
                                nil
                            )
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_area_set_transform: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_set_transform").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1246044741)!
        }
        }
    }()
    public func areaSetTransform(area: Godot.RID, transform: Godot.Transform2D) {
        area.withUnsafeRawPointer { (__ptr_area) in
            withUnsafePointer(to: transform) { (__ptr_transform) in
                withUnsafeArgumentPackPointer(__ptr_area, __ptr_transform) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_area_set_transform,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_area_get_param: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_get_param").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3047435120)!
        }
        }
    }()
    public func areaGetParam(area: Godot.RID, param: Godot.PhysicsServer2D.AreaParameter) -> Godot.Variant {
        let __temporary = Godot.Variant()
        area.withUnsafeRawPointer { (__ptr_area) in
            withUnsafePointer(to: param) { (__ptr_param) in
                withUnsafeArgumentPackPointer(__ptr_area, __ptr_param) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_area_get_param,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_area_get_transform: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_get_transform").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 213527486)!
        }
        }
    }()
    public func areaGetTransform(area: Godot.RID) -> Godot.Transform2D {
        var __temporary = Godot.Transform2D()
        area.withUnsafeRawPointer { (__ptr_area) in
            withUnsafeArgumentPackPointer(__ptr_area) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_area_get_transform,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_area_attach_object_instance_id: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_attach_object_instance_id").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func areaAttachObjectInstanceId(area: Godot.RID, id: UInt64) {
        area.withUnsafeRawPointer { (__ptr_area) in
            withUnsafePointer(to: id) { (__ptr_id) in
                withUnsafeArgumentPackPointer(__ptr_area, __ptr_id) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_area_attach_object_instance_id,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_area_get_object_instance_id: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_get_object_instance_id").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func areaGetObjectInstanceId(area: Godot.RID) -> UInt64 {
        var __temporary = UInt64()
        area.withUnsafeRawPointer { (__ptr_area) in
            withUnsafeArgumentPackPointer(__ptr_area) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_area_get_object_instance_id,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_area_attach_canvas_instance_id: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_attach_canvas_instance_id").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func areaAttachCanvasInstanceId(area: Godot.RID, id: UInt64) {
        area.withUnsafeRawPointer { (__ptr_area) in
            withUnsafePointer(to: id) { (__ptr_id) in
                withUnsafeArgumentPackPointer(__ptr_area, __ptr_id) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_area_attach_canvas_instance_id,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_area_get_canvas_instance_id: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_get_canvas_instance_id").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func areaGetCanvasInstanceId(area: Godot.RID) -> UInt64 {
        var __temporary = UInt64()
        area.withUnsafeRawPointer { (__ptr_area) in
            withUnsafeArgumentPackPointer(__ptr_area) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_area_get_canvas_instance_id,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_area_set_monitor_callback: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_set_monitor_callback").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3379118538)!
        }
        }
    }()
    public func areaSetMonitorCallback(area: Godot.RID, callback: Godot.Callable) {
        area.withUnsafeRawPointer { (__ptr_area) in
            callback.withUnsafeRawPointer { (__ptr_callback) in
                withUnsafeArgumentPackPointer(__ptr_area, __ptr_callback) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_area_set_monitor_callback,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_area_set_area_monitor_callback: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_set_area_monitor_callback").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3379118538)!
        }
        }
    }()
    public func areaSetAreaMonitorCallback(area: Godot.RID, callback: Godot.Callable) {
        area.withUnsafeRawPointer { (__ptr_area) in
            callback.withUnsafeRawPointer { (__ptr_callback) in
                withUnsafeArgumentPackPointer(__ptr_area, __ptr_callback) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_area_set_area_monitor_callback,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_area_set_monitorable: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_set_monitorable").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func areaSetMonitorable(area: Godot.RID, monitorable: Bool) {
        area.withUnsafeRawPointer { (__ptr_area) in
            withUnsafePointer(to: monitorable) { (__ptr_monitorable) in
                withUnsafeArgumentPackPointer(__ptr_area, __ptr_monitorable) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_area_set_monitorable,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_body_create: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_create").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func bodyCreate() -> Godot.RID {
        let __temporary = Godot.RID()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_body_create,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_body_set_space: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_set_space").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func bodySetSpace(body: Godot.RID, space: Godot.RID) {
        body.withUnsafeRawPointer { (__ptr_body) in
            space.withUnsafeRawPointer { (__ptr_space) in
                withUnsafeArgumentPackPointer(__ptr_body, __ptr_space) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_body_set_space,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_body_get_space: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_get_space").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3814569979)!
        }
        }
    }()
    public func bodyGetSpace(body: Godot.RID) -> Godot.RID {
        let __temporary = Godot.RID()
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafeArgumentPackPointer(__ptr_body) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_body_get_space,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_body_set_mode: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_set_mode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1658067650)!
        }
        }
    }()
    public func bodySetMode(body: Godot.RID, mode: Godot.PhysicsServer2D.BodyMode) {
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafePointer(to: mode) { (__ptr_mode) in
                withUnsafeArgumentPackPointer(__ptr_body, __ptr_mode) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_body_set_mode,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_body_get_mode: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_get_mode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3261702585)!
        }
        }
    }()
    public func bodyGetMode(body: Godot.RID) -> Godot.PhysicsServer2D.BodyMode {
        var __temporary = Godot.PhysicsServer2D.BodyMode.RawValue(0)
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafeArgumentPackPointer(__ptr_body) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_body_get_mode,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.PhysicsServer2D.BodyMode(rawValue: __temporary)!
    }

    private static var __method_binding_body_add_shape: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_add_shape").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 754862190)!
        }
        }
    }()
    public func bodyAddShape(body: Godot.RID, shape: Godot.RID, transform: Godot.Transform2D = Transform2D(xAxisX: 1, xAxisY: 0, yAxisX: 0, yAxisY: 1, originX: 0, originY: 0), disabled: Bool = false) {
        body.withUnsafeRawPointer { (__ptr_body) in
            shape.withUnsafeRawPointer { (__ptr_shape) in
                withUnsafePointer(to: transform) { (__ptr_transform) in
                    withUnsafePointer(to: disabled) { (__ptr_disabled) in
                        withUnsafeArgumentPackPointer(__ptr_body, __ptr_shape, __ptr_transform, __ptr_disabled) { (__accessPtr) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_body_add_shape,
                                    __ptr_self,
                                    __accessPtr,
                                    nil
                                )
                            }
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_body_set_shape: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_set_shape").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2310537182)!
        }
        }
    }()
    public func bodySetShape(body: Godot.RID, shapeIdx: Int32, shape: Godot.RID) {
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafePointer(to: shapeIdx) { (__ptr_shapeIdx) in
                shape.withUnsafeRawPointer { (__ptr_shape) in
                    withUnsafeArgumentPackPointer(__ptr_body, __ptr_shapeIdx, __ptr_shape) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_body_set_shape,
                                __ptr_self,
                                __accessPtr,
                                nil
                            )
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_body_set_shape_transform: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_set_shape_transform").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 736082694)!
        }
        }
    }()
    public func bodySetShapeTransform(body: Godot.RID, shapeIdx: Int32, transform: Godot.Transform2D) {
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafePointer(to: shapeIdx) { (__ptr_shapeIdx) in
                withUnsafePointer(to: transform) { (__ptr_transform) in
                    withUnsafeArgumentPackPointer(__ptr_body, __ptr_shapeIdx, __ptr_transform) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_body_set_shape_transform,
                                __ptr_self,
                                __accessPtr,
                                nil
                            )
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_body_get_shape_count: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_get_shape_count").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func bodyGetShapeCount(body: Godot.RID) -> Int32 {
        var __temporary = Int32()
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafeArgumentPackPointer(__ptr_body) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_body_get_shape_count,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_body_get_shape: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_get_shape").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1066463050)!
        }
        }
    }()
    public func bodyGetShape(body: Godot.RID, shapeIdx: Int32) -> Godot.RID {
        let __temporary = Godot.RID()
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafePointer(to: shapeIdx) { (__ptr_shapeIdx) in
                withUnsafeArgumentPackPointer(__ptr_body, __ptr_shapeIdx) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_body_get_shape,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_body_get_shape_transform: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_get_shape_transform").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1324854622)!
        }
        }
    }()
    public func bodyGetShapeTransform(body: Godot.RID, shapeIdx: Int32) -> Godot.Transform2D {
        var __temporary = Godot.Transform2D()
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafePointer(to: shapeIdx) { (__ptr_shapeIdx) in
                withUnsafeArgumentPackPointer(__ptr_body, __ptr_shapeIdx) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_body_get_shape_transform,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_body_remove_shape: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_remove_shape").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func bodyRemoveShape(body: Godot.RID, shapeIdx: Int32) {
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafePointer(to: shapeIdx) { (__ptr_shapeIdx) in
                withUnsafeArgumentPackPointer(__ptr_body, __ptr_shapeIdx) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_body_remove_shape,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_body_clear_shapes: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_clear_shapes").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2722037293)!
        }
        }
    }()
    public func bodyClearShapes(body: Godot.RID) {
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafeArgumentPackPointer(__ptr_body) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_body_clear_shapes,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_body_set_shape_disabled: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_set_shape_disabled").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2658558584)!
        }
        }
    }()
    public func bodySetShapeDisabled(body: Godot.RID, shapeIdx: Int32, disabled: Bool) {
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafePointer(to: shapeIdx) { (__ptr_shapeIdx) in
                withUnsafePointer(to: disabled) { (__ptr_disabled) in
                    withUnsafeArgumentPackPointer(__ptr_body, __ptr_shapeIdx, __ptr_disabled) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_body_set_shape_disabled,
                                __ptr_self,
                                __accessPtr,
                                nil
                            )
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_body_set_shape_as_one_way_collision: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_set_shape_as_one_way_collision").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2556489974)!
        }
        }
    }()
    public func bodySetShapeAsOneWayCollision(body: Godot.RID, shapeIdx: Int32, enable: Bool, margin: Double) {
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafePointer(to: shapeIdx) { (__ptr_shapeIdx) in
                withUnsafePointer(to: enable) { (__ptr_enable) in
                    withUnsafePointer(to: margin) { (__ptr_margin) in
                        withUnsafeArgumentPackPointer(__ptr_body, __ptr_shapeIdx, __ptr_enable, __ptr_margin) { (__accessPtr) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_body_set_shape_as_one_way_collision,
                                    __ptr_self,
                                    __accessPtr,
                                    nil
                                )
                            }
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_body_attach_object_instance_id: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_attach_object_instance_id").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func bodyAttachObjectInstanceId(body: Godot.RID, id: UInt64) {
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafePointer(to: id) { (__ptr_id) in
                withUnsafeArgumentPackPointer(__ptr_body, __ptr_id) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_body_attach_object_instance_id,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_body_get_object_instance_id: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_get_object_instance_id").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func bodyGetObjectInstanceId(body: Godot.RID) -> UInt64 {
        var __temporary = UInt64()
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafeArgumentPackPointer(__ptr_body) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_body_get_object_instance_id,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_body_attach_canvas_instance_id: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_attach_canvas_instance_id").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func bodyAttachCanvasInstanceId(body: Godot.RID, id: UInt64) {
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafePointer(to: id) { (__ptr_id) in
                withUnsafeArgumentPackPointer(__ptr_body, __ptr_id) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_body_attach_canvas_instance_id,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_body_get_canvas_instance_id: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_get_canvas_instance_id").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func bodyGetCanvasInstanceId(body: Godot.RID) -> UInt64 {
        var __temporary = UInt64()
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafeArgumentPackPointer(__ptr_body) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_body_get_canvas_instance_id,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_body_set_continuous_collision_detection_mode: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_set_continuous_collision_detection_mode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1882257015)!
        }
        }
    }()
    public func bodySetContinuousCollisionDetectionMode(body: Godot.RID, mode: Godot.PhysicsServer2D.CCDMode) {
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafePointer(to: mode) { (__ptr_mode) in
                withUnsafeArgumentPackPointer(__ptr_body, __ptr_mode) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_body_set_continuous_collision_detection_mode,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_body_get_continuous_collision_detection_mode: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_get_continuous_collision_detection_mode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2661282217)!
        }
        }
    }()
    public func bodyGetContinuousCollisionDetectionMode(body: Godot.RID) -> Godot.PhysicsServer2D.CCDMode {
        var __temporary = Godot.PhysicsServer2D.CCDMode.RawValue(0)
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafeArgumentPackPointer(__ptr_body) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_body_get_continuous_collision_detection_mode,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.PhysicsServer2D.CCDMode(rawValue: __temporary)!
    }

    private static var __method_binding_body_set_collision_layer: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_set_collision_layer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func bodySetCollisionLayer(body: Godot.RID, layer: UInt32) {
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafePointer(to: layer) { (__ptr_layer) in
                withUnsafeArgumentPackPointer(__ptr_body, __ptr_layer) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_body_set_collision_layer,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_body_get_collision_layer: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_get_collision_layer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func bodyGetCollisionLayer(body: Godot.RID) -> UInt32 {
        var __temporary = UInt32()
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafeArgumentPackPointer(__ptr_body) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_body_get_collision_layer,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_body_set_collision_mask: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_set_collision_mask").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func bodySetCollisionMask(body: Godot.RID, mask: UInt32) {
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafePointer(to: mask) { (__ptr_mask) in
                withUnsafeArgumentPackPointer(__ptr_body, __ptr_mask) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_body_set_collision_mask,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_body_get_collision_mask: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_get_collision_mask").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func bodyGetCollisionMask(body: Godot.RID) -> UInt32 {
        var __temporary = UInt32()
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafeArgumentPackPointer(__ptr_body) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_body_get_collision_mask,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_body_set_collision_priority: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_set_collision_priority").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func bodySetCollisionPriority(body: Godot.RID, priority: Double) {
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafePointer(to: priority) { (__ptr_priority) in
                withUnsafeArgumentPackPointer(__ptr_body, __ptr_priority) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_body_set_collision_priority,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_body_get_collision_priority: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_get_collision_priority").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 866169185)!
        }
        }
    }()
    public func bodyGetCollisionPriority(body: Godot.RID) -> Double {
        var __temporary = Double()
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafeArgumentPackPointer(__ptr_body) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_body_get_collision_priority,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_body_set_param: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_set_param").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2715630609)!
        }
        }
    }()
    public func bodySetParam<Variant1 : VariantEncodable>(body: Godot.RID, param: Godot.PhysicsServer2D.BodyParameter, value: Variant1) {
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafePointer(to: param) { (__ptr_param) in
                Godot.Variant.Storage(value).withUnsafeRawPointer { (__ptr_value) in
                    withUnsafeArgumentPackPointer(__ptr_body, __ptr_param, __ptr_value) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_body_set_param,
                                __ptr_self,
                                __accessPtr,
                                nil
                            )
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_body_get_param: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_get_param").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3208033526)!
        }
        }
    }()
    public func bodyGetParam(body: Godot.RID, param: Godot.PhysicsServer2D.BodyParameter) -> Godot.Variant {
        let __temporary = Godot.Variant()
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafePointer(to: param) { (__ptr_param) in
                withUnsafeArgumentPackPointer(__ptr_body, __ptr_param) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_body_get_param,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_body_reset_mass_properties: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_reset_mass_properties").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2722037293)!
        }
        }
    }()
    public func bodyResetMassProperties(body: Godot.RID) {
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafeArgumentPackPointer(__ptr_body) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_body_reset_mass_properties,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_body_set_state: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_set_state").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1706355209)!
        }
        }
    }()
    public func bodySetState<Variant1 : VariantEncodable>(body: Godot.RID, state: Godot.PhysicsServer2D.BodyState, value: Variant1) {
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafePointer(to: state) { (__ptr_state) in
                Godot.Variant.Storage(value).withUnsafeRawPointer { (__ptr_value) in
                    withUnsafeArgumentPackPointer(__ptr_body, __ptr_state, __ptr_value) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_body_set_state,
                                __ptr_self,
                                __accessPtr,
                                nil
                            )
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_body_get_state: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_get_state").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4036367961)!
        }
        }
    }()
    public func bodyGetState(body: Godot.RID, state: Godot.PhysicsServer2D.BodyState) -> Godot.Variant {
        let __temporary = Godot.Variant()
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafePointer(to: state) { (__ptr_state) in
                withUnsafeArgumentPackPointer(__ptr_body, __ptr_state) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_body_get_state,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_body_apply_central_impulse: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_apply_central_impulse").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3201125042)!
        }
        }
    }()
    public func bodyApplyCentralImpulse(body: Godot.RID, impulse: Godot.Vector2) {
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafePointer(to: impulse) { (__ptr_impulse) in
                withUnsafeArgumentPackPointer(__ptr_body, __ptr_impulse) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_body_apply_central_impulse,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_body_apply_torque_impulse: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_apply_torque_impulse").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func bodyApplyTorqueImpulse(body: Godot.RID, impulse: Double) {
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafePointer(to: impulse) { (__ptr_impulse) in
                withUnsafeArgumentPackPointer(__ptr_body, __ptr_impulse) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_body_apply_torque_impulse,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_body_apply_impulse: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_apply_impulse").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 34330743)!
        }
        }
    }()
    public func bodyApplyImpulse(body: Godot.RID, impulse: Godot.Vector2, position: Godot.Vector2 = Vector2(x: 0, y: 0)) {
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafePointer(to: impulse) { (__ptr_impulse) in
                withUnsafePointer(to: position) { (__ptr_position) in
                    withUnsafeArgumentPackPointer(__ptr_body, __ptr_impulse, __ptr_position) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_body_apply_impulse,
                                __ptr_self,
                                __accessPtr,
                                nil
                            )
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_body_apply_central_force: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_apply_central_force").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3201125042)!
        }
        }
    }()
    public func bodyApplyCentralForce(body: Godot.RID, force: Godot.Vector2) {
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafePointer(to: force) { (__ptr_force) in
                withUnsafeArgumentPackPointer(__ptr_body, __ptr_force) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_body_apply_central_force,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_body_apply_force: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_apply_force").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 34330743)!
        }
        }
    }()
    public func bodyApplyForce(body: Godot.RID, force: Godot.Vector2, position: Godot.Vector2 = Vector2(x: 0, y: 0)) {
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafePointer(to: force) { (__ptr_force) in
                withUnsafePointer(to: position) { (__ptr_position) in
                    withUnsafeArgumentPackPointer(__ptr_body, __ptr_force, __ptr_position) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_body_apply_force,
                                __ptr_self,
                                __accessPtr,
                                nil
                            )
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_body_apply_torque: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_apply_torque").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func bodyApplyTorque(body: Godot.RID, torque: Double) {
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafePointer(to: torque) { (__ptr_torque) in
                withUnsafeArgumentPackPointer(__ptr_body, __ptr_torque) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_body_apply_torque,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_body_add_constant_central_force: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_add_constant_central_force").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3201125042)!
        }
        }
    }()
    public func bodyAddConstantCentralForce(body: Godot.RID, force: Godot.Vector2) {
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafePointer(to: force) { (__ptr_force) in
                withUnsafeArgumentPackPointer(__ptr_body, __ptr_force) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_body_add_constant_central_force,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_body_add_constant_force: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_add_constant_force").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 34330743)!
        }
        }
    }()
    public func bodyAddConstantForce(body: Godot.RID, force: Godot.Vector2, position: Godot.Vector2 = Vector2(x: 0, y: 0)) {
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafePointer(to: force) { (__ptr_force) in
                withUnsafePointer(to: position) { (__ptr_position) in
                    withUnsafeArgumentPackPointer(__ptr_body, __ptr_force, __ptr_position) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_body_add_constant_force,
                                __ptr_self,
                                __accessPtr,
                                nil
                            )
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_body_add_constant_torque: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_add_constant_torque").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func bodyAddConstantTorque(body: Godot.RID, torque: Double) {
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafePointer(to: torque) { (__ptr_torque) in
                withUnsafeArgumentPackPointer(__ptr_body, __ptr_torque) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_body_add_constant_torque,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_body_set_constant_force: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_set_constant_force").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3201125042)!
        }
        }
    }()
    public func bodySetConstantForce(body: Godot.RID, force: Godot.Vector2) {
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafePointer(to: force) { (__ptr_force) in
                withUnsafeArgumentPackPointer(__ptr_body, __ptr_force) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_body_set_constant_force,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_body_get_constant_force: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_get_constant_force").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2440833711)!
        }
        }
    }()
    public func bodyGetConstantForce(body: Godot.RID) -> Godot.Vector2 {
        var __temporary = Godot.Vector2()
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafeArgumentPackPointer(__ptr_body) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_body_get_constant_force,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_body_set_constant_torque: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_set_constant_torque").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func bodySetConstantTorque(body: Godot.RID, torque: Double) {
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafePointer(to: torque) { (__ptr_torque) in
                withUnsafeArgumentPackPointer(__ptr_body, __ptr_torque) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_body_set_constant_torque,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_body_get_constant_torque: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_get_constant_torque").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 866169185)!
        }
        }
    }()
    public func bodyGetConstantTorque(body: Godot.RID) -> Double {
        var __temporary = Double()
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafeArgumentPackPointer(__ptr_body) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_body_get_constant_torque,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_body_set_axis_velocity: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_set_axis_velocity").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3201125042)!
        }
        }
    }()
    public func bodySetAxisVelocity(body: Godot.RID, axisVelocity: Godot.Vector2) {
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafePointer(to: axisVelocity) { (__ptr_axisVelocity) in
                withUnsafeArgumentPackPointer(__ptr_body, __ptr_axisVelocity) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_body_set_axis_velocity,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_body_add_collision_exception: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_add_collision_exception").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func bodyAddCollisionException(body: Godot.RID, exceptedBody: Godot.RID) {
        body.withUnsafeRawPointer { (__ptr_body) in
            exceptedBody.withUnsafeRawPointer { (__ptr_exceptedBody) in
                withUnsafeArgumentPackPointer(__ptr_body, __ptr_exceptedBody) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_body_add_collision_exception,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_body_remove_collision_exception: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_remove_collision_exception").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func bodyRemoveCollisionException(body: Godot.RID, exceptedBody: Godot.RID) {
        body.withUnsafeRawPointer { (__ptr_body) in
            exceptedBody.withUnsafeRawPointer { (__ptr_exceptedBody) in
                withUnsafeArgumentPackPointer(__ptr_body, __ptr_exceptedBody) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_body_remove_collision_exception,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_body_set_max_contacts_reported: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_set_max_contacts_reported").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func bodySetMaxContactsReported(body: Godot.RID, amount: Int32) {
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafePointer(to: amount) { (__ptr_amount) in
                withUnsafeArgumentPackPointer(__ptr_body, __ptr_amount) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_body_set_max_contacts_reported,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_body_get_max_contacts_reported: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_get_max_contacts_reported").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func bodyGetMaxContactsReported(body: Godot.RID) -> Int32 {
        var __temporary = Int32()
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafeArgumentPackPointer(__ptr_body) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_body_get_max_contacts_reported,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_body_set_omit_force_integration: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_set_omit_force_integration").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func bodySetOmitForceIntegration(body: Godot.RID, enable: Bool) {
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafePointer(to: enable) { (__ptr_enable) in
                withUnsafeArgumentPackPointer(__ptr_body, __ptr_enable) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_body_set_omit_force_integration,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_body_is_omitting_force_integration: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_is_omitting_force_integration").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func bodyIsOmittingForceIntegration(body: Godot.RID) -> Bool {
        var __temporary = Bool()
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafeArgumentPackPointer(__ptr_body) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_body_is_omitting_force_integration,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_body_set_force_integration_callback: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_set_force_integration_callback").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3059434249)!
        }
        }
    }()
    public func bodySetForceIntegrationCallback<Variant1 : VariantEncodable>(body: Godot.RID, callable: Godot.Callable, userdata: Variant1 = Variant()) {
        body.withUnsafeRawPointer { (__ptr_body) in
            callable.withUnsafeRawPointer { (__ptr_callable) in
                Godot.Variant.Storage(userdata).withUnsafeRawPointer { (__ptr_userdata) in
                    withUnsafeArgumentPackPointer(__ptr_body, __ptr_callable, __ptr_userdata) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_body_set_force_integration_callback,
                                __ptr_self,
                                __accessPtr,
                                nil
                            )
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_body_test_motion: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_test_motion").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1699844009)!
        }
        }
    }()
    public func bodyTestMotion(body: Godot.RID, parameters: Godot.PhysicsTestMotionParameters2D?, result: Godot.PhysicsTestMotionResult2D? = nil) -> Bool {
        var __temporary = Bool()
        body.withUnsafeRawPointer { (__ptr_body) in
            parameters.withUnsafeRawPointer { (__ptr_parameters) in
                withUnsafePointer(to: __ptr_parameters) { (_ptr___ptr_parameters) in
                    result.withUnsafeRawPointer { (__ptr_result) in
                        withUnsafePointer(to: __ptr_result) { (_ptr___ptr_result) in
                            withUnsafeArgumentPackPointer(__ptr_body, _ptr___ptr_parameters, _ptr___ptr_result) { (__accessPtr) in
                                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                        gdextension_interface_object_method_bind_ptrcall(
                                            Self.__method_binding_body_test_motion,
                                            __ptr_self,
                                            __accessPtr,
                                            __ptr___temporary
                                        )
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

    private static var __method_binding_body_get_direct_state: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_get_direct_state").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1191931871)!
        }
        }
    }()
    public func bodyGetDirectState(body: Godot.RID) -> Godot.PhysicsDirectBodyState2D? {
        var __temporary: GDExtensionObjectPtr!
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafeArgumentPackPointer(__ptr_body) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_body_get_direct_state,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.PhysicsDirectBodyState2D.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_joint_create: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "joint_create").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func jointCreate() -> Godot.RID {
        let __temporary = Godot.RID()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_joint_create,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_joint_clear: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "joint_clear").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2722037293)!
        }
        }
    }()
    public func jointClear(joint: Godot.RID) {
        joint.withUnsafeRawPointer { (__ptr_joint) in
            withUnsafeArgumentPackPointer(__ptr_joint) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_joint_clear,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_joint_set_param: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "joint_set_param").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3972556514)!
        }
        }
    }()
    public func jointSetParam(joint: Godot.RID, param: Godot.PhysicsServer2D.JointParam, value: Double) {
        joint.withUnsafeRawPointer { (__ptr_joint) in
            withUnsafePointer(to: param) { (__ptr_param) in
                withUnsafePointer(to: value) { (__ptr_value) in
                    withUnsafeArgumentPackPointer(__ptr_joint, __ptr_param, __ptr_value) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_joint_set_param,
                                __ptr_self,
                                __accessPtr,
                                nil
                            )
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_joint_get_param: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "joint_get_param").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4016448949)!
        }
        }
    }()
    public func jointGetParam(joint: Godot.RID, param: Godot.PhysicsServer2D.JointParam) -> Double {
        var __temporary = Double()
        joint.withUnsafeRawPointer { (__ptr_joint) in
            withUnsafePointer(to: param) { (__ptr_param) in
                withUnsafeArgumentPackPointer(__ptr_joint, __ptr_param) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_joint_get_param,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_joint_disable_collisions_between_bodies: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "joint_disable_collisions_between_bodies").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func jointDisableCollisionsBetweenBodies(joint: Godot.RID, disable: Bool) {
        joint.withUnsafeRawPointer { (__ptr_joint) in
            withUnsafePointer(to: disable) { (__ptr_disable) in
                withUnsafeArgumentPackPointer(__ptr_joint, __ptr_disable) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_joint_disable_collisions_between_bodies,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_joint_is_disabled_collisions_between_bodies: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "joint_is_disabled_collisions_between_bodies").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func jointIsDisabledCollisionsBetweenBodies(joint: Godot.RID) -> Bool {
        var __temporary = Bool()
        joint.withUnsafeRawPointer { (__ptr_joint) in
            withUnsafeArgumentPackPointer(__ptr_joint) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_joint_is_disabled_collisions_between_bodies,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_joint_make_pin: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "joint_make_pin").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2288600450)!
        }
        }
    }()
    public func jointMakePin(joint: Godot.RID, anchor: Godot.Vector2, bodyA: Godot.RID, bodyB: Godot.RID = RID()) {
        joint.withUnsafeRawPointer { (__ptr_joint) in
            withUnsafePointer(to: anchor) { (__ptr_anchor) in
                bodyA.withUnsafeRawPointer { (__ptr_bodyA) in
                    bodyB.withUnsafeRawPointer { (__ptr_bodyB) in
                        withUnsafeArgumentPackPointer(__ptr_joint, __ptr_anchor, __ptr_bodyA, __ptr_bodyB) { (__accessPtr) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_joint_make_pin,
                                    __ptr_self,
                                    __accessPtr,
                                    nil
                                )
                            }
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_joint_make_groove: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "joint_make_groove").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3573265764)!
        }
        }
    }()
    public func jointMakeGroove(joint: Godot.RID, groove1A: Godot.Vector2, groove2A: Godot.Vector2, anchorB: Godot.Vector2, bodyA: Godot.RID = RID(), bodyB: Godot.RID = RID()) {
        joint.withUnsafeRawPointer { (__ptr_joint) in
            withUnsafePointer(to: groove1A) { (__ptr_groove1A) in
                withUnsafePointer(to: groove2A) { (__ptr_groove2A) in
                    withUnsafePointer(to: anchorB) { (__ptr_anchorB) in
                        bodyA.withUnsafeRawPointer { (__ptr_bodyA) in
                            bodyB.withUnsafeRawPointer { (__ptr_bodyB) in
                                withUnsafeArgumentPackPointer(__ptr_joint, __ptr_groove1A, __ptr_groove2A, __ptr_anchorB, __ptr_bodyA, __ptr_bodyB) { (__accessPtr) in
                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                        gdextension_interface_object_method_bind_ptrcall(
                                            Self.__method_binding_joint_make_groove,
                                            __ptr_self,
                                            __accessPtr,
                                            nil
                                        )
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_joint_make_damped_spring: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "joint_make_damped_spring").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 206603952)!
        }
        }
    }()
    public func jointMakeDampedSpring(joint: Godot.RID, anchorA: Godot.Vector2, anchorB: Godot.Vector2, bodyA: Godot.RID, bodyB: Godot.RID = RID()) {
        joint.withUnsafeRawPointer { (__ptr_joint) in
            withUnsafePointer(to: anchorA) { (__ptr_anchorA) in
                withUnsafePointer(to: anchorB) { (__ptr_anchorB) in
                    bodyA.withUnsafeRawPointer { (__ptr_bodyA) in
                        bodyB.withUnsafeRawPointer { (__ptr_bodyB) in
                            withUnsafeArgumentPackPointer(__ptr_joint, __ptr_anchorA, __ptr_anchorB, __ptr_bodyA, __ptr_bodyB) { (__accessPtr) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_joint_make_damped_spring,
                                        __ptr_self,
                                        __accessPtr,
                                        nil
                                    )
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_pin_joint_set_param: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "pin_joint_set_param").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 550574241)!
        }
        }
    }()
    public func pinJointSetParam(joint: Godot.RID, param: Godot.PhysicsServer2D.PinJointParam, value: Double) {
        joint.withUnsafeRawPointer { (__ptr_joint) in
            withUnsafePointer(to: param) { (__ptr_param) in
                withUnsafePointer(to: value) { (__ptr_value) in
                    withUnsafeArgumentPackPointer(__ptr_joint, __ptr_param, __ptr_value) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_pin_joint_set_param,
                                __ptr_self,
                                __accessPtr,
                                nil
                            )
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_pin_joint_get_param: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "pin_joint_get_param").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 348281383)!
        }
        }
    }()
    public func pinJointGetParam(joint: Godot.RID, param: Godot.PhysicsServer2D.PinJointParam) -> Double {
        var __temporary = Double()
        joint.withUnsafeRawPointer { (__ptr_joint) in
            withUnsafePointer(to: param) { (__ptr_param) in
                withUnsafeArgumentPackPointer(__ptr_joint, __ptr_param) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_pin_joint_get_param,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_damped_spring_joint_set_param: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "damped_spring_joint_set_param").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 220564071)!
        }
        }
    }()
    public func dampedSpringJointSetParam(joint: Godot.RID, param: Godot.PhysicsServer2D.DampedSpringParam, value: Double) {
        joint.withUnsafeRawPointer { (__ptr_joint) in
            withUnsafePointer(to: param) { (__ptr_param) in
                withUnsafePointer(to: value) { (__ptr_value) in
                    withUnsafeArgumentPackPointer(__ptr_joint, __ptr_param, __ptr_value) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_damped_spring_joint_set_param,
                                __ptr_self,
                                __accessPtr,
                                nil
                            )
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_damped_spring_joint_get_param: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "damped_spring_joint_get_param").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2075871277)!
        }
        }
    }()
    public func dampedSpringJointGetParam(joint: Godot.RID, param: Godot.PhysicsServer2D.DampedSpringParam) -> Double {
        var __temporary = Double()
        joint.withUnsafeRawPointer { (__ptr_joint) in
            withUnsafePointer(to: param) { (__ptr_param) in
                withUnsafeArgumentPackPointer(__ptr_joint, __ptr_param) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_damped_spring_joint_get_param,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_joint_get_type: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "joint_get_type").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4262502231)!
        }
        }
    }()
    public func jointGetType(joint: Godot.RID) -> Godot.PhysicsServer2D.JointType {
        var __temporary = Godot.PhysicsServer2D.JointType.RawValue(0)
        joint.withUnsafeRawPointer { (__ptr_joint) in
            withUnsafeArgumentPackPointer(__ptr_joint) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_joint_get_type,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.PhysicsServer2D.JointType(rawValue: __temporary)!
    }

    private static var __method_binding_free_rid: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "free_rid").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2722037293)!
        }
        }
    }()
    public func freeRid(_ rid: Godot.RID) {
        rid.withUnsafeRawPointer { (__ptr_rid) in
            withUnsafeArgumentPackPointer(__ptr_rid) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_free_rid,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_set_active: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_active").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    public func setActive(_ active: Bool) {
        withUnsafePointer(to: active) { (__ptr_active) in
            withUnsafeArgumentPackPointer(__ptr_active) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_active,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_process_info: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_process_info").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 576496006)!
        }
        }
    }()
    public func processInfo(_ processInfo: Godot.PhysicsServer2D.ProcessInfo) -> Int32 {
        var __temporary = Int32()
        withUnsafePointer(to: processInfo) { (__ptr_processInfo) in
            withUnsafeArgumentPackPointer(__ptr_processInfo) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_process_info,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        _virtualFunctions = [
            :
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }