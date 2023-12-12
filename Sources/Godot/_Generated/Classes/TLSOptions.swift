//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class TLSOptions: RefCounted {
    private static var __method_binding_client: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "client").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3565000357)!
        }
        }
    }()
    static public func client(trustedChain: Godot.X509Certificate? = nil, commonNameOverride: Godot.GodotString = "") -> Godot.TLSOptions? {
        Godot.TLSOptions?.fromMutatingGodotUnsafePointer { __temporary in
        trustedChain.withGodotUnsafeRawPointer { __ptr_trustedChain in
        withUnsafePointer(to: __ptr_trustedChain) { _ptr___ptr_trustedChain in
        commonNameOverride.withGodotUnsafeRawPointer { __ptr_commonNameOverride in
        withUnsafeArgumentPackPointer(_ptr___ptr_trustedChain, __ptr_commonNameOverride) { __accessPtr in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_client,
            nil,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_client_unsafe: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "client_unsafe").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2090251749)!
        }
        }
    }()
    static public func clientUnsafe(trustedChain: Godot.X509Certificate? = nil) -> Godot.TLSOptions? {
        Godot.TLSOptions?.fromMutatingGodotUnsafePointer { __temporary in
        trustedChain.withGodotUnsafeRawPointer { __ptr_trustedChain in
        withUnsafePointer(to: __ptr_trustedChain) { _ptr___ptr_trustedChain in
        withUnsafeArgumentPackPointer(_ptr___ptr_trustedChain) { __accessPtr in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_client_unsafe,
            nil,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_server: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "server").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36969539)!
        }
        }
    }()
    static public func server(key: Godot.CryptoKey?, certificate: Godot.X509Certificate?) -> Godot.TLSOptions? {
        Godot.TLSOptions?.fromMutatingGodotUnsafePointer { __temporary in
        key.withGodotUnsafeRawPointer { __ptr_key in
        withUnsafePointer(to: __ptr_key) { _ptr___ptr_key in
        certificate.withGodotUnsafeRawPointer { __ptr_certificate in
        withUnsafePointer(to: __ptr_certificate) { _ptr___ptr_certificate in
        withUnsafeArgumentPackPointer(_ptr___ptr_key, _ptr___ptr_certificate) { __accessPtr in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_server,
            nil,
            __accessPtr,
            __temporary
        )}}}}}}
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