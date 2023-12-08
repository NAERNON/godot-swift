//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class JavaScriptBridge: Object {
    @Emitter(signal: "pwa_update_available")
    public struct PwaUpdateAvailable {
    }

    private static var __method_binding_eval: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "eval").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 218087648)!
        }
        }
    }()
    public func eval(code: Godot.GodotString, useGlobalExecutionContext: Bool = false) -> Godot.Variant {
        let __temporary = Godot.Variant()
        code.withUnsafeRawPointer { (__ptr_code) in
            withUnsafePointer(to: useGlobalExecutionContext) { (__ptr_useGlobalExecutionContext) in
                withUnsafeArgumentPackPointer(__ptr_code, __ptr_useGlobalExecutionContext) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_eval,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_interface: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_interface").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1355533281)!
        }
        }
    }()
    public func interface(_ interface: Godot.GodotString) -> Godot.JavaScriptObject? {
        var __temporary: GDExtensionObjectPtr!
        interface.withUnsafeRawPointer { (__ptr_interface) in
            withUnsafeArgumentPackPointer(__ptr_interface) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_interface,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.JavaScriptObject.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_create_callback: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_callback").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 422818440)!
        }
        }
    }()
    public func createCallback(callable: Godot.Callable) -> Godot.JavaScriptObject? {
        var __temporary: GDExtensionObjectPtr!
        callable.withUnsafeRawPointer { (__ptr_callable) in
            withUnsafeArgumentPackPointer(__ptr_callable) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_create_callback,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.JavaScriptObject.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_create_object: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_object").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3093893586)!
        }
        }
    }()
    public func createObject<each VariantRest : VariantStorableIn>(_ object: Godot.GodotString, _ rest: repeat each VariantRest) -> Godot.Variant {
        let __temporary = Godot.Variant()
        Godot.Variant.withStorageUnsafeRawPointer(to: object) { (__ptr_object) in
            withUnsafeArgumentPackPointer(__ptr_object, varargs: repeat each rest) { (packCount, __accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_call(
                            Self.__method_binding_create_object,
                            __ptr_self,
                            __accessPtr,
                            Int64(packCount),
                            __ptr___temporary,
                            nil
                        )
                    }
                }
            }
        }
        return __temporary
    }
    public func createObject(_ object: Godot.GodotString) -> Godot.Variant {
        let __temporary = Godot.Variant()
        Godot.Variant.withStorageUnsafeRawPointer(to: object) { (__ptr_object) in
            withUnsafeArgumentPackPointer(__ptr_object) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_call(
                            Self.__method_binding_create_object,
                            __ptr_self,
                            __accessPtr,
                            1,
                            __ptr___temporary,
                            nil
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_download_buffer: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "download_buffer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4123979296)!
        }
        }
    }()
    public func downloadBuffer(_ buffer: Godot.PackedByteArray, name: Godot.GodotString, mime: Godot.GodotString = "application/octet-stream") {
        buffer.withUnsafeRawPointer { (__ptr_buffer) in
            name.withUnsafeRawPointer { (__ptr_name) in
                mime.withUnsafeRawPointer { (__ptr_mime) in
                    withUnsafeArgumentPackPointer(__ptr_buffer, __ptr_name, __ptr_mime) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_download_buffer,
                                __ptr_self,
                                __accessPtr,
                                nil
                            )
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_pwa_needs_update: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "pwa_needs_update").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func pwaNeedsUpdate() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_pwa_needs_update,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_pwa_update: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "pwa_update").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 166280745)!
        }
        }
    }()
    public func pwaUpdate() -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_pwa_update,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.ErrorType(rawValue: __temporary)!
    }

    private static var __method_binding_force_fs_sync: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "force_fs_sync").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func forceFsSync() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_force_fs_sync,
                __ptr_self,
                nil,
                nil
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