//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class ENetMultiplayerPeer: MultiplayerPeer {
    private static var __method_binding_create_server: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "create_server").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1616151701)!
        }
        }
    }()
    public func createServer(port: Int32, maxClients: Int32 = 32, maxChannels: Int32 = 0, inBandwidth bandwidth: Int32 = 0, outBandwidth: Int32 = 0) -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        withUnsafePointer(to: port) { (__ptr_port) in
            withUnsafePointer(to: maxClients) { (__ptr_maxClients) in
                withUnsafePointer(to: maxChannels) { (__ptr_maxChannels) in
                    withUnsafePointer(to: bandwidth) { (__ptr_bandwidth) in
                        withUnsafePointer(to: outBandwidth) { (__ptr_outBandwidth) in
                            withUnsafeArgumentPackPointer(__ptr_port, __ptr_maxClients, __ptr_maxChannels, __ptr_bandwidth, __ptr_outBandwidth) { (__accessPtr) in
                                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                        gdextension_interface_object_method_bind_ptrcall(
                                            Self.__method_binding_create_server,
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

    private static var __method_binding_create_client: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "create_client").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 920217784)!
        }
        }
    }()
    public func createClient(address: Godot.GodotString, port: Int32, channelCount: Int32 = 0, inBandwidth bandwidth: Int32 = 0, outBandwidth: Int32 = 0, localPort: Int32 = 0) -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        address.withUnsafeRawPointer { (__ptr_address) in
            withUnsafePointer(to: port) { (__ptr_port) in
                withUnsafePointer(to: channelCount) { (__ptr_channelCount) in
                    withUnsafePointer(to: bandwidth) { (__ptr_bandwidth) in
                        withUnsafePointer(to: outBandwidth) { (__ptr_outBandwidth) in
                            withUnsafePointer(to: localPort) { (__ptr_localPort) in
                                withUnsafeArgumentPackPointer(__ptr_address, __ptr_port, __ptr_channelCount, __ptr_bandwidth, __ptr_outBandwidth, __ptr_localPort) { (__accessPtr) in
                                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                        `self`.withUnsafeRawPointer { (__ptr_self) in
                                            gdextension_interface_object_method_bind_ptrcall(
                                                Self.__method_binding_create_client,
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
        }
        return Godot.ErrorType(rawValue: __temporary)!
    }

    private static var __method_binding_create_mesh: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "create_mesh").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 844576869)!
        }
        }
    }()
    public func createMesh(uniqueId: Int32) -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        withUnsafePointer(to: uniqueId) { (__ptr_uniqueId) in
            withUnsafeArgumentPackPointer(__ptr_uniqueId) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_create_mesh,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.ErrorType(rawValue: __temporary)!
    }

    private static var __method_binding_add_mesh_peer: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_mesh_peer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1293458335)!
        }
        }
    }()
    public func addMeshPeer(peerId: Int32, host: Godot.ENetConnection?) -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        withUnsafePointer(to: peerId) { (__ptr_peerId) in
            host.withUnsafeRawPointer { (__ptr_host) in
                withUnsafePointer(to: __ptr_host) { (_ptr___ptr_host) in
                    withUnsafeArgumentPackPointer(__ptr_peerId, _ptr___ptr_host) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_add_mesh_peer,
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
        return Godot.ErrorType(rawValue: __temporary)!
    }

    private static var __method_binding_set_bind_ip: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_bind_ip").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func setBindIp(_ ip: Godot.GodotString) {
        ip.withUnsafeRawPointer { (__ptr_ip) in
            withUnsafeArgumentPackPointer(__ptr_ip) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_bind_ip,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_host: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_host").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4103238886)!
        }
        }
    }()
    private func __getHost() -> Godot.ENetConnection? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_host,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.ENetConnection.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_get_peer: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_peer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3793311544)!
        }
        }
    }()
    public func peer(id: Int32) -> Godot.ENetPacketPeer? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafePointer(to: id) { (__ptr_id) in
            withUnsafeArgumentPackPointer(__ptr_id) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_peer,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.ENetPacketPeer.retrievedInstanceManagedByGodot(__temporary)
    }

    public var host: Godot.ENetConnection? {
        get {
            __getHost()
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