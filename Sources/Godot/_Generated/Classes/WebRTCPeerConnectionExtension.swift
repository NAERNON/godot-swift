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

    open func _initialize(pConfig: Godot.GodotDictionary) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _createDataChannel(pLabel: Godot.GodotString, pConfig: Godot.GodotDictionary) -> Godot.WebRTCDataChannel? {
        nil
    }

    open func _createOffer() -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _setRemoteDescription(pType: Godot.GodotString, pSdp: Godot.GodotString) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _setLocalDescription(pType: Godot.GodotString, pSdp: Godot.GodotString) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _addIceCandidate(pSdpMidName: Godot.GodotString, pSdpMlineIndex: Int32, pSdpName: Godot.GodotString) -> Godot.ErrorType {
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
            let instance = Unmanaged<WebRTCPeerConnectionExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getConnectionState()
        returnPtr!.assumingMemoryBound(to: Godot.WebRTCPeerConnection.ConnectionState.self).pointee = returnValue}
        let _get_gathering_state_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<WebRTCPeerConnectionExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getGatheringState()
        returnPtr!.assumingMemoryBound(to: Godot.WebRTCPeerConnection.GatheringState.self).pointee = returnValue}
        let _get_signaling_state_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<WebRTCPeerConnectionExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getSignalingState()
        returnPtr!.assumingMemoryBound(to: Godot.WebRTCPeerConnection.SignalingState.self).pointee = returnValue}
        let _initialize_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<WebRTCPeerConnectionExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._initialize(
            pConfig: Godot.GodotDictionary(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: Godot.ErrorType.self).pointee = returnValue}
        let _create_data_channel_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<WebRTCPeerConnectionExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._createDataChannel(
            pLabel: Godot.GodotString(godotExtensionPointer: args[0]!),
            pConfig: Godot.GodotDictionary(godotExtensionPointer: args[1]!)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _create_offer_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<WebRTCPeerConnectionExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._createOffer()
        returnPtr!.assumingMemoryBound(to: Godot.ErrorType.self).pointee = returnValue}
        let _set_remote_description_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<WebRTCPeerConnectionExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._setRemoteDescription(
            pType: Godot.GodotString(godotExtensionPointer: args[0]!),
            pSdp: Godot.GodotString(godotExtensionPointer: args[1]!)
        )
        returnPtr!.assumingMemoryBound(to: Godot.ErrorType.self).pointee = returnValue}
        let _set_local_description_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<WebRTCPeerConnectionExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._setLocalDescription(
            pType: Godot.GodotString(godotExtensionPointer: args[0]!),
            pSdp: Godot.GodotString(godotExtensionPointer: args[1]!)
        )
        returnPtr!.assumingMemoryBound(to: Godot.ErrorType.self).pointee = returnValue}
        let _add_ice_candidate_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<WebRTCPeerConnectionExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._addIceCandidate(
            pSdpMidName: Godot.GodotString(godotExtensionPointer: args[0]!),
            pSdpMlineIndex: args[1]!.load(as: Int32.self),
            pSdpName: Godot.GodotString(godotExtensionPointer: args[2]!)
        )
        returnPtr!.assumingMemoryBound(to: Godot.ErrorType.self).pointee = returnValue}
        let _poll_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<WebRTCPeerConnectionExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._poll()
        returnPtr!.assumingMemoryBound(to: Godot.ErrorType.self).pointee = returnValue}
        let _close_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<WebRTCPeerConnectionExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
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