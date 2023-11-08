//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class HingeJoint3D: Joint3D {
    public enum Param: UInt32, GodotEnum {
        case bias = 0
        case limitUpper = 1
        case limitLower = 2
        case limitBias = 3
        case limitSoftness = 4
        case limitRelaxation = 5
        case motorTargetVelocity = 6
        case motorMaxImpulse = 7
        case max = 8
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Bias", 0),
            ("Limit Upper", 1),
            ("Limit Lower", 2),
            ("Limit Bias", 3),
            ("Limit Softness", 4),
            ("Limit Relaxation", 5),
            ("Motor Target Velocity", 6),
            ("Motor Max Impulse", 7),
            ("Max", 8),]
        }
    }
    public enum Flag: UInt32, GodotEnum {
        case useLimit = 0
        case enableMotor = 1
        case max = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Use Limit", 0),
            ("Enable Motor", 1),
            ("Max", 2),]
        }
    }

    private static var __method_binding_set_param: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_param").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3082977519)!
        }
        }
    }()
    public func setParam(_ param: Godot.HingeJoint3D.Param, value: Double) {
        withUnsafePointer(to: param) { (__ptr_param) in
            withUnsafePointer(to: value) { (__ptr_value) in
                withUnsafeArgumentPackPointer(__ptr_param, __ptr_value) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_param,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_param: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_param").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4066002676)!
        }
        }
    }()
    public func param(_ param: Godot.HingeJoint3D.Param) -> Double {
        var __temporary = Double()
        withUnsafePointer(to: param) { (__ptr_param) in
            withUnsafeArgumentPackPointer(__ptr_param) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_param,
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

    private static var __method_binding_set_flag: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_flag").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1083494620)!
        }
        }
    }()
    public func setFlag(_ flag: Godot.HingeJoint3D.Flag, enabled: Bool) {
        withUnsafePointer(to: flag) { (__ptr_flag) in
            withUnsafePointer(to: enabled) { (__ptr_enabled) in
                withUnsafeArgumentPackPointer(__ptr_flag, __ptr_enabled) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_flag,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_flag: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_flag").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2841369610)!
        }
        }
    }()
    public func flag(_ flag: Godot.HingeJoint3D.Flag) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: flag) { (__ptr_flag) in
            withUnsafeArgumentPackPointer(__ptr_flag) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_flag,
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