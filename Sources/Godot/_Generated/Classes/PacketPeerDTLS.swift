//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class PacketPeerDTLS: PacketPeer {
    public enum Status: UInt32, GodotEnum {
        case disconnected = 0
        case handshaking = 1
        case connected = 2
        case error = 3
        case errorHostnameMismatch = 4
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Disconnected", 0),
            ("Handshaking", 1),
            ("Connected", 2),
            ("Error", 3),
            ("Error Hostname Mismatch", 4),]
        }
    }

    private static var __method_binding_poll: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "poll").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func poll() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_poll,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_connect_to_peer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "connect_to_peer").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1801538152)!
        }
        }
    }()
    public func connectToPeer(packetPeer: Godot.PacketPeerUDP?, hostname: Godot.GodotString, clientOptions: Godot.TLSOptions? = nil) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        packetPeer.withGodotUnsafeRawPointer { __ptr_packetPeer in
        withUnsafePointer(to: __ptr_packetPeer) { _ptr___ptr_packetPeer in
        hostname.withGodotUnsafeRawPointer { __ptr_hostname in
        clientOptions.withGodotUnsafeRawPointer { __ptr_clientOptions in
        withUnsafePointer(to: __ptr_clientOptions) { _ptr___ptr_clientOptions in
        withUnsafeArgumentPackPointer(_ptr___ptr_packetPeer, __ptr_hostname, _ptr___ptr_clientOptions) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_connect_to_peer,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}
    }

    private static var __method_binding_get_status: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_status").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3248654679)!
        }
        }
    }()
    public func status() -> Godot.PacketPeerDTLS.Status {
        Godot.PacketPeerDTLS.Status.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_status,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_disconnect_from_peer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "disconnect_from_peer").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func disconnectFromPeer() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_disconnect_from_peer,
            __ptr_self,
            nil,
            nil
        )}
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