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
               ("Zstd", 4),
            ]
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
               ("Receive", 3),
            ]
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
               ("Received Packets", 3),
            ]
        }
    }
    
    internal static var __method_binding_create_host_bound: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "create_host_bound").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1515002313)!
            }
        }
    }()
    
    public func createHostBound(
        bindAddress: Godot.GodotString,
        bindPort: Int32,
        maxPeers: Int32 = 32,
        maxChannels: Int32 = 0,
        inBandwidth bandwidth: Int32 = 0,
        outBandwidth: Int32 = 0
    ) -> Godot.ErrorType {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: bindAddress) { __ptr_bindAddress in
                withTransferrableUnsafeRawPointer(to: bindPort) { __ptr_bindPort in
                    withTransferrableUnsafeRawPointer(to: maxPeers) { __ptr_maxPeers in
                        withTransferrableUnsafeRawPointer(to: maxChannels) { __ptr_maxChannels in
                            withTransferrableUnsafeRawPointer(to: bandwidth) { __ptr_bandwidth in
                                withTransferrableUnsafeRawPointer(to: outBandwidth) { __ptr_outBandwidth in
                                    withUnsafeArgumentPackPointer(__ptr_bindAddress, __ptr_bindPort, __ptr_maxPeers, __ptr_maxChannels, __ptr_bandwidth, __ptr_outBandwidth) { __accessPtr in
                                        self.withUnsafeMutableRawPointer { __ptr_self in
                                            GodotExtension.Interface.objectMethodBindPtrcall(
                                                Self.__method_binding_create_host_bound,
                                                __ptr_self,
                                                __accessPtr,
                                                __temporary
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
    }
    
    internal static var __method_binding_create_host: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "create_host").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 117198950)!
            }
        }
    }()
    
    public func createHost(
        maxPeers: Int32 = 32,
        maxChannels: Int32 = 0,
        inBandwidth bandwidth: Int32 = 0,
        outBandwidth: Int32 = 0
    ) -> Godot.ErrorType {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: maxPeers) { __ptr_maxPeers in
                withTransferrableUnsafeRawPointer(to: maxChannels) { __ptr_maxChannels in
                    withTransferrableUnsafeRawPointer(to: bandwidth) { __ptr_bandwidth in
                        withTransferrableUnsafeRawPointer(to: outBandwidth) { __ptr_outBandwidth in
                            withUnsafeArgumentPackPointer(__ptr_maxPeers, __ptr_maxChannels, __ptr_bandwidth, __ptr_outBandwidth) { __accessPtr in
                                self.withUnsafeMutableRawPointer { __ptr_self in
                                    GodotExtension.Interface.objectMethodBindPtrcall(
                                        Self.__method_binding_create_host,
                                        __ptr_self,
                                        __accessPtr,
                                        __temporary
                                    )
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_destroy: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "destroy").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
            }
        }
    }()
    
    public func destroy() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_destroy,
                __ptr_self,
                nil,
                nil
            )
        }
    }
    
    internal static var __method_binding_connect_to_host: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "connect_to_host").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2171300490)!
            }
        }
    }()
    
    public func connectToHost(
        address: Godot.GodotString,
        port: Int32,
        channels: Int32 = 0,
        data: Int32 = 0
    ) -> Godot.ENetPacketPeer? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: address) { __ptr_address in
                withTransferrableUnsafeRawPointer(to: port) { __ptr_port in
                    withTransferrableUnsafeRawPointer(to: channels) { __ptr_channels in
                        withTransferrableUnsafeRawPointer(to: data) { __ptr_data in
                            withUnsafeArgumentPackPointer(__ptr_address, __ptr_port, __ptr_channels, __ptr_data) { __accessPtr in
                                self.withUnsafeMutableRawPointer { __ptr_self in
                                    GodotExtension.Interface.objectMethodBindPtrcall(
                                        Self.__method_binding_connect_to_host,
                                        __ptr_self,
                                        __accessPtr,
                                        __temporary
                                    )
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_service: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "service").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2402345344)!
            }
        }
    }()
    
    public func service(
        timeout: Int32 = 0
    ) -> Godot.AnyGodotArray {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: timeout) { __ptr_timeout in
                withUnsafeArgumentPackPointer(__ptr_timeout) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_service,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_flush: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "flush").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
            }
        }
    }()
    
    public func flush() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_flush,
                __ptr_self,
                nil,
                nil
            )
        }
    }
    
    internal static var __method_binding_bandwidth_limit: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "bandwidth_limit").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2302169788)!
            }
        }
    }()
    
    public func bandwidthLimit(
        inBandwidth bandwidth: Int32 = 0,
        outBandwidth: Int32 = 0
    ) {
        withTransferrableUnsafeRawPointer(to: bandwidth) { __ptr_bandwidth in
            withTransferrableUnsafeRawPointer(to: outBandwidth) { __ptr_outBandwidth in
                withUnsafeArgumentPackPointer(__ptr_bandwidth, __ptr_outBandwidth) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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
    
    internal static var __method_binding_channel_limit: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "channel_limit").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
            }
        }
    }()
    
    public func channelLimit(
        _ limit: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: limit) { __ptr_limit in
            withUnsafeArgumentPackPointer(__ptr_limit) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_channel_limit,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_broadcast: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "broadcast").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2772371345)!
            }
        }
    }()
    
    public func broadcast(
        channel: Int32,
        packet: Godot.GodotContiguousArray<UInt8>,
        flags: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: channel) { __ptr_channel in
            withTransferrableUnsafeRawPointer(to: packet) { __ptr_packet in
                withTransferrableUnsafeRawPointer(to: flags) { __ptr_flags in
                    withUnsafeArgumentPackPointer(__ptr_channel, __ptr_packet, __ptr_flags) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
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
    
    internal static var __method_binding_compress: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "compress").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2660215187)!
            }
        }
    }()
    
    public func compress(
        mode: Godot.ENetConnection.CompressionMode
    ) {
        withTransferrableUnsafeRawPointer(to: mode) { __ptr_mode in
            withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_compress,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_dtls_server_setup: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "dtls_server_setup").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1262296096)!
            }
        }
    }()
    
    public func dtlsServerSetup(
        serverOptions: Godot.TLSOptions?
    ) -> Godot.ErrorType {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: serverOptions) { __ptr_serverOptions in
                withUnsafePointer(to: __ptr_serverOptions) { _ptr___ptr_serverOptions in
                    withUnsafeArgumentPackPointer(_ptr___ptr_serverOptions) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_dtls_server_setup,
                                __ptr_self,
                                __accessPtr,
                                __temporary
                            )
                        }
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_dtls_client_setup: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "dtls_client_setup").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1966198364)!
            }
        }
    }()
    
    public func dtlsClientSetup(
        hostname: Godot.GodotString,
        clientOptions: Godot.TLSOptions? = nil
    ) -> Godot.ErrorType {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: hostname) { __ptr_hostname in
                withTransferrableUnsafeRawPointer(to: clientOptions) { __ptr_clientOptions in
                    withUnsafePointer(to: __ptr_clientOptions) { _ptr___ptr_clientOptions in
                        withUnsafeArgumentPackPointer(__ptr_hostname, _ptr___ptr_clientOptions) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_dtls_client_setup,
                                    __ptr_self,
                                    __accessPtr,
                                    __temporary
                                )
                            }
                        }
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_refuse_new_connections: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "refuse_new_connections").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
            }
        }
    }()
    
    public func refuseNewConnections(
        refuse: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: refuse) { __ptr_refuse in
            withUnsafeArgumentPackPointer(__ptr_refuse) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_refuse_new_connections,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_pop_statistic: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "pop_statistic").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2166904170)!
            }
        }
    }()
    
    public func popStatistic(
        _ statistic: Godot.ENetConnection.HostStatistic
    ) -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: statistic) { __ptr_statistic in
                withUnsafeArgumentPackPointer(__ptr_statistic) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_pop_statistic,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_max_channels: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_max_channels").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
            }
        }
    }()
    
    public func maxChannels() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_max_channels,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_get_local_port: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_local_port").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
            }
        }
    }()
    
    public func localPort() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_local_port,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_get_peers: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_peers").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2915620761)!
            }
        }
    }()
    
    public func peers() -> Godot.GodotArray<Godot.ENetPacketPeer> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_peers,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_socket_send: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "socket_send").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1100646812)!
            }
        }
    }()
    
    public func socketSend(
        destinationAddress: Godot.GodotString,
        destinationPort: Int32,
        packet: Godot.GodotContiguousArray<UInt8>
    ) {
        withTransferrableUnsafeRawPointer(to: destinationAddress) { __ptr_destinationAddress in
            withTransferrableUnsafeRawPointer(to: destinationPort) { __ptr_destinationPort in
                withTransferrableUnsafeRawPointer(to: packet) { __ptr_packet in
                    withUnsafeArgumentPackPointer(__ptr_destinationAddress, __ptr_destinationPort, __ptr_packet) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
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
        _virtualFunctions = [:]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions![key] = value
        }
        return _virtualFunctions!
    }
}