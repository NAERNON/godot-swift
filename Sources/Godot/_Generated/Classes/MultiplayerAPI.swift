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
               ("Authority", 2),
            ]
        }
    }
    
    public struct PeerConnectedSignalInput: Godot.SignalInput {
        public let id: Int
        fileprivate init(id: Int) {
            self.id = id
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.id)]
        }
    }
    public func peerConnected(id: Int) {
        _ = peerConnectedSignal.emit(.init(id: id))
    }
    public lazy var peerConnectedSignal: Godot.SignalEmitter<PeerConnectedSignalInput> = {
        .init(object: self, signalName: "peer_connected") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<PeerConnectedSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(id: Int.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<PeerConnectedSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<PeerConnectedSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()
    
    public struct PeerDisconnectedSignalInput: Godot.SignalInput {
        public let id: Int
        fileprivate init(id: Int) {
            self.id = id
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.id)]
        }
    }
    public func peerDisconnected(id: Int) {
        _ = peerDisconnectedSignal.emit(.init(id: id))
    }
    public lazy var peerDisconnectedSignal: Godot.SignalEmitter<PeerDisconnectedSignalInput> = {
        .init(object: self, signalName: "peer_disconnected") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<PeerDisconnectedSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(id: Int.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<PeerDisconnectedSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<PeerDisconnectedSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()
    
    
    public func connectedToServer() {
        _ = connectedToServerSignal.emit()
    }
    public lazy var connectedToServerSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "connected_to_server") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()
    
    
    public func connectionFailed() {
        _ = connectionFailedSignal.emit()
    }
    public lazy var connectionFailedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "connection_failed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()
    
    
    public func serverDisconnected() {
        _ = serverDisconnectedSignal.emit()
    }
    public lazy var serverDisconnectedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "server_disconnected") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()
    
    internal static var __method_binding_has_multiplayer_peer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "has_multiplayer_peer").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2240911060)!
            }
        }
    }()
    
    public func hasMultiplayerPeer() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_has_multiplayer_peer,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_get_multiplayer_peer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_multiplayer_peer").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3223692825)!
            }
        }
    }()
    
    private func __getMultiplayerPeer() -> Godot.MultiplayerPeer? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_multiplayer_peer,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_multiplayer_peer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_multiplayer_peer").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3694835298)!
            }
        }
    }()
    
    private func __setMultiplayerPeer(
        _ peer: Godot.MultiplayerPeer?
    ) {
        withTransferrableUnsafeRawPointer(to: peer) { __ptr_peer in
            withUnsafePointer(to: __ptr_peer) { _ptr___ptr_peer in
                withUnsafeArgumentPackPointer(_ptr___ptr_peer) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_multiplayer_peer,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_unique_id: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_unique_id").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2455072627)!
            }
        }
    }()
    
    public func uniqueID() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_unique_id,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_is_server: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "is_server").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2240911060)!
            }
        }
    }()
    
    public func isServer() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_server,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_get_remote_sender_id: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_remote_sender_id").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2455072627)!
            }
        }
    }()
    
    public func remoteSenderID() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_remote_sender_id,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_poll: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "poll").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 166280745)!
            }
        }
    }()
    
    public func poll() -> Godot.ErrorType {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_poll,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_rpc: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "rpc").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2077486355)!
            }
        }
    }()
    
    public func rpc<Value: Variant.Storable>(
        peer: Int32,
        object: Godot.Object?,
        method: Godot.GodotStringName,
        arguments: Godot.GodotArray<Value> = []
    ) -> Godot.ErrorType {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: peer) { __ptr_peer in
                withTransferrableUnsafeRawPointer(to: object) { __ptr_object in
                    withUnsafePointer(to: __ptr_object) { _ptr___ptr_object in
                        withTransferrableUnsafeRawPointer(to: method) { __ptr_method in
                            withTransferrableUnsafeRawPointer(to: arguments) { __ptr_arguments in
                                withUnsafeArgumentPackPointer(__ptr_peer, _ptr___ptr_object, __ptr_method, __ptr_arguments) { __accessPtr in
                                    self.withUnsafeMutableRawPointer { __ptr_self in
                                        GodotExtension.Interface.objectMethodBindPtrcall(
                                            Self.__method_binding_rpc,
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
    
    internal static var __method_binding_object_configuration_add: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "object_configuration_add").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1171879464)!
            }
        }
    }()
    
    public func objectConfigurationAdd<Value: Variant.Storable>(
        object: Godot.Object?,
        configuration: Value
    ) -> Godot.ErrorType {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: object) { __ptr_object in
                withUnsafePointer(to: __ptr_object) { _ptr___ptr_object in
                    Godot.Variant.withStorageUnsafeRawPointer(to: configuration) { __ptr_configuration in
                        withUnsafeArgumentPackPointer(_ptr___ptr_object, __ptr_configuration) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_object_configuration_add,
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
    
    internal static var __method_binding_object_configuration_remove: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "object_configuration_remove").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1171879464)!
            }
        }
    }()
    
    public func objectConfigurationRemove<Value: Variant.Storable>(
        object: Godot.Object?,
        configuration: Value
    ) -> Godot.ErrorType {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: object) { __ptr_object in
                withUnsafePointer(to: __ptr_object) { _ptr___ptr_object in
                    Godot.Variant.withStorageUnsafeRawPointer(to: configuration) { __ptr_configuration in
                        withUnsafeArgumentPackPointer(_ptr___ptr_object, __ptr_configuration) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_object_configuration_remove,
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
    
    internal static var __method_binding_get_peers: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_peers").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 969006518)!
            }
        }
    }()
    
    public func peers() -> Godot.GodotContiguousArray<Int32> {
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
    
    internal static var __method_binding_set_default_interface: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_default_interface").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3304788590)!
            }
        }
    }()
    
    static public func setDefaultInterface(
        interfaceName: Godot.GodotStringName
    ) {
        withTransferrableUnsafeRawPointer(to: interfaceName) { __ptr_interfaceName in
            withUnsafeArgumentPackPointer(__ptr_interfaceName) { __accessPtr in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_set_default_interface,
                    nil,
                    __accessPtr,
                    nil
                )
            }
        }
    }
    
    internal static var __method_binding_get_default_interface: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_default_interface").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2737447660)!
            }
        }
    }()
    
    static public func defaultInterface() -> Godot.GodotStringName {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_get_default_interface,
                nil,
                nil,
                __temporary
            )
        }
    }
    
    internal static var __method_binding_create_default_interface: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "create_default_interface").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3294156723)!
            }
        }
    }()
    
    static public func createDefaultInterface() -> Godot.MultiplayerAPI? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_create_default_interface,
                nil,
                nil,
                __temporary
            )
        }
    }
    
    public var multiplayerPeer: Godot.MultiplayerPeer? {
        get {
            __getMultiplayerPeer()
        }
        set(newValue) {
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
        _virtualFunctions = [:]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions![key] = value
        }
        return _virtualFunctions!
    }
}