//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotClass
open class SliderJoint3D: Joint3D {
    public enum Param: UInt32, GodotEnum {
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

    internal static var __method_binding_set_param: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_param").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 918243683)!
        }
        }
    }()

    public func setParam(
        _ param: Godot.SliderJoint3D.Param,
        value: Double
    ) {
        param.withGodotUnsafeRawPointer { __ptr_param in
        value.withGodotUnsafeRawPointer { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_param, __ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_param,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_param: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_param").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 959925627)!
        }
        }
    }()

    public func param(
        _ param: Godot.SliderJoint3D.Param
    ) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        param.withGodotUnsafeRawPointer { __ptr_param in
        withUnsafeArgumentPackPointer(__ptr_param) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_param,
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