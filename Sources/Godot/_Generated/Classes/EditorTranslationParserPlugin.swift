//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class EditorTranslationParserPlugin: RefCounted {
    open func _parseFile(
        path: Godot.GodotString,
        msgids: Godot.GodotArray<Godot.GodotString>,
        msgidsContextPlural: Godot.GodotArray<Godot.AnyGodotArray>
    ) {
    }

    open func _getRecognizedExtensions() -> Godot.GodotContiguousArray<GodotString> {
        Godot.GodotContiguousArray<GodotString>()
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
            Unmanaged<EditorTranslationParserPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
        ._parseFile(
            path: Godot.GodotString.transferFromGodot(unsafePointer: args[0]!),
            msgids: Godot.GodotArray<Godot.GodotString> .transferFromGodot(unsafePointer: args[1]!),
            msgidsContextPlural: Godot.GodotArray<Godot.AnyGodotArray> .transferFromGodot(unsafePointer: args[2]!)
        )}
        let _get_recognized_extensions_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<EditorTranslationParserPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getRecognizedExtensions()
        .transferToGodot(unsafePointer: returnPtr!)}
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