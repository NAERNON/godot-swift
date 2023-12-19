//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class ResourceFormatLoader: RefCounted {
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

    open func _getRecognizedExtensions() -> Godot.PackedStringArray {
        Godot.PackedStringArray()
    }

    open func _recognizePath(_ path: Godot.GodotString, type: Godot.GodotStringName) -> Bool {
        Bool()
    }

    open func _handlesType(_ type: Godot.GodotStringName) -> Bool {
        Bool()
    }

    open func _getResourceType(path: Godot.GodotString) -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _getResourceScriptClass(path: Godot.GodotString) -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _getResourceUid(path: Godot.GodotString) -> Int64 {
        Int64()
    }

    open func _getDependencies(path: Godot.GodotString, addTypes: Bool) -> Godot.PackedStringArray {
        Godot.PackedStringArray()
    }

    open func _renameDependencies(path: Godot.GodotString, renames: Godot.AnyGodotDictionary) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _exists(path: Godot.GodotString) -> Bool {
        Bool()
    }

    open func _getClassesUsed(path: Godot.GodotString) -> Godot.PackedStringArray {
        Godot.PackedStringArray()
    }

    open func _load(path: Godot.GodotString, originalPath: Godot.GodotString, useSubThreads: Bool, cacheMode: Int32) -> Godot.Variant {
        Variant()
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _get_recognized_extensions_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<ResourceFormatLoader>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getRecognizedExtensions()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _recognize_path_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<ResourceFormatLoader>.fromOpaque(instancePtr).takeUnretainedValue()
        ._recognizePath(
            Godot.GodotString.fromGodotUnsafePointer(args[0]!),
            type: Godot.GodotStringName.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _handles_type_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<ResourceFormatLoader>.fromOpaque(instancePtr).takeUnretainedValue()
        ._handlesType(
            Godot.GodotStringName.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_resource_type_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<ResourceFormatLoader>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getResourceType(
            path: Godot.GodotString.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_resource_script_class_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<ResourceFormatLoader>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getResourceScriptClass(
            path: Godot.GodotString.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_resource_uid_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<ResourceFormatLoader>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getResourceUid(
            path: Godot.GodotString.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_dependencies_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<ResourceFormatLoader>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getDependencies(
            path: Godot.GodotString.fromGodotUnsafePointer(args[0]!),
            addTypes: Bool.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _rename_dependencies_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<ResourceFormatLoader>.fromOpaque(instancePtr).takeUnretainedValue()
        ._renameDependencies(
            path: Godot.GodotString.fromGodotUnsafePointer(args[0]!),
            renames: Godot.AnyGodotDictionary.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _exists_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<ResourceFormatLoader>.fromOpaque(instancePtr).takeUnretainedValue()
        ._exists(
            path: Godot.GodotString.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_classes_used_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<ResourceFormatLoader>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getClassesUsed(
            path: Godot.GodotString.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _load_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<ResourceFormatLoader>.fromOpaque(instancePtr).takeUnretainedValue()
        ._load(
            path: Godot.GodotString.fromGodotUnsafePointer(args[0]!),
            originalPath: Godot.GodotString.fromGodotUnsafePointer(args[1]!),
            useSubThreads: Bool.fromGodotUnsafePointer(args[2]!),
            cacheMode: Int32.fromGodotUnsafePointer(args[3]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        _virtualFunctions = [
            "_getRecognizedExtensions" : ("_get_recognized_extensions", _get_recognized_extensions_call),
            "_recognizePath" : ("_recognize_path", _recognize_path_call),
            "_handlesType" : ("_handles_type", _handles_type_call),
            "_getResourceType" : ("_get_resource_type", _get_resource_type_call),
            "_getResourceScriptClass" : ("_get_resource_script_class", _get_resource_script_class_call),
            "_getResourceUid" : ("_get_resource_uid", _get_resource_uid_call),
            "_getDependencies" : ("_get_dependencies", _get_dependencies_call),
            "_renameDependencies" : ("_rename_dependencies", _rename_dependencies_call),
            "_exists" : ("_exists", _exists_call),
            "_getClassesUsed" : ("_get_classes_used", _get_classes_used_call),
            "_load" : ("_load", _load_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }