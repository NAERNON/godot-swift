//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class MultiplayerAPIExtension: MultiplayerAPI {
    open func _poll() -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }
    
    open func _setMultiplayerPeer(
        _ multiplayerPeer: Godot.MultiplayerPeer?
    ) {
        
    }
    
    open func _getMultiplayerPeer() -> Godot.MultiplayerPeer? {
        nil
    }
    
    open func _getUniqueID() -> Int32 {
        Int32()
    }
    
    open func _getPeerIds() -> Godot.GodotContiguousArray<Int32> {
        Godot.GodotContiguousArray<Int32>()
    }
    
    open func _rpc(
        peer: Int32,
        object: Godot.Object?,
        method: Godot.GodotStringName,
        args: Godot.AnyGodotArray
    ) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }
    
    open func _getRemoteSenderID() -> Int32 {
        Int32()
    }
    
    open func _objectConfigurationAdd(
        object: Godot.Object?,
        configuration: Godot.Variant
    ) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }
    
    open func _objectConfigurationRemove(
        object: Godot.Object?,
        configuration: Godot.Variant
    ) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }
    
    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _poll_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else { return }
            Unmanaged<MultiplayerAPIExtension>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._poll()
               .transferToGodot(unsafePointer: returnPtr!)
        }
        let _set_multiplayer_peer_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else { return }
            Unmanaged<MultiplayerAPIExtension>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._setMultiplayerPeer(
                    Godot.MultiplayerPeer?.transferFromGodot(unsafePointer: args[0]!)
                )
        }
        let _get_multiplayer_peer_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else { return }
            Unmanaged<MultiplayerAPIExtension>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._getMultiplayerPeer()
               .transferToGodot(unsafePointer: returnPtr!)
        }
        let _get_unique_id_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else { return }
            Unmanaged<MultiplayerAPIExtension>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._getUniqueID()
               .transferToGodot(unsafePointer: returnPtr!)
        }
        let _get_peer_ids_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else { return }
            Unmanaged<MultiplayerAPIExtension>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._getPeerIds()
               .transferToGodot(unsafePointer: returnPtr!)
        }
        let _rpc_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else { return }
            Unmanaged<MultiplayerAPIExtension>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._rpc(
                    peer: Int32.transferFromGodot(unsafePointer: args[0]!),
                    object: Godot.Object?.transferFromGodot(unsafePointer: args[1]!),
                    method: Godot.GodotStringName.transferFromGodot(unsafePointer: args[2]!),
                    args: Godot.AnyGodotArray.transferFromGodot(unsafePointer: args[3]!)
                )
               .transferToGodot(unsafePointer: returnPtr!)
        }
        let _get_remote_sender_id_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else { return }
            Unmanaged<MultiplayerAPIExtension>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._getRemoteSenderID()
               .transferToGodot(unsafePointer: returnPtr!)
        }
        let _object_configuration_add_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else { return }
            Unmanaged<MultiplayerAPIExtension>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._objectConfigurationAdd(
                    object: Godot.Object?.transferFromGodot(unsafePointer: args[0]!),
                    configuration: Godot.Variant.transferFromGodot(unsafePointer: args[1]!)
                )
               .transferToGodot(unsafePointer: returnPtr!)
        }
        let _object_configuration_remove_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else { return }
            Unmanaged<MultiplayerAPIExtension>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._objectConfigurationRemove(
                    object: Godot.Object?.transferFromGodot(unsafePointer: args[0]!),
                    configuration: Godot.Variant.transferFromGodot(unsafePointer: args[1]!)
                )
               .transferToGodot(unsafePointer: returnPtr!)
        }
        _virtualFunctions = [
            "_poll" : ("_poll", _poll_call),
            "_setMultiplayerPeer" : ("_set_multiplayer_peer", _set_multiplayer_peer_call),
            "_getMultiplayerPeer" : ("_get_multiplayer_peer", _get_multiplayer_peer_call),
            "_getUniqueID" : ("_get_unique_id", _get_unique_id_call),
            "_getPeerIds" : ("_get_peer_ids", _get_peer_ids_call),
            "_rpc" : ("_rpc", _rpc_call),
            "_getRemoteSenderID" : ("_get_remote_sender_id", _get_remote_sender_id_call),
            "_objectConfigurationAdd" : ("_object_configuration_add", _object_configuration_add_call),
            "_objectConfigurationRemove" : ("_object_configuration_remove", _object_configuration_remove_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions![key] = value
        }
        return _virtualFunctions!
    }
}