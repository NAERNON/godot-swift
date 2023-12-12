//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class InputMap: Object {
    private static var __method_binding_has_action: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_action").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2619796661)!
        }
        }
    }()
    public func hasAction(_ action: Godot.GodotStringName) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        action.withGodotUnsafeRawPointer { __ptr_action in
        withUnsafeArgumentPackPointer(__ptr_action) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_has_action,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_actions: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_actions").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()
    public func actions() -> Godot.GodotArray<Godot.GodotStringName> {
        Godot.GodotArray<Godot.GodotStringName> .fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_actions,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_add_action: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_action").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 573731101)!
        }
        }
    }()
    public func addAction(_ action: Godot.GodotStringName, deadzone: Double = 0.5) {
        action.withGodotUnsafeRawPointer { __ptr_action in
        deadzone.withGodotUnsafeRawPointer { __ptr_deadzone in
        withUnsafeArgumentPackPointer(__ptr_action, __ptr_deadzone) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_action,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_erase_action: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "erase_action").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3304788590)!
        }
        }
    }()
    public func eraseAction(_ action: Godot.GodotStringName) {
        action.withGodotUnsafeRawPointer { __ptr_action in
        withUnsafeArgumentPackPointer(__ptr_action) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_erase_action,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_action_set_deadzone: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "action_set_deadzone").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4135858297)!
        }
        }
    }()
    public func actionSetDeadzone(action: Godot.GodotStringName, deadzone: Double) {
        action.withGodotUnsafeRawPointer { __ptr_action in
        deadzone.withGodotUnsafeRawPointer { __ptr_deadzone in
        withUnsafeArgumentPackPointer(__ptr_action, __ptr_deadzone) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_action_set_deadzone,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_action_get_deadzone: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "action_get_deadzone").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1391627649)!
        }
        }
    }()
    public func actionGetDeadzone(action: Godot.GodotStringName) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        action.withGodotUnsafeRawPointer { __ptr_action in
        withUnsafeArgumentPackPointer(__ptr_action) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_action_get_deadzone,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_action_add_event: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "action_add_event").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 518302593)!
        }
        }
    }()
    public func actionAddEvent(action: Godot.GodotStringName, event: Godot.InputEvent?) {
        action.withGodotUnsafeRawPointer { __ptr_action in
        event.withGodotUnsafeRawPointer { __ptr_event in
        withUnsafePointer(to: __ptr_event) { _ptr___ptr_event in
        withUnsafeArgumentPackPointer(__ptr_action, _ptr___ptr_event) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_action_add_event,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_action_has_event: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "action_has_event").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1185871985)!
        }
        }
    }()
    public func actionHasEvent(action: Godot.GodotStringName, event: Godot.InputEvent?) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        action.withGodotUnsafeRawPointer { __ptr_action in
        event.withGodotUnsafeRawPointer { __ptr_event in
        withUnsafePointer(to: __ptr_event) { _ptr___ptr_event in
        withUnsafeArgumentPackPointer(__ptr_action, _ptr___ptr_event) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_action_has_event,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_action_erase_event: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "action_erase_event").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 518302593)!
        }
        }
    }()
    public func actionEraseEvent(action: Godot.GodotStringName, event: Godot.InputEvent?) {
        action.withGodotUnsafeRawPointer { __ptr_action in
        event.withGodotUnsafeRawPointer { __ptr_event in
        withUnsafePointer(to: __ptr_event) { _ptr___ptr_event in
        withUnsafeArgumentPackPointer(__ptr_action, _ptr___ptr_event) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_action_erase_event,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_action_erase_events: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "action_erase_events").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3304788590)!
        }
        }
    }()
    public func actionEraseEvents(action: Godot.GodotStringName) {
        action.withGodotUnsafeRawPointer { __ptr_action in
        withUnsafeArgumentPackPointer(__ptr_action) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_action_erase_events,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_action_get_events: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "action_get_events").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 689397652)!
        }
        }
    }()
    public func actionGetEvents(action: Godot.GodotStringName) -> Godot.GodotArray<Godot.InputEvent?> {
        Godot.GodotArray<Godot.InputEvent?> .fromMutatingGodotUnsafePointer { __temporary in
        action.withGodotUnsafeRawPointer { __ptr_action in
        withUnsafeArgumentPackPointer(__ptr_action) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_action_get_events,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_event_is_action: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "event_is_action").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3193353650)!
        }
        }
    }()
    public func eventIsAction(event: Godot.InputEvent?, action: Godot.GodotStringName, exactMatch: Bool = false) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        event.withGodotUnsafeRawPointer { __ptr_event in
        withUnsafePointer(to: __ptr_event) { _ptr___ptr_event in
        action.withGodotUnsafeRawPointer { __ptr_action in
        exactMatch.withGodotUnsafeRawPointer { __ptr_exactMatch in
        withUnsafeArgumentPackPointer(_ptr___ptr_event, __ptr_action, __ptr_exactMatch) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_event_is_action,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}
    }

    private static var __method_binding_load_from_project_settings: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "load_from_project_settings").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func loadFromProjectSettings() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_load_from_project_settings,
            __ptr_self,
            nil,
            nil
        )}
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