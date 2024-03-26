//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotClass
open class Generic6DOFJoint3D: Joint3D {
    public enum Param: UInt32, GodotEnum {
        case linearLowerLimit = 0
        case linearUpperLimit = 1
        case linearLimitSoftness = 2
        case linearRestitution = 3
        case linearDamping = 4
        case linearMotorTargetVelocity = 5
        case linearMotorForceLimit = 6
        case linearSpringStiffness = 7
        case linearSpringDamping = 8
        case linearSpringEquilibriumPoint = 9
        case angularLowerLimit = 10
        case angularUpperLimit = 11
        case angularLimitSoftness = 12
        case angularDamping = 13
        case angularRestitution = 14
        case angularForceLimit = 15
        case angularErp = 16
        case angularMotorTargetVelocity = 17
        case angularMotorForceLimit = 18
        case angularSpringStiffness = 19
        case angularSpringDamping = 20
        case angularSpringEquilibriumPoint = 21
        case max = 22

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Linear Lower Limit", 0),
            ("Linear Upper Limit", 1),
            ("Linear Limit Softness", 2),
            ("Linear Restitution", 3),
            ("Linear Damping", 4),
            ("Linear Motor Target Velocity", 5),
            ("Linear Motor Force Limit", 6),
            ("Linear Spring Stiffness", 7),
            ("Linear Spring Damping", 8),
            ("Linear Spring Equilibrium Point", 9),
            ("Angular Lower Limit", 10),
            ("Angular Upper Limit", 11),
            ("Angular Limit Softness", 12),
            ("Angular Damping", 13),
            ("Angular Restitution", 14),
            ("Angular Force Limit", 15),
            ("Angular Erp", 16),
            ("Angular Motor Target Velocity", 17),
            ("Angular Motor Force Limit", 18),
            ("Angular Spring Stiffness", 19),
            ("Angular Spring Damping", 20),
            ("Angular Spring Equilibrium Point", 21),
            ("Max", 22),]
        }
    }

    public enum Flag: UInt32, GodotEnum {
        case enableLinearLimit = 0
        case enableAngularLimit = 1
        case enableLinearSpring = 3
        case enableAngularSpring = 2
        case enableMotor = 4
        case enableLinearMotor = 5
        case max = 6

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Enable Linear Limit", 0),
            ("Enable Angular Limit", 1),
            ("Enable Angular Spring", 2),
            ("Enable Linear Spring", 3),
            ("Enable Motor", 4),
            ("Enable Linear Motor", 5),
            ("Max", 6),]
        }
    }

    internal static var __method_binding_set_param_x: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_param_x").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2018184242)!
        }
        }
    }()

    public func setParamX(
        param: Godot.Generic6DOFJoint3D.Param,
        value: Double
    ) {
        param.withGodotUnsafeRawPointer { __ptr_param in
        value.withGodotUnsafeRawPointer { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_param, __ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_param_x,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_param_x: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_param_x").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2599835054)!
        }
        }
    }()

    public func paramX(
        param: Godot.Generic6DOFJoint3D.Param
    ) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        param.withGodotUnsafeRawPointer { __ptr_param in
        withUnsafeArgumentPackPointer(__ptr_param) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_param_x,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_param_y: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_param_y").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2018184242)!
        }
        }
    }()

    public func setParamY(
        param: Godot.Generic6DOFJoint3D.Param,
        value: Double
    ) {
        param.withGodotUnsafeRawPointer { __ptr_param in
        value.withGodotUnsafeRawPointer { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_param, __ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_param_y,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_param_y: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_param_y").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2599835054)!
        }
        }
    }()

    public func paramY(
        param: Godot.Generic6DOFJoint3D.Param
    ) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        param.withGodotUnsafeRawPointer { __ptr_param in
        withUnsafeArgumentPackPointer(__ptr_param) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_param_y,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_param_z: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_param_z").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2018184242)!
        }
        }
    }()

    public func setParamZ(
        param: Godot.Generic6DOFJoint3D.Param,
        value: Double
    ) {
        param.withGodotUnsafeRawPointer { __ptr_param in
        value.withGodotUnsafeRawPointer { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_param, __ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_param_z,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_param_z: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_param_z").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2599835054)!
        }
        }
    }()

    public func paramZ(
        param: Godot.Generic6DOFJoint3D.Param
    ) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        param.withGodotUnsafeRawPointer { __ptr_param in
        withUnsafeArgumentPackPointer(__ptr_param) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_param_z,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_flag_x: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_flag_x").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2451594564)!
        }
        }
    }()

    public func setFlagX(
        flag: Godot.Generic6DOFJoint3D.Flag,
        value: Bool
    ) {
        flag.withGodotUnsafeRawPointer { __ptr_flag in
        value.withGodotUnsafeRawPointer { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_flag, __ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_flag_x,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_flag_x: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_flag_x").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2122427807)!
        }
        }
    }()

    public func flagX(
        flag: Godot.Generic6DOFJoint3D.Flag
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        flag.withGodotUnsafeRawPointer { __ptr_flag in
        withUnsafeArgumentPackPointer(__ptr_flag) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_flag_x,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_flag_y: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_flag_y").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2451594564)!
        }
        }
    }()

    public func setFlagY(
        flag: Godot.Generic6DOFJoint3D.Flag,
        value: Bool
    ) {
        flag.withGodotUnsafeRawPointer { __ptr_flag in
        value.withGodotUnsafeRawPointer { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_flag, __ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_flag_y,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_flag_y: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_flag_y").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2122427807)!
        }
        }
    }()

    public func flagY(
        flag: Godot.Generic6DOFJoint3D.Flag
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        flag.withGodotUnsafeRawPointer { __ptr_flag in
        withUnsafeArgumentPackPointer(__ptr_flag) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_flag_y,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_flag_z: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_flag_z").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2451594564)!
        }
        }
    }()

    public func setFlagZ(
        flag: Godot.Generic6DOFJoint3D.Flag,
        value: Bool
    ) {
        flag.withGodotUnsafeRawPointer { __ptr_flag in
        value.withGodotUnsafeRawPointer { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_flag, __ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_flag_z,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_flag_z: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_flag_z").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2122427807)!
        }
        }
    }()

    public func flagZ(
        flag: Godot.Generic6DOFJoint3D.Flag
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        flag.withGodotUnsafeRawPointer { __ptr_flag in
        withUnsafeArgumentPackPointer(__ptr_flag) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_flag_z,
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