//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class EditorInspector: ScrollContainer {
    public func propertySelected(property: Godot.GodotString) {
        propertySelectedConnector.emit(property)
    }

    public private (set) lazy var propertySelectedConnector: Godot.SignalConnector<Godot.GodotString> = {
        .init(self, "property_selected")
    }()

    public func propertyKeyed(property: Godot.GodotString, value: Godot.Variant, advance: Bool) {
        propertyKeyedConnector.emit(property, value, advance)
    }

    public private (set) lazy var propertyKeyedConnector: Godot.SignalConnector<Godot.GodotString, Godot.Variant, Bool> = {
        .init(self, "property_keyed")
    }()

    public func propertyDeleted(property: Godot.GodotString) {
        propertyDeletedConnector.emit(property)
    }

    public private (set) lazy var propertyDeletedConnector: Godot.SignalConnector<Godot.GodotString> = {
        .init(self, "property_deleted")
    }()

    public func resourceSelected(resource: Godot.Resource?, path: Godot.GodotString) {
        resourceSelectedConnector.emit(resource, path)
    }

    public private (set) lazy var resourceSelectedConnector: Godot.SignalConnector<Godot.Resource?, Godot.GodotString> = {
        .init(self, "resource_selected")
    }()

    public func objectIdSelected(id: Int) {
        objectIdSelectedConnector.emit(id)
    }

    public private (set) lazy var objectIdSelectedConnector: Godot.SignalConnector<Int> = {
        .init(self, "object_id_selected")
    }()

    public func propertyEdited(property: Godot.GodotString) {
        propertyEditedConnector.emit(property)
    }

    public private (set) lazy var propertyEditedConnector: Godot.SignalConnector<Godot.GodotString> = {
        .init(self, "property_edited")
    }()

    public func propertyToggled(property: Godot.GodotString, checked: Bool) {
        propertyToggledConnector.emit(property, checked)
    }

    public private (set) lazy var propertyToggledConnector: Godot.SignalConnector<Godot.GodotString, Bool> = {
        .init(self, "property_toggled")
    }()

    public func editedObjectChanged() {
        editedObjectChangedConnector.emit()
    }

    public private (set) lazy var editedObjectChangedConnector: Godot.SignalConnector
    <> = {
        .init(self, "edited_object_changed")
    }()


    public func restartRequested() {
        restartRequestedConnector.emit()
    }

    public private (set) lazy var restartRequestedConnector: Godot.SignalConnector
    <> = {
        .init(self, "restart_requested")
    }()


    private static var __method_binding_get_selected_path: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_selected_path").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    public func selectedPath() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_selected_path,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_edited_object: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_edited_object").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2050059866)!
        }
        }
    }()
    public func editedObject() -> Godot.Object? {
        Godot.Object?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_edited_object,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        _virtualFunctions = [
            :
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }