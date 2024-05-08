//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class ResourceFormatSaver: RefCounted {
    open func _save(
        resource: Godot.Resource?,
        path: Godot.GodotString,
        flags: UInt32
    ) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _setUid(
        path: Godot.GodotString,
        uid: Int64
    ) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _recognize(
        resource: Godot.Resource?
    ) -> Bool {
        Bool()
    }

    open func _getRecognizedExtensions(
        resource: Godot.Resource?
    ) -> Godot.GodotContiguousArray<GodotString> {
        Godot.GodotContiguousArray<GodotString>()
    }

    open func _recognizePath(
        resource: Godot.Resource?,
        path: Godot.GodotString
    ) -> Bool {
        Bool()
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil

    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _save_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<ResourceFormatSaver> .fromOpaque(instancePtr).takeUnretainedValue()
        ._save(
            resource: Godot.Resource?.transferFromGodot(unsafePointer: args[0]!),
            path: Godot.GodotString.transferFromGodot(unsafePointer: args[1]!),
            flags: UInt32.transferFromGodot(unsafePointer: args[2]!)
        )
        .transferToGodot(unsafePointer: returnPtr!)}
        let _set_uid_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<ResourceFormatSaver> .fromOpaque(instancePtr).takeUnretainedValue()
        ._setUid(
            path: Godot.GodotString.transferFromGodot(unsafePointer: args[0]!),
            uid: Int64.transferFromGodot(unsafePointer: args[1]!)
        )
        .transferToGodot(unsafePointer: returnPtr!)}
        let _recognize_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<ResourceFormatSaver> .fromOpaque(instancePtr).takeUnretainedValue()
        ._recognize(
            resource: Godot.Resource?.transferFromGodot(unsafePointer: args[0]!)
        )
        .transferToGodot(unsafePointer: returnPtr!)}
        let _get_recognized_extensions_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<ResourceFormatSaver> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getRecognizedExtensions(
            resource: Godot.Resource?.transferFromGodot(unsafePointer: args[0]!)
        )
        .transferToGodot(unsafePointer: returnPtr!)}
        let _recognize_path_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<ResourceFormatSaver> .fromOpaque(instancePtr).takeUnretainedValue()
        ._recognizePath(
            resource: Godot.Resource?.transferFromGodot(unsafePointer: args[0]!),
            path: Godot.GodotString.transferFromGodot(unsafePointer: args[1]!)
        )
        .transferToGodot(unsafePointer: returnPtr!)}
        _virtualFunctions = [
            "_save" : ("_save", _save_call),
            "_setUid" : ("_set_uid", _set_uid_call),
            "_recognize" : ("_recognize", _recognize_call),
            "_getRecognizedExtensions" : ("_get_recognized_extensions", _get_recognized_extensions_call),
            "_recognizePath" : ("_recognize_path", _recognize_path_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }
}