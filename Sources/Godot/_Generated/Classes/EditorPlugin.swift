//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class EditorPlugin: Node {
    public enum CustomControlContainer: UInt32, GodotEnum {
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
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Toolbar", 0),
            ("Spatial Editor Menu", 1),
            ("Spatial Editor Side Left", 2),
            ("Spatial Editor Side Right", 3),
            ("Spatial Editor Bottom", 4),
            ("Canvas Editor Menu", 5),
            ("Canvas Editor Side Left", 6),
            ("Canvas Editor Side Right", 7),
            ("Canvas Editor Bottom", 8),
            ("Inspector Bottom", 9),
            ("Project Setting Tab Left", 10),
            ("Project Setting Tab Right", 11),]
        }
    }
    public enum DockSlot: UInt32, GodotEnum {
        case leftUl = 0
        case leftBl = 1
        case leftUr = 2
        case leftBr = 3
        case rightUl = 4
        case rightBl = 5
        case rightUr = 6
        case rightBr = 7
        case max = 8
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Left Ul", 0),
            ("Left Bl", 1),
            ("Left Ur", 2),
            ("Left Br", 3),
            ("Right Ul", 4),
            ("Right Bl", 5),
            ("Right Ur", 6),
            ("Right Br", 7),
            ("Max", 8),]
        }
    }
    public enum AfterGUIInput: UInt32, GodotEnum {
        case pass = 0
        case stop = 1
        case custom = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Pass", 0),
            ("Stop", 1),
            ("Custom", 2),]
        }
    }

    public func sceneChanged(sceneRoot: Godot.Node?) {
        sceneChangedConnector.emit(sceneRoot)
    }

    public private (set) lazy var sceneChangedConnector: Godot.SignalConnector<Godot.Node?> = {
        .init(self, "scene_changed")
    }()

    public func sceneClosed(filepath: Godot.GodotString) {
        sceneClosedConnector.emit(filepath)
    }

    public private (set) lazy var sceneClosedConnector: Godot.SignalConnector<Godot.GodotString> = {
        .init(self, "scene_closed")
    }()

    public func mainScreenChanged(screenName: Godot.GodotString) {
        mainScreenChangedConnector.emit(screenName)
    }

    public private (set) lazy var mainScreenChangedConnector: Godot.SignalConnector<Godot.GodotString> = {
        .init(self, "main_screen_changed")
    }()

    public func resourceSaved(resource: Godot.Resource?) {
        resourceSavedConnector.emit(resource)
    }

    public private (set) lazy var resourceSavedConnector: Godot.SignalConnector<Godot.Resource?> = {
        .init(self, "resource_saved")
    }()

    public func projectSettingsChanged() {
        projectSettingsChangedConnector.emit()
    }

    public private (set) lazy var projectSettingsChangedConnector: Godot.SignalConnector
    <> = {
        .init(self, "project_settings_changed")
    }()


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

    open func _getState() -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary()
    }

    open func _setState(_ state: Godot.AnyGodotDictionary) {
    }

    open func _clear() {
    }

    open func _getUnsavedStatus(forScene scene: Godot.GodotString) -> Godot.GodotString {
        Godot.GodotString()
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
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_control_to_container").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3092750152)!
        }
        }
    }()
    public func addControlToContainer(_ container: Godot.EditorPlugin.CustomControlContainer, control: Godot.Control?) {
        container.withGodotUnsafeRawPointer { __ptr_container in
        control.withGodotUnsafeRawPointer { __ptr_control in
        withUnsafePointer(to: __ptr_control) { _ptr___ptr_control in
        withUnsafeArgumentPackPointer(__ptr_container, _ptr___ptr_control) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_control_to_container,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_add_control_to_bottom_panel: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_control_to_bottom_panel").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3526039376)!
        }
        }
    }()
    public func addControlToBottomPanel(control: Godot.Control?, title: Godot.GodotString) -> Godot.Button? {
        Godot.Button?.fromMutatingGodotUnsafePointer { __temporary in
        control.withGodotUnsafeRawPointer { __ptr_control in
        withUnsafePointer(to: __ptr_control) { _ptr___ptr_control in
        title.withGodotUnsafeRawPointer { __ptr_title in
        withUnsafeArgumentPackPointer(_ptr___ptr_control, __ptr_title) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_control_to_bottom_panel,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_add_control_to_dock: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_control_to_dock").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3354871258)!
        }
        }
    }()
    public func addControlToDock(slot: Godot.EditorPlugin.DockSlot, control: Godot.Control?) {
        slot.withGodotUnsafeRawPointer { __ptr_slot in
        control.withGodotUnsafeRawPointer { __ptr_control in
        withUnsafePointer(to: __ptr_control) { _ptr___ptr_control in
        withUnsafeArgumentPackPointer(__ptr_slot, _ptr___ptr_control) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_control_to_dock,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_remove_control_from_docks: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_control_from_docks").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1496901182)!
        }
        }
    }()
    public func removeControlFromDocks(control: Godot.Control?) {
        control.withGodotUnsafeRawPointer { __ptr_control in
        withUnsafePointer(to: __ptr_control) { _ptr___ptr_control in
        withUnsafeArgumentPackPointer(_ptr___ptr_control) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_remove_control_from_docks,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_remove_control_from_bottom_panel: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_control_from_bottom_panel").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1496901182)!
        }
        }
    }()
    public func removeControlFromBottomPanel(control: Godot.Control?) {
        control.withGodotUnsafeRawPointer { __ptr_control in
        withUnsafePointer(to: __ptr_control) { _ptr___ptr_control in
        withUnsafeArgumentPackPointer(_ptr___ptr_control) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_remove_control_from_bottom_panel,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_remove_control_from_container: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_control_from_container").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3092750152)!
        }
        }
    }()
    public func removeControlFromContainer(_ container: Godot.EditorPlugin.CustomControlContainer, control: Godot.Control?) {
        container.withGodotUnsafeRawPointer { __ptr_container in
        control.withGodotUnsafeRawPointer { __ptr_control in
        withUnsafePointer(to: __ptr_control) { _ptr___ptr_control in
        withUnsafeArgumentPackPointer(__ptr_container, _ptr___ptr_control) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_remove_control_from_container,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_add_tool_menu_item: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_tool_menu_item").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2137474292)!
        }
        }
    }()
    public func addToolMenuItem(name: Godot.GodotString, callable: Godot.Callable) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        callable.withGodotUnsafeRawPointer { __ptr_callable in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_callable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_tool_menu_item,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_add_tool_submenu_item: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_tool_submenu_item").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1019428915)!
        }
        }
    }()
    public func addToolSubmenuItem(name: Godot.GodotString, submenu: Godot.PopupMenu?) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        submenu.withGodotUnsafeRawPointer { __ptr_submenu in
        withUnsafePointer(to: __ptr_submenu) { _ptr___ptr_submenu in
        withUnsafeArgumentPackPointer(__ptr_name, _ptr___ptr_submenu) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_tool_submenu_item,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_remove_tool_menu_item: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_tool_menu_item").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func removeToolMenuItem(name: Godot.GodotString) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_remove_tool_menu_item,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_export_as_menu: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_export_as_menu").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1775878644)!
        }
        }
    }()
    public func exportAsMenu() -> Godot.PopupMenu? {
        Godot.PopupMenu?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_export_as_menu,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_add_custom_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_custom_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1986814599)!
        }
        }
    }()
    public func addCustomType(_ type: Godot.GodotString, base: Godot.GodotString, script: Godot.Script?, icon: Godot.Texture2D?) {
        type.withGodotUnsafeRawPointer { __ptr_type in
        base.withGodotUnsafeRawPointer { __ptr_base in
        script.withGodotUnsafeRawPointer { __ptr_script in
        withUnsafePointer(to: __ptr_script) { _ptr___ptr_script in
        icon.withGodotUnsafeRawPointer { __ptr_icon in
        withUnsafePointer(to: __ptr_icon) { _ptr___ptr_icon in
        withUnsafeArgumentPackPointer(__ptr_type, __ptr_base, _ptr___ptr_script, _ptr___ptr_icon) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_custom_type,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}
    }

    private static var __method_binding_remove_custom_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_custom_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func removeCustomType(_ type: Godot.GodotString) {
        type.withGodotUnsafeRawPointer { __ptr_type in
        withUnsafeArgumentPackPointer(__ptr_type) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_remove_custom_type,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_add_autoload_singleton: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_autoload_singleton").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3186203200)!
        }
        }
    }()
    public func addAutoloadSingleton(name: Godot.GodotString, path: Godot.GodotString) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        path.withGodotUnsafeRawPointer { __ptr_path in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_path) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_autoload_singleton,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_remove_autoload_singleton: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_autoload_singleton").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func removeAutoloadSingleton(name: Godot.GodotString) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_remove_autoload_singleton,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_update_overlays: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "update_overlays").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func updateOverlays() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_update_overlays,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_make_bottom_panel_item_visible: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "make_bottom_panel_item_visible").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1496901182)!
        }
        }
    }()
    public func makeBottomPanelItemVisible(item: Godot.Control?) {
        item.withGodotUnsafeRawPointer { __ptr_item in
        withUnsafePointer(to: __ptr_item) { _ptr___ptr_item in
        withUnsafeArgumentPackPointer(_ptr___ptr_item) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_make_bottom_panel_item_visible,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_hide_bottom_panel: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "hide_bottom_panel").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func hideBottomPanel() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_hide_bottom_panel,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_get_undo_redo: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_undo_redo").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 773492341)!
        }
        }
    }()
    public func undoRedo() -> Godot.EditorUndoRedoManager? {
        Godot.EditorUndoRedoManager?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_undo_redo,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_add_undo_redo_inspector_hook_callback: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_undo_redo_inspector_hook_callback").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1611583062)!
        }
        }
    }()
    public func addUndoRedoInspectorHookCallback(callable: Godot.Callable) {
        callable.withGodotUnsafeRawPointer { __ptr_callable in
        withUnsafeArgumentPackPointer(__ptr_callable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_undo_redo_inspector_hook_callback,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_remove_undo_redo_inspector_hook_callback: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_undo_redo_inspector_hook_callback").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1611583062)!
        }
        }
    }()
    public func removeUndoRedoInspectorHookCallback(callable: Godot.Callable) {
        callable.withGodotUnsafeRawPointer { __ptr_callable in
        withUnsafeArgumentPackPointer(__ptr_callable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_remove_undo_redo_inspector_hook_callback,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_queue_save_layout: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "queue_save_layout").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func queueSaveLayout() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_queue_save_layout,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_add_translation_parser_plugin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_translation_parser_plugin").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3116463128)!
        }
        }
    }()
    public func addTranslationParserPlugin(parser: Godot.EditorTranslationParserPlugin?) {
        parser.withGodotUnsafeRawPointer { __ptr_parser in
        withUnsafePointer(to: __ptr_parser) { _ptr___ptr_parser in
        withUnsafeArgumentPackPointer(_ptr___ptr_parser) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_translation_parser_plugin,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_remove_translation_parser_plugin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_translation_parser_plugin").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3116463128)!
        }
        }
    }()
    public func removeTranslationParserPlugin(parser: Godot.EditorTranslationParserPlugin?) {
        parser.withGodotUnsafeRawPointer { __ptr_parser in
        withUnsafePointer(to: __ptr_parser) { _ptr___ptr_parser in
        withUnsafeArgumentPackPointer(_ptr___ptr_parser) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_remove_translation_parser_plugin,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_add_import_plugin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_import_plugin").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3113975762)!
        }
        }
    }()
    public func addImportPlugin(importer: Godot.EditorImportPlugin?, firstPriority: Bool = false) {
        importer.withGodotUnsafeRawPointer { __ptr_importer in
        withUnsafePointer(to: __ptr_importer) { _ptr___ptr_importer in
        firstPriority.withGodotUnsafeRawPointer { __ptr_firstPriority in
        withUnsafeArgumentPackPointer(_ptr___ptr_importer, __ptr_firstPriority) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_import_plugin,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_remove_import_plugin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_import_plugin").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2312482773)!
        }
        }
    }()
    public func removeImportPlugin(importer: Godot.EditorImportPlugin?) {
        importer.withGodotUnsafeRawPointer { __ptr_importer in
        withUnsafePointer(to: __ptr_importer) { _ptr___ptr_importer in
        withUnsafeArgumentPackPointer(_ptr___ptr_importer) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_remove_import_plugin,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_add_scene_format_importer_plugin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_scene_format_importer_plugin").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2764104752)!
        }
        }
    }()
    public func addSceneFormatImporterPlugin(sceneFormatImporter: Godot.EditorSceneFormatImporter?, firstPriority: Bool = false) {
        sceneFormatImporter.withGodotUnsafeRawPointer { __ptr_sceneFormatImporter in
        withUnsafePointer(to: __ptr_sceneFormatImporter) { _ptr___ptr_sceneFormatImporter in
        firstPriority.withGodotUnsafeRawPointer { __ptr_firstPriority in
        withUnsafeArgumentPackPointer(_ptr___ptr_sceneFormatImporter, __ptr_firstPriority) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_scene_format_importer_plugin,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_remove_scene_format_importer_plugin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_scene_format_importer_plugin").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2637776123)!
        }
        }
    }()
    public func removeSceneFormatImporterPlugin(sceneFormatImporter: Godot.EditorSceneFormatImporter?) {
        sceneFormatImporter.withGodotUnsafeRawPointer { __ptr_sceneFormatImporter in
        withUnsafePointer(to: __ptr_sceneFormatImporter) { _ptr___ptr_sceneFormatImporter in
        withUnsafeArgumentPackPointer(_ptr___ptr_sceneFormatImporter) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_remove_scene_format_importer_plugin,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_add_scene_post_import_plugin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_scene_post_import_plugin").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3492436322)!
        }
        }
    }()
    public func addScenePostImportPlugin(sceneImportPlugin: Godot.EditorScenePostImportPlugin?, firstPriority: Bool = false) {
        sceneImportPlugin.withGodotUnsafeRawPointer { __ptr_sceneImportPlugin in
        withUnsafePointer(to: __ptr_sceneImportPlugin) { _ptr___ptr_sceneImportPlugin in
        firstPriority.withGodotUnsafeRawPointer { __ptr_firstPriority in
        withUnsafeArgumentPackPointer(_ptr___ptr_sceneImportPlugin, __ptr_firstPriority) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_scene_post_import_plugin,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_remove_scene_post_import_plugin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_scene_post_import_plugin").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3045178206)!
        }
        }
    }()
    public func removeScenePostImportPlugin(sceneImportPlugin: Godot.EditorScenePostImportPlugin?) {
        sceneImportPlugin.withGodotUnsafeRawPointer { __ptr_sceneImportPlugin in
        withUnsafePointer(to: __ptr_sceneImportPlugin) { _ptr___ptr_sceneImportPlugin in
        withUnsafeArgumentPackPointer(_ptr___ptr_sceneImportPlugin) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_remove_scene_post_import_plugin,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_add_export_plugin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_export_plugin").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4095952207)!
        }
        }
    }()
    public func addExportPlugin(_ plugin: Godot.EditorExportPlugin?) {
        plugin.withGodotUnsafeRawPointer { __ptr_plugin in
        withUnsafePointer(to: __ptr_plugin) { _ptr___ptr_plugin in
        withUnsafeArgumentPackPointer(_ptr___ptr_plugin) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_export_plugin,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_remove_export_plugin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_export_plugin").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4095952207)!
        }
        }
    }()
    public func removeExportPlugin(_ plugin: Godot.EditorExportPlugin?) {
        plugin.withGodotUnsafeRawPointer { __ptr_plugin in
        withUnsafePointer(to: __ptr_plugin) { _ptr___ptr_plugin in
        withUnsafeArgumentPackPointer(_ptr___ptr_plugin) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_remove_export_plugin,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_add_node_3d_gizmo_plugin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_node_3d_gizmo_plugin").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1541015022)!
        }
        }
    }()
    public func addNode3DGizmoPlugin(_ plugin: Godot.EditorNode3DGizmoPlugin?) {
        plugin.withGodotUnsafeRawPointer { __ptr_plugin in
        withUnsafePointer(to: __ptr_plugin) { _ptr___ptr_plugin in
        withUnsafeArgumentPackPointer(_ptr___ptr_plugin) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_node_3d_gizmo_plugin,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_remove_node_3d_gizmo_plugin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_node_3d_gizmo_plugin").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1541015022)!
        }
        }
    }()
    public func removeNode3DGizmoPlugin(_ plugin: Godot.EditorNode3DGizmoPlugin?) {
        plugin.withGodotUnsafeRawPointer { __ptr_plugin in
        withUnsafePointer(to: __ptr_plugin) { _ptr___ptr_plugin in
        withUnsafeArgumentPackPointer(_ptr___ptr_plugin) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_remove_node_3d_gizmo_plugin,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_add_inspector_plugin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_inspector_plugin").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 546395733)!
        }
        }
    }()
    public func addInspectorPlugin(_ plugin: Godot.EditorInspectorPlugin?) {
        plugin.withGodotUnsafeRawPointer { __ptr_plugin in
        withUnsafePointer(to: __ptr_plugin) { _ptr___ptr_plugin in
        withUnsafeArgumentPackPointer(_ptr___ptr_plugin) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_inspector_plugin,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_remove_inspector_plugin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_inspector_plugin").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 546395733)!
        }
        }
    }()
    public func removeInspectorPlugin(_ plugin: Godot.EditorInspectorPlugin?) {
        plugin.withGodotUnsafeRawPointer { __ptr_plugin in
        withUnsafePointer(to: __ptr_plugin) { _ptr___ptr_plugin in
        withUnsafeArgumentPackPointer(_ptr___ptr_plugin) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_remove_inspector_plugin,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_add_resource_conversion_plugin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_resource_conversion_plugin").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2124849111)!
        }
        }
    }()
    public func addResourceConversionPlugin(_ plugin: Godot.EditorResourceConversionPlugin?) {
        plugin.withGodotUnsafeRawPointer { __ptr_plugin in
        withUnsafePointer(to: __ptr_plugin) { _ptr___ptr_plugin in
        withUnsafeArgumentPackPointer(_ptr___ptr_plugin) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_resource_conversion_plugin,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_remove_resource_conversion_plugin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_resource_conversion_plugin").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2124849111)!
        }
        }
    }()
    public func removeResourceConversionPlugin(_ plugin: Godot.EditorResourceConversionPlugin?) {
        plugin.withGodotUnsafeRawPointer { __ptr_plugin in
        withUnsafePointer(to: __ptr_plugin) { _ptr___ptr_plugin in
        withUnsafeArgumentPackPointer(_ptr___ptr_plugin) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_remove_resource_conversion_plugin,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_set_input_event_forwarding_always_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_input_event_forwarding_always_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func setInputEventForwardingAlwaysEnabled() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_input_event_forwarding_always_enabled,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_set_force_draw_over_forwarding_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_force_draw_over_forwarding_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func setForceDrawOverForwardingEnabled() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_force_draw_over_forwarding_enabled,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_get_editor_interface: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_editor_interface").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4223731786)!
        }
        }
    }()
    public func editorInterface() -> Godot.EditorInterface? {
        Godot.EditorInterface?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_editor_interface,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_script_create_dialog: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_script_create_dialog").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3121871482)!
        }
        }
    }()
    public func scriptCreateDialog() -> Godot.ScriptCreateDialog? {
        Godot.ScriptCreateDialog?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_script_create_dialog,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_add_debugger_plugin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_debugger_plugin").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3749880309)!
        }
        }
    }()
    public func addDebuggerPlugin(script: Godot.EditorDebuggerPlugin?) {
        script.withGodotUnsafeRawPointer { __ptr_script in
        withUnsafePointer(to: __ptr_script) { _ptr___ptr_script in
        withUnsafeArgumentPackPointer(_ptr___ptr_script) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_debugger_plugin,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_remove_debugger_plugin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_debugger_plugin").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3749880309)!
        }
        }
    }()
    public func removeDebuggerPlugin(script: Godot.EditorDebuggerPlugin?) {
        script.withGodotUnsafeRawPointer { __ptr_script in
        withUnsafePointer(to: __ptr_script) { _ptr___ptr_script in
        withUnsafeArgumentPackPointer(_ptr___ptr_script) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_remove_debugger_plugin,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_plugin_version: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_plugin_version").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    public func pluginVersion() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_plugin_version,
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
        let _forward_canvas_gui_input_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._forwardCanvasGuiInput(
            event: Godot.InputEvent?.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _forward_canvas_draw_over_viewport_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._forwardCanvasDrawOverViewport(
            viewportControl: Godot.Control?.fromGodotUnsafePointer(args[0]!)
        )}
        let _forward_canvas_force_draw_over_viewport_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._forwardCanvasForceDrawOverViewport(
            viewportControl: Godot.Control?.fromGodotUnsafePointer(args[0]!)
        )}
        let _forward_3d_gui_input_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._forward3DGuiInput(
            viewportCamera: Godot.Camera3D?.fromGodotUnsafePointer(args[0]!),
            event: Godot.InputEvent?.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _forward_3d_draw_over_viewport_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._forward3DDrawOverViewport(
            viewportControl: Godot.Control?.fromGodotUnsafePointer(args[0]!)
        )}
        let _forward_3d_force_draw_over_viewport_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._forward3DForceDrawOverViewport(
            viewportControl: Godot.Control?.fromGodotUnsafePointer(args[0]!)
        )}
        let _get_plugin_name_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<EditorPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getPluginName()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_plugin_icon_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<EditorPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getPluginIcon()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _has_main_screen_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<EditorPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._hasMainScreen()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _make_visible_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._makeVisible(
            Bool.fromGodotUnsafePointer(args[0]!)
        )}
        let _edit_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._edit(
            object: Godot.Object?.fromGodotUnsafePointer(args[0]!)
        )}
        let _handles_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._handles(
            object: Godot.Object?.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_state_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<EditorPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getState()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _set_state_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._setState(
            Godot.AnyGodotDictionary.fromGodotUnsafePointer(args[0]!)
        )}
        let _clear_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<EditorPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._clear()}
        let _get_unsaved_status_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getUnsavedStatus(
            forScene: Godot.GodotString.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _save_external_data_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<EditorPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._saveExternalData()}
        let _apply_changes_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<EditorPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._applyChanges()}
        let _get_breakpoints_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<EditorPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getBreakpoints()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _set_window_layout_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._setWindowLayout(
            configuration: Godot.ConfigFile?.fromGodotUnsafePointer(args[0]!)
        )}
        let _get_window_layout_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getWindowLayout(
            configuration: Godot.ConfigFile?.fromGodotUnsafePointer(args[0]!)
        )}
        let _build_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<EditorPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._build()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _enable_plugin_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<EditorPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._enablePlugin()}
        let _disable_plugin_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<EditorPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
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
            "_getUnsavedStatus" : ("_get_unsaved_status", _get_unsaved_status_call),
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