//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class EditorPlugin: Node {
    public enum CustomControlContainer: UInt32 {
        case toolbar = 0
        case spatialEditorMenu = 1
        case spatialEditorSideLeft = 2
        case spatialEditorSideRight = 3
        case spatialEditorBottom = 4
        case canvasEditorMenu = 5
        case canvasEditorSideLeft = 6
        case canvasEditorSideRight = 7
        case canvasEditorBottom = 8
        case inspectorBottom = 9
        case projectSettingTabLeft = 10
        case projectSettingTabRight = 11
    }
    public enum DockSlot: UInt32 {
        case leftUl = 0
        case leftBl = 1
        case leftUr = 2
        case leftBr = 3
        case rightUl = 4
        case rightBl = 5
        case rightUr = 6
        case rightBr = 7
        case max = 8
    }
    public enum AfterGUIInput: UInt32 {
        case pass = 0
        case stop = 1
        case custom = 2
    }

    @Emitter(signal: "scene_changed", args: ("sceneRoot", Godot.Node?))
    public struct SceneChanged {
    }

    @Emitter(signal: "scene_closed", args: ("filepath", Godot.GodotString))
    public struct SceneClosed {
    }

    @Emitter(signal: "main_screen_changed", args: ("screenName", Godot.GodotString))
    public struct MainScreenChanged {
    }

    @Emitter(signal: "resource_saved", args: ("resource", Godot.Resource?))
    public struct ResourceSaved {
    }

    @Emitter(signal: "project_settings_changed")
    public struct ProjectSettingsChanged {
    }

    open func _forwardCanvasGuiInput(event: Godot.InputEvent?) -> Bool {
        Bool()
    }

    open func _forwardCanvasDrawOverViewport(viewportControl: Godot.Control?) {
    }

    open func _forwardCanvasForceDrawOverViewport(viewportControl: Godot.Control?) {
    }

    open func _forward3DGuiInput(viewportCamera: Godot.Camera3D?, event: Godot.InputEvent?) -> Int32 {
        Int32()
    }

    open func _forward3DDrawOverViewport(viewportControl: Godot.Control?) {
    }

    open func _forward3DForceDrawOverViewport(viewportControl: Godot.Control?) {
    }

    open func _getPluginName() -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _getPluginIcon() -> Godot.Texture2D? {
        nil
    }

    open func _hasMainScreen() -> Bool {
        Bool()
    }

    open func _makeVisible(_ visible: Bool) {
    }

    open func _edit(object: Godot.Object?) {
    }

    open func _handles(object: Godot.Object?) -> Bool {
        Bool()
    }

    open func _getState() -> Godot.GodotDictionary {
        Godot.GodotDictionary()
    }

    open func _setState(_ state: Godot.GodotDictionary) {
    }

    open func _clear() {
    }

    open func _saveExternalData() {
    }

    open func _applyChanges() {
    }

    open func _getBreakpoints() -> Godot.PackedStringArray {
        Godot.PackedStringArray()
    }

    open func _setWindowLayout(configuration: Godot.ConfigFile?) {
    }

    open func _getWindowLayout(configuration: Godot.ConfigFile?) {
    }

    open func _build() -> Bool {
        Bool()
    }

    open func _enablePlugin() {
    }

    open func _disablePlugin() {
    }

    private static var __method_binding_add_control_to_container: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_control_to_container").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3092750152)!
        }
        }
    }()
    public func addControlToContainer(_ container: Godot.EditorPlugin.CustomControlContainer, control: Godot.Control?) {
        withUnsafePointer(to: container) { (__ptr_container) in
            control.withUnsafeRawPointer { (__ptr_control) in
                withUnsafePointer(to: __ptr_control) { (_ptr___ptr_control) in
                    withUnsafeArgumentPackPointer(__ptr_container, _ptr___ptr_control) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_add_control_to_container,
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

    private static var __method_binding_add_control_to_bottom_panel: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_control_to_bottom_panel").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3526039376)!
        }
        }
    }()
    public func addControlToBottomPanel(control: Godot.Control?, title: Godot.GodotString) -> Godot.Button? {
        var __temporary: GDExtensionObjectPtr!
        control.withUnsafeRawPointer { (__ptr_control) in
            withUnsafePointer(to: __ptr_control) { (_ptr___ptr_control) in
                title.withUnsafeRawPointer { (__ptr_title) in
                    withUnsafeArgumentPackPointer(_ptr___ptr_control, __ptr_title) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_add_control_to_bottom_panel,
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
        return Godot.Button.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_add_control_to_dock: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_control_to_dock").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3354871258)!
        }
        }
    }()
    public func addControlToDock(slot: Godot.EditorPlugin.DockSlot, control: Godot.Control?) {
        withUnsafePointer(to: slot) { (__ptr_slot) in
            control.withUnsafeRawPointer { (__ptr_control) in
                withUnsafePointer(to: __ptr_control) { (_ptr___ptr_control) in
                    withUnsafeArgumentPackPointer(__ptr_slot, _ptr___ptr_control) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_add_control_to_dock,
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

    private static var __method_binding_remove_control_from_docks: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "remove_control_from_docks").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1496901182)!
        }
        }
    }()
    public func removeControlFromDocks(control: Godot.Control?) {
        control.withUnsafeRawPointer { (__ptr_control) in
            withUnsafePointer(to: __ptr_control) { (_ptr___ptr_control) in
                withUnsafeArgumentPackPointer(_ptr___ptr_control) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_remove_control_from_docks,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_remove_control_from_bottom_panel: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "remove_control_from_bottom_panel").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1496901182)!
        }
        }
    }()
    public func removeControlFromBottomPanel(control: Godot.Control?) {
        control.withUnsafeRawPointer { (__ptr_control) in
            withUnsafePointer(to: __ptr_control) { (_ptr___ptr_control) in
                withUnsafeArgumentPackPointer(_ptr___ptr_control) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_remove_control_from_bottom_panel,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_remove_control_from_container: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "remove_control_from_container").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3092750152)!
        }
        }
    }()
    public func removeControlFromContainer(_ container: Godot.EditorPlugin.CustomControlContainer, control: Godot.Control?) {
        withUnsafePointer(to: container) { (__ptr_container) in
            control.withUnsafeRawPointer { (__ptr_control) in
                withUnsafePointer(to: __ptr_control) { (_ptr___ptr_control) in
                    withUnsafeArgumentPackPointer(__ptr_container, _ptr___ptr_control) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_remove_control_from_container,
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

    private static var __method_binding_add_tool_menu_item: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_tool_menu_item").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2137474292)!
        }
        }
    }()
    public func addToolMenuItem(name: Godot.GodotString, callable: Godot.Callable) {
        name.withUnsafeRawPointer { (__ptr_name) in
            callable.withUnsafeRawPointer { (__ptr_callable) in
                withUnsafeArgumentPackPointer(__ptr_name, __ptr_callable) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_add_tool_menu_item,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_add_tool_submenu_item: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_tool_submenu_item").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1019428915)!
        }
        }
    }()
    public func addToolSubmenuItem(name: Godot.GodotString, submenu: Godot.PopupMenu?) {
        name.withUnsafeRawPointer { (__ptr_name) in
            submenu.withUnsafeRawPointer { (__ptr_submenu) in
                withUnsafePointer(to: __ptr_submenu) { (_ptr___ptr_submenu) in
                    withUnsafeArgumentPackPointer(__ptr_name, _ptr___ptr_submenu) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_add_tool_submenu_item,
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

    private static var __method_binding_remove_tool_menu_item: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "remove_tool_menu_item").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func removeToolMenuItem(name: Godot.GodotString) {
        name.withUnsafeRawPointer { (__ptr_name) in
            withUnsafeArgumentPackPointer(__ptr_name) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_remove_tool_menu_item,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_export_as_menu: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_export_as_menu").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1775878644)!
        }
        }
    }()
    public func exportAsMenu() -> Godot.PopupMenu? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_export_as_menu,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.PopupMenu.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_add_custom_type: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_custom_type").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1986814599)!
        }
        }
    }()
    public func addCustomType(_ type: Godot.GodotString, base: Godot.GodotString, script: Godot.Script?, icon: Godot.Texture2D?) {
        type.withUnsafeRawPointer { (__ptr_type) in
            base.withUnsafeRawPointer { (__ptr_base) in
                script.withUnsafeRawPointer { (__ptr_script) in
                    withUnsafePointer(to: __ptr_script) { (_ptr___ptr_script) in
                        icon.withUnsafeRawPointer { (__ptr_icon) in
                            withUnsafePointer(to: __ptr_icon) { (_ptr___ptr_icon) in
                                withUnsafeArgumentPackPointer(__ptr_type, __ptr_base, _ptr___ptr_script, _ptr___ptr_icon) { (__accessPtr) in
                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                        gdextension_interface_object_method_bind_ptrcall(
                                            Self.__method_binding_add_custom_type,
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
        }
    }

    private static var __method_binding_remove_custom_type: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "remove_custom_type").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func removeCustomType(_ type: Godot.GodotString) {
        type.withUnsafeRawPointer { (__ptr_type) in
            withUnsafeArgumentPackPointer(__ptr_type) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_remove_custom_type,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_add_autoload_singleton: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_autoload_singleton").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3186203200)!
        }
        }
    }()
    public func addAutoloadSingleton(name: Godot.GodotString, path: Godot.GodotString) {
        name.withUnsafeRawPointer { (__ptr_name) in
            path.withUnsafeRawPointer { (__ptr_path) in
                withUnsafeArgumentPackPointer(__ptr_name, __ptr_path) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_add_autoload_singleton,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_remove_autoload_singleton: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "remove_autoload_singleton").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func removeAutoloadSingleton(name: Godot.GodotString) {
        name.withUnsafeRawPointer { (__ptr_name) in
            withUnsafeArgumentPackPointer(__ptr_name) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_remove_autoload_singleton,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_update_overlays: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "update_overlays").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func updateOverlays() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_update_overlays,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_make_bottom_panel_item_visible: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "make_bottom_panel_item_visible").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1496901182)!
        }
        }
    }()
    public func makeBottomPanelItemVisible(item: Godot.Control?) {
        item.withUnsafeRawPointer { (__ptr_item) in
            withUnsafePointer(to: __ptr_item) { (_ptr___ptr_item) in
                withUnsafeArgumentPackPointer(_ptr___ptr_item) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_make_bottom_panel_item_visible,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_hide_bottom_panel: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "hide_bottom_panel").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func hideBottomPanel() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_hide_bottom_panel,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_get_undo_redo: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_undo_redo").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 773492341)!
        }
        }
    }()
    public func undoRedo() -> Godot.EditorUndoRedoManager? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_undo_redo,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.EditorUndoRedoManager.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_add_undo_redo_inspector_hook_callback: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_undo_redo_inspector_hook_callback").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1611583062)!
        }
        }
    }()
    public func addUndoRedoInspectorHookCallback(callable: Godot.Callable) {
        callable.withUnsafeRawPointer { (__ptr_callable) in
            withUnsafeArgumentPackPointer(__ptr_callable) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_add_undo_redo_inspector_hook_callback,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_remove_undo_redo_inspector_hook_callback: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "remove_undo_redo_inspector_hook_callback").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1611583062)!
        }
        }
    }()
    public func removeUndoRedoInspectorHookCallback(callable: Godot.Callable) {
        callable.withUnsafeRawPointer { (__ptr_callable) in
            withUnsafeArgumentPackPointer(__ptr_callable) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_remove_undo_redo_inspector_hook_callback,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_queue_save_layout: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "queue_save_layout").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func queueSaveLayout() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_queue_save_layout,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_add_translation_parser_plugin: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_translation_parser_plugin").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3116463128)!
        }
        }
    }()
    public func addTranslationParserPlugin(parser: Godot.EditorTranslationParserPlugin?) {
        parser.withUnsafeRawPointer { (__ptr_parser) in
            withUnsafePointer(to: __ptr_parser) { (_ptr___ptr_parser) in
                withUnsafeArgumentPackPointer(_ptr___ptr_parser) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_add_translation_parser_plugin,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_remove_translation_parser_plugin: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "remove_translation_parser_plugin").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3116463128)!
        }
        }
    }()
    public func removeTranslationParserPlugin(parser: Godot.EditorTranslationParserPlugin?) {
        parser.withUnsafeRawPointer { (__ptr_parser) in
            withUnsafePointer(to: __ptr_parser) { (_ptr___ptr_parser) in
                withUnsafeArgumentPackPointer(_ptr___ptr_parser) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_remove_translation_parser_plugin,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_add_import_plugin: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_import_plugin").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3113975762)!
        }
        }
    }()
    public func addImportPlugin(importer: Godot.EditorImportPlugin?, firstPriority: Bool = false) {
        importer.withUnsafeRawPointer { (__ptr_importer) in
            withUnsafePointer(to: __ptr_importer) { (_ptr___ptr_importer) in
                withUnsafePointer(to: firstPriority) { (__ptr_firstPriority) in
                    withUnsafeArgumentPackPointer(_ptr___ptr_importer, __ptr_firstPriority) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_add_import_plugin,
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

    private static var __method_binding_remove_import_plugin: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "remove_import_plugin").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2312482773)!
        }
        }
    }()
    public func removeImportPlugin(importer: Godot.EditorImportPlugin?) {
        importer.withUnsafeRawPointer { (__ptr_importer) in
            withUnsafePointer(to: __ptr_importer) { (_ptr___ptr_importer) in
                withUnsafeArgumentPackPointer(_ptr___ptr_importer) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_remove_import_plugin,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_add_scene_format_importer_plugin: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_scene_format_importer_plugin").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2764104752)!
        }
        }
    }()
    public func addSceneFormatImporterPlugin(sceneFormatImporter: Godot.EditorSceneFormatImporter?, firstPriority: Bool = false) {
        sceneFormatImporter.withUnsafeRawPointer { (__ptr_sceneFormatImporter) in
            withUnsafePointer(to: __ptr_sceneFormatImporter) { (_ptr___ptr_sceneFormatImporter) in
                withUnsafePointer(to: firstPriority) { (__ptr_firstPriority) in
                    withUnsafeArgumentPackPointer(_ptr___ptr_sceneFormatImporter, __ptr_firstPriority) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_add_scene_format_importer_plugin,
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

    private static var __method_binding_remove_scene_format_importer_plugin: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "remove_scene_format_importer_plugin").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2637776123)!
        }
        }
    }()
    public func removeSceneFormatImporterPlugin(sceneFormatImporter: Godot.EditorSceneFormatImporter?) {
        sceneFormatImporter.withUnsafeRawPointer { (__ptr_sceneFormatImporter) in
            withUnsafePointer(to: __ptr_sceneFormatImporter) { (_ptr___ptr_sceneFormatImporter) in
                withUnsafeArgumentPackPointer(_ptr___ptr_sceneFormatImporter) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_remove_scene_format_importer_plugin,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_add_scene_post_import_plugin: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_scene_post_import_plugin").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3492436322)!
        }
        }
    }()
    public func addScenePostImportPlugin(sceneImportPlugin: Godot.EditorScenePostImportPlugin?, firstPriority: Bool = false) {
        sceneImportPlugin.withUnsafeRawPointer { (__ptr_sceneImportPlugin) in
            withUnsafePointer(to: __ptr_sceneImportPlugin) { (_ptr___ptr_sceneImportPlugin) in
                withUnsafePointer(to: firstPriority) { (__ptr_firstPriority) in
                    withUnsafeArgumentPackPointer(_ptr___ptr_sceneImportPlugin, __ptr_firstPriority) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_add_scene_post_import_plugin,
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

    private static var __method_binding_remove_scene_post_import_plugin: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "remove_scene_post_import_plugin").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3045178206)!
        }
        }
    }()
    public func removeScenePostImportPlugin(sceneImportPlugin: Godot.EditorScenePostImportPlugin?) {
        sceneImportPlugin.withUnsafeRawPointer { (__ptr_sceneImportPlugin) in
            withUnsafePointer(to: __ptr_sceneImportPlugin) { (_ptr___ptr_sceneImportPlugin) in
                withUnsafeArgumentPackPointer(_ptr___ptr_sceneImportPlugin) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_remove_scene_post_import_plugin,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_add_export_plugin: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_export_plugin").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4095952207)!
        }
        }
    }()
    public func addExportPlugin(_ plugin: Godot.EditorExportPlugin?) {
        plugin.withUnsafeRawPointer { (__ptr_plugin) in
            withUnsafePointer(to: __ptr_plugin) { (_ptr___ptr_plugin) in
                withUnsafeArgumentPackPointer(_ptr___ptr_plugin) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_add_export_plugin,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_remove_export_plugin: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "remove_export_plugin").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4095952207)!
        }
        }
    }()
    public func removeExportPlugin(_ plugin: Godot.EditorExportPlugin?) {
        plugin.withUnsafeRawPointer { (__ptr_plugin) in
            withUnsafePointer(to: __ptr_plugin) { (_ptr___ptr_plugin) in
                withUnsafeArgumentPackPointer(_ptr___ptr_plugin) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_remove_export_plugin,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_add_node_3d_gizmo_plugin: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_node_3d_gizmo_plugin").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1541015022)!
        }
        }
    }()
    public func addNode3DGizmoPlugin(_ plugin: Godot.EditorNode3DGizmoPlugin?) {
        plugin.withUnsafeRawPointer { (__ptr_plugin) in
            withUnsafePointer(to: __ptr_plugin) { (_ptr___ptr_plugin) in
                withUnsafeArgumentPackPointer(_ptr___ptr_plugin) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_add_node_3d_gizmo_plugin,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_remove_node_3d_gizmo_plugin: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "remove_node_3d_gizmo_plugin").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1541015022)!
        }
        }
    }()
    public func removeNode3DGizmoPlugin(_ plugin: Godot.EditorNode3DGizmoPlugin?) {
        plugin.withUnsafeRawPointer { (__ptr_plugin) in
            withUnsafePointer(to: __ptr_plugin) { (_ptr___ptr_plugin) in
                withUnsafeArgumentPackPointer(_ptr___ptr_plugin) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_remove_node_3d_gizmo_plugin,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_add_inspector_plugin: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_inspector_plugin").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 546395733)!
        }
        }
    }()
    public func addInspectorPlugin(_ plugin: Godot.EditorInspectorPlugin?) {
        plugin.withUnsafeRawPointer { (__ptr_plugin) in
            withUnsafePointer(to: __ptr_plugin) { (_ptr___ptr_plugin) in
                withUnsafeArgumentPackPointer(_ptr___ptr_plugin) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_add_inspector_plugin,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_remove_inspector_plugin: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "remove_inspector_plugin").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 546395733)!
        }
        }
    }()
    public func removeInspectorPlugin(_ plugin: Godot.EditorInspectorPlugin?) {
        plugin.withUnsafeRawPointer { (__ptr_plugin) in
            withUnsafePointer(to: __ptr_plugin) { (_ptr___ptr_plugin) in
                withUnsafeArgumentPackPointer(_ptr___ptr_plugin) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_remove_inspector_plugin,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_add_resource_conversion_plugin: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_resource_conversion_plugin").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2124849111)!
        }
        }
    }()
    public func addResourceConversionPlugin(_ plugin: Godot.EditorResourceConversionPlugin?) {
        plugin.withUnsafeRawPointer { (__ptr_plugin) in
            withUnsafePointer(to: __ptr_plugin) { (_ptr___ptr_plugin) in
                withUnsafeArgumentPackPointer(_ptr___ptr_plugin) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_add_resource_conversion_plugin,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_remove_resource_conversion_plugin: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "remove_resource_conversion_plugin").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2124849111)!
        }
        }
    }()
    public func removeResourceConversionPlugin(_ plugin: Godot.EditorResourceConversionPlugin?) {
        plugin.withUnsafeRawPointer { (__ptr_plugin) in
            withUnsafePointer(to: __ptr_plugin) { (_ptr___ptr_plugin) in
                withUnsafeArgumentPackPointer(_ptr___ptr_plugin) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_remove_resource_conversion_plugin,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_set_input_event_forwarding_always_enabled: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_input_event_forwarding_always_enabled").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func setInputEventForwardingAlwaysEnabled() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_set_input_event_forwarding_always_enabled,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_set_force_draw_over_forwarding_enabled: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_force_draw_over_forwarding_enabled").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func setForceDrawOverForwardingEnabled() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_set_force_draw_over_forwarding_enabled,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_get_editor_interface: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_editor_interface").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4223731786)!
        }
        }
    }()
    public func editorInterface() -> Godot.EditorInterface? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_editor_interface,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.EditorInterface.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_get_script_create_dialog: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_script_create_dialog").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3121871482)!
        }
        }
    }()
    public func scriptCreateDialog() -> Godot.ScriptCreateDialog? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_script_create_dialog,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.ScriptCreateDialog.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_add_debugger_plugin: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_debugger_plugin").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3749880309)!
        }
        }
    }()
    public func addDebuggerPlugin(script: Godot.EditorDebuggerPlugin?) {
        script.withUnsafeRawPointer { (__ptr_script) in
            withUnsafePointer(to: __ptr_script) { (_ptr___ptr_script) in
                withUnsafeArgumentPackPointer(_ptr___ptr_script) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_add_debugger_plugin,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_remove_debugger_plugin: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "remove_debugger_plugin").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3749880309)!
        }
        }
    }()
    public func removeDebuggerPlugin(script: Godot.EditorDebuggerPlugin?) {
        script.withUnsafeRawPointer { (__ptr_script) in
            withUnsafePointer(to: __ptr_script) { (_ptr___ptr_script) in
                withUnsafeArgumentPackPointer(_ptr___ptr_script) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_remove_debugger_plugin,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
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
        let _forward_canvas_gui_input_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._forwardCanvasGuiInput(
            event: Godot.InputEvent.retrievedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!))
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _forward_canvas_draw_over_viewport_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._forwardCanvasDrawOverViewport(
            viewportControl: Godot.Control.retrievedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!))
        )}
        let _forward_canvas_force_draw_over_viewport_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._forwardCanvasForceDrawOverViewport(
            viewportControl: Godot.Control.retrievedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!))
        )}
        let _forward_3d_gui_input_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._forward3DGuiInput(
            viewportCamera: Godot.Camera3D.retrievedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!)),
            event: Godot.InputEvent.retrievedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[1]!))
        )
        returnPtr!.assumingMemoryBound(to: Int32.self).pointee = returnValue}
        let _forward_3d_draw_over_viewport_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._forward3DDrawOverViewport(
            viewportControl: Godot.Control.retrievedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!))
        )}
        let _forward_3d_force_draw_over_viewport_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._forward3DForceDrawOverViewport(
            viewportControl: Godot.Control.retrievedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!))
        )}
        let _get_plugin_name_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<EditorPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getPluginName()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_plugin_icon_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<EditorPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getPluginIcon()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _has_main_screen_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<EditorPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._hasMainScreen()
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _make_visible_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._makeVisible(
            args[0]!.load(as: Bool.self)
        )}
        let _edit_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._edit(
            object: Godot.Object.retrievedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!))
        )}
        let _handles_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._handles(
            object: Godot.Object.retrievedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!))
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _get_state_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<EditorPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getState()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _set_state_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._setState(
            Godot.GodotDictionary(godotExtensionPointer: args[0]!)
        )}
        let _clear_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<EditorPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._clear()}
        let _save_external_data_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<EditorPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._saveExternalData()}
        let _apply_changes_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<EditorPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._applyChanges()}
        let _get_breakpoints_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<EditorPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getBreakpoints()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _set_window_layout_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._setWindowLayout(
            configuration: Godot.ConfigFile.retrievedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!))
        )}
        let _get_window_layout_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._getWindowLayout(
            configuration: Godot.ConfigFile.retrievedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!))
        )}
        let _build_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<EditorPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._build()
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _enable_plugin_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<EditorPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._enablePlugin()}
        let _disable_plugin_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<EditorPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._disablePlugin()}
        _virtualFunctions = [
            "_forwardCanvasGuiInput" : ("_forward_canvas_gui_input", _forward_canvas_gui_input_call),
            "_forwardCanvasDrawOverViewport" : ("_forward_canvas_draw_over_viewport", _forward_canvas_draw_over_viewport_call),
            "_forwardCanvasForceDrawOverViewport" : ("_forward_canvas_force_draw_over_viewport", _forward_canvas_force_draw_over_viewport_call),
            "_forward3DGuiInput" : ("_forward_3d_gui_input", _forward_3d_gui_input_call),
            "_forward3DDrawOverViewport" : ("_forward_3d_draw_over_viewport", _forward_3d_draw_over_viewport_call),
            "_forward3DForceDrawOverViewport" : ("_forward_3d_force_draw_over_viewport", _forward_3d_force_draw_over_viewport_call),
            "_getPluginName" : ("_get_plugin_name", _get_plugin_name_call),
            "_getPluginIcon" : ("_get_plugin_icon", _get_plugin_icon_call),
            "_hasMainScreen" : ("_has_main_screen", _has_main_screen_call),
            "_makeVisible" : ("_make_visible", _make_visible_call),
            "_edit" : ("_edit", _edit_call),
            "_handles" : ("_handles", _handles_call),
            "_getState" : ("_get_state", _get_state_call),
            "_setState" : ("_set_state", _set_state_call),
            "_clear" : ("_clear", _clear_call),
            "_saveExternalData" : ("_save_external_data", _save_external_data_call),
            "_applyChanges" : ("_apply_changes", _apply_changes_call),
            "_getBreakpoints" : ("_get_breakpoints", _get_breakpoints_call),
            "_setWindowLayout" : ("_set_window_layout", _set_window_layout_call),
            "_getWindowLayout" : ("_get_window_layout", _get_window_layout_call),
            "_build" : ("_build", _build_call),
            "_enablePlugin" : ("_enable_plugin", _enable_plugin_call),
            "_disablePlugin" : ("_disable_plugin", _disable_plugin_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }