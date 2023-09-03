//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class EditorResourceTooltipPlugin: RefCounted {
    open func _handles(type: Godot.GodotString) -> Bool {
        Bool()
    }

    open func _makeTooltipForPath(_ path: Godot.GodotString, metadata: Godot.GodotDictionary, base: Godot.Control?) -> Godot.Control? {
        nil
    }

    private static var __method_binding_request_thumbnail: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "request_thumbnail").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3245519720)!
        }
        }
    }()
    public func requestThumbnail(path: Godot.GodotString, control: Godot.TextureRect?) {
        path.withUnsafeRawPointer { (__ptr_path) in
            control.withUnsafeRawPointer { (__ptr_control) in
                withUnsafePointer(to: __ptr_control) { (_ptr___ptr_control) in
                    withUnsafeArgumentPackPointer(__ptr_path, _ptr___ptr_control) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_request_thumbnail,
                                __ptr_self,
                                __accessPtr,
                                nil
                            )
                        }
                    }
                }
            }
        }
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
            let instance = Unmanaged<EditorResourceTooltipPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._handles(
            type: Godot.GodotString(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _make_tooltip_for_path_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorResourceTooltipPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._makeTooltipForPath(
            Godot.GodotString(godotExtensionPointer: args[0]!),
            metadata: Godot.GodotDictionary(godotExtensionPointer: args[1]!),
            base: Godot.Control.retrievedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[2]!))
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        _virtualFunctions = [
            "_handles" : ("_handles", _handles_call),
            "_makeTooltipForPath" : ("_make_tooltip_for_path", _make_tooltip_for_path_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }