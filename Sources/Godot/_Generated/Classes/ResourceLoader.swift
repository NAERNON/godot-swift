//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class ResourceLoader: Object {
    public enum ThreadLoadStatus: UInt32, GodotEnum {
        case invalidResource = 0
        case inProgress = 1
        case failed = 2
        case loaded = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Invalid Resource", 0),
            ("In Progress", 1),
            ("Failed", 2),
            ("Loaded", 3),]
        }
    }
    public enum CacheMode: UInt32, GodotEnum {
        case ignore = 0
        case reuse = 1
        case replace = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Ignore", 0),
            ("Reuse", 1),
            ("Replace", 2),]
        }
    }

    private static var __method_binding_load_threaded_request: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "load_threaded_request").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1939848623)!
        }
        }
    }()
    public func loadThreadedRequest(path: Godot.GodotString, typeHint: Godot.GodotString = "", useSubThreads: Bool = false, cacheMode: Godot.ResourceLoader.CacheMode = ResourceLoader.CacheMode(rawValue: 1)!) -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        path.withUnsafeRawPointer { (__ptr_path) in
            typeHint.withUnsafeRawPointer { (__ptr_typeHint) in
                withUnsafePointer(to: useSubThreads) { (__ptr_useSubThreads) in
                    withUnsafePointer(to: cacheMode) { (__ptr_cacheMode) in
                        withUnsafeArgumentPackPointer(__ptr_path, __ptr_typeHint, __ptr_useSubThreads, __ptr_cacheMode) { (__accessPtr) in
                            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_load_threaded_request,
                                        __ptr_self,
                                        __accessPtr,
                                        __ptr___temporary
                                    )
                                }
                            }
                        }
                    }
                }
            }
        }
        return Godot.ErrorType(rawValue: __temporary)!
    }

    private static var __method_binding_load_threaded_get_status: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "load_threaded_get_status").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3931021148)!
        }
        }
    }()
    public func loadThreadedGetStatus<Value: VariantStorable>(path: Godot.GodotString, progress: Godot.GodotArray<Value> = []) -> Godot.ResourceLoader.ThreadLoadStatus {
        var __temporary = Godot.ResourceLoader.ThreadLoadStatus.RawValue(0)
        path.withUnsafeRawPointer { (__ptr_path) in
            progress.withUnsafeRawPointer { (__ptr_progress) in
                withUnsafeArgumentPackPointer(__ptr_path, __ptr_progress) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_load_threaded_get_status,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return Godot.ResourceLoader.ThreadLoadStatus(rawValue: __temporary)!
    }

    private static var __method_binding_load_threaded_get: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "load_threaded_get").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1748875256)!
        }
        }
    }()
    public func loadThreadedGet(path: Godot.GodotString) -> Godot.Resource? {
        var __temporary: GDExtensionObjectPtr!
        path.withUnsafeRawPointer { (__ptr_path) in
            withUnsafeArgumentPackPointer(__ptr_path) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_load_threaded_get,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.Resource.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_load: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "load").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2622212233)!
        }
        }
    }()
    public func load(path: Godot.GodotString, typeHint: Godot.GodotString = "", cacheMode: Godot.ResourceLoader.CacheMode = ResourceLoader.CacheMode(rawValue: 1)!) -> Godot.Resource? {
        var __temporary: GDExtensionObjectPtr!
        path.withUnsafeRawPointer { (__ptr_path) in
            typeHint.withUnsafeRawPointer { (__ptr_typeHint) in
                withUnsafePointer(to: cacheMode) { (__ptr_cacheMode) in
                    withUnsafeArgumentPackPointer(__ptr_path, __ptr_typeHint, __ptr_cacheMode) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_load,
                                    __ptr_self,
                                    __accessPtr,
                                    __ptr___temporary
                                )
                            }
                        }
                    }
                }
            }
        }
        return Godot.Resource.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_get_recognized_extensions_for_type: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_recognized_extensions_for_type").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3538744774)!
        }
        }
    }()
    public func recognizedExtensionsForType(_ type: Godot.GodotString) -> Godot.PackedStringArray {
        let __temporary = Godot.PackedStringArray()
        type.withUnsafeRawPointer { (__ptr_type) in
            withUnsafeArgumentPackPointer(__ptr_type) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_recognized_extensions_for_type,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_add_resource_format_loader: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_resource_format_loader").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2896595483)!
        }
        }
    }()
    public func addResourceFormatLoader(_ formatLoader: Godot.ResourceFormatLoader?, atFront front: Bool = false) {
        formatLoader.withUnsafeRawPointer { (__ptr_formatLoader) in
            withUnsafePointer(to: __ptr_formatLoader) { (_ptr___ptr_formatLoader) in
                withUnsafePointer(to: front) { (__ptr_front) in
                    withUnsafeArgumentPackPointer(_ptr___ptr_formatLoader, __ptr_front) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_add_resource_format_loader,
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

    private static var __method_binding_remove_resource_format_loader: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_resource_format_loader").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 405397102)!
        }
        }
    }()
    public func removeResourceFormatLoader(_ formatLoader: Godot.ResourceFormatLoader?) {
        formatLoader.withUnsafeRawPointer { (__ptr_formatLoader) in
            withUnsafePointer(to: __ptr_formatLoader) { (_ptr___ptr_formatLoader) in
                withUnsafeArgumentPackPointer(_ptr___ptr_formatLoader) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_remove_resource_format_loader,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_set_abort_on_missing_resources: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_abort_on_missing_resources").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    public func setAbortOnMissingResources(abort: Bool) {
        withUnsafePointer(to: abort) { (__ptr_abort) in
            withUnsafeArgumentPackPointer(__ptr_abort) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_abort_on_missing_resources,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_dependencies: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_dependencies").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3538744774)!
        }
        }
    }()
    public func dependencies(path: Godot.GodotString) -> Godot.PackedStringArray {
        let __temporary = Godot.PackedStringArray()
        path.withUnsafeRawPointer { (__ptr_path) in
            withUnsafeArgumentPackPointer(__ptr_path) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_dependencies,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_has_cached: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_cached").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2323990056)!
        }
        }
    }()
    public func hasCached(path: Godot.GodotString) -> Bool {
        var __temporary = Bool()
        path.withUnsafeRawPointer { (__ptr_path) in
            withUnsafeArgumentPackPointer(__ptr_path) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_has_cached,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_exists: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "exists").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2220807150)!
        }
        }
    }()
    public func exists(path: Godot.GodotString, typeHint: Godot.GodotString = "") -> Bool {
        var __temporary = Bool()
        path.withUnsafeRawPointer { (__ptr_path) in
            typeHint.withUnsafeRawPointer { (__ptr_typeHint) in
                withUnsafeArgumentPackPointer(__ptr_path, __ptr_typeHint) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_exists,
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

    private static var __method_binding_get_resource_uid: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_resource_uid").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1597066294)!
        }
        }
    }()
    public func resourceUid(path: Godot.GodotString) -> Int64 {
        var __temporary = Int64()
        path.withUnsafeRawPointer { (__ptr_path) in
            withUnsafeArgumentPackPointer(__ptr_path) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_resource_uid,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
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