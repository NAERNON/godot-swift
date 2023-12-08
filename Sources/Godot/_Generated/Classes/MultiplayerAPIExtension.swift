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

    open func _rpc(peer: Int32, object: Godot.Object?, method: Godot.GodotStringName, args: Godot.GodotArray<Variant>) -> Godot.ErrorType {
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
            let instance = Unmanaged<MultiplayerAPIExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._poll()
        returnPtr!.assumingMemoryBound(to: Godot.ErrorType.self).pointee = returnValue}
        let _set_multiplayer_peer_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<MultiplayerAPIExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._setMultiplayerPeer(
            Godot.MultiplayerPeer.retrievedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!))
        )}
        let _get_multiplayer_peer_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<MultiplayerAPIExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getMultiplayerPeer()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_unique_id_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<MultiplayerAPIExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getUniqueId()
        returnPtr!.assumingMemoryBound(to: Int32.self).pointee = returnValue}
        let _get_peer_ids_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<MultiplayerAPIExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getPeerIds()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _rpc_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<MultiplayerAPIExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._rpc(
            peer: args[0]!.load(as: Int32.self),
            object: Godot.Object.retrievedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[1]!)),
            method: Godot.GodotStringName(godotExtensionPointer: args[2]!),
            args: Godot.GodotArray<Variant>(godotExtensionPointer: args[3]!)
        )
        returnPtr!.assumingMemoryBound(to: Godot.ErrorType.self).pointee = returnValue}
        let _get_remote_sender_id_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<MultiplayerAPIExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getRemoteSenderId()
        returnPtr!.assumingMemoryBound(to: Int32.self).pointee = returnValue}
        let _object_configuration_add_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<MultiplayerAPIExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._objectConfigurationAdd(
            object: Godot.Object.retrievedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!)),
            configuration: Godot.Variant(godotExtensionPointer: args[1]!)
        )
        returnPtr!.assumingMemoryBound(to: Godot.ErrorType.self).pointee = returnValue}
        let _object_configuration_remove_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<MultiplayerAPIExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._objectConfigurationRemove(
            object: Godot.Object.retrievedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!)),
            configuration: Godot.Variant(godotExtensionPointer: args[1]!)
        )
        returnPtr!.assumingMemoryBound(to: Godot.ErrorType.self).pointee = returnValue}
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