//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class EditorInspector: ScrollContainer {
    @Emitter(signal: "property_selected", args: ("property", Godot.GodotString))
    public struct PropertySelected {
    }

    @Emitter(signal: "property_keyed", args: ("property", Godot.GodotString), ("value", Godot.Variant), ("advance", Bool))
    public struct PropertyKeyed {
    }

    @Emitter(signal: "property_deleted", args: ("property", Godot.GodotString))
    public struct PropertyDeleted {
    }

    @Emitter(signal: "resource_selected", args: ("resource", Godot.Resource?), ("path", Godot.GodotString))
    public struct ResourceSelected {
    }

    @Emitter(signal: "object_id_selected", args: ("id", Int))
    public struct ObjectIdSelected {
    }

    @Emitter(signal: "property_edited", args: ("property", Godot.GodotString))
    public struct PropertyEdited {
    }

    @Emitter(signal: "property_toggled", args: ("property", Godot.GodotString), ("checked", Bool))
    public struct PropertyToggled {
    }

    @Emitter(signal: "edited_object_changed")
    public struct EditedObjectChanged {
    }

    @Emitter(signal: "restart_requested")
    public struct RestartRequested {
    }

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