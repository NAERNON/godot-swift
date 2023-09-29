//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class DTLSServer: RefCounted {
    private static var __method_binding_setup: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "setup").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1262296096)!
        }
        }
    }()
    public func setup(serverOptions: Godot.TLSOptions?) -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        serverOptions.withUnsafeRawPointer { (__ptr_serverOptions) in
            withUnsafePointer(to: __ptr_serverOptions) { (_ptr___ptr_serverOptions) in
                withUnsafeArgumentPackPointer(_ptr___ptr_serverOptions) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_setup,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return Godot.ErrorType(rawValue: __temporary)!
    }

    private static var __method_binding_take_connection: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "take_connection").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3946580474)!
        }
        }
    }()
    public func takeConnection(udpPeer: Godot.PacketPeerUDP?) -> Godot.PacketPeerDTLS? {
        var __temporary: GDExtensionObjectPtr!
        udpPeer.withUnsafeRawPointer { (__ptr_udpPeer) in
            withUnsafePointer(to: __ptr_udpPeer) { (_ptr___ptr_udpPeer) in
                withUnsafeArgumentPackPointer(_ptr___ptr_udpPeer) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_take_connection,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return Godot.PacketPeerDTLS.retrievedInstanceManagedByGodot(__temporary)
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