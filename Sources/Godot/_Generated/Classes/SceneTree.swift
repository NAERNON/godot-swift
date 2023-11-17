//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class SceneTree: MainLoop {
    public enum GroupCallFlags: UInt32, GodotEnum {
        case `default` = 0
        case reverse = 1
        case deferred = 2
        case unique = 4
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Default", 0),
            ("Reverse", 1),
            ("Deferred", 2),
            ("Unique", 4),]
        }
    }

    @Emitter(signal: "tree_changed")
    public struct TreeChanged {
    }

    @Emitter(signal: "tree_process_mode_changed")
    public struct TreeProcessModeChanged {
    }

    @Emitter(signal: "node_added", args: ("node", Godot.Node?))
    public struct NodeAdded {
    }

    @Emitter(signal: "node_removed", args: ("node", Godot.Node?))
    public struct NodeRemoved {
    }

    @Emitter(signal: "node_renamed", args: ("node", Godot.Node?))
    public struct NodeRenamed {
    }

    @Emitter(signal: "node_configuration_warning_changed", args: ("node", Godot.Node?))
    public struct NodeConfigurationWarningChanged {
    }

    @Emitter(signal: "process_frame")
    public struct ProcessFrame {
    }

    @Emitter(signal: "physics_frame")
    public struct PhysicsFrame {
    }

    private static var __method_binding_get_root: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_root").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1757182445)!
        }
        }
    }()
    private func __getRoot() -> Godot.Window? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_root,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.Window.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_has_group: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_group").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2619796661)!
        }
        }
    }()
    public func hasGroup(name: Godot.GodotStringName) -> Bool {
        var __temporary = Bool()
        name.withUnsafeRawPointer { (__ptr_name) in
            withUnsafeArgumentPackPointer(__ptr_name) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_has_group,
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

    private static var __method_binding_is_auto_accept_quit: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_auto_accept_quit").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isAutoAcceptQuit() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_auto_accept_quit,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_auto_accept_quit: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_auto_accept_quit").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setAutoAcceptQuit(enabled: Bool) {
        withUnsafePointer(to: enabled) { (__ptr_enabled) in
            withUnsafeArgumentPackPointer(__ptr_enabled) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_auto_accept_quit,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_is_quit_on_go_back: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_quit_on_go_back").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isQuitOnGoBack() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_quit_on_go_back,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_quit_on_go_back: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_quit_on_go_back").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setQuitOnGoBack(enabled: Bool) {
        withUnsafePointer(to: enabled) { (__ptr_enabled) in
            withUnsafeArgumentPackPointer(__ptr_enabled) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_quit_on_go_back,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_set_debug_collisions_hint: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_debug_collisions_hint").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setDebugCollisionsHint(enable: Bool) {
        withUnsafePointer(to: enable) { (__ptr_enable) in
            withUnsafeArgumentPackPointer(__ptr_enable) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_debug_collisions_hint,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_is_debugging_collisions_hint: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_debugging_collisions_hint").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isDebuggingCollisionsHint() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_debugging_collisions_hint,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_debug_paths_hint: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_debug_paths_hint").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setDebugPathsHint(enable: Bool) {
        withUnsafePointer(to: enable) { (__ptr_enable) in
            withUnsafeArgumentPackPointer(__ptr_enable) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_debug_paths_hint,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_is_debugging_paths_hint: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_debugging_paths_hint").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isDebuggingPathsHint() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_debugging_paths_hint,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_debug_navigation_hint: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_debug_navigation_hint").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setDebugNavigationHint(enable: Bool) {
        withUnsafePointer(to: enable) { (__ptr_enable) in
            withUnsafeArgumentPackPointer(__ptr_enable) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_debug_navigation_hint,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_is_debugging_navigation_hint: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_debugging_navigation_hint").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isDebuggingNavigationHint() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_debugging_navigation_hint,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_edited_scene_root: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_edited_scene_root").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1078189570)!
        }
        }
    }()
    private func __setEditedSceneRoot(scene: Godot.Node?) {
        scene.withUnsafeRawPointer { (__ptr_scene) in
            withUnsafePointer(to: __ptr_scene) { (_ptr___ptr_scene) in
                withUnsafeArgumentPackPointer(_ptr___ptr_scene) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_edited_scene_root,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_edited_scene_root: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_edited_scene_root").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3160264692)!
        }
        }
    }()
    private func __getEditedSceneRoot() -> Godot.Node? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_edited_scene_root,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.Node.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_set_pause: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_pause").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setPause(enable: Bool) {
        withUnsafePointer(to: enable) { (__ptr_enable) in
            withUnsafeArgumentPackPointer(__ptr_enable) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_pause,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_is_paused: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_paused").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isPaused() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_paused,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_create_timer: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_timer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1780978058)!
        }
        }
    }()
    public func createTimer(timeSec: Double, processAlways: Bool = true, processInPhysics: Bool = false, ignoreTimeScale: Bool = false) -> Godot.SceneTreeTimer? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafePointer(to: timeSec) { (__ptr_timeSec) in
            withUnsafePointer(to: processAlways) { (__ptr_processAlways) in
                withUnsafePointer(to: processInPhysics) { (__ptr_processInPhysics) in
                    withUnsafePointer(to: ignoreTimeScale) { (__ptr_ignoreTimeScale) in
                        withUnsafeArgumentPackPointer(__ptr_timeSec, __ptr_processAlways, __ptr_processInPhysics, __ptr_ignoreTimeScale) { (__accessPtr) in
                            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_create_timer,
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
        return Godot.SceneTreeTimer.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_create_tween: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_tween").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3426978995)!
        }
        }
    }()
    public func createTween() -> Godot.Tween? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_create_tween,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.Tween.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_get_processed_tweens: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_processed_tweens").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()
    public func processedTweens() -> Godot.GodotTypedArray<Godot.Tween?> {
        let __temporary = Godot.GodotTypedArray<Godot.Tween?>()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_processed_tweens,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_node_count: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_node_count").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func nodeCount() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_node_count,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_frame: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_frame").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func frame() -> Int64 {
        var __temporary = Int64()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_frame,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_quit: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "quit").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1995695955)!
        }
        }
    }()
    public func quit(exitCode: Int32 = 0) {
        withUnsafePointer(to: exitCode) { (__ptr_exitCode) in
            withUnsafeArgumentPackPointer(__ptr_exitCode) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_quit,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_queue_delete: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "queue_delete").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3975164845)!
        }
        }
    }()
    public func queueDelete(obj: Godot.Object?) {
        obj.withUnsafeRawPointer { (__ptr_obj) in
            withUnsafePointer(to: __ptr_obj) { (_ptr___ptr_obj) in
                withUnsafeArgumentPackPointer(_ptr___ptr_obj) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_queue_delete,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_call_group_flags: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "call_group_flags").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1527739229)!
        }
        }
    }()
    public func callGroupFlags<each VariantRest : VariantEncodable>(_ flags: Int, group: Godot.GodotStringName, method: Godot.GodotStringName, _ rest: repeat each VariantRest) {
        Godot.Variant.Storage(flags).withUnsafeRawPointer { (__ptr_flags) in
            Godot.Variant.Storage(group).withUnsafeRawPointer { (__ptr_group) in
                Godot.Variant.Storage(method).withUnsafeRawPointer { (__ptr_method) in
                    withUnsafeArgumentPackPointer(__ptr_flags, __ptr_group, __ptr_method, varargs: repeat each rest) { (packCount, __accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_call(
                                Self.__method_binding_call_group_flags,
                                __ptr_self,
                                __accessPtr,
                                Int64(packCount),
                                nil,
                                nil
                            )
                        }
                    }
                }
            }
        }
    }
    public func callGroupFlags(_ flags: Int, group: Godot.GodotStringName, method: Godot.GodotStringName) {
        Godot.Variant.Storage(flags).withUnsafeRawPointer { (__ptr_flags) in
            Godot.Variant.Storage(group).withUnsafeRawPointer { (__ptr_group) in
                Godot.Variant.Storage(method).withUnsafeRawPointer { (__ptr_method) in
                    withUnsafeArgumentPackPointer(__ptr_flags, __ptr_group, __ptr_method) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_call(
                                Self.__method_binding_call_group_flags,
                                __ptr_self,
                                __accessPtr,
                                3,
                                nil,
                                nil
                            )
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_notify_group_flags: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "notify_group_flags").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1245489420)!
        }
        }
    }()
    public func notifyGroupFlags(callFlags: UInt32, group: Godot.GodotStringName, notification: Int32) {
        withUnsafePointer(to: callFlags) { (__ptr_callFlags) in
            group.withUnsafeRawPointer { (__ptr_group) in
                withUnsafePointer(to: notification) { (__ptr_notification) in
                    withUnsafeArgumentPackPointer(__ptr_callFlags, __ptr_group, __ptr_notification) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_notify_group_flags,
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

    private static var __method_binding_set_group_flags: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_group_flags").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3497599527)!
        }
        }
    }()
    public func setGroupFlags<Variant1 : VariantEncodable>(callFlags: UInt32, group: Godot.GodotStringName, property: Godot.GodotString, value: Variant1) {
        withUnsafePointer(to: callFlags) { (__ptr_callFlags) in
            group.withUnsafeRawPointer { (__ptr_group) in
                property.withUnsafeRawPointer { (__ptr_property) in
                    Godot.Variant.Storage(value).withUnsafeRawPointer { (__ptr_value) in
                        withUnsafeArgumentPackPointer(__ptr_callFlags, __ptr_group, __ptr_property, __ptr_value) { (__accessPtr) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_set_group_flags,
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

    private static var __method_binding_call_group: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "call_group").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1257962832)!
        }
        }
    }()
    public func callGroup<each VariantRest : VariantEncodable>(_ group: Godot.GodotStringName, method: Godot.GodotStringName, _ rest: repeat each VariantRest) {
        Godot.Variant.Storage(group).withUnsafeRawPointer { (__ptr_group) in
            Godot.Variant.Storage(method).withUnsafeRawPointer { (__ptr_method) in
                withUnsafeArgumentPackPointer(__ptr_group, __ptr_method, varargs: repeat each rest) { (packCount, __accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_call(
                            Self.__method_binding_call_group,
                            __ptr_self,
                            __accessPtr,
                            Int64(packCount),
                            nil,
                            nil
                        )
                    }
                }
            }
        }
    }
    public func callGroup(_ group: Godot.GodotStringName, method: Godot.GodotStringName) {
        Godot.Variant.Storage(group).withUnsafeRawPointer { (__ptr_group) in
            Godot.Variant.Storage(method).withUnsafeRawPointer { (__ptr_method) in
                withUnsafeArgumentPackPointer(__ptr_group, __ptr_method) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_call(
                            Self.__method_binding_call_group,
                            __ptr_self,
                            __accessPtr,
                            2,
                            nil,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_notify_group: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "notify_group").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2415702435)!
        }
        }
    }()
    public func notifyGroup(_ group: Godot.GodotStringName, notification: Int32) {
        group.withUnsafeRawPointer { (__ptr_group) in
            withUnsafePointer(to: notification) { (__ptr_notification) in
                withUnsafeArgumentPackPointer(__ptr_group, __ptr_notification) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_notify_group,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_set_group: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_group").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1279312029)!
        }
        }
    }()
    public func setGroup<Variant1 : VariantEncodable>(_ group: Godot.GodotStringName, property: Godot.GodotString, value: Variant1) {
        group.withUnsafeRawPointer { (__ptr_group) in
            property.withUnsafeRawPointer { (__ptr_property) in
                Godot.Variant.Storage(value).withUnsafeRawPointer { (__ptr_value) in
                    withUnsafeArgumentPackPointer(__ptr_group, __ptr_property, __ptr_value) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_set_group,
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

    private static var __method_binding_get_nodes_in_group: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_nodes_in_group").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 689397652)!
        }
        }
    }()
    public func nodesInGroup(_ group: Godot.GodotStringName) -> Godot.GodotTypedArray<Godot.Node?> {
        let __temporary = Godot.GodotTypedArray<Godot.Node?>()
        group.withUnsafeRawPointer { (__ptr_group) in
            withUnsafeArgumentPackPointer(__ptr_group) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_nodes_in_group,
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

    private static var __method_binding_get_first_node_in_group: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_first_node_in_group").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4071044623)!
        }
        }
    }()
    public func firstNodeInGroup(_ group: Godot.GodotStringName) -> Godot.Node? {
        var __temporary: GDExtensionObjectPtr!
        group.withUnsafeRawPointer { (__ptr_group) in
            withUnsafeArgumentPackPointer(__ptr_group) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_first_node_in_group,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.Node.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_set_current_scene: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_current_scene").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1078189570)!
        }
        }
    }()
    private func __setCurrentScene(childNode: Godot.Node?) {
        childNode.withUnsafeRawPointer { (__ptr_childNode) in
            withUnsafePointer(to: __ptr_childNode) { (_ptr___ptr_childNode) in
                withUnsafeArgumentPackPointer(_ptr___ptr_childNode) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_current_scene,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_current_scene: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_current_scene").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3160264692)!
        }
        }
    }()
    private func __getCurrentScene() -> Godot.Node? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_current_scene,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.Node.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_change_scene_to_file: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "change_scene_to_file").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 166001499)!
        }
        }
    }()
    public func changeSceneToFile(path: Godot.GodotString) -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        path.withUnsafeRawPointer { (__ptr_path) in
            withUnsafeArgumentPackPointer(__ptr_path) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_change_scene_to_file,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.ErrorType(rawValue: __temporary)!
    }

    private static var __method_binding_change_scene_to_packed: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "change_scene_to_packed").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 107349098)!
        }
        }
    }()
    public func changeSceneToPacked(packedScene: Godot.PackedScene?) -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        packedScene.withUnsafeRawPointer { (__ptr_packedScene) in
            withUnsafePointer(to: __ptr_packedScene) { (_ptr___ptr_packedScene) in
                withUnsafeArgumentPackPointer(_ptr___ptr_packedScene) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_change_scene_to_packed,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return Godot.ErrorType(rawValue: __temporary)!
    }

    private static var __method_binding_reload_current_scene: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "reload_current_scene").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 166280745)!
        }
        }
    }()
    public func reloadCurrentScene() -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_reload_current_scene,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.ErrorType(rawValue: __temporary)!
    }

    private static var __method_binding_unload_current_scene: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "unload_current_scene").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func unloadCurrentScene() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_unload_current_scene,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_set_multiplayer: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_multiplayer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2385607013)!
        }
        }
    }()
    public func setMultiplayer(_ multiplayer: Godot.MultiplayerAPI?, rootPath: Godot.NodePath = NodePath(string: "")) {
        multiplayer.withUnsafeRawPointer { (__ptr_multiplayer) in
            withUnsafePointer(to: __ptr_multiplayer) { (_ptr___ptr_multiplayer) in
                rootPath.withUnsafeRawPointer { (__ptr_rootPath) in
                    withUnsafeArgumentPackPointer(_ptr___ptr_multiplayer, __ptr_rootPath) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_set_multiplayer,
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

    private static var __method_binding_get_multiplayer: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_multiplayer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3453401404)!
        }
        }
    }()
    public func multiplayer(forPath path: Godot.NodePath = NodePath(string: "")) -> Godot.MultiplayerAPI? {
        var __temporary: GDExtensionObjectPtr!
        path.withUnsafeRawPointer { (__ptr_path) in
            withUnsafeArgumentPackPointer(__ptr_path) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_multiplayer,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.MultiplayerAPI.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_set_multiplayer_poll_enabled: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_multiplayer_poll_enabled").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setMultiplayerPollEnabled(_ enabled: Bool) {
        withUnsafePointer(to: enabled) { (__ptr_enabled) in
            withUnsafeArgumentPackPointer(__ptr_enabled) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_multiplayer_poll_enabled,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_is_multiplayer_poll_enabled: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_multiplayer_poll_enabled").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isMultiplayerPollEnabled() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_multiplayer_poll_enabled,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    public var isAutoAcceptQuit: Bool {
        get {
            __isAutoAcceptQuit()
        }
        set {
            __setAutoAcceptQuit(
                enabled: newValue
            )
        }
    }

    public var isQuitOnGoBack: Bool {
        get {
            __isQuitOnGoBack()
        }
        set {
            __setQuitOnGoBack(
                enabled: newValue
            )
        }
    }

    public var isDebuggingCollisionsHint: Bool {
        get {
            __isDebuggingCollisionsHint()
        }
        set {
            __setDebugCollisionsHint(
                enable: newValue
            )
        }
    }

    public var isDebuggingPathsHint: Bool {
        get {
            __isDebuggingPathsHint()
        }
        set {
            __setDebugPathsHint(
                enable: newValue
            )
        }
    }

    public var isDebuggingNavigationHint: Bool {
        get {
            __isDebuggingNavigationHint()
        }
        set {
            __setDebugNavigationHint(
                enable: newValue
            )
        }
    }

    public var isPaused: Bool {
        get {
            __isPaused()
        }
        set {
            __setPause(
                enable: newValue
            )
        }
    }

    public var editedSceneRoot: Godot.Node? {
        get {
            __getEditedSceneRoot()
        }
        set {
            __setEditedSceneRoot(
                scene: newValue
            )
        }
    }

    public var currentScene: Godot.Node? {
        get {
            __getCurrentScene()
        }
        set {
            __setCurrentScene(
                childNode: newValue
            )
        }
    }

    public var root: Godot.Window? {
        get {
            __getRoot()
        }
    }

    public var isMultiplayerPollEnabled: Bool {
        get {
            __isMultiplayerPollEnabled()
        }
        set {
            __setMultiplayerPollEnabled(
                newValue
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