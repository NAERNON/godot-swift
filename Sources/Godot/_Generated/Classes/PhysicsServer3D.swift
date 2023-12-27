//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class PhysicsServer3D: Object {
    public enum JointType: UInt32, GodotEnum {
        case pin = 0
        case hinge = 1
        case slider = 2
        case coneTwist = 3
        case jointType6dof = 4
        case max = 5
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Pin", 0),
            ("Hinge", 1),
            ("Slider", 2),
            ("Cone Twist", 3),
            ("Joint Type6dof", 4),
            ("Max", 5),]
        }
    }
    public enum PinJointParam: UInt32, GodotEnum {
        case bias = 0
        case damping = 1
        case impulseClamp = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Bias", 0),
            ("Damping", 1),
            ("Impulse Clamp", 2),]
        }
    }
    public enum HingeJointParam: UInt32, GodotEnum {
        case bias = 0
        case limitUpper = 1
        case limitLower = 2
        case limitBias = 3
        case limitSoftness = 4
        case limitRelaxation = 5
        case motorTargetVelocity = 6
        case motorMaxImpulse = 7
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Bias", 0),
            ("Limit Upper", 1),
            ("Limit Lower", 2),
            ("Limit Bias", 3),
            ("Limit Softness", 4),
            ("Limit Relaxation", 5),
            ("Motor Target Velocity", 6),
            ("Motor Max Impulse", 7),]
        }
    }
    public enum HingeJointFlag: UInt32, GodotEnum {
        case useLimit = 0
        case enableMotor = 1
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Use Limit", 0),
            ("Enable Motor", 1),]
        }
    }
    public enum SliderJointParam: UInt32, GodotEnum {
        case linearLimitUpper = 0
        case linearLimitLower = 1
        case linearLimitSoftness = 2
        case linearLimitRestitution = 3
        case linearLimitDamping = 4
        case linearMotionSoftness = 5
        case linearMotionRestitution = 6
        case linearMotionDamping = 7
        case linearOrthogonalSoftness = 8
        case linearOrthogonalRestitution = 9
        case linearOrthogonalDamping = 10
        case angularLimitUpper = 11
        case angularLimitLower = 12
        case angularLimitSoftness = 13
        case angularLimitRestitution = 14
        case angularLimitDamping = 15
        case angularMotionSoftness = 16
        case angularMotionRestitution = 17
        case angularMotionDamping = 18
        case angularOrthogonalSoftness = 19
        case angularOrthogonalRestitution = 20
        case angularOrthogonalDamping = 21
        case max = 22
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Linear Limit Upper", 0),
            ("Linear Limit Lower", 1),
            ("Linear Limit Softness", 2),
            ("Linear Limit Restitution", 3),
            ("Linear Limit Damping", 4),
            ("Linear Motion Softness", 5),
            ("Linear Motion Restitution", 6),
            ("Linear Motion Damping", 7),
            ("Linear Orthogonal Softness", 8),
            ("Linear Orthogonal Restitution", 9),
            ("Linear Orthogonal Damping", 10),
            ("Angular Limit Upper", 11),
            ("Angular Limit Lower", 12),
            ("Angular Limit Softness", 13),
            ("Angular Limit Restitution", 14),
            ("Angular Limit Damping", 15),
            ("Angular Motion Softness", 16),
            ("Angular Motion Restitution", 17),
            ("Angular Motion Damping", 18),
            ("Angular Orthogonal Softness", 19),
            ("Angular Orthogonal Restitution", 20),
            ("Angular Orthogonal Damping", 21),
            ("Max", 22),]
        }
    }
    public enum ConeTwistJointParam: UInt32, GodotEnum {
        case swingSpan = 0
        case twistSpan = 1
        case bias = 2
        case softness = 3
        case relaxation = 4
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Swing Span", 0),
            ("Twist Span", 1),
            ("Bias", 2),
            ("Softness", 3),
            ("Relaxation", 4),]
        }
    }
    public enum G6DOFJointAxisParam: UInt32, GodotEnum {
        case linearLowerLimit = 0
        case linearUpperLimit = 1
        case linearLimitSoftness = 2
        case linearRestitution = 3
        case linearDamping = 4
        case linearMotorTargetVelocity = 5
        case linearMotorForceLimit = 6
        case angularLowerLimit = 10
        case angularUpperLimit = 11
        case angularLimitSoftness = 12
        case angularDamping = 13
        case angularRestitution = 14
        case angularForceLimit = 15
        case angularErp = 16
        case angularMotorTargetVelocity = 17
        case angularMotorForceLimit = 18
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Linear Lower Limit", 0),
            ("Linear Upper Limit", 1),
            ("Linear Limit Softness", 2),
            ("Linear Restitution", 3),
            ("Linear Damping", 4),
            ("Linear Motor Target Velocity", 5),
            ("Linear Motor Force Limit", 6),
            ("Angular Lower Limit", 10),
            ("Angular Upper Limit", 11),
            ("Angular Limit Softness", 12),
            ("Angular Damping", 13),
            ("Angular Restitution", 14),
            ("Angular Force Limit", 15),
            ("Angular Erp", 16),
            ("Angular Motor Target Velocity", 17),
            ("Angular Motor Force Limit", 18),]
        }
    }
    public enum G6DOFJointAxisFlag: UInt32, GodotEnum {
        case linearLimit = 0
        case angularLimit = 1
        case motor = 4
        case linearMotor = 5
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Linear Limit", 0),
            ("Angular Limit", 1),
            ("Motor", 4),
            ("Linear Motor", 5),]
        }
    }
    public enum ShapeType: UInt32, GodotEnum {
        case worldBoundary = 0
        case separationRay = 1
        case sphere = 2
        case box = 3
        case capsule = 4
        case cylinder = 5
        case convexPolygon = 6
        case concavePolygon = 7
        case heightmap = 8
        case softBody = 9
        case custom = 10
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("World Boundary", 0),
            ("Separation Ray", 1),
            ("Sphere", 2),
            ("Box", 3),
            ("Capsule", 4),
            ("Cylinder", 5),
            ("Convex Polygon", 6),
            ("Concave Polygon", 7),
            ("Heightmap", 8),
            ("Soft Body", 9),
            ("Custom", 10),]
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
        case windForceMagnitude = 10
        case windSource = 11
        case windDirection = 12
        case windAttenuationFactor = 13
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
            ("Priority", 9),
            ("Wind Force Magnitude", 10),
            ("Wind Source", 11),
            ("Wind Direction", 12),
            ("Wind Attenuation Factor", 13),]
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
    public enum SpaceParameter: UInt32, GodotEnum {
        case contactRecycleRadius = 0
        case contactMaxSeparation = 1
        case contactMaxAllowedPenetration = 2
        case contactDefaultBias = 3
        case bodyLinearVelocitySleepThreshold = 4
        case bodyAngularVelocitySleepThreshold = 5
        case bodyTimeToSleep = 6
        case solverIterations = 7
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Contact Recycle Radius", 0),
            ("Contact Max Separation", 1),
            ("Contact Max Allowed Penetration", 2),
            ("Contact Default Bias", 3),
            ("Body Linear Velocity Sleep Threshold", 4),
            ("Body Angular Velocity Sleep Threshold", 5),
            ("Body Time To Sleep", 6),
            ("Solver Iterations", 7),]
        }
    }
    public enum BodyAxis: UInt32, GodotEnum {
        case linearX = 1
        case linearY = 2
        case linearZ = 4
        case angularX = 8
        case angularY = 16
        case angularZ = 32
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Linear X", 1),
            ("Linear Y", 2),
            ("Linear Z", 4),
            ("Angular X", 8),
            ("Angular Y", 16),
            ("Angular Z", 32),]
        }
    }

    private static var __method_binding_world_boundary_shape_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "world_boundary_shape_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func worldBoundaryShapeCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_world_boundary_shape_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_separation_ray_shape_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "separation_ray_shape_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func separationRayShapeCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_separation_ray_shape_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_sphere_shape_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "sphere_shape_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func sphereShapeCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_sphere_shape_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_box_shape_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "box_shape_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func boxShapeCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_box_shape_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_capsule_shape_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "capsule_shape_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func capsuleShapeCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_capsule_shape_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_cylinder_shape_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "cylinder_shape_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func cylinderShapeCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_cylinder_shape_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_convex_polygon_shape_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "convex_polygon_shape_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func convexPolygonShapeCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_convex_polygon_shape_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_concave_polygon_shape_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "concave_polygon_shape_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func concavePolygonShapeCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_concave_polygon_shape_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_heightmap_shape_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "heightmap_shape_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func heightmapShapeCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_heightmap_shape_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_custom_shape_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "custom_shape_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func customShapeCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_custom_shape_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_shape_set_data: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shape_set_data").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3175752987)!
        }
        }
    }()
    public func shapeSetData<Value: VariantStorableIn>(shape: Godot.RID, data: Value) {
        shape.withGodotUnsafeRawPointer { __ptr_shape in
        Godot.Variant.withStorageUnsafeRawPointer(to: data) { __ptr_data in
        withUnsafeArgumentPackPointer(__ptr_shape, __ptr_data) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shape_set_data,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_shape_get_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shape_get_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3418923367)!
        }
        }
    }()
    public func shapeGetType(shape: Godot.RID) -> Godot.PhysicsServer3D.ShapeType {
        Godot.PhysicsServer3D.ShapeType.fromMutatingGodotUnsafePointer { __temporary in
        shape.withGodotUnsafeRawPointer { __ptr_shape in
        withUnsafeArgumentPackPointer(__ptr_shape) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shape_get_type,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_shape_get_data: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shape_get_data").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4171304767)!
        }
        }
    }()
    public func shapeGetData(shape: Godot.RID) -> Godot.Variant {
        Godot.Variant.fromMutatingGodotUnsafePointer { __temporary in
        shape.withGodotUnsafeRawPointer { __ptr_shape in
        withUnsafeArgumentPackPointer(__ptr_shape) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shape_get_data,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_space_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "space_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func spaceCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_space_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_space_set_active: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "space_set_active").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func spaceSetActive(space: Godot.RID, active: Bool) {
        space.withGodotUnsafeRawPointer { __ptr_space in
        active.withGodotUnsafeRawPointer { __ptr_active in
        withUnsafeArgumentPackPointer(__ptr_space, __ptr_active) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_space_set_active,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_space_is_active: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "space_is_active").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func spaceIsActive(space: Godot.RID) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        space.withGodotUnsafeRawPointer { __ptr_space in
        withUnsafeArgumentPackPointer(__ptr_space) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_space_is_active,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_space_set_param: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "space_set_param").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2406017470)!
        }
        }
    }()
    public func spaceSetParam(space: Godot.RID, param: Godot.PhysicsServer3D.SpaceParameter, value: Double) {
        space.withGodotUnsafeRawPointer { __ptr_space in
        param.withGodotUnsafeRawPointer { __ptr_param in
        value.withGodotUnsafeRawPointer { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_space, __ptr_param, __ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_space_set_param,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_space_get_param: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "space_get_param").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1523206731)!
        }
        }
    }()
    public func spaceGetParam(space: Godot.RID, param: Godot.PhysicsServer3D.SpaceParameter) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        space.withGodotUnsafeRawPointer { __ptr_space in
        param.withGodotUnsafeRawPointer { __ptr_param in
        withUnsafeArgumentPackPointer(__ptr_space, __ptr_param) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_space_get_param,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_space_get_direct_state: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "space_get_direct_state").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2048616813)!
        }
        }
    }()
    public func spaceGetDirectState(space: Godot.RID) -> Godot.PhysicsDirectSpaceState3D? {
        Godot.PhysicsDirectSpaceState3D?.fromMutatingGodotUnsafePointer { __temporary in
        space.withGodotUnsafeRawPointer { __ptr_space in
        withUnsafeArgumentPackPointer(__ptr_space) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_space_get_direct_state,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_area_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func areaCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_area_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_area_set_space: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_set_space").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func areaSetSpace(area: Godot.RID, space: Godot.RID) {
        area.withGodotUnsafeRawPointer { __ptr_area in
        space.withGodotUnsafeRawPointer { __ptr_space in
        withUnsafeArgumentPackPointer(__ptr_area, __ptr_space) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_area_set_space,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_area_get_space: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_get_space").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3814569979)!
        }
        }
    }()
    public func areaGetSpace(area: Godot.RID) -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        area.withGodotUnsafeRawPointer { __ptr_area in
        withUnsafeArgumentPackPointer(__ptr_area) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_area_get_space,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_area_add_shape: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_add_shape").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3711419014)!
        }
        }
    }()
    public func areaAddShape(area: Godot.RID, shape: Godot.RID, transform: Godot.Transform3D = Transform3D(xAxisX: 1, xAxisY: 0, xAxisZ: 0, yAxisX: 0, yAxisY: 1, yAxisZ: 0, zAxisX: 0, zAxisY: 0, zAxisZ: 1, originX: 0, originY: 0, originZ: 0), disabled: Bool = false) {
        area.withGodotUnsafeRawPointer { __ptr_area in
        shape.withGodotUnsafeRawPointer { __ptr_shape in
        transform.withGodotUnsafeRawPointer { __ptr_transform in
        disabled.withGodotUnsafeRawPointer { __ptr_disabled in
        withUnsafeArgumentPackPointer(__ptr_area, __ptr_shape, __ptr_transform, __ptr_disabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_area_add_shape,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_area_set_shape: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_set_shape").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2310537182)!
        }
        }
    }()
    public func areaSetShape(area: Godot.RID, shapeIdx: Int32, shape: Godot.RID) {
        area.withGodotUnsafeRawPointer { __ptr_area in
        shapeIdx.withGodotUnsafeRawPointer { __ptr_shapeIdx in
        shape.withGodotUnsafeRawPointer { __ptr_shape in
        withUnsafeArgumentPackPointer(__ptr_area, __ptr_shapeIdx, __ptr_shape) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_area_set_shape,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_area_set_shape_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_set_shape_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 675327471)!
        }
        }
    }()
    public func areaSetShapeTransform(area: Godot.RID, shapeIdx: Int32, transform: Godot.Transform3D) {
        area.withGodotUnsafeRawPointer { __ptr_area in
        shapeIdx.withGodotUnsafeRawPointer { __ptr_shapeIdx in
        transform.withGodotUnsafeRawPointer { __ptr_transform in
        withUnsafeArgumentPackPointer(__ptr_area, __ptr_shapeIdx, __ptr_transform) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_area_set_shape_transform,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_area_set_shape_disabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_set_shape_disabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2658558584)!
        }
        }
    }()
    public func areaSetShapeDisabled(area: Godot.RID, shapeIdx: Int32, disabled: Bool) {
        area.withGodotUnsafeRawPointer { __ptr_area in
        shapeIdx.withGodotUnsafeRawPointer { __ptr_shapeIdx in
        disabled.withGodotUnsafeRawPointer { __ptr_disabled in
        withUnsafeArgumentPackPointer(__ptr_area, __ptr_shapeIdx, __ptr_disabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_area_set_shape_disabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_area_get_shape_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_get_shape_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func areaGetShapeCount(area: Godot.RID) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        area.withGodotUnsafeRawPointer { __ptr_area in
        withUnsafeArgumentPackPointer(__ptr_area) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_area_get_shape_count,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_area_get_shape: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_get_shape").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1066463050)!
        }
        }
    }()
    public func areaGetShape(area: Godot.RID, shapeIdx: Int32) -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        area.withGodotUnsafeRawPointer { __ptr_area in
        shapeIdx.withGodotUnsafeRawPointer { __ptr_shapeIdx in
        withUnsafeArgumentPackPointer(__ptr_area, __ptr_shapeIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_area_get_shape,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_area_get_shape_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_get_shape_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1050775521)!
        }
        }
    }()
    public func areaGetShapeTransform(area: Godot.RID, shapeIdx: Int32) -> Godot.Transform3D {
        Godot.Transform3D.fromMutatingGodotUnsafePointer { __temporary in
        area.withGodotUnsafeRawPointer { __ptr_area in
        shapeIdx.withGodotUnsafeRawPointer { __ptr_shapeIdx in
        withUnsafeArgumentPackPointer(__ptr_area, __ptr_shapeIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_area_get_shape_transform,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_area_remove_shape: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_remove_shape").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func areaRemoveShape(area: Godot.RID, shapeIdx: Int32) {
        area.withGodotUnsafeRawPointer { __ptr_area in
        shapeIdx.withGodotUnsafeRawPointer { __ptr_shapeIdx in
        withUnsafeArgumentPackPointer(__ptr_area, __ptr_shapeIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_area_remove_shape,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_area_clear_shapes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_clear_shapes").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2722037293)!
        }
        }
    }()
    public func areaClearShapes(area: Godot.RID) {
        area.withGodotUnsafeRawPointer { __ptr_area in
        withUnsafeArgumentPackPointer(__ptr_area) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_area_clear_shapes,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_area_set_collision_layer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_set_collision_layer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func areaSetCollisionLayer(area: Godot.RID, layer: UInt32) {
        area.withGodotUnsafeRawPointer { __ptr_area in
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        withUnsafeArgumentPackPointer(__ptr_area, __ptr_layer) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_area_set_collision_layer,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_area_get_collision_layer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_get_collision_layer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func areaGetCollisionLayer(area: Godot.RID) -> UInt32 {
        UInt32.fromMutatingGodotUnsafePointer { __temporary in
        area.withGodotUnsafeRawPointer { __ptr_area in
        withUnsafeArgumentPackPointer(__ptr_area) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_area_get_collision_layer,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_area_set_collision_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_set_collision_mask").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func areaSetCollisionMask(area: Godot.RID, mask: UInt32) {
        area.withGodotUnsafeRawPointer { __ptr_area in
        mask.withGodotUnsafeRawPointer { __ptr_mask in
        withUnsafeArgumentPackPointer(__ptr_area, __ptr_mask) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_area_set_collision_mask,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_area_get_collision_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_get_collision_mask").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func areaGetCollisionMask(area: Godot.RID) -> UInt32 {
        UInt32.fromMutatingGodotUnsafePointer { __temporary in
        area.withGodotUnsafeRawPointer { __ptr_area in
        withUnsafeArgumentPackPointer(__ptr_area) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_area_get_collision_mask,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_area_set_param: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_set_param").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2980114638)!
        }
        }
    }()
    public func areaSetParam<Value: VariantStorableIn>(area: Godot.RID, param: Godot.PhysicsServer3D.AreaParameter, value: Value) {
        area.withGodotUnsafeRawPointer { __ptr_area in
        param.withGodotUnsafeRawPointer { __ptr_param in
        Godot.Variant.withStorageUnsafeRawPointer(to: value) { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_area, __ptr_param, __ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_area_set_param,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_area_set_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_set_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3935195649)!
        }
        }
    }()
    public func areaSetTransform(area: Godot.RID, transform: Godot.Transform3D) {
        area.withGodotUnsafeRawPointer { __ptr_area in
        transform.withGodotUnsafeRawPointer { __ptr_transform in
        withUnsafeArgumentPackPointer(__ptr_area, __ptr_transform) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_area_set_transform,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_area_get_param: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_get_param").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 890056067)!
        }
        }
    }()
    public func areaGetParam(area: Godot.RID, param: Godot.PhysicsServer3D.AreaParameter) -> Godot.Variant {
        Godot.Variant.fromMutatingGodotUnsafePointer { __temporary in
        area.withGodotUnsafeRawPointer { __ptr_area in
        param.withGodotUnsafeRawPointer { __ptr_param in
        withUnsafeArgumentPackPointer(__ptr_area, __ptr_param) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_area_get_param,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_area_get_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_get_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1128465797)!
        }
        }
    }()
    public func areaGetTransform(area: Godot.RID) -> Godot.Transform3D {
        Godot.Transform3D.fromMutatingGodotUnsafePointer { __temporary in
        area.withGodotUnsafeRawPointer { __ptr_area in
        withUnsafeArgumentPackPointer(__ptr_area) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_area_get_transform,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_area_attach_object_instance_id: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_attach_object_instance_id").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func areaAttachObjectInstanceId(area: Godot.RID, id: UInt64) {
        area.withGodotUnsafeRawPointer { __ptr_area in
        id.withGodotUnsafeRawPointer { __ptr_id in
        withUnsafeArgumentPackPointer(__ptr_area, __ptr_id) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_area_attach_object_instance_id,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_area_get_object_instance_id: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_get_object_instance_id").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func areaGetObjectInstanceId(area: Godot.RID) -> UInt64 {
        UInt64.fromMutatingGodotUnsafePointer { __temporary in
        area.withGodotUnsafeRawPointer { __ptr_area in
        withUnsafeArgumentPackPointer(__ptr_area) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_area_get_object_instance_id,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_area_set_monitor_callback: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_set_monitor_callback").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3379118538)!
        }
        }
    }()
    public func areaSetMonitorCallback(area: Godot.RID, callback: Godot.Callable) {
        area.withGodotUnsafeRawPointer { __ptr_area in
        callback.withGodotUnsafeRawPointer { __ptr_callback in
        withUnsafeArgumentPackPointer(__ptr_area, __ptr_callback) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_area_set_monitor_callback,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_area_set_area_monitor_callback: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_set_area_monitor_callback").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3379118538)!
        }
        }
    }()
    public func areaSetAreaMonitorCallback(area: Godot.RID, callback: Godot.Callable) {
        area.withGodotUnsafeRawPointer { __ptr_area in
        callback.withGodotUnsafeRawPointer { __ptr_callback in
        withUnsafeArgumentPackPointer(__ptr_area, __ptr_callback) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_area_set_area_monitor_callback,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_area_set_monitorable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_set_monitorable").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func areaSetMonitorable(area: Godot.RID, monitorable: Bool) {
        area.withGodotUnsafeRawPointer { __ptr_area in
        monitorable.withGodotUnsafeRawPointer { __ptr_monitorable in
        withUnsafeArgumentPackPointer(__ptr_area, __ptr_monitorable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_area_set_monitorable,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_area_set_ray_pickable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "area_set_ray_pickable").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func areaSetRayPickable(area: Godot.RID, enable: Bool) {
        area.withGodotUnsafeRawPointer { __ptr_area in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_area, __ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_area_set_ray_pickable,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_body_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func bodyCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_body_set_space: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_set_space").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func bodySetSpace(body: Godot.RID, space: Godot.RID) {
        body.withGodotUnsafeRawPointer { __ptr_body in
        space.withGodotUnsafeRawPointer { __ptr_space in
        withUnsafeArgumentPackPointer(__ptr_body, __ptr_space) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_set_space,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_body_get_space: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_get_space").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3814569979)!
        }
        }
    }()
    public func bodyGetSpace(body: Godot.RID) -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        body.withGodotUnsafeRawPointer { __ptr_body in
        withUnsafeArgumentPackPointer(__ptr_body) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_get_space,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_body_set_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_set_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 606803466)!
        }
        }
    }()
    public func bodySetMode(body: Godot.RID, mode: Godot.PhysicsServer3D.BodyMode) {
        body.withGodotUnsafeRawPointer { __ptr_body in
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_body, __ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_set_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_body_get_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_get_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2488819728)!
        }
        }
    }()
    public func bodyGetMode(body: Godot.RID) -> Godot.PhysicsServer3D.BodyMode {
        Godot.PhysicsServer3D.BodyMode.fromMutatingGodotUnsafePointer { __temporary in
        body.withGodotUnsafeRawPointer { __ptr_body in
        withUnsafeArgumentPackPointer(__ptr_body) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_get_mode,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_body_set_collision_layer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_set_collision_layer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func bodySetCollisionLayer(body: Godot.RID, layer: UInt32) {
        body.withGodotUnsafeRawPointer { __ptr_body in
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        withUnsafeArgumentPackPointer(__ptr_body, __ptr_layer) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_set_collision_layer,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_body_get_collision_layer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_get_collision_layer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func bodyGetCollisionLayer(body: Godot.RID) -> UInt32 {
        UInt32.fromMutatingGodotUnsafePointer { __temporary in
        body.withGodotUnsafeRawPointer { __ptr_body in
        withUnsafeArgumentPackPointer(__ptr_body) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_get_collision_layer,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_body_set_collision_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_set_collision_mask").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func bodySetCollisionMask(body: Godot.RID, mask: UInt32) {
        body.withGodotUnsafeRawPointer { __ptr_body in
        mask.withGodotUnsafeRawPointer { __ptr_mask in
        withUnsafeArgumentPackPointer(__ptr_body, __ptr_mask) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_set_collision_mask,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_body_get_collision_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_get_collision_mask").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func bodyGetCollisionMask(body: Godot.RID) -> UInt32 {
        UInt32.fromMutatingGodotUnsafePointer { __temporary in
        body.withGodotUnsafeRawPointer { __ptr_body in
        withUnsafeArgumentPackPointer(__ptr_body) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_get_collision_mask,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_body_set_collision_priority: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_set_collision_priority").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func bodySetCollisionPriority(body: Godot.RID, priority: Double) {
        body.withGodotUnsafeRawPointer { __ptr_body in
        priority.withGodotUnsafeRawPointer { __ptr_priority in
        withUnsafeArgumentPackPointer(__ptr_body, __ptr_priority) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_set_collision_priority,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_body_get_collision_priority: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_get_collision_priority").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 866169185)!
        }
        }
    }()
    public func bodyGetCollisionPriority(body: Godot.RID) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        body.withGodotUnsafeRawPointer { __ptr_body in
        withUnsafeArgumentPackPointer(__ptr_body) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_get_collision_priority,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_body_add_shape: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_add_shape").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3711419014)!
        }
        }
    }()
    public func bodyAddShape(body: Godot.RID, shape: Godot.RID, transform: Godot.Transform3D = Transform3D(xAxisX: 1, xAxisY: 0, xAxisZ: 0, yAxisX: 0, yAxisY: 1, yAxisZ: 0, zAxisX: 0, zAxisY: 0, zAxisZ: 1, originX: 0, originY: 0, originZ: 0), disabled: Bool = false) {
        body.withGodotUnsafeRawPointer { __ptr_body in
        shape.withGodotUnsafeRawPointer { __ptr_shape in
        transform.withGodotUnsafeRawPointer { __ptr_transform in
        disabled.withGodotUnsafeRawPointer { __ptr_disabled in
        withUnsafeArgumentPackPointer(__ptr_body, __ptr_shape, __ptr_transform, __ptr_disabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_add_shape,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_body_set_shape: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_set_shape").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2310537182)!
        }
        }
    }()
    public func bodySetShape(body: Godot.RID, shapeIdx: Int32, shape: Godot.RID) {
        body.withGodotUnsafeRawPointer { __ptr_body in
        shapeIdx.withGodotUnsafeRawPointer { __ptr_shapeIdx in
        shape.withGodotUnsafeRawPointer { __ptr_shape in
        withUnsafeArgumentPackPointer(__ptr_body, __ptr_shapeIdx, __ptr_shape) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_set_shape,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_body_set_shape_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_set_shape_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 675327471)!
        }
        }
    }()
    public func bodySetShapeTransform(body: Godot.RID, shapeIdx: Int32, transform: Godot.Transform3D) {
        body.withGodotUnsafeRawPointer { __ptr_body in
        shapeIdx.withGodotUnsafeRawPointer { __ptr_shapeIdx in
        transform.withGodotUnsafeRawPointer { __ptr_transform in
        withUnsafeArgumentPackPointer(__ptr_body, __ptr_shapeIdx, __ptr_transform) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_set_shape_transform,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_body_set_shape_disabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_set_shape_disabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2658558584)!
        }
        }
    }()
    public func bodySetShapeDisabled(body: Godot.RID, shapeIdx: Int32, disabled: Bool) {
        body.withGodotUnsafeRawPointer { __ptr_body in
        shapeIdx.withGodotUnsafeRawPointer { __ptr_shapeIdx in
        disabled.withGodotUnsafeRawPointer { __ptr_disabled in
        withUnsafeArgumentPackPointer(__ptr_body, __ptr_shapeIdx, __ptr_disabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_set_shape_disabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_body_get_shape_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_get_shape_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func bodyGetShapeCount(body: Godot.RID) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        body.withGodotUnsafeRawPointer { __ptr_body in
        withUnsafeArgumentPackPointer(__ptr_body) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_get_shape_count,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_body_get_shape: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_get_shape").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1066463050)!
        }
        }
    }()
    public func bodyGetShape(body: Godot.RID, shapeIdx: Int32) -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        body.withGodotUnsafeRawPointer { __ptr_body in
        shapeIdx.withGodotUnsafeRawPointer { __ptr_shapeIdx in
        withUnsafeArgumentPackPointer(__ptr_body, __ptr_shapeIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_get_shape,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_body_get_shape_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_get_shape_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1050775521)!
        }
        }
    }()
    public func bodyGetShapeTransform(body: Godot.RID, shapeIdx: Int32) -> Godot.Transform3D {
        Godot.Transform3D.fromMutatingGodotUnsafePointer { __temporary in
        body.withGodotUnsafeRawPointer { __ptr_body in
        shapeIdx.withGodotUnsafeRawPointer { __ptr_shapeIdx in
        withUnsafeArgumentPackPointer(__ptr_body, __ptr_shapeIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_get_shape_transform,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_body_remove_shape: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_remove_shape").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func bodyRemoveShape(body: Godot.RID, shapeIdx: Int32) {
        body.withGodotUnsafeRawPointer { __ptr_body in
        shapeIdx.withGodotUnsafeRawPointer { __ptr_shapeIdx in
        withUnsafeArgumentPackPointer(__ptr_body, __ptr_shapeIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_remove_shape,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_body_clear_shapes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_clear_shapes").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2722037293)!
        }
        }
    }()
    public func bodyClearShapes(body: Godot.RID) {
        body.withGodotUnsafeRawPointer { __ptr_body in
        withUnsafeArgumentPackPointer(__ptr_body) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_clear_shapes,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_body_attach_object_instance_id: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_attach_object_instance_id").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func bodyAttachObjectInstanceId(body: Godot.RID, id: UInt64) {
        body.withGodotUnsafeRawPointer { __ptr_body in
        id.withGodotUnsafeRawPointer { __ptr_id in
        withUnsafeArgumentPackPointer(__ptr_body, __ptr_id) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_attach_object_instance_id,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_body_get_object_instance_id: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_get_object_instance_id").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func bodyGetObjectInstanceId(body: Godot.RID) -> UInt64 {
        UInt64.fromMutatingGodotUnsafePointer { __temporary in
        body.withGodotUnsafeRawPointer { __ptr_body in
        withUnsafeArgumentPackPointer(__ptr_body) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_get_object_instance_id,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_body_set_enable_continuous_collision_detection: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_set_enable_continuous_collision_detection").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func bodySetEnableContinuousCollisionDetection(body: Godot.RID, enable: Bool) {
        body.withGodotUnsafeRawPointer { __ptr_body in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_body, __ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_set_enable_continuous_collision_detection,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_body_is_continuous_collision_detection_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_is_continuous_collision_detection_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func bodyIsContinuousCollisionDetectionEnabled(body: Godot.RID) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        body.withGodotUnsafeRawPointer { __ptr_body in
        withUnsafeArgumentPackPointer(__ptr_body) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_is_continuous_collision_detection_enabled,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_body_set_param: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_set_param").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 910941953)!
        }
        }
    }()
    public func bodySetParam<Value: VariantStorableIn>(body: Godot.RID, param: Godot.PhysicsServer3D.BodyParameter, value: Value) {
        body.withGodotUnsafeRawPointer { __ptr_body in
        param.withGodotUnsafeRawPointer { __ptr_param in
        Godot.Variant.withStorageUnsafeRawPointer(to: value) { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_body, __ptr_param, __ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_set_param,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_body_get_param: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_get_param").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3385027841)!
        }
        }
    }()
    public func bodyGetParam(body: Godot.RID, param: Godot.PhysicsServer3D.BodyParameter) -> Godot.Variant {
        Godot.Variant.fromMutatingGodotUnsafePointer { __temporary in
        body.withGodotUnsafeRawPointer { __ptr_body in
        param.withGodotUnsafeRawPointer { __ptr_param in
        withUnsafeArgumentPackPointer(__ptr_body, __ptr_param) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_get_param,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_body_reset_mass_properties: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_reset_mass_properties").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2722037293)!
        }
        }
    }()
    public func bodyResetMassProperties(body: Godot.RID) {
        body.withGodotUnsafeRawPointer { __ptr_body in
        withUnsafeArgumentPackPointer(__ptr_body) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_reset_mass_properties,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_body_set_state: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_set_state").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 599977762)!
        }
        }
    }()
    public func bodySetState<Value: VariantStorableIn>(body: Godot.RID, state: Godot.PhysicsServer3D.BodyState, value: Value) {
        body.withGodotUnsafeRawPointer { __ptr_body in
        state.withGodotUnsafeRawPointer { __ptr_state in
        Godot.Variant.withStorageUnsafeRawPointer(to: value) { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_body, __ptr_state, __ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_set_state,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_body_get_state: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_get_state").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1850449534)!
        }
        }
    }()
    public func bodyGetState(body: Godot.RID, state: Godot.PhysicsServer3D.BodyState) -> Godot.Variant {
        Godot.Variant.fromMutatingGodotUnsafePointer { __temporary in
        body.withGodotUnsafeRawPointer { __ptr_body in
        state.withGodotUnsafeRawPointer { __ptr_state in
        withUnsafeArgumentPackPointer(__ptr_body, __ptr_state) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_get_state,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_body_apply_central_impulse: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_apply_central_impulse").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3227306858)!
        }
        }
    }()
    public func bodyApplyCentralImpulse(body: Godot.RID, impulse: Godot.Vector3) {
        body.withGodotUnsafeRawPointer { __ptr_body in
        impulse.withGodotUnsafeRawPointer { __ptr_impulse in
        withUnsafeArgumentPackPointer(__ptr_body, __ptr_impulse) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_apply_central_impulse,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_body_apply_impulse: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_apply_impulse").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 390416203)!
        }
        }
    }()
    public func bodyApplyImpulse(body: Godot.RID, impulse: Godot.Vector3, position: Godot.Vector3 = Vector3(x: 0, y: 0, z: 0)) {
        body.withGodotUnsafeRawPointer { __ptr_body in
        impulse.withGodotUnsafeRawPointer { __ptr_impulse in
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_body, __ptr_impulse, __ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_apply_impulse,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_body_apply_torque_impulse: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_apply_torque_impulse").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3227306858)!
        }
        }
    }()
    public func bodyApplyTorqueImpulse(body: Godot.RID, impulse: Godot.Vector3) {
        body.withGodotUnsafeRawPointer { __ptr_body in
        impulse.withGodotUnsafeRawPointer { __ptr_impulse in
        withUnsafeArgumentPackPointer(__ptr_body, __ptr_impulse) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_apply_torque_impulse,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_body_apply_central_force: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_apply_central_force").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3227306858)!
        }
        }
    }()
    public func bodyApplyCentralForce(body: Godot.RID, force: Godot.Vector3) {
        body.withGodotUnsafeRawPointer { __ptr_body in
        force.withGodotUnsafeRawPointer { __ptr_force in
        withUnsafeArgumentPackPointer(__ptr_body, __ptr_force) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_apply_central_force,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_body_apply_force: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_apply_force").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 390416203)!
        }
        }
    }()
    public func bodyApplyForce(body: Godot.RID, force: Godot.Vector3, position: Godot.Vector3 = Vector3(x: 0, y: 0, z: 0)) {
        body.withGodotUnsafeRawPointer { __ptr_body in
        force.withGodotUnsafeRawPointer { __ptr_force in
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_body, __ptr_force, __ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_apply_force,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_body_apply_torque: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_apply_torque").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3227306858)!
        }
        }
    }()
    public func bodyApplyTorque(body: Godot.RID, torque: Godot.Vector3) {
        body.withGodotUnsafeRawPointer { __ptr_body in
        torque.withGodotUnsafeRawPointer { __ptr_torque in
        withUnsafeArgumentPackPointer(__ptr_body, __ptr_torque) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_apply_torque,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_body_add_constant_central_force: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_add_constant_central_force").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3227306858)!
        }
        }
    }()
    public func bodyAddConstantCentralForce(body: Godot.RID, force: Godot.Vector3) {
        body.withGodotUnsafeRawPointer { __ptr_body in
        force.withGodotUnsafeRawPointer { __ptr_force in
        withUnsafeArgumentPackPointer(__ptr_body, __ptr_force) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_add_constant_central_force,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_body_add_constant_force: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_add_constant_force").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 390416203)!
        }
        }
    }()
    public func bodyAddConstantForce(body: Godot.RID, force: Godot.Vector3, position: Godot.Vector3 = Vector3(x: 0, y: 0, z: 0)) {
        body.withGodotUnsafeRawPointer { __ptr_body in
        force.withGodotUnsafeRawPointer { __ptr_force in
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_body, __ptr_force, __ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_add_constant_force,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_body_add_constant_torque: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_add_constant_torque").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3227306858)!
        }
        }
    }()
    public func bodyAddConstantTorque(body: Godot.RID, torque: Godot.Vector3) {
        body.withGodotUnsafeRawPointer { __ptr_body in
        torque.withGodotUnsafeRawPointer { __ptr_torque in
        withUnsafeArgumentPackPointer(__ptr_body, __ptr_torque) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_add_constant_torque,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_body_set_constant_force: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_set_constant_force").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3227306858)!
        }
        }
    }()
    public func bodySetConstantForce(body: Godot.RID, force: Godot.Vector3) {
        body.withGodotUnsafeRawPointer { __ptr_body in
        force.withGodotUnsafeRawPointer { __ptr_force in
        withUnsafeArgumentPackPointer(__ptr_body, __ptr_force) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_set_constant_force,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_body_get_constant_force: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_get_constant_force").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 531438156)!
        }
        }
    }()
    public func bodyGetConstantForce(body: Godot.RID) -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        body.withGodotUnsafeRawPointer { __ptr_body in
        withUnsafeArgumentPackPointer(__ptr_body) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_get_constant_force,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_body_set_constant_torque: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_set_constant_torque").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3227306858)!
        }
        }
    }()
    public func bodySetConstantTorque(body: Godot.RID, torque: Godot.Vector3) {
        body.withGodotUnsafeRawPointer { __ptr_body in
        torque.withGodotUnsafeRawPointer { __ptr_torque in
        withUnsafeArgumentPackPointer(__ptr_body, __ptr_torque) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_set_constant_torque,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_body_get_constant_torque: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_get_constant_torque").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 531438156)!
        }
        }
    }()
    public func bodyGetConstantTorque(body: Godot.RID) -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        body.withGodotUnsafeRawPointer { __ptr_body in
        withUnsafeArgumentPackPointer(__ptr_body) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_get_constant_torque,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_body_set_axis_velocity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_set_axis_velocity").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3227306858)!
        }
        }
    }()
    public func bodySetAxisVelocity(body: Godot.RID, axisVelocity: Godot.Vector3) {
        body.withGodotUnsafeRawPointer { __ptr_body in
        axisVelocity.withGodotUnsafeRawPointer { __ptr_axisVelocity in
        withUnsafeArgumentPackPointer(__ptr_body, __ptr_axisVelocity) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_set_axis_velocity,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_body_set_axis_lock: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_set_axis_lock").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2020836892)!
        }
        }
    }()
    public func bodySetAxisLock(body: Godot.RID, axis: Godot.PhysicsServer3D.BodyAxis, lock: Bool) {
        body.withGodotUnsafeRawPointer { __ptr_body in
        axis.withGodotUnsafeRawPointer { __ptr_axis in
        lock.withGodotUnsafeRawPointer { __ptr_lock in
        withUnsafeArgumentPackPointer(__ptr_body, __ptr_axis, __ptr_lock) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_set_axis_lock,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_body_is_axis_locked: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_is_axis_locked").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 587853580)!
        }
        }
    }()
    public func bodyIsAxisLocked(body: Godot.RID, axis: Godot.PhysicsServer3D.BodyAxis) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        body.withGodotUnsafeRawPointer { __ptr_body in
        axis.withGodotUnsafeRawPointer { __ptr_axis in
        withUnsafeArgumentPackPointer(__ptr_body, __ptr_axis) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_is_axis_locked,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_body_add_collision_exception: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_add_collision_exception").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func bodyAddCollisionException(body: Godot.RID, exceptedBody: Godot.RID) {
        body.withGodotUnsafeRawPointer { __ptr_body in
        exceptedBody.withGodotUnsafeRawPointer { __ptr_exceptedBody in
        withUnsafeArgumentPackPointer(__ptr_body, __ptr_exceptedBody) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_add_collision_exception,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_body_remove_collision_exception: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_remove_collision_exception").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func bodyRemoveCollisionException(body: Godot.RID, exceptedBody: Godot.RID) {
        body.withGodotUnsafeRawPointer { __ptr_body in
        exceptedBody.withGodotUnsafeRawPointer { __ptr_exceptedBody in
        withUnsafeArgumentPackPointer(__ptr_body, __ptr_exceptedBody) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_remove_collision_exception,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_body_set_max_contacts_reported: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_set_max_contacts_reported").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func bodySetMaxContactsReported(body: Godot.RID, amount: Int32) {
        body.withGodotUnsafeRawPointer { __ptr_body in
        amount.withGodotUnsafeRawPointer { __ptr_amount in
        withUnsafeArgumentPackPointer(__ptr_body, __ptr_amount) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_set_max_contacts_reported,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_body_get_max_contacts_reported: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_get_max_contacts_reported").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func bodyGetMaxContactsReported(body: Godot.RID) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        body.withGodotUnsafeRawPointer { __ptr_body in
        withUnsafeArgumentPackPointer(__ptr_body) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_get_max_contacts_reported,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_body_set_omit_force_integration: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_set_omit_force_integration").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func bodySetOmitForceIntegration(body: Godot.RID, enable: Bool) {
        body.withGodotUnsafeRawPointer { __ptr_body in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_body, __ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_set_omit_force_integration,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_body_is_omitting_force_integration: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_is_omitting_force_integration").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func bodyIsOmittingForceIntegration(body: Godot.RID) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        body.withGodotUnsafeRawPointer { __ptr_body in
        withUnsafeArgumentPackPointer(__ptr_body) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_is_omitting_force_integration,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_body_set_force_integration_callback: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_set_force_integration_callback").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3059434249)!
        }
        }
    }()
    public func bodySetForceIntegrationCallback<Value: VariantStorableIn>(body: Godot.RID, callable: Godot.Callable, userdata: Value = Variant()) {
        body.withGodotUnsafeRawPointer { __ptr_body in
        callable.withGodotUnsafeRawPointer { __ptr_callable in
        Godot.Variant.withStorageUnsafeRawPointer(to: userdata) { __ptr_userdata in
        withUnsafeArgumentPackPointer(__ptr_body, __ptr_callable, __ptr_userdata) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_set_force_integration_callback,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_body_set_ray_pickable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_set_ray_pickable").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func bodySetRayPickable(body: Godot.RID, enable: Bool) {
        body.withGodotUnsafeRawPointer { __ptr_body in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_body, __ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_set_ray_pickable,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_body_test_motion: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_test_motion").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1944921792)!
        }
        }
    }()
    public func bodyTestMotion(body: Godot.RID, parameters: Godot.PhysicsTestMotionParameters3D?, result: Godot.PhysicsTestMotionResult3D? = nil) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        body.withGodotUnsafeRawPointer { __ptr_body in
        parameters.withGodotUnsafeRawPointer { __ptr_parameters in
        withUnsafePointer(to: __ptr_parameters) { _ptr___ptr_parameters in
        result.withGodotUnsafeRawPointer { __ptr_result in
        withUnsafePointer(to: __ptr_result) { _ptr___ptr_result in
        withUnsafeArgumentPackPointer(__ptr_body, _ptr___ptr_parameters, _ptr___ptr_result) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_test_motion,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}
    }

    private static var __method_binding_body_get_direct_state: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_get_direct_state").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3029727957)!
        }
        }
    }()
    public func bodyGetDirectState(body: Godot.RID) -> Godot.PhysicsDirectBodyState3D? {
        Godot.PhysicsDirectBodyState3D?.fromMutatingGodotUnsafePointer { __temporary in
        body.withGodotUnsafeRawPointer { __ptr_body in
        withUnsafeArgumentPackPointer(__ptr_body) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_get_direct_state,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_soft_body_get_bounds: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "soft_body_get_bounds").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 974181306)!
        }
        }
    }()
    public func softBodyGetBounds(body: Godot.RID) -> Godot.AABB {
        Godot.AABB.fromMutatingGodotUnsafePointer { __temporary in
        body.withGodotUnsafeRawPointer { __ptr_body in
        withUnsafeArgumentPackPointer(__ptr_body) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_soft_body_get_bounds,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_joint_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "joint_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func jointCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_joint_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_joint_clear: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "joint_clear").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2722037293)!
        }
        }
    }()
    public func jointClear(joint: Godot.RID) {
        joint.withGodotUnsafeRawPointer { __ptr_joint in
        withUnsafeArgumentPackPointer(__ptr_joint) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_joint_clear,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_joint_make_pin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "joint_make_pin").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4280171926)!
        }
        }
    }()
    public func jointMakePin(joint: Godot.RID, bodyA: Godot.RID, localA: Godot.Vector3, bodyB: Godot.RID, localB: Godot.Vector3) {
        joint.withGodotUnsafeRawPointer { __ptr_joint in
        bodyA.withGodotUnsafeRawPointer { __ptr_bodyA in
        localA.withGodotUnsafeRawPointer { __ptr_localA in
        bodyB.withGodotUnsafeRawPointer { __ptr_bodyB in
        localB.withGodotUnsafeRawPointer { __ptr_localB in
        withUnsafeArgumentPackPointer(__ptr_joint, __ptr_bodyA, __ptr_localA, __ptr_bodyB, __ptr_localB) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_joint_make_pin,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    private static var __method_binding_pin_joint_set_param: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "pin_joint_set_param").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 810685294)!
        }
        }
    }()
    public func pinJointSetParam(joint: Godot.RID, param: Godot.PhysicsServer3D.PinJointParam, value: Double) {
        joint.withGodotUnsafeRawPointer { __ptr_joint in
        param.withGodotUnsafeRawPointer { __ptr_param in
        value.withGodotUnsafeRawPointer { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_joint, __ptr_param, __ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_pin_joint_set_param,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_pin_joint_get_param: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "pin_joint_get_param").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2817972347)!
        }
        }
    }()
    public func pinJointGetParam(joint: Godot.RID, param: Godot.PhysicsServer3D.PinJointParam) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        joint.withGodotUnsafeRawPointer { __ptr_joint in
        param.withGodotUnsafeRawPointer { __ptr_param in
        withUnsafeArgumentPackPointer(__ptr_joint, __ptr_param) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_pin_joint_get_param,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_pin_joint_set_local_a: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "pin_joint_set_local_a").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3227306858)!
        }
        }
    }()
    public func pinJointSetLocalA(joint: Godot.RID, localA: Godot.Vector3) {
        joint.withGodotUnsafeRawPointer { __ptr_joint in
        localA.withGodotUnsafeRawPointer { __ptr_localA in
        withUnsafeArgumentPackPointer(__ptr_joint, __ptr_localA) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_pin_joint_set_local_a,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_pin_joint_get_local_a: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "pin_joint_get_local_a").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 531438156)!
        }
        }
    }()
    public func pinJointGetLocalA(joint: Godot.RID) -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        joint.withGodotUnsafeRawPointer { __ptr_joint in
        withUnsafeArgumentPackPointer(__ptr_joint) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_pin_joint_get_local_a,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_pin_joint_set_local_b: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "pin_joint_set_local_b").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3227306858)!
        }
        }
    }()
    public func pinJointSetLocalB(joint: Godot.RID, localB: Godot.Vector3) {
        joint.withGodotUnsafeRawPointer { __ptr_joint in
        localB.withGodotUnsafeRawPointer { __ptr_localB in
        withUnsafeArgumentPackPointer(__ptr_joint, __ptr_localB) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_pin_joint_set_local_b,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_pin_joint_get_local_b: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "pin_joint_get_local_b").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 531438156)!
        }
        }
    }()
    public func pinJointGetLocalB(joint: Godot.RID) -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        joint.withGodotUnsafeRawPointer { __ptr_joint in
        withUnsafeArgumentPackPointer(__ptr_joint) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_pin_joint_get_local_b,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_joint_make_hinge: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "joint_make_hinge").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1684107643)!
        }
        }
    }()
    public func jointMakeHinge(joint: Godot.RID, bodyA: Godot.RID, hingeA: Godot.Transform3D, bodyB: Godot.RID, hingeB: Godot.Transform3D) {
        joint.withGodotUnsafeRawPointer { __ptr_joint in
        bodyA.withGodotUnsafeRawPointer { __ptr_bodyA in
        hingeA.withGodotUnsafeRawPointer { __ptr_hingeA in
        bodyB.withGodotUnsafeRawPointer { __ptr_bodyB in
        hingeB.withGodotUnsafeRawPointer { __ptr_hingeB in
        withUnsafeArgumentPackPointer(__ptr_joint, __ptr_bodyA, __ptr_hingeA, __ptr_bodyB, __ptr_hingeB) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_joint_make_hinge,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    private static var __method_binding_hinge_joint_set_param: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "hinge_joint_set_param").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3165502333)!
        }
        }
    }()
    public func hingeJointSetParam(joint: Godot.RID, param: Godot.PhysicsServer3D.HingeJointParam, value: Double) {
        joint.withGodotUnsafeRawPointer { __ptr_joint in
        param.withGodotUnsafeRawPointer { __ptr_param in
        value.withGodotUnsafeRawPointer { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_joint, __ptr_param, __ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_hinge_joint_set_param,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_hinge_joint_get_param: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "hinge_joint_get_param").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2129207581)!
        }
        }
    }()
    public func hingeJointGetParam(joint: Godot.RID, param: Godot.PhysicsServer3D.HingeJointParam) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        joint.withGodotUnsafeRawPointer { __ptr_joint in
        param.withGodotUnsafeRawPointer { __ptr_param in
        withUnsafeArgumentPackPointer(__ptr_joint, __ptr_param) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_hinge_joint_get_param,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_hinge_joint_set_flag: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "hinge_joint_set_flag").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1601626188)!
        }
        }
    }()
    public func hingeJointSetFlag(joint: Godot.RID, flag: Godot.PhysicsServer3D.HingeJointFlag, enabled: Bool) {
        joint.withGodotUnsafeRawPointer { __ptr_joint in
        flag.withGodotUnsafeRawPointer { __ptr_flag in
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_joint, __ptr_flag, __ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_hinge_joint_set_flag,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_hinge_joint_get_flag: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "hinge_joint_get_flag").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4165147865)!
        }
        }
    }()
    public func hingeJointGetFlag(joint: Godot.RID, flag: Godot.PhysicsServer3D.HingeJointFlag) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        joint.withGodotUnsafeRawPointer { __ptr_joint in
        flag.withGodotUnsafeRawPointer { __ptr_flag in
        withUnsafeArgumentPackPointer(__ptr_joint, __ptr_flag) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_hinge_joint_get_flag,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_joint_make_slider: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "joint_make_slider").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1684107643)!
        }
        }
    }()
    public func jointMakeSlider(joint: Godot.RID, bodyA: Godot.RID, localRefA: Godot.Transform3D, bodyB: Godot.RID, localRefB: Godot.Transform3D) {
        joint.withGodotUnsafeRawPointer { __ptr_joint in
        bodyA.withGodotUnsafeRawPointer { __ptr_bodyA in
        localRefA.withGodotUnsafeRawPointer { __ptr_localRefA in
        bodyB.withGodotUnsafeRawPointer { __ptr_bodyB in
        localRefB.withGodotUnsafeRawPointer { __ptr_localRefB in
        withUnsafeArgumentPackPointer(__ptr_joint, __ptr_bodyA, __ptr_localRefA, __ptr_bodyB, __ptr_localRefB) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_joint_make_slider,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    private static var __method_binding_slider_joint_set_param: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "slider_joint_set_param").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2264833593)!
        }
        }
    }()
    public func sliderJointSetParam(joint: Godot.RID, param: Godot.PhysicsServer3D.SliderJointParam, value: Double) {
        joint.withGodotUnsafeRawPointer { __ptr_joint in
        param.withGodotUnsafeRawPointer { __ptr_param in
        value.withGodotUnsafeRawPointer { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_joint, __ptr_param, __ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_slider_joint_set_param,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_slider_joint_get_param: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "slider_joint_get_param").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3498644957)!
        }
        }
    }()
    public func sliderJointGetParam(joint: Godot.RID, param: Godot.PhysicsServer3D.SliderJointParam) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        joint.withGodotUnsafeRawPointer { __ptr_joint in
        param.withGodotUnsafeRawPointer { __ptr_param in
        withUnsafeArgumentPackPointer(__ptr_joint, __ptr_param) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_slider_joint_get_param,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_joint_make_cone_twist: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "joint_make_cone_twist").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1684107643)!
        }
        }
    }()
    public func jointMakeConeTwist(joint: Godot.RID, bodyA: Godot.RID, localRefA: Godot.Transform3D, bodyB: Godot.RID, localRefB: Godot.Transform3D) {
        joint.withGodotUnsafeRawPointer { __ptr_joint in
        bodyA.withGodotUnsafeRawPointer { __ptr_bodyA in
        localRefA.withGodotUnsafeRawPointer { __ptr_localRefA in
        bodyB.withGodotUnsafeRawPointer { __ptr_bodyB in
        localRefB.withGodotUnsafeRawPointer { __ptr_localRefB in
        withUnsafeArgumentPackPointer(__ptr_joint, __ptr_bodyA, __ptr_localRefA, __ptr_bodyB, __ptr_localRefB) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_joint_make_cone_twist,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    private static var __method_binding_cone_twist_joint_set_param: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "cone_twist_joint_set_param").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 808587618)!
        }
        }
    }()
    public func coneTwistJointSetParam(joint: Godot.RID, param: Godot.PhysicsServer3D.ConeTwistJointParam, value: Double) {
        joint.withGodotUnsafeRawPointer { __ptr_joint in
        param.withGodotUnsafeRawPointer { __ptr_param in
        value.withGodotUnsafeRawPointer { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_joint, __ptr_param, __ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_cone_twist_joint_set_param,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_cone_twist_joint_get_param: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "cone_twist_joint_get_param").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1134789658)!
        }
        }
    }()
    public func coneTwistJointGetParam(joint: Godot.RID, param: Godot.PhysicsServer3D.ConeTwistJointParam) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        joint.withGodotUnsafeRawPointer { __ptr_joint in
        param.withGodotUnsafeRawPointer { __ptr_param in
        withUnsafeArgumentPackPointer(__ptr_joint, __ptr_param) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_cone_twist_joint_get_param,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_joint_get_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "joint_get_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4290791900)!
        }
        }
    }()
    public func jointGetType(joint: Godot.RID) -> Godot.PhysicsServer3D.JointType {
        Godot.PhysicsServer3D.JointType.fromMutatingGodotUnsafePointer { __temporary in
        joint.withGodotUnsafeRawPointer { __ptr_joint in
        withUnsafeArgumentPackPointer(__ptr_joint) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_joint_get_type,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_joint_set_solver_priority: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "joint_set_solver_priority").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func jointSetSolverPriority(joint: Godot.RID, priority: Int32) {
        joint.withGodotUnsafeRawPointer { __ptr_joint in
        priority.withGodotUnsafeRawPointer { __ptr_priority in
        withUnsafeArgumentPackPointer(__ptr_joint, __ptr_priority) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_joint_set_solver_priority,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_joint_get_solver_priority: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "joint_get_solver_priority").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func jointGetSolverPriority(joint: Godot.RID) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        joint.withGodotUnsafeRawPointer { __ptr_joint in
        withUnsafeArgumentPackPointer(__ptr_joint) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_joint_get_solver_priority,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_joint_disable_collisions_between_bodies: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "joint_disable_collisions_between_bodies").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func jointDisableCollisionsBetweenBodies(joint: Godot.RID, disable: Bool) {
        joint.withGodotUnsafeRawPointer { __ptr_joint in
        disable.withGodotUnsafeRawPointer { __ptr_disable in
        withUnsafeArgumentPackPointer(__ptr_joint, __ptr_disable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_joint_disable_collisions_between_bodies,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_joint_is_disabled_collisions_between_bodies: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "joint_is_disabled_collisions_between_bodies").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func jointIsDisabledCollisionsBetweenBodies(joint: Godot.RID) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        joint.withGodotUnsafeRawPointer { __ptr_joint in
        withUnsafeArgumentPackPointer(__ptr_joint) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_joint_is_disabled_collisions_between_bodies,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_joint_make_generic_6dof: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "joint_make_generic_6dof").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1684107643)!
        }
        }
    }()
    public func jointMakeGeneric6dof(joint: Godot.RID, bodyA: Godot.RID, localRefA: Godot.Transform3D, bodyB: Godot.RID, localRefB: Godot.Transform3D) {
        joint.withGodotUnsafeRawPointer { __ptr_joint in
        bodyA.withGodotUnsafeRawPointer { __ptr_bodyA in
        localRefA.withGodotUnsafeRawPointer { __ptr_localRefA in
        bodyB.withGodotUnsafeRawPointer { __ptr_bodyB in
        localRefB.withGodotUnsafeRawPointer { __ptr_localRefB in
        withUnsafeArgumentPackPointer(__ptr_joint, __ptr_bodyA, __ptr_localRefA, __ptr_bodyB, __ptr_localRefB) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_joint_make_generic_6dof,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    private static var __method_binding_generic_6dof_joint_set_param: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "generic_6dof_joint_set_param").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2600081391)!
        }
        }
    }()
    public func generic6dofJointSetParam(joint: Godot.RID, axis: Godot.Vector3.Axis, param: Godot.PhysicsServer3D.G6DOFJointAxisParam, value: Double) {
        joint.withGodotUnsafeRawPointer { __ptr_joint in
        axis.withGodotUnsafeRawPointer { __ptr_axis in
        param.withGodotUnsafeRawPointer { __ptr_param in
        value.withGodotUnsafeRawPointer { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_joint, __ptr_axis, __ptr_param, __ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_generic_6dof_joint_set_param,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_generic_6dof_joint_get_param: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "generic_6dof_joint_get_param").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 467122058)!
        }
        }
    }()
    public func generic6dofJointGetParam(joint: Godot.RID, axis: Godot.Vector3.Axis, param: Godot.PhysicsServer3D.G6DOFJointAxisParam) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        joint.withGodotUnsafeRawPointer { __ptr_joint in
        axis.withGodotUnsafeRawPointer { __ptr_axis in
        param.withGodotUnsafeRawPointer { __ptr_param in
        withUnsafeArgumentPackPointer(__ptr_joint, __ptr_axis, __ptr_param) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_generic_6dof_joint_get_param,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_generic_6dof_joint_set_flag: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "generic_6dof_joint_set_flag").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3570926903)!
        }
        }
    }()
    public func generic6dofJointSetFlag(joint: Godot.RID, axis: Godot.Vector3.Axis, flag: Godot.PhysicsServer3D.G6DOFJointAxisFlag, enable: Bool) {
        joint.withGodotUnsafeRawPointer { __ptr_joint in
        axis.withGodotUnsafeRawPointer { __ptr_axis in
        flag.withGodotUnsafeRawPointer { __ptr_flag in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_joint, __ptr_axis, __ptr_flag, __ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_generic_6dof_joint_set_flag,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_generic_6dof_joint_get_flag: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "generic_6dof_joint_get_flag").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4158090196)!
        }
        }
    }()
    public func generic6dofJointGetFlag(joint: Godot.RID, axis: Godot.Vector3.Axis, flag: Godot.PhysicsServer3D.G6DOFJointAxisFlag) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        joint.withGodotUnsafeRawPointer { __ptr_joint in
        axis.withGodotUnsafeRawPointer { __ptr_axis in
        flag.withGodotUnsafeRawPointer { __ptr_flag in
        withUnsafeArgumentPackPointer(__ptr_joint, __ptr_axis, __ptr_flag) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_generic_6dof_joint_get_flag,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_free_rid: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "free_rid").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2722037293)!
        }
        }
    }()
    public func freeRid(_ rid: Godot.RID) {
        rid.withGodotUnsafeRawPointer { __ptr_rid in
        withUnsafeArgumentPackPointer(__ptr_rid) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_free_rid,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_active: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_active").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    public func setActive(_ active: Bool) {
        active.withGodotUnsafeRawPointer { __ptr_active in
        withUnsafeArgumentPackPointer(__ptr_active) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_active,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_process_info: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_process_info").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1332958745)!
        }
        }
    }()
    public func processInfo(_ processInfo: Godot.PhysicsServer3D.ProcessInfo) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        processInfo.withGodotUnsafeRawPointer { __ptr_processInfo in
        withUnsafeArgumentPackPointer(__ptr_processInfo) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_process_info,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
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