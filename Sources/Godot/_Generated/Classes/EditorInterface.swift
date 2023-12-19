//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class EditorInterface: Object {
    private static var __method_binding_restart_editor: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "restart_editor").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3216645846)!
        }
        }
    }()
    public func restartEditor(save: Bool = true) {
        save.withGodotUnsafeRawPointer { __ptr_save in
        withUnsafeArgumentPackPointer(__ptr_save) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_restart_editor,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_command_palette: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_command_palette").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2471163807)!
        }
        }
    }()
    public func commandPalette() -> Godot.EditorCommandPalette? {
        Godot.EditorCommandPalette?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_command_palette,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_resource_filesystem: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_resource_filesystem").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 780151678)!
        }
        }
    }()
    public func resourceFilesystem() -> Godot.EditorFileSystem? {
        Godot.EditorFileSystem?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_resource_filesystem,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_editor_paths: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_editor_paths").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1595760068)!
        }
        }
    }()
    public func editorPaths() -> Godot.EditorPaths? {
        Godot.EditorPaths?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_editor_paths,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_resource_previewer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_resource_previewer").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 943486957)!
        }
        }
    }()
    public func resourcePreviewer() -> Godot.EditorResourcePreview? {
        Godot.EditorResourcePreview?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_resource_previewer,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_selection: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_selection").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2690272531)!
        }
        }
    }()
    public func selection() -> Godot.EditorSelection? {
        Godot.EditorSelection?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_selection,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_editor_settings: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_editor_settings").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4086932459)!
        }
        }
    }()
    public func editorSettings() -> Godot.EditorSettings? {
        Godot.EditorSettings?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_editor_settings,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_make_mesh_previews: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "make_mesh_previews").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 878078554)!
        }
        }
    }()
    public func makeMeshPreviews(meshes: Godot.GodotArray<Godot.Mesh?>, previewSize: Int32) -> Godot.GodotArray<Godot.Texture2D?> {
        Godot.GodotArray<Godot.Texture2D?>.fromMutatingGodotUnsafePointer { __temporary in
        meshes.withGodotUnsafeRawPointer { __ptr_meshes in
        previewSize.withGodotUnsafeRawPointer { __ptr_previewSize in
        withUnsafeArgumentPackPointer(__ptr_meshes, __ptr_previewSize) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_make_mesh_previews,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_set_plugin_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_plugin_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2678287736)!
        }
        }
    }()
    public func setPluginEnabled(plugin: Godot.GodotString, enabled: Bool) {
        plugin.withGodotUnsafeRawPointer { __ptr_plugin in
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_plugin, __ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_plugin_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_is_plugin_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_plugin_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3927539163)!
        }
        }
    }()
    public func isPluginEnabled(plugin: Godot.GodotString) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        plugin.withGodotUnsafeRawPointer { __ptr_plugin in
        withUnsafeArgumentPackPointer(__ptr_plugin) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_plugin_enabled,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_editor_theme: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_editor_theme").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3846893731)!
        }
        }
    }()
    public func editorTheme() -> Godot.Theme? {
        Godot.Theme?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_editor_theme,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_base_control: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_base_control").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2783021301)!
        }
        }
    }()
    public func baseControl() -> Godot.Control? {
        Godot.Control?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_base_control,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_editor_main_screen: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_editor_main_screen").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1706218421)!
        }
        }
    }()
    public func editorMainScreen() -> Godot.VBoxContainer? {
        Godot.VBoxContainer?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_editor_main_screen,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_script_editor: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_script_editor").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 90868003)!
        }
        }
    }()
    public func scriptEditor() -> Godot.ScriptEditor? {
        Godot.ScriptEditor?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_script_editor,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_editor_viewport_2d: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_editor_viewport_2d").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3750751911)!
        }
        }
    }()
    public func editorViewport2D() -> Godot.SubViewport? {
        Godot.SubViewport?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_editor_viewport_2d,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_editor_viewport_3d: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_editor_viewport_3d").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1970834490)!
        }
        }
    }()
    public func editorViewport3D(idx: Int32 = 0) -> Godot.SubViewport? {
        Godot.SubViewport?.fromMutatingGodotUnsafePointer { __temporary in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        withUnsafeArgumentPackPointer(__ptr_idx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_editor_viewport_3d,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_main_screen_editor: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_main_screen_editor").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func setMainScreenEditor(name: Godot.GodotString) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_main_screen_editor,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_distraction_free_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_distraction_free_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setDistractionFreeMode(enter: Bool) {
        enter.withGodotUnsafeRawPointer { __ptr_enter in
        withUnsafeArgumentPackPointer(__ptr_enter) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_distraction_free_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_distraction_free_mode_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_distraction_free_mode_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isDistractionFreeModeEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_distraction_free_mode_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_editor_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_editor_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    public func editorScale() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_editor_scale,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_popup_dialog: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "popup_dialog").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2015770942)!
        }
        }
    }()
    public func popupDialog(_ dialog: Godot.Window?, rect: Godot.Rect2i = Rect2i(x: 0, y: 0, width: 0, height: 0)) {
        dialog.withGodotUnsafeRawPointer { __ptr_dialog in
        withUnsafePointer(to: __ptr_dialog) { _ptr___ptr_dialog in
        rect.withGodotUnsafeRawPointer { __ptr_rect in
        withUnsafeArgumentPackPointer(_ptr___ptr_dialog, __ptr_rect) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_popup_dialog,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_popup_dialog_centered: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "popup_dialog_centered").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 346557367)!
        }
        }
    }()
    public func popupDialogCentered(dialog: Godot.Window?, minsize: Godot.Vector2i = Vector2i(x: 0, y: 0)) {
        dialog.withGodotUnsafeRawPointer { __ptr_dialog in
        withUnsafePointer(to: __ptr_dialog) { _ptr___ptr_dialog in
        minsize.withGodotUnsafeRawPointer { __ptr_minsize in
        withUnsafeArgumentPackPointer(_ptr___ptr_dialog, __ptr_minsize) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_popup_dialog_centered,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_popup_dialog_centered_ratio: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "popup_dialog_centered_ratio").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2093669136)!
        }
        }
    }()
    public func popupDialogCenteredRatio(dialog: Godot.Window?, ratio: Double = 0.8) {
        dialog.withGodotUnsafeRawPointer { __ptr_dialog in
        withUnsafePointer(to: __ptr_dialog) { _ptr___ptr_dialog in
        ratio.withGodotUnsafeRawPointer { __ptr_ratio in
        withUnsafeArgumentPackPointer(_ptr___ptr_dialog, __ptr_ratio) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_popup_dialog_centered_ratio,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_popup_dialog_centered_clamped: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "popup_dialog_centered_clamped").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3763385571)!
        }
        }
    }()
    public func popupDialogCenteredClamped(dialog: Godot.Window?, minsize: Godot.Vector2i = Vector2i(x: 0, y: 0), fallbackRatio: Double = 0.75) {
        dialog.withGodotUnsafeRawPointer { __ptr_dialog in
        withUnsafePointer(to: __ptr_dialog) { _ptr___ptr_dialog in
        minsize.withGodotUnsafeRawPointer { __ptr_minsize in
        fallbackRatio.withGodotUnsafeRawPointer { __ptr_fallbackRatio in
        withUnsafeArgumentPackPointer(_ptr___ptr_dialog, __ptr_minsize, __ptr_fallbackRatio) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_popup_dialog_centered_clamped,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_get_current_feature_profile: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_current_feature_profile").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    public func currentFeatureProfile() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_current_feature_profile,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_current_feature_profile: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_current_feature_profile").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func setCurrentFeatureProfile(profileName: Godot.GodotString) {
        profileName.withGodotUnsafeRawPointer { __ptr_profileName in
        withUnsafeArgumentPackPointer(__ptr_profileName) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_current_feature_profile,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_file_system_dock: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_file_system_dock").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3751012327)!
        }
        }
    }()
    public func fileSystemDock() -> Godot.FileSystemDock? {
        Godot.FileSystemDock?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_file_system_dock,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_select_file: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "select_file").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func selectFile(_ file: Godot.GodotString) {
        file.withGodotUnsafeRawPointer { __ptr_file in
        withUnsafeArgumentPackPointer(__ptr_file) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_select_file,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_selected_paths: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_selected_paths").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1139954409)!
        }
        }
    }()
    public func selectedPaths() -> Godot.PackedStringArray {
        Godot.PackedStringArray.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_selected_paths,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_current_path: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_current_path").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    public func currentPath() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_current_path,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_current_directory: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_current_directory").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    public func currentDirectory() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_current_directory,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_inspector: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_inspector").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3517113938)!
        }
        }
    }()
    public func inspector() -> Godot.EditorInspector? {
        Godot.EditorInspector?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_inspector,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_inspect_object: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "inspect_object").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 127962172)!
        }
        }
    }()
    public func inspectObject(_ object: Godot.Object?, forProperty property: Godot.GodotString = "", inspectorOnly: Bool = false) {
        object.withGodotUnsafeRawPointer { __ptr_object in
        withUnsafePointer(to: __ptr_object) { _ptr___ptr_object in
        property.withGodotUnsafeRawPointer { __ptr_property in
        inspectorOnly.withGodotUnsafeRawPointer { __ptr_inspectorOnly in
        withUnsafeArgumentPackPointer(_ptr___ptr_object, __ptr_property, __ptr_inspectorOnly) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_inspect_object,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_edit_resource: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "edit_resource").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 968641751)!
        }
        }
    }()
    public func editResource(_ resource: Godot.Resource?) {
        resource.withGodotUnsafeRawPointer { __ptr_resource in
        withUnsafePointer(to: __ptr_resource) { _ptr___ptr_resource in
        withUnsafeArgumentPackPointer(_ptr___ptr_resource) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_edit_resource,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_edit_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "edit_node").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1078189570)!
        }
        }
    }()
    public func editNode(_ node: Godot.Node?) {
        node.withGodotUnsafeRawPointer { __ptr_node in
        withUnsafePointer(to: __ptr_node) { _ptr___ptr_node in
        withUnsafeArgumentPackPointer(_ptr___ptr_node) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_edit_node,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_edit_script: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "edit_script").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 219829402)!
        }
        }
    }()
    public func editScript(_ script: Godot.Script?, line: Int32 = -1, column: Int32 = 0, grabFocus: Bool = true) {
        script.withGodotUnsafeRawPointer { __ptr_script in
        withUnsafePointer(to: __ptr_script) { _ptr___ptr_script in
        line.withGodotUnsafeRawPointer { __ptr_line in
        column.withGodotUnsafeRawPointer { __ptr_column in
        grabFocus.withGodotUnsafeRawPointer { __ptr_grabFocus in
        withUnsafeArgumentPackPointer(_ptr___ptr_script, __ptr_line, __ptr_column, __ptr_grabFocus) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_edit_script,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    private static var __method_binding_open_scene_from_path: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "open_scene_from_path").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func openSceneFromPath(sceneFilepath: Godot.GodotString) {
        sceneFilepath.withGodotUnsafeRawPointer { __ptr_sceneFilepath in
        withUnsafeArgumentPackPointer(__ptr_sceneFilepath) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_open_scene_from_path,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_reload_scene_from_path: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "reload_scene_from_path").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func reloadSceneFromPath(sceneFilepath: Godot.GodotString) {
        sceneFilepath.withGodotUnsafeRawPointer { __ptr_sceneFilepath in
        withUnsafeArgumentPackPointer(__ptr_sceneFilepath) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_reload_scene_from_path,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_open_scenes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_open_scenes").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1139954409)!
        }
        }
    }()
    public func openScenes() -> Godot.PackedStringArray {
        Godot.PackedStringArray.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_open_scenes,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_edited_scene_root: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_edited_scene_root").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3160264692)!
        }
        }
    }()
    public func editedSceneRoot() -> Godot.Node? {
        Godot.Node?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_edited_scene_root,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_save_scene: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "save_scene").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 166280745)!
        }
        }
    }()
    public func saveScene() -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_save_scene,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_save_scene_as: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "save_scene_as").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3647332257)!
        }
        }
    }()
    public func saveSceneAs(path: Godot.GodotString, withPreview preview: Bool = true) {
        path.withGodotUnsafeRawPointer { __ptr_path in
        preview.withGodotUnsafeRawPointer { __ptr_preview in
        withUnsafeArgumentPackPointer(__ptr_path, __ptr_preview) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_save_scene_as,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_save_all_scenes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "save_all_scenes").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func saveAllScenes() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_save_all_scenes,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_mark_scene_as_unsaved: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "mark_scene_as_unsaved").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func markSceneAsUnsaved() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_mark_scene_as_unsaved,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_play_main_scene: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "play_main_scene").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func playMainScene() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_play_main_scene,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_play_current_scene: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "play_current_scene").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func playCurrentScene() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_play_current_scene,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_play_custom_scene: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "play_custom_scene").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func playCustomScene(sceneFilepath: Godot.GodotString) {
        sceneFilepath.withGodotUnsafeRawPointer { __ptr_sceneFilepath in
        withUnsafeArgumentPackPointer(__ptr_sceneFilepath) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_play_custom_scene,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_stop_playing_scene: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "stop_playing_scene").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func stopPlayingScene() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_stop_playing_scene,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_is_playing_scene: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_playing_scene").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func isPlayingScene() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_playing_scene,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_playing_scene: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_playing_scene").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    public func playingScene() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_playing_scene,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_movie_maker_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_movie_maker_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setMovieMakerEnabled(_ enabled: Bool) {
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_movie_maker_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_movie_maker_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_movie_maker_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isMovieMakerEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_movie_maker_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var isDistractionFreeModeEnabled: Bool {
        get {
            __isDistractionFreeModeEnabled()
        }
        set {
            __setDistractionFreeMode(
                enter: newValue
            )
        }
    }

    public var isMovieMakerEnabled: Bool {
        get {
            __isMovieMakerEnabled()
        }
        set {
            __setMovieMakerEnabled(
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