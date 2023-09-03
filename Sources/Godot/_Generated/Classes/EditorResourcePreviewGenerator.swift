//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class EditorResourcePreviewGenerator: RefCounted {
    open func _handles(type: Godot.GodotString) -> Bool {
        Bool()
    }

    open func _generate(resource: Godot.Resource?, size: Godot.Vector2i, metadata: Godot.GodotDictionary) -> Godot.Texture2D? {
        nil
    }

    open func _generateFromPath(_ path: Godot.GodotString, size: Godot.Vector2i, metadata: Godot.GodotDictionary) -> Godot.Texture2D? {
        nil
    }

    open func _generateSmallPreviewAutomatically() -> Bool {
        Bool()
    }

    open func _canGenerateSmallPreview() -> Bool {
        Bool()
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _handles_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorResourcePreviewGenerator> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._handles(
            type: Godot.GodotString(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _generate_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorResourcePreviewGenerator> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._generate(
            resource: Godot.Resource.retrievedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!)),
            size: args[1]!.load(as: Godot.Vector2i.self),
            metadata: Godot.GodotDictionary(godotExtensionPointer: args[2]!)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _generate_from_path_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorResourcePreviewGenerator> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._generateFromPath(
            Godot.GodotString(godotExtensionPointer: args[0]!),
            size: args[1]!.load(as: Godot.Vector2i.self),
            metadata: Godot.GodotDictionary(godotExtensionPointer: args[2]!)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _generate_small_preview_automatically_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<EditorResourcePreviewGenerator> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._generateSmallPreviewAutomatically()
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _can_generate_small_preview_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<EditorResourcePreviewGenerator> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._canGenerateSmallPreview()
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        _virtualFunctions = [
            "_handles" : ("_handles", _handles_call),
            "_generate" : ("_generate", _generate_call),
            "_generateFromPath" : ("_generate_from_path", _generate_from_path_call),
            "_generateSmallPreviewAutomatically" : ("_generate_small_preview_automatically", _generate_small_preview_automatically_call),
            "_canGenerateSmallPreview" : ("_can_generate_small_preview", _can_generate_small_preview_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }