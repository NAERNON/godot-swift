//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class EditorInspectorPlugin: RefCounted {
    open func _canHandle(
        object: Godot.Object?
    ) -> Bool {
        Bool()
    }

    open func _parseBegin(
        object: Godot.Object?
    ) {
    }

    open func _parseCategory(
        object: Godot.Object?,
        category: Godot.GodotString
    ) {
    }

    open func _parseGroup(
        object: Godot.Object?,
        group: Godot.GodotString
    ) {
    }

    open func _parseProperty(
        object: Godot.Object?,
        type: Godot.Variant.StorageType,
        name: Godot.GodotString,
        hintType: Godot.PropertyHint,
        hintString: Godot.GodotString,
        usageFlags: Godot.PropertyUsageFlags,
        wide: Bool
    ) -> Bool {
        Bool()
    }

    open func _parseEnd(
        object: Godot.Object?
    ) {
    }

    internal static var __method_binding_add_custom_control: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_custom_control").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1496901182)!
        }
        }
    }()

    public func addCustomControl(
        _ control: Godot.Control?
    ) {
        control.withGodotUnsafeRawPointer { __ptr_control in
        withUnsafePointer(to: __ptr_control) { _ptr___ptr_control in
        withUnsafeArgumentPackPointer(_ptr___ptr_control) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_custom_control,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_add_property_editor: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_property_editor").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3406284123)!
        }
        }
    }()

    public func addPropertyEditor(
        property: Godot.GodotString,
        editor: Godot.Control?,
        addToEnd: Bool = false
    ) {
        property.withGodotUnsafeRawPointer { __ptr_property in
        editor.withGodotUnsafeRawPointer { __ptr_editor in
        withUnsafePointer(to: __ptr_editor) { _ptr___ptr_editor in
        addToEnd.withGodotUnsafeRawPointer { __ptr_addToEnd in
        withUnsafeArgumentPackPointer(__ptr_property, _ptr___ptr_editor, __ptr_addToEnd) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_property_editor,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    internal static var __method_binding_add_property_editor_for_multiple_properties: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_property_editor_for_multiple_properties").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 788598683)!
        }
        }
    }()

    public func addPropertyEditorForMultipleProperties(
        label: Godot.GodotString,
        properties: Godot.PackedStringArray,
        editor: Godot.Control?
    ) {
        label.withGodotUnsafeRawPointer { __ptr_label in
        properties.withGodotUnsafeRawPointer { __ptr_properties in
        editor.withGodotUnsafeRawPointer { __ptr_editor in
        withUnsafePointer(to: __ptr_editor) { _ptr___ptr_editor in
        withUnsafeArgumentPackPointer(__ptr_label, __ptr_properties, _ptr___ptr_editor) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_property_editor_for_multiple_properties,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
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
            Unmanaged<EditorInspectorPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._canHandle(
            object: Godot.Object?.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _parse_begin_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorInspectorPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._parseBegin(
            object: Godot.Object?.fromGodotUnsafePointer(args[0]!)
        )}
        let _parse_category_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorInspectorPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._parseCategory(
            object: Godot.Object?.fromGodotUnsafePointer(args[0]!),
            category: Godot.GodotString.fromGodotUnsafePointer(args[1]!)
        )}
        let _parse_group_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorInspectorPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._parseGroup(
            object: Godot.Object?.fromGodotUnsafePointer(args[0]!),
            group: Godot.GodotString.fromGodotUnsafePointer(args[1]!)
        )}
        let _parse_property_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorInspectorPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._parseProperty(
            object: Godot.Object?.fromGodotUnsafePointer(args[0]!),
            type: Godot.Variant.StorageType.fromGodotUnsafePointer(args[1]!),
            name: Godot.GodotString.fromGodotUnsafePointer(args[2]!),
            hintType: Godot.PropertyHint.fromGodotUnsafePointer(args[3]!),
            hintString: Godot.GodotString.fromGodotUnsafePointer(args[4]!),
            usageFlags: Godot.PropertyUsageFlags.fromGodotUnsafePointer(args[5]!),
            wide: Bool.fromGodotUnsafePointer(args[6]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _parse_end_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorInspectorPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._parseEnd(
            object: Godot.Object?.fromGodotUnsafePointer(args[0]!)
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