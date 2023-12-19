//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class EditorFileSystemImportFormatSupportQuery: RefCounted {
    open func _isActive() -> Bool {
        Bool()
    }

    open func _getFileExtensions() -> Godot.PackedStringArray {
        Godot.PackedStringArray()
    }

    open func _query() -> Bool {
        Bool()
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _is_active_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<EditorFileSystemImportFormatSupportQuery>.fromOpaque(instancePtr).takeUnretainedValue()
        ._isActive()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_file_extensions_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<EditorFileSystemImportFormatSupportQuery>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getFileExtensions()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _query_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<EditorFileSystemImportFormatSupportQuery>.fromOpaque(instancePtr).takeUnretainedValue()
        ._query()
        .copyToGodot(unsafePointer: returnPtr!)}
        _virtualFunctions = [
            "_isActive" : ("_is_active", _is_active_call),
            "_getFileExtensions" : ("_get_file_extensions", _get_file_extensions_call),
            "_query" : ("_query", _query_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }