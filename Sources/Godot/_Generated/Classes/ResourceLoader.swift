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
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "load_threaded_request").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3614384323)!
        }
        }
    }()
    public func loadThreadedRequest(path: Godot.GodotString, typeHint: Godot.GodotString = "", useSubThreads: Bool = false, cacheMode: Godot.ResourceLoader.CacheMode = ResourceLoader.CacheMode(rawValue: 1)!) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        path.withGodotUnsafeRawPointer { __ptr_path in
        typeHint.withGodotUnsafeRawPointer { __ptr_typeHint in
        useSubThreads.withGodotUnsafeRawPointer { __ptr_useSubThreads in
        cacheMode.withGodotUnsafeRawPointer { __ptr_cacheMode in
        withUnsafeArgumentPackPointer(__ptr_path, __ptr_typeHint, __ptr_useSubThreads, __ptr_cacheMode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_load_threaded_request,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}
    }

    private static var __method_binding_load_threaded_get_status: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "load_threaded_get_status").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4137685479)!
        }
        }
    }()
    public func loadThreadedGetStatus<Value: VariantStorable>(path: Godot.GodotString, progress: Godot.GodotArray<Value> = []) -> Godot.ResourceLoader.ThreadLoadStatus {
        Godot.ResourceLoader.ThreadLoadStatus.fromMutatingGodotUnsafePointer { __temporary in
        path.withGodotUnsafeRawPointer { __ptr_path in
        progress.withGodotUnsafeRawPointer { __ptr_progress in
        withUnsafeArgumentPackPointer(__ptr_path, __ptr_progress) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_load_threaded_get_status,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_load_threaded_get: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "load_threaded_get").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1748875256)!
        }
        }
    }()
    public func loadThreadedGet(path: Godot.GodotString) -> Godot.Resource? {
        Godot.Resource?.fromMutatingGodotUnsafePointer { __temporary in
        path.withGodotUnsafeRawPointer { __ptr_path in
        withUnsafeArgumentPackPointer(__ptr_path) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_load_threaded_get,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_load: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "load").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3358495409)!
        }
        }
    }()
    public func load(path: Godot.GodotString, typeHint: Godot.GodotString = "", cacheMode: Godot.ResourceLoader.CacheMode = ResourceLoader.CacheMode(rawValue: 1)!) -> Godot.Resource? {
        Godot.Resource?.fromMutatingGodotUnsafePointer { __temporary in
        path.withGodotUnsafeRawPointer { __ptr_path in
        typeHint.withGodotUnsafeRawPointer { __ptr_typeHint in
        cacheMode.withGodotUnsafeRawPointer { __ptr_cacheMode in
        withUnsafeArgumentPackPointer(__ptr_path, __ptr_typeHint, __ptr_cacheMode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_load,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_get_recognized_extensions_for_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_recognized_extensions_for_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3538744774)!
        }
        }
    }()
    public func recognizedExtensionsForType(_ type: Godot.GodotString) -> Godot.PackedStringArray {
        Godot.PackedStringArray.fromMutatingGodotUnsafePointer { __temporary in
        type.withGodotUnsafeRawPointer { __ptr_type in
        withUnsafeArgumentPackPointer(__ptr_type) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_recognized_extensions_for_type,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_add_resource_format_loader: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_resource_format_loader").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2896595483)!
        }
        }
    }()
    public func addResourceFormatLoader(_ formatLoader: Godot.ResourceFormatLoader?, atFront front: Bool = false) {
        formatLoader.withGodotUnsafeRawPointer { __ptr_formatLoader in
        withUnsafePointer(to: __ptr_formatLoader) { _ptr___ptr_formatLoader in
        front.withGodotUnsafeRawPointer { __ptr_front in
        withUnsafeArgumentPackPointer(_ptr___ptr_formatLoader, __ptr_front) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_resource_format_loader,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_remove_resource_format_loader: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_resource_format_loader").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 405397102)!
        }
        }
    }()
    public func removeResourceFormatLoader(_ formatLoader: Godot.ResourceFormatLoader?) {
        formatLoader.withGodotUnsafeRawPointer { __ptr_formatLoader in
        withUnsafePointer(to: __ptr_formatLoader) { _ptr___ptr_formatLoader in
        withUnsafeArgumentPackPointer(_ptr___ptr_formatLoader) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_resource_format_loader,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_set_abort_on_missing_resources: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_abort_on_missing_resources").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    public func setAbortOnMissingResources(abort: Bool) {
        abort.withGodotUnsafeRawPointer { __ptr_abort in
        withUnsafeArgumentPackPointer(__ptr_abort) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_abort_on_missing_resources,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_dependencies: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_dependencies").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3538744774)!
        }
        }
    }()
    public func dependencies(path: Godot.GodotString) -> Godot.PackedStringArray {
        Godot.PackedStringArray.fromMutatingGodotUnsafePointer { __temporary in
        path.withGodotUnsafeRawPointer { __ptr_path in
        withUnsafeArgumentPackPointer(__ptr_path) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_dependencies,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_has_cached: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_cached").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2323990056)!
        }
        }
    }()
    public func hasCached(path: Godot.GodotString) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        path.withGodotUnsafeRawPointer { __ptr_path in
        withUnsafeArgumentPackPointer(__ptr_path) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_cached,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_exists: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "exists").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4185558881)!
        }
        }
    }()
    public func exists(path: Godot.GodotString, typeHint: Godot.GodotString = "") -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        path.withGodotUnsafeRawPointer { __ptr_path in
        typeHint.withGodotUnsafeRawPointer { __ptr_typeHint in
        withUnsafeArgumentPackPointer(__ptr_path, __ptr_typeHint) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_exists,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_get_resource_uid: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_resource_uid").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1597066294)!
        }
        }
    }()
    public func resourceUid(path: Godot.GodotString) -> Int64 {
        Int64.fromMutatingGodotUnsafePointer { __temporary in
        path.withGodotUnsafeRawPointer { __ptr_path in
        withUnsafeArgumentPackPointer(__ptr_path) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_resource_uid,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
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