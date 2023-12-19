//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class ENetConnection: RefCounted {
    public enum CompressionMode: UInt32, GodotEnum {
        case none = 0
        case rangeCoder = 1
        case fastlz = 2
        case zlib = 3
        case zstd = 4
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("None", 0),
            ("Range Coder", 1),
            ("Fastlz", 2),
            ("Zlib", 3),
            ("Zstd", 4),]
        }
    }
    public enum EventType: Int32, GodotEnum {
        case error = -1
        case none = 0
        case connect = 1
        case disconnect = 2
        case receive = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Error", -1),
            ("None", 0),
            ("Connect", 1),
            ("Disconnect", 2),
            ("Receive", 3),]
        }
    }
    public enum HostStatistic: UInt32, GodotEnum {
        case sentData = 0
        case sentPackets = 1
        case receivedData = 2
        case receivedPackets = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Sent Data", 0),
            ("Sent Packets", 1),
            ("Received Data", 2),
            ("Received Packets", 3),]
        }
    }

    private static var __method_binding_create_host_bound: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_host_bound").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1515002313)!
        }
        }
    }()
    public func createHostBound(bindAddress: Godot.GodotString, bindPort: Int32, maxPeers: Int32 = 32, maxChannels: Int32 = 0, inBandwidth bandwidth: Int32 = 0, outBandwidth: Int32 = 0) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        bindAddress.withGodotUnsafeRawPointer { __ptr_bindAddress in
        bindPort.withGodotUnsafeRawPointer { __ptr_bindPort in
        maxPeers.withGodotUnsafeRawPointer { __ptr_maxPeers in
        maxChannels.withGodotUnsafeRawPointer { __ptr_maxChannels in
        bandwidth.withGodotUnsafeRawPointer { __ptr_bandwidth in
        outBandwidth.withGodotUnsafeRawPointer { __ptr_outBandwidth in
        withUnsafeArgumentPackPointer(__ptr_bindAddress, __ptr_bindPort, __ptr_maxPeers, __ptr_maxChannels, __ptr_bandwidth, __ptr_outBandwidth) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_create_host_bound,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}}
    }

    private static var __method_binding_create_host: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_host").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 117198950)!
        }
        }
    }()
    public func createHost(maxPeers: Int32 = 32, maxChannels: Int32 = 0, inBandwidth bandwidth: Int32 = 0, outBandwidth: Int32 = 0) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        maxPeers.withGodotUnsafeRawPointer { __ptr_maxPeers in
        maxChannels.withGodotUnsafeRawPointer { __ptr_maxChannels in
        bandwidth.withGodotUnsafeRawPointer { __ptr_bandwidth in
        outBandwidth.withGodotUnsafeRawPointer { __ptr_outBandwidth in
        withUnsafeArgumentPackPointer(__ptr_maxPeers, __ptr_maxChannels, __ptr_bandwidth, __ptr_outBandwidth) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_create_host,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}
    }

    private static var __method_binding_destroy: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "destroy").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func destroy() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_destroy,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_connect_to_host: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "connect_to_host").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2171300490)!
        }
        }
    }()
    public func connectToHost(address: Godot.GodotString, port: Int32, channels: Int32 = 0, data: Int32 = 0) -> Godot.ENetPacketPeer? {
        Godot.ENetPacketPeer?.fromMutatingGodotUnsafePointer { __temporary in
        address.withGodotUnsafeRawPointer { __ptr_address in
        port.withGodotUnsafeRawPointer { __ptr_port in
        channels.withGodotUnsafeRawPointer { __ptr_channels in
        data.withGodotUnsafeRawPointer { __ptr_data in
        withUnsafeArgumentPackPointer(__ptr_address, __ptr_port, __ptr_channels, __ptr_data) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_connect_to_host,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}
    }

    private static var __method_binding_service: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "service").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2402345344)!
        }
        }
    }()
    public func service(timeout: Int32 = 0) -> Godot.AnyGodotArray {
        Godot.AnyGodotArray.fromMutatingGodotUnsafePointer { __temporary in
        timeout.withGodotUnsafeRawPointer { __ptr_timeout in
        withUnsafeArgumentPackPointer(__ptr_timeout) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_service,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_flush: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "flush").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func flush() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_flush,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_bandwidth_limit: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "bandwidth_limit").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2302169788)!
        }
        }
    }()
    public func bandwidthLimit(inBandwidth bandwidth: Int32 = 0, outBandwidth: Int32 = 0) {
        bandwidth.withGodotUnsafeRawPointer { __ptr_bandwidth in
        outBandwidth.withGodotUnsafeRawPointer { __ptr_outBandwidth in
        withUnsafeArgumentPackPointer(__ptr_bandwidth, __ptr_outBandwidth) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_bandwidth_limit,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_channel_limit: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "channel_limit").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func channelLimit(_ limit: Int32) {
        limit.withGodotUnsafeRawPointer { __ptr_limit in
        withUnsafeArgumentPackPointer(__ptr_limit) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_channel_limit,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_broadcast: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "broadcast").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2772371345)!
        }
        }
    }()
    public func broadcast(channel: Int32, packet: Godot.PackedByteArray, flags: Int32) {
        channel.withGodotUnsafeRawPointer { __ptr_channel in
        packet.withGodotUnsafeRawPointer { __ptr_packet in
        flags.withGodotUnsafeRawPointer { __ptr_flags in
        withUnsafeArgumentPackPointer(__ptr_channel, __ptr_packet, __ptr_flags) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_broadcast,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_compress: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "compress").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2660215187)!
        }
        }
    }()
    public func compress(mode: Godot.ENetConnection.CompressionMode) {
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_compress,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_dtls_server_setup: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "dtls_server_setup").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1262296096)!
        }
        }
    }()
    public func dtlsServerSetup(serverOptions: Godot.TLSOptions?) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        serverOptions.withGodotUnsafeRawPointer { __ptr_serverOptions in
        withUnsafePointer(to: __ptr_serverOptions) { _ptr___ptr_serverOptions in
        withUnsafeArgumentPackPointer(_ptr___ptr_serverOptions) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_dtls_server_setup,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_dtls_client_setup: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "dtls_client_setup").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1966198364)!
        }
        }
    }()
    public func dtlsClientSetup(hostname: Godot.GodotString, clientOptions: Godot.TLSOptions? = nil) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        hostname.withGodotUnsafeRawPointer { __ptr_hostname in
        clientOptions.withGodotUnsafeRawPointer { __ptr_clientOptions in
        withUnsafePointer(to: __ptr_clientOptions) { _ptr___ptr_clientOptions in
        withUnsafeArgumentPackPointer(__ptr_hostname, _ptr___ptr_clientOptions) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_dtls_client_setup,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_refuse_new_connections: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "refuse_new_connections").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    public func refuseNewConnections(refuse: Bool) {
        refuse.withGodotUnsafeRawPointer { __ptr_refuse in
        withUnsafeArgumentPackPointer(__ptr_refuse) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_refuse_new_connections,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_pop_statistic: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "pop_statistic").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2166904170)!
        }
        }
    }()
    public func popStatistic(_ statistic: Godot.ENetConnection.HostStatistic) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        statistic.withGodotUnsafeRawPointer { __ptr_statistic in
        withUnsafeArgumentPackPointer(__ptr_statistic) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_pop_statistic,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_max_channels: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_max_channels").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func maxChannels() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_max_channels,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_local_port: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_local_port").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func localPort() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_local_port,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_peers: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_peers").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()
    public func peers() -> Godot.GodotArray<Godot.ENetPacketPeer?> {
        Godot.GodotArray<Godot.ENetPacketPeer?>.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_peers,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_socket_send: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "socket_send").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1100646812)!
        }
        }
    }()
    public func socketSend(destinationAddress: Godot.GodotString, destinationPort: Int32, packet: Godot.PackedByteArray) {
        destinationAddress.withGodotUnsafeRawPointer { __ptr_destinationAddress in
        destinationPort.withGodotUnsafeRawPointer { __ptr_destinationPort in
        packet.withGodotUnsafeRawPointer { __ptr_packet in
        withUnsafeArgumentPackPointer(__ptr_destinationAddress, __ptr_destinationPort, __ptr_packet) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_socket_send,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
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