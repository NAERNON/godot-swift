//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class EditorResourceConversionPlugin: RefCounted {
    open func _convertsTo() -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _handles(resource: Godot.Resource?) -> Bool {
        Bool()
    }

    open func _convert(resource: Godot.Resource?) -> Godot.Resource? {
        nil
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _converts_to_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<EditorResourceConversionPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._convertsTo()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _handles_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorResourceConversionPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._handles(
            resource: Godot.Resource.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!))
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _convert_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorResourceConversionPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._convert(
            resource: Godot.Resource.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!))
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        _virtualFunctions = [
            "_convertsTo" : ("_converts_to", _converts_to_call),
            "_handles" : ("_handles", _handles_call),
            "_convert" : ("_convert", _convert_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }