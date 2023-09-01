//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class PacketPeerDTLS: PacketPeer {
    public enum Status: UInt32 {
        case disconnected = 0
        case handshaking = 1
        case connected = 2
        case error = 3
        case errorHostnameMismatch = 4
    }

    private static var __method_binding_poll: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "poll").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func poll() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_poll,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_connect_to_peer: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "connect_to_peer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1801538152)!
        }
        }
    }()
    public func connectToPeer(packetPeer: Godot.PacketPeerUDP?, hostname: Godot.GodotString, clientOptions: Godot.TLSOptions? = nil) -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        packetPeer.withUnsafeRawPointer { (__ptr_packetPeer) in
            withUnsafePointer(to: __ptr_packetPeer) { (_ptr___ptr_packetPeer) in
                hostname.withUnsafeRawPointer { (__ptr_hostname) in
                    clientOptions.withUnsafeRawPointer { (__ptr_clientOptions) in
                        withUnsafePointer(to: __ptr_clientOptions) { (_ptr___ptr_clientOptions) in
                            withUnsafeArgumentPackPointer(_ptr___ptr_packetPeer, __ptr_hostname, _ptr___ptr_clientOptions) { (__accessPtr) in
                                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                        gdextension_interface_object_method_bind_ptrcall(
                                            Self.__method_binding_connect_to_peer,
                                            __ptr_self,
                                            __accessPtr,
                                            __ptr___temporary
                                        )
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return Godot.ErrorType(rawValue: __temporary)!
    }

    private static var __method_binding_get_status: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_status").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3248654679)!
        }
        }
    }()
    public func status() -> Godot.PacketPeerDTLS.Status {
        var __temporary = Godot.PacketPeerDTLS.Status.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_status,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.PacketPeerDTLS.Status(rawValue: __temporary)!
    }

    private static var __method_binding_disconnect_from_peer: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "disconnect_from_peer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func disconnectFromPeer() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_disconnect_from_peer,
                __ptr_self,
                nil,
                nil
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