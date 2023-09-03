//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class RichTextEffect: Resource {
    open func _processCustomFx(charFx: Godot.CharFXTransform?) -> Bool {
        Bool()
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _process_custom_fx_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<RichTextEffect> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._processCustomFx(
            charFx: Godot.CharFXTransform.retrievedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!))
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        _virtualFunctions = [
            "_processCustomFx" : ("_process_custom_fx", _process_custom_fx_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }