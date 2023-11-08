//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class ENetPacketPeer: PacketPeer {
    public enum PeerState: UInt32, GodotEnum {
        case disconnected = 0
        case connecting = 1
        case acknowledgingConnect = 2
        case connectionPending = 3
        case connectionSucceeded = 4
        case connected = 5
        case disconnectLater = 6
        case disconnecting = 7
        case acknowledgingDisconnect = 8
        case zombie = 9
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Disconnected", 0),
            ("Connecting", 1),
            ("Acknowledging Connect", 2),
            ("Connection Pending", 3),
            ("Connection Succeeded", 4),
            ("Connected", 5),
            ("Disconnect Later", 6),
            ("Disconnecting", 7),
            ("Acknowledging Disconnect", 8),
            ("Zombie", 9),]
        }
    }
    public enum PeerStatistic: UInt32, GodotEnum {
        case packetLoss = 0
        case packetLossVariance = 1
        case packetLossEpoch = 2
        case roundTripTime = 3
        case roundTripTimeVariance = 4
        case lastRoundTripTime = 5
        case lastRoundTripTimeVariance = 6
        case packetThrottle = 7
        case packetThrottleLimit = 8
        case packetThrottleCounter = 9
        case packetThrottleEpoch = 10
        case packetThrottleAcceleration = 11
        case packetThrottleDeceleration = 12
        case packetThrottleInterval = 13
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Packet Loss", 0),
            ("Packet Loss Variance", 1),
            ("Packet Loss Epoch", 2),
            ("Round Trip Time", 3),
            ("Round Trip Time Variance", 4),
            ("Last Round Trip Time", 5),
            ("Last Round Trip Time Variance", 6),
            ("Packet Throttle", 7),
            ("Packet Throttle Limit", 8),
            ("Packet Throttle Counter", 9),
            ("Packet Throttle Epoch", 10),
            ("Packet Throttle Acceleration", 11),
            ("Packet Throttle Deceleration", 12),
            ("Packet Throttle Interval", 13),]
        }
    }

    private static var __method_binding_peer_disconnect: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "peer_disconnect").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1995695955)!
        }
        }
    }()
    public func peerDisconnect(data: Int32 = 0) {
        withUnsafePointer(to: data) { (__ptr_data) in
            withUnsafeArgumentPackPointer(__ptr_data) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_peer_disconnect,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_peer_disconnect_later: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "peer_disconnect_later").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1995695955)!
        }
        }
    }()
    public func peerDisconnectLater(data: Int32 = 0) {
        withUnsafePointer(to: data) { (__ptr_data) in
            withUnsafeArgumentPackPointer(__ptr_data) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_peer_disconnect_later,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_peer_disconnect_now: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "peer_disconnect_now").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1995695955)!
        }
        }
    }()
    public func peerDisconnectNow(data: Int32 = 0) {
        withUnsafePointer(to: data) { (__ptr_data) in
            withUnsafeArgumentPackPointer(__ptr_data) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_peer_disconnect_now,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_ping: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "ping").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func ping() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_ping,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_ping_interval: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "ping_interval").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func pingInterval(_ pingInterval: Int32) {
        withUnsafePointer(to: pingInterval) { (__ptr_pingInterval) in
            withUnsafeArgumentPackPointer(__ptr_pingInterval) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_ping_interval,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_reset: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "reset").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func reset() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_reset,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_send: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "send").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 120522849)!
        }
        }
    }()
    public func send(channel: Int32, packet: Godot.PackedByteArray, flags: Int32) -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        withUnsafePointer(to: channel) { (__ptr_channel) in
            packet.withUnsafeRawPointer { (__ptr_packet) in
                withUnsafePointer(to: flags) { (__ptr_flags) in
                    withUnsafeArgumentPackPointer(__ptr_channel, __ptr_packet, __ptr_flags) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_send,
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

    private static var __method_binding_throttle_configure: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "throttle_configure").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1649997291)!
        }
        }
    }()
    public func throttleConfigure(interval: Int32, acceleration: Int32, deceleration: Int32) {
        withUnsafePointer(to: interval) { (__ptr_interval) in
            withUnsafePointer(to: acceleration) { (__ptr_acceleration) in
                withUnsafePointer(to: deceleration) { (__ptr_deceleration) in
                    withUnsafeArgumentPackPointer(__ptr_interval, __ptr_acceleration, __ptr_deceleration) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_throttle_configure,
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

    private static var __method_binding_set_timeout: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_timeout").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1649997291)!
        }
        }
    }()
    public func setTimeout(_ timeout: Int32, timeoutMin: Int32, timeoutMax: Int32) {
        withUnsafePointer(to: timeout) { (__ptr_timeout) in
            withUnsafePointer(to: timeoutMin) { (__ptr_timeoutMin) in
                withUnsafePointer(to: timeoutMax) { (__ptr_timeoutMax) in
                    withUnsafeArgumentPackPointer(__ptr_timeout, __ptr_timeoutMin, __ptr_timeoutMax) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_set_timeout,
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

    private static var __method_binding_get_remote_address: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_remote_address").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    public func remoteAddress() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_remote_address,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_remote_port: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_remote_port").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func remotePort() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_remote_port,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_statistic: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_statistic").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1642578323)!
        }
        }
    }()
    public func statistic(_ statistic: Godot.ENetPacketPeer.PeerStatistic) -> Double {
        var __temporary = Double()
        withUnsafePointer(to: statistic) { (__ptr_statistic) in
            withUnsafeArgumentPackPointer(__ptr_statistic) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_statistic,
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

    private static var __method_binding_get_state: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_state").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 711068532)!
        }
        }
    }()
    public func state() -> Godot.ENetPacketPeer.PeerState {
        var __temporary = Godot.ENetPacketPeer.PeerState.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_state,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.ENetPacketPeer.PeerState(rawValue: __temporary)!
    }

    private static var __method_binding_get_channels: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_channels").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func channels() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_channels,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_is_active: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_active").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func isActive() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_active,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
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