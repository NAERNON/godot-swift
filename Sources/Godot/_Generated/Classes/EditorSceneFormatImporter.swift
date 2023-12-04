//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class EditorSceneFormatImporter: RefCounted {
    open func _getImportFlags() -> UInt32 {
        UInt32()
    }

    open func _getExtensions() -> Godot.PackedStringArray {
        Godot.PackedStringArray()
    }

    open func _importScene(path: Godot.GodotString, flags: UInt32, options: Godot.GodotDictionary) -> Godot.Object? {
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
            let instance = Unmanaged<EditorSceneFormatImporter> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getImportFlags()
        returnPtr!.assumingMemoryBound(to: UInt32.self).pointee = returnValue}
        let _get_extensions_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<EditorSceneFormatImporter> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getExtensions()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _import_scene_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorSceneFormatImporter> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._importScene(
            path: Godot.GodotString(godotExtensionPointer: args[0]!),
            flags: args[1]!.load(as: UInt32.self),
            options: Godot.GodotDictionary(godotExtensionPointer: args[2]!)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_import_options_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorSceneFormatImporter> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._getImportOptions(
            path: Godot.GodotString(godotExtensionPointer: args[0]!)
        )}
        let _get_option_visibility_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorSceneFormatImporter> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getOptionVisibility(
            path: Godot.GodotString(godotExtensionPointer: args[0]!),
            forAnimation: args[1]!.load(as: Bool.self),
            option: Godot.GodotString(godotExtensionPointer: args[2]!)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
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