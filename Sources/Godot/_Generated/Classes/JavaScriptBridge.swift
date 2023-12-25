//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class JavaScriptBridge: Object {
    public func pwaUpdateAvailable() {
        pwaUpdateAvailableConnector.emit()
    }

    public private (set) lazy var pwaUpdateAvailableConnector: Godot.SignalConnector
    <> = {
        .init(self, "pwa_update_available")
    }()


    private static var __method_binding_eval: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "eval").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 218087648)!
        }
        }
    }()
    public func eval(code: Godot.GodotString, useGlobalExecutionContext: Bool = false) -> Godot.Variant {
        Godot.Variant.fromMutatingGodotUnsafePointer { __temporary in
        code.withGodotUnsafeRawPointer { __ptr_code in
        useGlobalExecutionContext.withGodotUnsafeRawPointer { __ptr_useGlobalExecutionContext in
        withUnsafeArgumentPackPointer(__ptr_code, __ptr_useGlobalExecutionContext) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_eval,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_get_interface: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_interface").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1355533281)!
        }
        }
    }()
    public func interface(_ interface: Godot.GodotString) -> Godot.JavaScriptObject? {
        Godot.JavaScriptObject?.fromMutatingGodotUnsafePointer { __temporary in
        interface.withGodotUnsafeRawPointer { __ptr_interface in
        withUnsafeArgumentPackPointer(__ptr_interface) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_interface,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_create_callback: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_callback").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 422818440)!
        }
        }
    }()
    public func createCallback(callable: Godot.Callable) -> Godot.JavaScriptObject? {
        Godot.JavaScriptObject?.fromMutatingGodotUnsafePointer { __temporary in
        callable.withGodotUnsafeRawPointer { __ptr_callable in
        withUnsafeArgumentPackPointer(__ptr_callable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_create_callback,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_create_object: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_object").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3093893586)!
        }
        }
    }()
    public func createObject<each VariantRest : VariantStorableIn>(_ object: Godot.GodotString, _ rest: repeat each VariantRest) -> Godot.Variant {
        Godot.Variant.fromMutatingGodotUnsafePointer { __temporary in
        Godot.Variant.withStorageUnsafeRawPointer(to: object) { __ptr_object in
        withUnsafeArgumentPackPointer(__ptr_object, varargs: repeat each rest) { packCount, __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_call(
            Self.__method_binding_create_object,
            __ptr_self,
            __accessPtr,
            Int64(packCount),
            __temporary,
            nil
        )}}}}
    }
    public func createObject(_ object: Godot.GodotString) -> Godot.Variant {
        Godot.Variant.fromMutatingGodotUnsafePointer { __temporary in
        Godot.Variant.withStorageUnsafeRawPointer(to: object) { __ptr_object in
        withUnsafeArgumentPackPointer(__ptr_object) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_call(
            Self.__method_binding_create_object,
            __ptr_self,
            __accessPtr,
            1,
            __temporary,
            nil
        )}}}}
    }

    private static var __method_binding_download_buffer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "download_buffer").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3352272093)!
        }
        }
    }()
    public func downloadBuffer(_ buffer: Godot.PackedByteArray, name: Godot.GodotString, mime: Godot.GodotString = "application/octet-stream") {
        buffer.withGodotUnsafeRawPointer { __ptr_buffer in
        name.withGodotUnsafeRawPointer { __ptr_name in
        mime.withGodotUnsafeRawPointer { __ptr_mime in
        withUnsafeArgumentPackPointer(__ptr_buffer, __ptr_name, __ptr_mime) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_download_buffer,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_pwa_needs_update: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "pwa_needs_update").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func pwaNeedsUpdate() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_pwa_needs_update,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_pwa_update: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "pwa_update").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 166280745)!
        }
        }
    }()
    public func pwaUpdate() -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_pwa_update,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_force_fs_sync: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "force_fs_sync").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func forceFsSync() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_force_fs_sync,
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