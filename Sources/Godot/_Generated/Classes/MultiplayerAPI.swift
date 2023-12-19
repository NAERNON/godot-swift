//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class MultiplayerAPI: RefCounted {
    public enum RPCMode: UInt32, GodotEnum {
        case disabled = 0
        case anyPeer = 1
        case authority = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Disabled", 0),
            ("Any Peer", 1),
            ("Authority", 2),]
        }
    }

    @Emitter(signal: "peer_connected", args: ("id", Int))
    public struct PeerConnected {
    }

    @Emitter(signal: "peer_disconnected", args: ("id", Int))
    public struct PeerDisconnected {
    }

    @Emitter(signal: "connected_to_server")
    public struct ConnectedToServer {
    }

    @Emitter(signal: "connection_failed")
    public struct ConnectionFailed {
    }

    @Emitter(signal: "server_disconnected")
    public struct ServerDisconnected {
    }

    private static var __method_binding_has_multiplayer_peer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_multiplayer_peer").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()
    public func hasMultiplayerPeer() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_has_multiplayer_peer,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_multiplayer_peer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_multiplayer_peer").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3223692825)!
        }
        }
    }()
    private func __getMultiplayerPeer() -> Godot.MultiplayerPeer? {
        Godot.MultiplayerPeer?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_multiplayer_peer,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_multiplayer_peer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_multiplayer_peer").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3694835298)!
        }
        }
    }()
    private func __setMultiplayerPeer(_ peer: Godot.MultiplayerPeer?) {
        peer.withGodotUnsafeRawPointer { __ptr_peer in
        withUnsafePointer(to: __ptr_peer) { _ptr___ptr_peer in
        withUnsafeArgumentPackPointer(_ptr___ptr_peer) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_multiplayer_peer,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_unique_id: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_unique_id").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2455072627)!
        }
        }
    }()
    public func uniqueId() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_unique_id,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_is_server: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_server").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()
    public func isServer() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_server,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_remote_sender_id: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_remote_sender_id").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2455072627)!
        }
        }
    }()
    public func remoteSenderId() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_remote_sender_id,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_poll: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "poll").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 166280745)!
        }
        }
    }()
    public func poll() -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_poll,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_rpc: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "rpc").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2077486355)!
        }
        }
    }()
    public func rpc<Value: VariantStorable>(peer: Int32, object: Godot.Object?, method: Godot.GodotStringName, arguments: Godot.GodotArray<Value> = []) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        peer.withGodotUnsafeRawPointer { __ptr_peer in
        object.withGodotUnsafeRawPointer { __ptr_object in
        withUnsafePointer(to: __ptr_object) { _ptr___ptr_object in
        method.withGodotUnsafeRawPointer { __ptr_method in
        arguments.withGodotUnsafeRawPointer { __ptr_arguments in
        withUnsafeArgumentPackPointer(__ptr_peer, _ptr___ptr_object, __ptr_method, __ptr_arguments) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_rpc,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}
    }

    private static var __method_binding_object_configuration_add: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "object_configuration_add").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1171879464)!
        }
        }
    }()
    public func objectConfigurationAdd<Value: VariantStorableIn>(object: Godot.Object?, configuration: Value) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        object.withGodotUnsafeRawPointer { __ptr_object in
        withUnsafePointer(to: __ptr_object) { _ptr___ptr_object in
        Godot.Variant.withStorageUnsafeRawPointer(to: configuration) { __ptr_configuration in
        withUnsafeArgumentPackPointer(_ptr___ptr_object, __ptr_configuration) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_object_configuration_add,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_object_configuration_remove: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "object_configuration_remove").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1171879464)!
        }
        }
    }()
    public func objectConfigurationRemove<Value: VariantStorableIn>(object: Godot.Object?, configuration: Value) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        object.withGodotUnsafeRawPointer { __ptr_object in
        withUnsafePointer(to: __ptr_object) { _ptr___ptr_object in
        Godot.Variant.withStorageUnsafeRawPointer(to: configuration) { __ptr_configuration in
        withUnsafeArgumentPackPointer(_ptr___ptr_object, __ptr_configuration) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_object_configuration_remove,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_get_peers: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_peers").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 969006518)!
        }
        }
    }()
    public func peers() -> Godot.PackedInt32Array {
        Godot.PackedInt32Array.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_peers,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_default_interface: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_default_interface").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3304788590)!
        }
        }
    }()
    static public func setDefaultInterface(interfaceName: Godot.GodotStringName) {
        interfaceName.withGodotUnsafeRawPointer { __ptr_interfaceName in
        withUnsafeArgumentPackPointer(__ptr_interfaceName) { __accessPtr in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_default_interface,
            nil,
            __accessPtr,
            nil
        )}}
    }

    private static var __method_binding_get_default_interface: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_default_interface").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2737447660)!
        }
        }
    }()
    static public func defaultInterface() -> Godot.GodotStringName {
        Godot.GodotStringName.fromMutatingGodotUnsafePointer { __temporary in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_default_interface,
            nil,
            nil,
            __temporary
        )}
    }

    private static var __method_binding_create_default_interface: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_default_interface").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3294156723)!
        }
        }
    }()
    static public func createDefaultInterface() -> Godot.MultiplayerAPI? {
        Godot.MultiplayerAPI?.fromMutatingGodotUnsafePointer { __temporary in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_create_default_interface,
            nil,
            nil,
            __temporary
        )}
    }

    public var multiplayerPeer: Godot.MultiplayerPeer? {
        get {
            __getMultiplayerPeer()
        }
        set {
            __setMultiplayerPeer(
                newValue
            )
        }
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