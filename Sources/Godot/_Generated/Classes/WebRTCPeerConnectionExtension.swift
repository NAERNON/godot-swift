//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class WebRTCPeerConnectionExtension: WebRTCPeerConnection {
    open func _getConnectionState() -> Godot.WebRTCPeerConnection.ConnectionState {
        Godot.WebRTCPeerConnection.ConnectionState(rawValue: 0)!
    }

    open func _getGatheringState() -> Godot.WebRTCPeerConnection.GatheringState {
        Godot.WebRTCPeerConnection.GatheringState(rawValue: 0)!
    }

    open func _getSignalingState() -> Godot.WebRTCPeerConnection.SignalingState {
        Godot.WebRTCPeerConnection.SignalingState(rawValue: 0)!
    }

    open func _initialize(
        pConfig: Godot.AnyGodotDictionary
    ) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _createDataChannel(
        pLabel: Godot.GodotString,
        pConfig: Godot.AnyGodotDictionary
    ) -> Godot.WebRTCDataChannel? {
        nil
    }

    open func _createOffer() -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _setRemoteDescription(
        pType: Godot.GodotString,
        pSdp: Godot.GodotString
    ) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _setLocalDescription(
        pType: Godot.GodotString,
        pSdp: Godot.GodotString
    ) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _addIceCandidate(
        pSdpMidName: Godot.GodotString,
        pSdpMlineIndex: Int32,
        pSdpName: Godot.GodotString
    ) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _poll() -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _close() {
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil

    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _get_connection_state_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<WebRTCPeerConnectionExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getConnectionState()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_gathering_state_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<WebRTCPeerConnectionExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getGatheringState()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_signaling_state_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<WebRTCPeerConnectionExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getSignalingState()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _initialize_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<WebRTCPeerConnectionExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._initialize(
            pConfig: Godot.AnyGodotDictionary.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _create_data_channel_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<WebRTCPeerConnectionExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._createDataChannel(
            pLabel: Godot.GodotString.fromGodotUnsafePointer(args[0]!),
            pConfig: Godot.AnyGodotDictionary.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _create_offer_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<WebRTCPeerConnectionExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._createOffer()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _set_remote_description_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<WebRTCPeerConnectionExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._setRemoteDescription(
            pType: Godot.GodotString.fromGodotUnsafePointer(args[0]!),
            pSdp: Godot.GodotString.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _set_local_description_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<WebRTCPeerConnectionExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._setLocalDescription(
            pType: Godot.GodotString.fromGodotUnsafePointer(args[0]!),
            pSdp: Godot.GodotString.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _add_ice_candidate_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<WebRTCPeerConnectionExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._addIceCandidate(
            pSdpMidName: Godot.GodotString.fromGodotUnsafePointer(args[0]!),
            pSdpMlineIndex: Int32.fromGodotUnsafePointer(args[1]!),
            pSdpName: Godot.GodotString.fromGodotUnsafePointer(args[2]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _poll_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<WebRTCPeerConnectionExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._poll()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _close_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<WebRTCPeerConnectionExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._close()}
        _virtualFunctions = [
            "_getConnectionState" : ("_get_connection_state", _get_connection_state_call),
            "_getGatheringState" : ("_get_gathering_state", _get_gathering_state_call),
            "_getSignalingState" : ("_get_signaling_state", _get_signaling_state_call),
            "_initialize" : ("_initialize", _initialize_call),
            "_createDataChannel" : ("_create_data_channel", _create_data_channel_call),
            "_createOffer" : ("_create_offer", _create_offer_call),
            "_setRemoteDescription" : ("_set_remote_description", _set_remote_description_call),
            "_setLocalDescription" : ("_set_local_description", _set_local_description_call),
            "_addIceCandidate" : ("_add_ice_candidate", _add_ice_candidate_call),
            "_poll" : ("_poll", _poll_call),
            "_close" : ("_close", _close_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }
}