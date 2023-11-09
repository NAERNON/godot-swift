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

    private static var __method_binding_set_param_x: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_param_x").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2018184242)!
        }
        }
    }()
    public func setParamX(param: Godot.Generic6DOFJoint3D.Param, value: Double) {
        withUnsafePointer(to: param) { (__ptr_param) in
            withUnsafePointer(to: value) { (__ptr_value) in
                withUnsafeArgumentPackPointer(__ptr_param, __ptr_value) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_param_x,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_param_x: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_param_x").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2599835054)!
        }
        }
    }()
    public func paramX(param: Godot.Generic6DOFJoint3D.Param) -> Double {
        var __temporary = Double()
        withUnsafePointer(to: param) { (__ptr_param) in
            withUnsafeArgumentPackPointer(__ptr_param) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_param_x,
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

    private static var __method_binding_set_param_y: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_param_y").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2018184242)!
        }
        }
    }()
    public func setParamY(param: Godot.Generic6DOFJoint3D.Param, value: Double) {
        withUnsafePointer(to: param) { (__ptr_param) in
            withUnsafePointer(to: value) { (__ptr_value) in
                withUnsafeArgumentPackPointer(__ptr_param, __ptr_value) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_param_y,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_param_y: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_param_y").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2599835054)!
        }
        }
    }()
    public func paramY(param: Godot.Generic6DOFJoint3D.Param) -> Double {
        var __temporary = Double()
        withUnsafePointer(to: param) { (__ptr_param) in
            withUnsafeArgumentPackPointer(__ptr_param) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_param_y,
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

    private static var __method_binding_set_param_z: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_param_z").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2018184242)!
        }
        }
    }()
    public func setParamZ(param: Godot.Generic6DOFJoint3D.Param, value: Double) {
        withUnsafePointer(to: param) { (__ptr_param) in
            withUnsafePointer(to: value) { (__ptr_value) in
                withUnsafeArgumentPackPointer(__ptr_param, __ptr_value) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_param_z,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_param_z: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_param_z").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2599835054)!
        }
        }
    }()
    public func paramZ(param: Godot.Generic6DOFJoint3D.Param) -> Double {
        var __temporary = Double()
        withUnsafePointer(to: param) { (__ptr_param) in
            withUnsafeArgumentPackPointer(__ptr_param) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_param_z,
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

    private static var __method_binding_set_flag_x: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_flag_x").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2451594564)!
        }
        }
    }()
    public func setFlagX(flag: Godot.Generic6DOFJoint3D.Flag, value: Bool) {
        withUnsafePointer(to: flag) { (__ptr_flag) in
            withUnsafePointer(to: value) { (__ptr_value) in
                withUnsafeArgumentPackPointer(__ptr_flag, __ptr_value) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_flag_x,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_flag_x: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_flag_x").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2122427807)!
        }
        }
    }()
    public func flagX(flag: Godot.Generic6DOFJoint3D.Flag) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: flag) { (__ptr_flag) in
            withUnsafeArgumentPackPointer(__ptr_flag) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_flag_x,
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

    private static var __method_binding_set_flag_y: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_flag_y").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2451594564)!
        }
        }
    }()
    public func setFlagY(flag: Godot.Generic6DOFJoint3D.Flag, value: Bool) {
        withUnsafePointer(to: flag) { (__ptr_flag) in
            withUnsafePointer(to: value) { (__ptr_value) in
                withUnsafeArgumentPackPointer(__ptr_flag, __ptr_value) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_flag_y,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_flag_y: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_flag_y").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2122427807)!
        }
        }
    }()
    public func flagY(flag: Godot.Generic6DOFJoint3D.Flag) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: flag) { (__ptr_flag) in
            withUnsafeArgumentPackPointer(__ptr_flag) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_flag_y,
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

    private static var __method_binding_set_flag_z: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_flag_z").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2451594564)!
        }
        }
    }()
    public func setFlagZ(flag: Godot.Generic6DOFJoint3D.Flag, value: Bool) {
        withUnsafePointer(to: flag) { (__ptr_flag) in
            withUnsafePointer(to: value) { (__ptr_value) in
                withUnsafeArgumentPackPointer(__ptr_flag, __ptr_value) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_flag_z,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_flag_z: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_flag_z").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2122427807)!
        }
        }
    }()
    public func flagZ(flag: Godot.Generic6DOFJoint3D.Flag) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: flag) { (__ptr_flag) in
            withUnsafeArgumentPackPointer(__ptr_flag) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_flag_z,
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