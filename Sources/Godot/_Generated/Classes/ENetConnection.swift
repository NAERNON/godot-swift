//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class ENetConnection: RefCounted {
    public enum CompressionMode: UInt32 {
        case none = 0
        case rangeCoder = 1
        case fastlz = 2
        case zlib = 3
        case zstd = 4
    }
    public enum EventType: Int32 {
        case error = -1
        case none = 0
        case connect = 1
        case disconnect = 2
        case receive = 3
    }
    public enum HostStatistic: UInt32 {
        case sentData = 0
        case sentPackets = 1
        case receivedData = 2
        case receivedPackets = 3
    }

    private static var __method_binding_create_host_bound: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "create_host_bound").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 866250949)!
        }
        }
    }()
    public func createHostBound(bindAddress: Godot.GodotString, bindPort: Int32, maxPeers: Int32 = 32, maxChannels: Int32 = 0, inBandwidth bandwidth: Int32 = 0, outBandwidth: Int32 = 0) -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        bindAddress.withUnsafeRawPointer { (__ptr_bindAddress) in
            withUnsafePointer(to: bindPort) { (__ptr_bindPort) in
                withUnsafePointer(to: maxPeers) { (__ptr_maxPeers) in
                    withUnsafePointer(to: maxChannels) { (__ptr_maxChannels) in
                        withUnsafePointer(to: bandwidth) { (__ptr_bandwidth) in
                            withUnsafePointer(to: outBandwidth) { (__ptr_outBandwidth) in
                                withUnsafeArgumentPackPointer(__ptr_bindAddress, __ptr_bindPort, __ptr_maxPeers, __ptr_maxChannels, __ptr_bandwidth, __ptr_outBandwidth) { (__accessPtr) in
                                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                        `self`.withUnsafeRawPointer { (__ptr_self) in
                                            gdextension_interface_object_method_bind_ptrcall(
                                                Self.__method_binding_create_host_bound,
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

    private static var __method_binding_create_host: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "create_host").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 117198950)!
        }
        }
    }()
    public func createHost(maxPeers: Int32 = 32, maxChannels: Int32 = 0, inBandwidth bandwidth: Int32 = 0, outBandwidth: Int32 = 0) -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        withUnsafePointer(to: maxPeers) { (__ptr_maxPeers) in
            withUnsafePointer(to: maxChannels) { (__ptr_maxChannels) in
                withUnsafePointer(to: bandwidth) { (__ptr_bandwidth) in
                    withUnsafePointer(to: outBandwidth) { (__ptr_outBandwidth) in
                        withUnsafeArgumentPackPointer(__ptr_maxPeers, __ptr_maxChannels, __ptr_bandwidth, __ptr_outBandwidth) { (__accessPtr) in
                            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_create_host,
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

    private static var __method_binding_destroy: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "destroy").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func destroy() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_destroy,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_connect_to_host: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "connect_to_host").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 385984708)!
        }
        }
    }()
    public func connectToHost(address: Godot.GodotString, port: Int32, channels: Int32 = 0, data: Int32 = 0) -> Godot.ENetPacketPeer? {
        var __temporary: GDExtensionObjectPtr!
        address.withUnsafeRawPointer { (__ptr_address) in
            withUnsafePointer(to: port) { (__ptr_port) in
                withUnsafePointer(to: channels) { (__ptr_channels) in
                    withUnsafePointer(to: data) { (__ptr_data) in
                        withUnsafeArgumentPackPointer(__ptr_address, __ptr_port, __ptr_channels, __ptr_data) { (__accessPtr) in
                            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_connect_to_host,
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
        return Godot.ENetPacketPeer.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_service: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "service").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2402345344)!
        }
        }
    }()
    public func service(timeout: Int32 = 0) -> Godot.GodotArray {
        let __temporary = Godot.GodotArray()
        withUnsafePointer(to: timeout) { (__ptr_timeout) in
            withUnsafeArgumentPackPointer(__ptr_timeout) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_service,
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

    private static var __method_binding_flush: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "flush").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func flush() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_flush,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_bandwidth_limit: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "bandwidth_limit").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2302169788)!
        }
        }
    }()
    public func bandwidthLimit(inBandwidth bandwidth: Int32 = 0, outBandwidth: Int32 = 0) {
        withUnsafePointer(to: bandwidth) { (__ptr_bandwidth) in
            withUnsafePointer(to: outBandwidth) { (__ptr_outBandwidth) in
                withUnsafeArgumentPackPointer(__ptr_bandwidth, __ptr_outBandwidth) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_bandwidth_limit,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_channel_limit: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "channel_limit").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func channelLimit(_ limit: Int32) {
        withUnsafePointer(to: limit) { (__ptr_limit) in
            withUnsafeArgumentPackPointer(__ptr_limit) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_channel_limit,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_broadcast: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "broadcast").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2772371345)!
        }
        }
    }()
    public func broadcast(channel: Int32, packet: Godot.PackedByteArray, flags: Int32) {
        withUnsafePointer(to: channel) { (__ptr_channel) in
            packet.withUnsafeRawPointer { (__ptr_packet) in
                withUnsafePointer(to: flags) { (__ptr_flags) in
                    withUnsafeArgumentPackPointer(__ptr_channel, __ptr_packet, __ptr_flags) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_broadcast,
                                __ptr_self,
                                __accessPtr,
                                nil
                            )
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_compress: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "compress").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2660215187)!
        }
        }
    }()
    public func compress(mode: Godot.ENetConnection.CompressionMode) {
        withUnsafePointer(to: mode) { (__ptr_mode) in
            withUnsafeArgumentPackPointer(__ptr_mode) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_compress,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_dtls_server_setup: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "dtls_server_setup").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1262296096)!
        }
        }
    }()
    public func dtlsServerSetup(serverOptions: Godot.TLSOptions?) -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        serverOptions.withUnsafeRawPointer { (__ptr_serverOptions) in
            withUnsafePointer(to: __ptr_serverOptions) { (_ptr___ptr_serverOptions) in
                withUnsafeArgumentPackPointer(_ptr___ptr_serverOptions) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_dtls_server_setup,
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

    private static var __method_binding_dtls_client_setup: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "dtls_client_setup").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3097527179)!
        }
        }
    }()
    public func dtlsClientSetup(hostname: Godot.GodotString, clientOptions: Godot.TLSOptions? = nil) -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        hostname.withUnsafeRawPointer { (__ptr_hostname) in
            clientOptions.withUnsafeRawPointer { (__ptr_clientOptions) in
                withUnsafePointer(to: __ptr_clientOptions) { (_ptr___ptr_clientOptions) in
                    withUnsafeArgumentPackPointer(__ptr_hostname, _ptr___ptr_clientOptions) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_dtls_client_setup,
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

    private static var __method_binding_refuse_new_connections: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "refuse_new_connections").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    public func refuseNewConnections(refuse: Bool) {
        withUnsafePointer(to: refuse) { (__ptr_refuse) in
            withUnsafeArgumentPackPointer(__ptr_refuse) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_refuse_new_connections,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_pop_statistic: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "pop_statistic").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2166904170)!
        }
        }
    }()
    public func popStatistic(_ statistic: Godot.ENetConnection.HostStatistic) -> Double {
        var __temporary = Double()
        withUnsafePointer(to: statistic) { (__ptr_statistic) in
            withUnsafeArgumentPackPointer(__ptr_statistic) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_pop_statistic,
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

    private static var __method_binding_get_max_channels: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_max_channels").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func maxChannels() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_max_channels,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_local_port: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_local_port").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func localPort() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_local_port,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_peers: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_peers").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()
    public func peers() -> Godot.GodotTypedArray<Godot.ENetPacketPeer?> {
        let __temporary = Godot.GodotTypedArray<Godot.ENetPacketPeer?>()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_peers,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_socket_send: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "socket_send").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1100646812)!
        }
        }
    }()
    public func socketSend(destinationAddress: Godot.GodotString, destinationPort: Int32, packet: Godot.PackedByteArray) {
        destinationAddress.withUnsafeRawPointer { (__ptr_destinationAddress) in
            withUnsafePointer(to: destinationPort) { (__ptr_destinationPort) in
                packet.withUnsafeRawPointer { (__ptr_packet) in
                    withUnsafeArgumentPackPointer(__ptr_destinationAddress, __ptr_destinationPort, __ptr_packet) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_socket_send,
                                __ptr_self,
                                __accessPtr,
                                nil
                            )
                        }
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