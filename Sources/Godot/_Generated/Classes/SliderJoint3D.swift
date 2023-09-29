//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class SliderJoint3D: Joint3D {
    public enum Param: UInt32 {
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
    }

    private static var __method_binding_set_param: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_param").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 918243683)!
        }
        }
    }()
    public func setParam(_ param: Godot.SliderJoint3D.Param, value: Double) {
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
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 959925627)!
        }
        }
    }()
    public func param(_ param: Godot.SliderJoint3D.Param) -> Double {
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