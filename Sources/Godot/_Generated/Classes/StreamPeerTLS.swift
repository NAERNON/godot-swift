//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class StreamPeerTLS: StreamPeer {
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

    internal static var __method_binding_poll: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "poll").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func poll() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_poll,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_accept_stream: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "accept_stream").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4292689651)!
        }
        }
    }()
    public func acceptStream(_ stream: Godot.StreamPeer?, serverOptions: Godot.TLSOptions?) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        stream.withGodotUnsafeRawPointer { __ptr_stream in
        withUnsafePointer(to: __ptr_stream) { _ptr___ptr_stream in
        serverOptions.withGodotUnsafeRawPointer { __ptr_serverOptions in
        withUnsafePointer(to: __ptr_serverOptions) { _ptr___ptr_serverOptions in
        withUnsafeArgumentPackPointer(_ptr___ptr_stream, _ptr___ptr_serverOptions) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_accept_stream,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}
    }

    internal static var __method_binding_connect_to_stream: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "connect_to_stream").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 57169517)!
        }
        }
    }()
    public func connectToStream(_ stream: Godot.StreamPeer?, commonName: Godot.GodotString, clientOptions: Godot.TLSOptions? = nil) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        stream.withGodotUnsafeRawPointer { __ptr_stream in
        withUnsafePointer(to: __ptr_stream) { _ptr___ptr_stream in
        commonName.withGodotUnsafeRawPointer { __ptr_commonName in
        clientOptions.withGodotUnsafeRawPointer { __ptr_clientOptions in
        withUnsafePointer(to: __ptr_clientOptions) { _ptr___ptr_clientOptions in
        withUnsafeArgumentPackPointer(_ptr___ptr_stream, __ptr_commonName, _ptr___ptr_clientOptions) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_connect_to_stream,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}
    }

    internal static var __method_binding_get_status: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_status").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1128380576)!
        }
        }
    }()
    public func status() -> Godot.StreamPeerTLS.Status {
        Godot.StreamPeerTLS.Status.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_status,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_stream: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_stream").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2741655269)!
        }
        }
    }()
    public func stream() -> Godot.StreamPeer? {
        Godot.StreamPeer?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_stream,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_disconnect_from_stream: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "disconnect_from_stream").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func disconnectFromStream() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_disconnect_from_stream,
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