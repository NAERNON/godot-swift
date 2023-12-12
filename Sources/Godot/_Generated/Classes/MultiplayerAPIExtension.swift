//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class MultiplayerAPIExtension: MultiplayerAPI {
    open func _poll() -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _setMultiplayerPeer(_ multiplayerPeer: Godot.MultiplayerPeer?) {
    }

    open func _getMultiplayerPeer() -> Godot.MultiplayerPeer? {
        nil
    }

    open func _getUniqueId() -> Int32 {
        Int32()
    }

    open func _getPeerIds() -> Godot.PackedInt32Array {
        Godot.PackedInt32Array()
    }

    open func _rpc(peer: Int32, object: Godot.Object?, method: Godot.GodotStringName, args: Godot.AnyGodotArray) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _getRemoteSenderId() -> Int32 {
        Int32()
    }

    open func _objectConfigurationAdd(object: Godot.Object?, configuration: Godot.Variant) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _objectConfigurationRemove(object: Godot.Object?, configuration: Godot.Variant) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _poll_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<MultiplayerAPIExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._poll()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _set_multiplayer_peer_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<MultiplayerAPIExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._setMultiplayerPeer(
            Godot.MultiplayerPeer?.fromGodotUnsafePointer(args[0]!)
        )}
        let _get_multiplayer_peer_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<MultiplayerAPIExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getMultiplayerPeer()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_unique_id_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<MultiplayerAPIExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getUniqueId()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_peer_ids_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<MultiplayerAPIExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getPeerIds()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _rpc_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<MultiplayerAPIExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._rpc(
            peer: Int32.fromGodotUnsafePointer(args[0]!),
            object: Godot.Object?.fromGodotUnsafePointer(args[1]!),
            method: Godot.GodotStringName.fromGodotUnsafePointer(args[2]!),
            args: Godot.AnyGodotArray.fromGodotUnsafePointer(args[3]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_remote_sender_id_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<MultiplayerAPIExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getRemoteSenderId()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _object_configuration_add_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<MultiplayerAPIExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._objectConfigurationAdd(
            object: Godot.Object?.fromGodotUnsafePointer(args[0]!),
            configuration: Godot.Variant.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _object_configuration_remove_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<MultiplayerAPIExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._objectConfigurationRemove(
            object: Godot.Object?.fromGodotUnsafePointer(args[0]!),
            configuration: Godot.Variant.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        _virtualFunctions = [
            "_poll" : ("_poll", _poll_call),
            "_setMultiplayerPeer" : ("_set_multiplayer_peer", _set_multiplayer_peer_call),
            "_getMultiplayerPeer" : ("_get_multiplayer_peer", _get_multiplayer_peer_call),
            "_getUniqueId" : ("_get_unique_id", _get_unique_id_call),
            "_getPeerIds" : ("_get_peer_ids", _get_peer_ids_call),
            "_rpc" : ("_rpc", _rpc_call),
            "_getRemoteSenderId" : ("_get_remote_sender_id", _get_remote_sender_id_call),
            "_objectConfigurationAdd" : ("_object_configuration_add", _object_configuration_add_call),
            "_objectConfigurationRemove" : ("_object_configuration_remove", _object_configuration_remove_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }