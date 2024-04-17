//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotClass
open class PhysicsServer3DManager: Object {
    internal static var __method_binding_register_server: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "register_server").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2137474292)!
        }
        }
    }()

    public func registerServer(
        name: Godot.GodotString,
        createCallback: Godot.Callable
    ) {
        withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
            withTransferrableUnsafeRawPointer(to: createCallback) { __ptr_createCallback in
                withUnsafeArgumentPackPointer(__ptr_name, __ptr_createCallback) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_register_server,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_default_server: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_default_server").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2956805083)!
        }
        }
    }()

    public func setDefaultServer(
        name: Godot.GodotString,
        priority: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
            withTransferrableUnsafeRawPointer(to: priority) { __ptr_priority in
                withUnsafeArgumentPackPointer(__ptr_name, __ptr_priority) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_default_server,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
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