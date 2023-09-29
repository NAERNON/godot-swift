//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class EditorInspectorPlugin: RefCounted {
    open func _canHandle(object: Godot.Object?) -> Bool {
        Bool()
    }

    open func _parseBegin(object: Godot.Object?) {
    }

    open func _parseCategory(object: Godot.Object?, category: Godot.GodotString) {
    }

    open func _parseGroup(object: Godot.Object?, group: Godot.GodotString) {
    }

    open func _parseProperty(object: Godot.Object?, type: Godot.Variant.GodotType, name: Godot.GodotString, hintType: Godot.PropertyHint, hintString: Godot.GodotString, usageFlags: Godot.PropertyUsageFlags, wide: Bool) -> Bool {
        Bool()
    }

    open func _parseEnd(object: Godot.Object?) {
    }

    private static var __method_binding_add_custom_control: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_custom_control").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1496901182)!
        }
        }
    }()
    public func addCustomControl(_ control: Godot.Control?) {
        control.withUnsafeRawPointer { (__ptr_control) in
            withUnsafePointer(to: __ptr_control) { (_ptr___ptr_control) in
                withUnsafeArgumentPackPointer(_ptr___ptr_control) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_add_custom_control,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_add_property_editor: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_property_editor").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3406284123)!
        }
        }
    }()
    public func addPropertyEditor(property: Godot.GodotString, editor: Godot.Control?, addToEnd: Bool = false) {
        property.withUnsafeRawPointer { (__ptr_property) in
            editor.withUnsafeRawPointer { (__ptr_editor) in
                withUnsafePointer(to: __ptr_editor) { (_ptr___ptr_editor) in
                    withUnsafePointer(to: addToEnd) { (__ptr_addToEnd) in
                        withUnsafeArgumentPackPointer(__ptr_property, _ptr___ptr_editor, __ptr_addToEnd) { (__accessPtr) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_add_property_editor,
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
    }

    private static var __method_binding_add_property_editor_for_multiple_properties: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_property_editor_for_multiple_properties").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 788598683)!
        }
        }
    }()
    public func addPropertyEditorForMultipleProperties(label: Godot.GodotString, properties: Godot.PackedStringArray, editor: Godot.Control?) {
        label.withUnsafeRawPointer { (__ptr_label) in
            properties.withUnsafeRawPointer { (__ptr_properties) in
                editor.withUnsafeRawPointer { (__ptr_editor) in
                    withUnsafePointer(to: __ptr_editor) { (_ptr___ptr_editor) in
                        withUnsafeArgumentPackPointer(__ptr_label, __ptr_properties, _ptr___ptr_editor) { (__accessPtr) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_add_property_editor_for_multiple_properties,
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
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _can_handle_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorInspectorPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._canHandle(
            object: Godot.Object.retrievedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!))
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _parse_begin_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorInspectorPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._parseBegin(
            object: Godot.Object.retrievedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!))
        )}
        let _parse_category_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorInspectorPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._parseCategory(
            object: Godot.Object.retrievedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!)),
            category: Godot.GodotString(godotExtensionPointer: args[1]!)
        )}
        let _parse_group_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorInspectorPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._parseGroup(
            object: Godot.Object.retrievedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!)),
            group: Godot.GodotString(godotExtensionPointer: args[1]!)
        )}
        let _parse_property_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorInspectorPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._parseProperty(
            object: Godot.Object.retrievedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!)),
            type: args[1]!.load(as: Godot.Variant.GodotType.self),
            name: Godot.GodotString(godotExtensionPointer: args[2]!),
            hintType: args[3]!.load(as: Godot.PropertyHint.self),
            hintString: Godot.GodotString(godotExtensionPointer: args[4]!),
            usageFlags: args[5]!.load(as: Godot.PropertyUsageFlags.self),
            wide: args[6]!.load(as: Bool.self)
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _parse_end_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorInspectorPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._parseEnd(
            object: Godot.Object.retrievedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!))
        )}
        _virtualFunctions = [
            "_canHandle" : ("_can_handle", _can_handle_call),
            "_parseBegin" : ("_parse_begin", _parse_begin_call),
            "_parseCategory" : ("_parse_category", _parse_category_call),
            "_parseGroup" : ("_parse_group", _parse_group_call),
            "_parseProperty" : ("_parse_property", _parse_property_call),
            "_parseEnd" : ("_parse_end", _parse_end_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }