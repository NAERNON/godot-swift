//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class PacketPeerStream: PacketPeer {
    private static var __method_binding_set_stream_peer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_stream_peer").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3281897016)!
        }
        }
    }()
    private func __setStreamPeer(_ peer: Godot.StreamPeer?) {
        peer.withGodotUnsafeRawPointer { __ptr_peer in
        withUnsafePointer(to: __ptr_peer) { _ptr___ptr_peer in
        withUnsafeArgumentPackPointer(_ptr___ptr_peer) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_stream_peer,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_stream_peer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_stream_peer").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2741655269)!
        }
        }
    }()
    private func __getStreamPeer() -> Godot.StreamPeer? {
        Godot.StreamPeer?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_stream_peer,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_input_buffer_max_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_input_buffer_max_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setInputBufferMaxSize(maxSizeBytes: Int32) {
        maxSizeBytes.withGodotUnsafeRawPointer { __ptr_maxSizeBytes in
        withUnsafeArgumentPackPointer(__ptr_maxSizeBytes) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_input_buffer_max_size,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_output_buffer_max_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_output_buffer_max_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setOutputBufferMaxSize(maxSizeBytes: Int32) {
        maxSizeBytes.withGodotUnsafeRawPointer { __ptr_maxSizeBytes in
        withUnsafeArgumentPackPointer(__ptr_maxSizeBytes) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_output_buffer_max_size,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_input_buffer_max_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_input_buffer_max_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getInputBufferMaxSize() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_input_buffer_max_size,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_output_buffer_max_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_output_buffer_max_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getOutputBufferMaxSize() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_output_buffer_max_size,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var inputBufferMaxSize: Int32 {
        get {
            __getInputBufferMaxSize()
        }
        set {
            __setInputBufferMaxSize(
                maxSizeBytes: newValue
            )
        }
    }

    public var outputBufferMaxSize: Int32 {
        get {
            __getOutputBufferMaxSize()
        }
        set {
            __setOutputBufferMaxSize(
                maxSizeBytes: newValue
            )
        }
    }

    public var streamPeer: Godot.StreamPeer? {
        get {
            __getStreamPeer()
        }
        set {
            __setStreamPeer(
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