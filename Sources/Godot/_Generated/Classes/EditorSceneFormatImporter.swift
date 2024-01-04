//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class EditorSceneFormatImporter: RefCounted {
    public static let importScene: Int = 1
    public static let importAnimation: Int = 2
    public static let importFailOnMissingDependencies: Int = 4
    public static let importGenerateTangentArrays: Int = 8
    public static let importUseNamedSkinBinds: Int = 16
    public static let importDiscardMeshesAndMaterials: Int = 32
    public static let importForceDisableMeshCompression: Int = 64

    open func _getImportFlags() -> UInt32 {
        UInt32()
    }

    open func _getExtensions() -> Godot.PackedStringArray {
        Godot.PackedStringArray()
    }

    open func _importScene(path: Godot.GodotString, flags: UInt32, options: Godot.AnyGodotDictionary) -> Godot.Object? {
        nil
    }

    open func _getImportOptions(path: Godot.GodotString) {
    }

    open func _getOptionVisibility(path: Godot.GodotString, forAnimation animation: Bool, option: Godot.GodotString) -> Godot.Variant {
        Variant()
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _get_import_flags_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<EditorSceneFormatImporter>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getImportFlags()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_extensions_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<EditorSceneFormatImporter>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getExtensions()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _import_scene_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorSceneFormatImporter>.fromOpaque(instancePtr).takeUnretainedValue()
        ._importScene(
            path: Godot.GodotString.fromGodotUnsafePointer(args[0]!),
            flags: UInt32.fromGodotUnsafePointer(args[1]!),
            options: Godot.AnyGodotDictionary.fromGodotUnsafePointer(args[2]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_import_options_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorSceneFormatImporter>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getImportOptions(
            path: Godot.GodotString.fromGodotUnsafePointer(args[0]!)
        )}
        let _get_option_visibility_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorSceneFormatImporter>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getOptionVisibility(
            path: Godot.GodotString.fromGodotUnsafePointer(args[0]!),
            forAnimation: Bool.fromGodotUnsafePointer(args[1]!),
            option: Godot.GodotString.fromGodotUnsafePointer(args[2]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        _virtualFunctions = [
            "_getImportFlags" : ("_get_import_flags", _get_import_flags_call),
            "_getExtensions" : ("_get_extensions", _get_extensions_call),
            "_importScene" : ("_import_scene", _import_scene_call),
            "_getImportOptions" : ("_get_import_options", _get_import_options_call),
            "_getOptionVisibility" : ("_get_option_visibility", _get_option_visibility_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }