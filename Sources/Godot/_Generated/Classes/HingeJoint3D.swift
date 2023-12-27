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
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_param").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3082977519)!
        }
        }
    }()
    public func setParam(_ param: Godot.HingeJoint3D.Param, value: Double) {
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

    private static var __method_binding_get_param: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_param").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4066002676)!
        }
        }
    }()
    public func param(_ param: Godot.HingeJoint3D.Param) -> Double {
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

    private static var __method_binding_set_flag: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_flag").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1083494620)!
        }
        }
    }()
    public func setFlag(_ flag: Godot.HingeJoint3D.Flag, enabled: Bool) {
        flag.withGodotUnsafeRawPointer { __ptr_flag in
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_flag, __ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_flag,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_flag: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_flag").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2841369610)!
        }
        }
    }()
    public func flag(_ flag: Godot.HingeJoint3D.Flag) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        flag.withGodotUnsafeRawPointer { __ptr_flag in
        withUnsafeArgumentPackPointer(__ptr_flag) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_flag,
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