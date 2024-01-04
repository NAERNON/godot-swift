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

    public static let packetLossScale: Int = 65536
    public static let packetThrottleScale: Int = 32
    public static let flagReliable: Int = 1
    public static let flagUnsequenced: Int = 2
    public static let flagUnreliableFragment: Int = 8

    internal static var __method_binding_peer_disconnect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "peer_disconnect").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1995695955)!
        }
        }
    }()
    public func peerDisconnect(data: Int32 = 0) {
        data.withGodotUnsafeRawPointer { __ptr_data in
        withUnsafeArgumentPackPointer(__ptr_data) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_peer_disconnect,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_peer_disconnect_later: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "peer_disconnect_later").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1995695955)!
        }
        }
    }()
    public func peerDisconnectLater(data: Int32 = 0) {
        data.withGodotUnsafeRawPointer { __ptr_data in
        withUnsafeArgumentPackPointer(__ptr_data) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_peer_disconnect_later,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_peer_disconnect_now: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "peer_disconnect_now").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1995695955)!
        }
        }
    }()
    public func peerDisconnectNow(data: Int32 = 0) {
        data.withGodotUnsafeRawPointer { __ptr_data in
        withUnsafeArgumentPackPointer(__ptr_data) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_peer_disconnect_now,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_ping: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "ping").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func ping() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_ping,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_ping_interval: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "ping_interval").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func pingInterval(_ pingInterval: Int32) {
        pingInterval.withGodotUnsafeRawPointer { __ptr_pingInterval in
        withUnsafeArgumentPackPointer(__ptr_pingInterval) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_ping_interval,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_reset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "reset").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func reset() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_reset,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_send: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "send").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 120522849)!
        }
        }
    }()
    public func send(channel: Int32, packet: Godot.PackedByteArray, flags: Int32) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        channel.withGodotUnsafeRawPointer { __ptr_channel in
        packet.withGodotUnsafeRawPointer { __ptr_packet in
        flags.withGodotUnsafeRawPointer { __ptr_flags in
        withUnsafeArgumentPackPointer(__ptr_channel, __ptr_packet, __ptr_flags) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_send,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    internal static var __method_binding_throttle_configure: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "throttle_configure").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1649997291)!
        }
        }
    }()
    public func throttleConfigure(interval: Int32, acceleration: Int32, deceleration: Int32) {
        interval.withGodotUnsafeRawPointer { __ptr_interval in
        acceleration.withGodotUnsafeRawPointer { __ptr_acceleration in
        deceleration.withGodotUnsafeRawPointer { __ptr_deceleration in
        withUnsafeArgumentPackPointer(__ptr_interval, __ptr_acceleration, __ptr_deceleration) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_throttle_configure,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_set_timeout: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_timeout").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1649997291)!
        }
        }
    }()
    public func setTimeout(_ timeout: Int32, timeoutMin: Int32, timeoutMax: Int32) {
        timeout.withGodotUnsafeRawPointer { __ptr_timeout in
        timeoutMin.withGodotUnsafeRawPointer { __ptr_timeoutMin in
        timeoutMax.withGodotUnsafeRawPointer { __ptr_timeoutMax in
        withUnsafeArgumentPackPointer(__ptr_timeout, __ptr_timeoutMin, __ptr_timeoutMax) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_timeout,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_get_remote_address: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_remote_address").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    public func remoteAddress() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_remote_address,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_remote_port: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_remote_port").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func remotePort() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_remote_port,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_statistic: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_statistic").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1642578323)!
        }
        }
    }()
    public func statistic(_ statistic: Godot.ENetPacketPeer.PeerStatistic) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        statistic.withGodotUnsafeRawPointer { __ptr_statistic in
        withUnsafeArgumentPackPointer(__ptr_statistic) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_statistic,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_state: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_state").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 711068532)!
        }
        }
    }()
    public func state() -> Godot.ENetPacketPeer.PeerState {
        Godot.ENetPacketPeer.PeerState.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_state,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_channels: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_channels").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func channels() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_channels,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_is_active: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_active").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func isActive() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_active,
            __ptr_self,
            nil,
            __temporary
        )}}
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