//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class EditorProperty: Container {
    @Emitter(signal: "property_changed", args: ("property", Godot.GodotStringName), ("value", Godot.Variant), ("field", Godot.GodotStringName), ("changing", Bool))
    public struct PropertyChanged {
    }

    @Emitter(signal: "multiple_properties_changed", args: ("properties", Godot.PackedStringArray), ("value", Godot.AnyGodotArray))
    public struct MultiplePropertiesChanged {
    }

    @Emitter(signal: "property_keyed", args: ("property", Godot.GodotStringName))
    public struct PropertyKeyed {
    }

    @Emitter(signal: "property_deleted", args: ("property", Godot.GodotStringName))
    public struct PropertyDeleted {
    }

    @Emitter(signal: "property_keyed_with_value", args: ("property", Godot.GodotStringName), ("value", Godot.Variant))
    public struct PropertyKeyedWithValue {
    }

    @Emitter(signal: "property_checked", args: ("property", Godot.GodotStringName), ("checked", Bool))
    public struct PropertyChecked {
    }

    @Emitter(signal: "property_pinned", args: ("property", Godot.GodotStringName), ("pinned", Bool))
    public struct PropertyPinned {
    }

    @Emitter(signal: "property_can_revert_changed", args: ("property", Godot.GodotStringName), ("canRevert", Bool))
    public struct PropertyCanRevertChanged {
    }

    @Emitter(signal: "resource_selected", args: ("path", Godot.GodotString), ("resource", Godot.Resource?))
    public struct ResourceSelected {
    }

    @Emitter(signal: "object_id_selected", args: ("property", Godot.GodotStringName), ("id", Int))
    public struct ObjectIdSelected {
    }

    @Emitter(signal: "selected", args: ("path", Godot.GodotString), ("focusableIdx", Int))
    public struct Selected {
    }

    open func _updateProperty() {
    }

    open func _setReadOnly(_ readOnly: Bool) {
    }

    private static var __method_binding_set_label: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_label").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    private func __setLabel(text: Godot.GodotString) {
        text.withUnsafeRawPointer { (__ptr_text) in
            withUnsafeArgumentPackPointer(__ptr_text) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_label,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_label: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_label").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    private func __getLabel() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_label,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_read_only: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_read_only").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setReadOnly(_ readOnly: Bool) {
        withUnsafePointer(to: readOnly) { (__ptr_readOnly) in
            withUnsafeArgumentPackPointer(__ptr_readOnly) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_read_only,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_is_read_only: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_read_only").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isReadOnly() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_read_only,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_checkable: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_checkable").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setCheckable(_ checkable: Bool) {
        withUnsafePointer(to: checkable) { (__ptr_checkable) in
            withUnsafeArgumentPackPointer(__ptr_checkable) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_checkable,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_is_checkable: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_checkable").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isCheckable() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_checkable,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_checked: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_checked").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setChecked(_ checked: Bool) {
        withUnsafePointer(to: checked) { (__ptr_checked) in
            withUnsafeArgumentPackPointer(__ptr_checked) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_checked,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_is_checked: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_checked").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isChecked() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_checked,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_draw_warning: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_draw_warning").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setDrawWarning(_ drawWarning: Bool) {
        withUnsafePointer(to: drawWarning) { (__ptr_drawWarning) in
            withUnsafeArgumentPackPointer(__ptr_drawWarning) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_draw_warning,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_is_draw_warning: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_draw_warning").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isDrawWarning() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_draw_warning,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_keying: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_keying").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setKeying(_ keying: Bool) {
        withUnsafePointer(to: keying) { (__ptr_keying) in
            withUnsafeArgumentPackPointer(__ptr_keying) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_keying,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_is_keying: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_keying").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isKeying() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_keying,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_deletable: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_deletable").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setDeletable(_ deletable: Bool) {
        withUnsafePointer(to: deletable) { (__ptr_deletable) in
            withUnsafeArgumentPackPointer(__ptr_deletable) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_deletable,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_is_deletable: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_deletable").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isDeletable() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_deletable,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_edited_property: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_edited_property").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2002593661)!
        }
        }
    }()
    public func editedProperty() -> Godot.GodotStringName {
        let __temporary = Godot.GodotStringName()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_edited_property,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_edited_object: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_edited_object").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2050059866)!
        }
        }
    }()
    public func editedObject() -> Godot.Object? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_edited_object,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.Object.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_update_property: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "update_property").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func updateProperty() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_update_property,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_add_focusable: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_focusable").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1496901182)!
        }
        }
    }()
    public func addFocusable(control: Godot.Control?) {
        control.withUnsafeRawPointer { (__ptr_control) in
            withUnsafePointer(to: __ptr_control) { (_ptr___ptr_control) in
                withUnsafeArgumentPackPointer(_ptr___ptr_control) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_add_focusable,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_set_bottom_editor: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_bottom_editor").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1496901182)!
        }
        }
    }()
    public func setBottomEditor(_ editor: Godot.Control?) {
        editor.withUnsafeRawPointer { (__ptr_editor) in
            withUnsafePointer(to: __ptr_editor) { (_ptr___ptr_editor) in
                withUnsafeArgumentPackPointer(_ptr___ptr_editor) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_bottom_editor,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_emit_changed: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "emit_changed").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3069422438)!
        }
        }
    }()
    public func emitChanged<Value: VariantStorableIn>(property: Godot.GodotStringName, value: Value, field: Godot.GodotStringName = "", changing: Bool = false) {
        property.withUnsafeRawPointer { (__ptr_property) in
            Godot.Variant.withStorageUnsafeRawPointer(to: value) { (__ptr_value) in
                field.withUnsafeRawPointer { (__ptr_field) in
                    withUnsafePointer(to: changing) { (__ptr_changing) in
                        withUnsafeArgumentPackPointer(__ptr_property, __ptr_value, __ptr_field, __ptr_changing) { (__accessPtr) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_emit_changed,
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

    public var label: Godot.GodotString {
        get {
            __getLabel()
        }
        set {
            __setLabel(
                text: newValue
            )
        }
    }

    public var isReadOnly: Bool {
        get {
            __isReadOnly()
        }
        set {
            __setReadOnly(
                newValue
            )
        }
    }

    public var isCheckable: Bool {
        get {
            __isCheckable()
        }
        set {
            __setCheckable(
                newValue
            )
        }
    }

    public var isChecked: Bool {
        get {
            __isChecked()
        }
        set {
            __setChecked(
                newValue
            )
        }
    }

    public var isDrawWarning: Bool {
        get {
            __isDrawWarning()
        }
        set {
            __setDrawWarning(
                newValue
            )
        }
    }

    public var isKeying: Bool {
        get {
            __isKeying()
        }
        set {
            __setKeying(
                newValue
            )
        }
    }

    public var isDeletable: Bool {
        get {
            __isDeletable()
        }
        set {
            __setDeletable(
                newValue
            )
        }
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _update_property_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<EditorProperty> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._updateProperty()}
        let _set_read_only_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorProperty> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._setReadOnly(
            args[0]!.load(as: Bool.self)
        )}
        _virtualFunctions = [
            "_updateProperty" : ("_update_property", _update_property_call),
            "_setReadOnly" : ("_set_read_only", _set_read_only_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }