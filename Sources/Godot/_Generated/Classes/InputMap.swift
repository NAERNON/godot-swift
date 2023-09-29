//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class InputMap: Object {
    private static var __method_binding_has_action: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_action").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2619796661)!
        }
        }
    }()
    public func hasAction(_ action: Godot.GodotStringName) -> Bool {
        var __temporary = Bool()
        action.withUnsafeRawPointer { (__ptr_action) in
            withUnsafeArgumentPackPointer(__ptr_action) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_has_action,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_actions: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_actions").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()
    public func actions() -> Godot.GodotTypedArray<Godot.GodotStringName> {
        let __temporary = Godot.GodotTypedArray<Godot.GodotStringName>()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_actions,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_add_action: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_action").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 573731101)!
        }
        }
    }()
    public func addAction(_ action: Godot.GodotStringName, deadzone: Double = 0.5) {
        action.withUnsafeRawPointer { (__ptr_action) in
            withUnsafePointer(to: deadzone) { (__ptr_deadzone) in
                withUnsafeArgumentPackPointer(__ptr_action, __ptr_deadzone) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_add_action,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_erase_action: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "erase_action").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3304788590)!
        }
        }
    }()
    public func eraseAction(_ action: Godot.GodotStringName) {
        action.withUnsafeRawPointer { (__ptr_action) in
            withUnsafeArgumentPackPointer(__ptr_action) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_erase_action,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_action_set_deadzone: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "action_set_deadzone").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4135858297)!
        }
        }
    }()
    public func actionSetDeadzone(action: Godot.GodotStringName, deadzone: Double) {
        action.withUnsafeRawPointer { (__ptr_action) in
            withUnsafePointer(to: deadzone) { (__ptr_deadzone) in
                withUnsafeArgumentPackPointer(__ptr_action, __ptr_deadzone) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_action_set_deadzone,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_action_get_deadzone: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "action_get_deadzone").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1391627649)!
        }
        }
    }()
    public func actionGetDeadzone(action: Godot.GodotStringName) -> Double {
        var __temporary = Double()
        action.withUnsafeRawPointer { (__ptr_action) in
            withUnsafeArgumentPackPointer(__ptr_action) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_action_get_deadzone,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_action_add_event: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "action_add_event").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 518302593)!
        }
        }
    }()
    public func actionAddEvent(action: Godot.GodotStringName, event: Godot.InputEvent?) {
        action.withUnsafeRawPointer { (__ptr_action) in
            event.withUnsafeRawPointer { (__ptr_event) in
                withUnsafePointer(to: __ptr_event) { (_ptr___ptr_event) in
                    withUnsafeArgumentPackPointer(__ptr_action, _ptr___ptr_event) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_action_add_event,
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

    private static var __method_binding_action_has_event: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "action_has_event").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1185871985)!
        }
        }
    }()
    public func actionHasEvent(action: Godot.GodotStringName, event: Godot.InputEvent?) -> Bool {
        var __temporary = Bool()
        action.withUnsafeRawPointer { (__ptr_action) in
            event.withUnsafeRawPointer { (__ptr_event) in
                withUnsafePointer(to: __ptr_event) { (_ptr___ptr_event) in
                    withUnsafeArgumentPackPointer(__ptr_action, _ptr___ptr_event) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_action_has_event,
                                    __ptr_self,
                                    __accessPtr,
                                    __ptr___temporary
                                )
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_action_erase_event: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "action_erase_event").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 518302593)!
        }
        }
    }()
    public func actionEraseEvent(action: Godot.GodotStringName, event: Godot.InputEvent?) {
        action.withUnsafeRawPointer { (__ptr_action) in
            event.withUnsafeRawPointer { (__ptr_event) in
                withUnsafePointer(to: __ptr_event) { (_ptr___ptr_event) in
                    withUnsafeArgumentPackPointer(__ptr_action, _ptr___ptr_event) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_action_erase_event,
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

    private static var __method_binding_action_erase_events: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "action_erase_events").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3304788590)!
        }
        }
    }()
    public func actionEraseEvents(action: Godot.GodotStringName) {
        action.withUnsafeRawPointer { (__ptr_action) in
            withUnsafeArgumentPackPointer(__ptr_action) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_action_erase_events,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_action_get_events: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "action_get_events").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 689397652)!
        }
        }
    }()
    public func actionGetEvents(action: Godot.GodotStringName) -> Godot.GodotTypedArray<Godot.InputEvent?> {
        let __temporary = Godot.GodotTypedArray<Godot.InputEvent?>()
        action.withUnsafeRawPointer { (__ptr_action) in
            withUnsafeArgumentPackPointer(__ptr_action) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_action_get_events,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_event_is_action: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "event_is_action").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3193353650)!
        }
        }
    }()
    public func eventIsAction(event: Godot.InputEvent?, action: Godot.GodotStringName, exactMatch: Bool = false) -> Bool {
        var __temporary = Bool()
        event.withUnsafeRawPointer { (__ptr_event) in
            withUnsafePointer(to: __ptr_event) { (_ptr___ptr_event) in
                action.withUnsafeRawPointer { (__ptr_action) in
                    withUnsafePointer(to: exactMatch) { (__ptr_exactMatch) in
                        withUnsafeArgumentPackPointer(_ptr___ptr_event, __ptr_action, __ptr_exactMatch) { (__accessPtr) in
                            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_event_is_action,
                                        __ptr_self,
                                        __accessPtr,
                                        __ptr___temporary
                                    )
                                }
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_load_from_project_settings: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "load_from_project_settings").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func loadFromProjectSettings() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_load_from_project_settings,
                __ptr_self,
                nil,
                nil
            )
        }
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