//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class ResourceFormatSaver: RefCounted {
    open func _save(resource: Godot.Resource?, path: Godot.GodotString, flags: UInt32) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _setUid(path: Godot.GodotString, uid: Int64) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _recognize(resource: Godot.Resource?) -> Bool {
        Bool()
    }

    open func _getRecognizedExtensions(resource: Godot.Resource?) -> Godot.PackedStringArray {
        Godot.PackedStringArray()
    }

    open func _recognizePath(resource: Godot.Resource?, path: Godot.GodotString) -> Bool {
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
            let instance = Unmanaged<ResourceFormatSaver> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._save(
            resource: Godot.Resource.retrievedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!)),
            path: Godot.GodotString(godotExtensionPointer: args[1]!),
            flags: args[2]!.load(as: UInt32.self)
        )
        returnPtr!.assumingMemoryBound(to: Godot.ErrorType.self).pointee = returnValue}
        let _set_uid_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<ResourceFormatSaver> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._setUid(
            path: Godot.GodotString(godotExtensionPointer: args[0]!),
            uid: args[1]!.load(as: Int64.self)
        )
        returnPtr!.assumingMemoryBound(to: Godot.ErrorType.self).pointee = returnValue}
        let _recognize_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<ResourceFormatSaver> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._recognize(
            resource: Godot.Resource.retrievedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!))
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _get_recognized_extensions_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<ResourceFormatSaver> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getRecognizedExtensions(
            resource: Godot.Resource.retrievedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!))
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _recognize_path_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<ResourceFormatSaver> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._recognizePath(
            resource: Godot.Resource.retrievedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!)),
            path: Godot.GodotString(godotExtensionPointer: args[1]!)
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
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