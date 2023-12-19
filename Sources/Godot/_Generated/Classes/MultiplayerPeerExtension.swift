//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class MultiplayerPeerExtension: MultiplayerPeer {
    open func _getPacket(rBuffer: UnsafePointer<UnsafePointer<UInt8>>, rBufferSize: UnsafeMutablePointer<Int32>) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _putPacket(pBuffer: UnsafePointer<UInt8>, pBufferSize: Int32) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _getAvailablePacketCount() -> Int32 {
        Int32()
    }

    open func _getMaxPacketSize() -> Int32 {
        Int32()
    }

    open func _getPacketScript() -> Godot.PackedByteArray {
        Godot.PackedByteArray()
    }

    open func _putPacketScript(pBuffer: Godot.PackedByteArray) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _getPacketChannel() -> Int32 {
        Int32()
    }

    open func _getPacketMode() -> Godot.MultiplayerPeer.TransferMode {
        Godot.MultiplayerPeer.TransferMode(rawValue: 0)!
    }

    open func _setTransferChannel(pChannel: Int32) {
    }

    open func _getTransferChannel() -> Int32 {
        Int32()
    }

    open func _setTransferMode(pMode: Godot.MultiplayerPeer.TransferMode) {
    }

    open func _getTransferMode() -> Godot.MultiplayerPeer.TransferMode {
        Godot.MultiplayerPeer.TransferMode(rawValue: 0)!
    }

    open func _setTargetPeer(pPeer: Int32) {
    }

    open func _getPacketPeer() -> Int32 {
        Int32()
    }

    open func _isServer() -> Bool {
        Bool()
    }

    open func _poll() {
    }

    open func _close() {
    }

    open func _disconnectPeer(pPeer: Int32, pForce: Bool) {
    }

    open func _getUniqueId() -> Int32 {
        Int32()
    }

    open func _setRefuseNewConnections(pEnable: Bool) {
    }

    open func _isRefusingNewConnections() -> Bool {
        Bool()
    }

    open func _isServerRelaySupported() -> Bool {
        Bool()
    }

    open func _getConnectionStatus() -> Godot.MultiplayerPeer.ConnectionStatus {
        Godot.MultiplayerPeer.ConnectionStatus(rawValue: 0)!
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _get_packet_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<MultiplayerPeerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getPacket(
            rBuffer: UnsafePointer<UnsafePointer<UInt8>>.fromGodotUnsafePointer(args[0]!),
            rBufferSize: UnsafeMutablePointer<Int32>.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _put_packet_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<MultiplayerPeerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._putPacket(
            pBuffer: UnsafePointer<UInt8>.fromGodotUnsafePointer(args[0]!),
            pBufferSize: Int32.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_available_packet_count_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<MultiplayerPeerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getAvailablePacketCount()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_max_packet_size_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<MultiplayerPeerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getMaxPacketSize()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_packet_script_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<MultiplayerPeerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getPacketScript()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _put_packet_script_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<MultiplayerPeerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._putPacketScript(
            pBuffer: Godot.PackedByteArray.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_packet_channel_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<MultiplayerPeerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getPacketChannel()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_packet_mode_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<MultiplayerPeerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getPacketMode()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _set_transfer_channel_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<MultiplayerPeerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._setTransferChannel(
            pChannel: Int32.fromGodotUnsafePointer(args[0]!)
        )}
        let _get_transfer_channel_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<MultiplayerPeerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getTransferChannel()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _set_transfer_mode_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<MultiplayerPeerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._setTransferMode(
            pMode: Godot.MultiplayerPeer.TransferMode.fromGodotUnsafePointer(args[0]!)
        )}
        let _get_transfer_mode_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<MultiplayerPeerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getTransferMode()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _set_target_peer_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<MultiplayerPeerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._setTargetPeer(
            pPeer: Int32.fromGodotUnsafePointer(args[0]!)
        )}
        let _get_packet_peer_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<MultiplayerPeerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getPacketPeer()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _is_server_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<MultiplayerPeerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._isServer()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _poll_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<MultiplayerPeerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._poll()}
        let _close_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<MultiplayerPeerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._close()}
        let _disconnect_peer_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<MultiplayerPeerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._disconnectPeer(
            pPeer: Int32.fromGodotUnsafePointer(args[0]!),
            pForce: Bool.fromGodotUnsafePointer(args[1]!)
        )}
        let _get_unique_id_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<MultiplayerPeerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getUniqueId()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _set_refuse_new_connections_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<MultiplayerPeerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._setRefuseNewConnections(
            pEnable: Bool.fromGodotUnsafePointer(args[0]!)
        )}
        let _is_refusing_new_connections_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<MultiplayerPeerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._isRefusingNewConnections()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _is_server_relay_supported_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<MultiplayerPeerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._isServerRelaySupported()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_connection_status_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<MultiplayerPeerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getConnectionStatus()
        .copyToGodot(unsafePointer: returnPtr!)}
        _virtualFunctions = [
            "_getPacket" : ("_get_packet", _get_packet_call),
            "_putPacket" : ("_put_packet", _put_packet_call),
            "_getAvailablePacketCount" : ("_get_available_packet_count", _get_available_packet_count_call),
            "_getMaxPacketSize" : ("_get_max_packet_size", _get_max_packet_size_call),
            "_getPacketScript" : ("_get_packet_script", _get_packet_script_call),
            "_putPacketScript" : ("_put_packet_script", _put_packet_script_call),
            "_getPacketChannel" : ("_get_packet_channel", _get_packet_channel_call),
            "_getPacketMode" : ("_get_packet_mode", _get_packet_mode_call),
            "_setTransferChannel" : ("_set_transfer_channel", _set_transfer_channel_call),
            "_getTransferChannel" : ("_get_transfer_channel", _get_transfer_channel_call),
            "_setTransferMode" : ("_set_transfer_mode", _set_transfer_mode_call),
            "_getTransferMode" : ("_get_transfer_mode", _get_transfer_mode_call),
            "_setTargetPeer" : ("_set_target_peer", _set_target_peer_call),
            "_getPacketPeer" : ("_get_packet_peer", _get_packet_peer_call),
            "_isServer" : ("_is_server", _is_server_call),
            "_poll" : ("_poll", _poll_call),
            "_close" : ("_close", _close_call),
            "_disconnectPeer" : ("_disconnect_peer", _disconnect_peer_call),
            "_getUniqueId" : ("_get_unique_id", _get_unique_id_call),
            "_setRefuseNewConnections" : ("_set_refuse_new_connections", _set_refuse_new_connections_call),
            "_isRefusingNewConnections" : ("_is_refusing_new_connections", _is_refusing_new_connections_call),
            "_isServerRelaySupported" : ("_is_server_relay_supported", _is_server_relay_supported_call),
            "_getConnectionStatus" : ("_get_connection_status", _get_connection_status_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }