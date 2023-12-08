//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class EditorTranslationParserPlugin: RefCounted {
    open func _parseFile(path: Godot.GodotString, msgids: Godot.GodotArray<Godot.GodotString>, msgidsContextPlural: Godot.GodotArray<Godot.GodotArray<Variant>>) {
    }

    open func _getRecognizedExtensions() -> Godot.PackedStringArray {
        Godot.PackedStringArray()
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _parse_file_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorTranslationParserPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._parseFile(
            path: Godot.GodotString(godotExtensionPointer: args[0]!),
            msgids: Godot.GodotArray<Godot.GodotString>(godotExtensionPointer: args[1]!),
            msgidsContextPlural: Godot.GodotArray<Godot.GodotArray<Variant>>(godotExtensionPointer: args[2]!)
        )}
        let _get_recognized_extensions_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<EditorTranslationParserPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getRecognizedExtensions()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        _virtualFunctions = [
            "_parseFile" : ("_parse_file", _parse_file_call),
            "_getRecognizedExtensions" : ("_get_recognized_extensions", _get_recognized_extensions_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }