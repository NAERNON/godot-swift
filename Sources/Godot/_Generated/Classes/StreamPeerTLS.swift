//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class StreamPeerTLS: StreamPeer {
    public enum Status: UInt32 {
        case disconnected = 0
        case handshaking = 1
        case connected = 2
        case error = 3
        case errorHostnameMismatch = 4
    }

    private static var __method_binding_poll: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "poll").withUnsafeRawPointer { __ptr__method_name in
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

    private static var __method_binding_accept_stream: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "accept_stream").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4292689651)!
        }
        }
    }()
    public func acceptStream(_ stream: Godot.StreamPeer?, serverOptions: Godot.TLSOptions?) -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        stream.withUnsafeRawPointer { (__ptr_stream) in
            withUnsafePointer(to: __ptr_stream) { (_ptr___ptr_stream) in
                serverOptions.withUnsafeRawPointer { (__ptr_serverOptions) in
                    withUnsafePointer(to: __ptr_serverOptions) { (_ptr___ptr_serverOptions) in
                        withUnsafeArgumentPackPointer(_ptr___ptr_stream, _ptr___ptr_serverOptions) { (__accessPtr) in
                            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_accept_stream,
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
        return Godot.ErrorType(rawValue: __temporary)!
    }

    private static var __method_binding_connect_to_stream: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "connect_to_stream").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1325480781)!
        }
        }
    }()
    public func connectToStream(_ stream: Godot.StreamPeer?, commonName: Godot.GodotString, clientOptions: Godot.TLSOptions? = nil) -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        stream.withUnsafeRawPointer { (__ptr_stream) in
            withUnsafePointer(to: __ptr_stream) { (_ptr___ptr_stream) in
                commonName.withUnsafeRawPointer { (__ptr_commonName) in
                    clientOptions.withUnsafeRawPointer { (__ptr_clientOptions) in
                        withUnsafePointer(to: __ptr_clientOptions) { (_ptr___ptr_clientOptions) in
                            withUnsafeArgumentPackPointer(_ptr___ptr_stream, __ptr_commonName, _ptr___ptr_clientOptions) { (__accessPtr) in
                                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                        gdextension_interface_object_method_bind_ptrcall(
                                            Self.__method_binding_connect_to_stream,
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
        GodotStringName(swiftStaticString: "get_status").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1128380576)!
        }
        }
    }()
    public func status() -> Godot.StreamPeerTLS.Status {
        var __temporary = Godot.StreamPeerTLS.Status.RawValue(0)
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
        return Godot.StreamPeerTLS.Status(rawValue: __temporary)!
    }

    private static var __method_binding_get_stream: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_stream").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2741655269)!
        }
        }
    }()
    public func stream() -> Godot.StreamPeer? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_stream,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.StreamPeer.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_disconnect_from_stream: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "disconnect_from_stream").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func disconnectFromStream() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_disconnect_from_stream,
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