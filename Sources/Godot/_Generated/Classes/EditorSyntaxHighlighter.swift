//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class EditorSyntaxHighlighter: SyntaxHighlighter {
    open func _getName() -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _getSupportedLanguages() -> Godot.PackedStringArray {
        Godot.PackedStringArray()
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil

    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _get_name_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<EditorSyntaxHighlighter>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getName()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_supported_languages_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<EditorSyntaxHighlighter>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getSupportedLanguages()
        .copyToGodot(unsafePointer: returnPtr!)}
        _virtualFunctions = [
            "_getName" : ("_get_name", _get_name_call),
            "_getSupportedLanguages" : ("_get_supported_languages", _get_supported_languages_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }
}