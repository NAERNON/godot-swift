//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class ConeTwistJoint3D: Joint3D {
    public enum Param: UInt32 {
        case swingSpan = 0
        case twistSpan = 1
        case bias = 2
        case softness = 3
        case relaxation = 4
        case max = 5
    }

    private static var __method_binding_set_param: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_param").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1062470226)!
        }
        }
    }()
    public func setParam(_ param: Godot.ConeTwistJoint3D.Param, value: Double) {
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
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2928790850)!
        }
        }
    }()
    private func __getParam(_ param: Godot.ConeTwistJoint3D.Param) -> Double {
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

    public var swingSpan: Double {
        get {
            __getParam(
                .init(rawValue: 0)!
            )
        }
    }

    public var twistSpan: Double {
        get {
            __getParam(
                .init(rawValue: 1)!
            )
        }
    }

    public var bias: Double {
        get {
            __getParam(
                .init(rawValue: 2)!
            )
        }
    }

    public var softness: Double {
        get {
            __getParam(
                .init(rawValue: 3)!
            )
        }
    }

    public var relaxation: Double {
        get {
            __getParam(
                .init(rawValue: 4)!
            )
        }
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