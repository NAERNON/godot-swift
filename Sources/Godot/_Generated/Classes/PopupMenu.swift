//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class PopupMenu: Popup {
    @Emitter(signal: "id_pressed", args: ("id", Int))
    public struct IdPressed {
    }

    @Emitter(signal: "id_focused", args: ("id", Int))
    public struct IdFocused {
    }

    @Emitter(signal: "index_pressed", args: ("index", Int))
    public struct IndexPressed {
    }

    @Emitter(signal: "menu_changed")
    public struct MenuChanged {
    }

    private static var __method_binding_activate_item_by_event: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "activate_item_by_event").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3716412023)!
        }
        }
    }()
    public func activateItemByEvent(_ event: Godot.InputEvent?, forGlobalOnly globalOnly: Bool = false) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        event.withGodotUnsafeRawPointer { __ptr_event in
        withUnsafePointer(to: __ptr_event) { _ptr___ptr_event in
        globalOnly.withGodotUnsafeRawPointer { __ptr_globalOnly in
        withUnsafeArgumentPackPointer(_ptr___ptr_event, __ptr_globalOnly) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_activate_item_by_event,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_add_item: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_item").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3674230041)!
        }
        }
    }()
    public func addItem(label: Godot.GodotString, id: Int32 = -1, accel: Godot.Key = Key(rawValue: 0)!) {
        label.withGodotUnsafeRawPointer { __ptr_label in
        id.withGodotUnsafeRawPointer { __ptr_id in
        accel.withGodotUnsafeRawPointer { __ptr_accel in
        withUnsafeArgumentPackPointer(__ptr_label, __ptr_id, __ptr_accel) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_item,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_add_icon_item: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_icon_item").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1086190128)!
        }
        }
    }()
    public func addIconItem(texture: Godot.Texture2D?, label: Godot.GodotString, id: Int32 = -1, accel: Godot.Key = Key(rawValue: 0)!) {
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafePointer(to: __ptr_texture) { _ptr___ptr_texture in
        label.withGodotUnsafeRawPointer { __ptr_label in
        id.withGodotUnsafeRawPointer { __ptr_id in
        accel.withGodotUnsafeRawPointer { __ptr_accel in
        withUnsafeArgumentPackPointer(_ptr___ptr_texture, __ptr_label, __ptr_id, __ptr_accel) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_icon_item,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    private static var __method_binding_add_check_item: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_check_item").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3674230041)!
        }
        }
    }()
    public func addCheckItem(label: Godot.GodotString, id: Int32 = -1, accel: Godot.Key = Key(rawValue: 0)!) {
        label.withGodotUnsafeRawPointer { __ptr_label in
        id.withGodotUnsafeRawPointer { __ptr_id in
        accel.withGodotUnsafeRawPointer { __ptr_accel in
        withUnsafeArgumentPackPointer(__ptr_label, __ptr_id, __ptr_accel) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_check_item,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_add_icon_check_item: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_icon_check_item").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1086190128)!
        }
        }
    }()
    public func addIconCheckItem(texture: Godot.Texture2D?, label: Godot.GodotString, id: Int32 = -1, accel: Godot.Key = Key(rawValue: 0)!) {
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafePointer(to: __ptr_texture) { _ptr___ptr_texture in
        label.withGodotUnsafeRawPointer { __ptr_label in
        id.withGodotUnsafeRawPointer { __ptr_id in
        accel.withGodotUnsafeRawPointer { __ptr_accel in
        withUnsafeArgumentPackPointer(_ptr___ptr_texture, __ptr_label, __ptr_id, __ptr_accel) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_icon_check_item,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    private static var __method_binding_add_radio_check_item: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_radio_check_item").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3674230041)!
        }
        }
    }()
    public func addRadioCheckItem(label: Godot.GodotString, id: Int32 = -1, accel: Godot.Key = Key(rawValue: 0)!) {
        label.withGodotUnsafeRawPointer { __ptr_label in
        id.withGodotUnsafeRawPointer { __ptr_id in
        accel.withGodotUnsafeRawPointer { __ptr_accel in
        withUnsafeArgumentPackPointer(__ptr_label, __ptr_id, __ptr_accel) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_radio_check_item,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_add_icon_radio_check_item: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_icon_radio_check_item").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1086190128)!
        }
        }
    }()
    public func addIconRadioCheckItem(texture: Godot.Texture2D?, label: Godot.GodotString, id: Int32 = -1, accel: Godot.Key = Key(rawValue: 0)!) {
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafePointer(to: __ptr_texture) { _ptr___ptr_texture in
        label.withGodotUnsafeRawPointer { __ptr_label in
        id.withGodotUnsafeRawPointer { __ptr_id in
        accel.withGodotUnsafeRawPointer { __ptr_accel in
        withUnsafeArgumentPackPointer(_ptr___ptr_texture, __ptr_label, __ptr_id, __ptr_accel) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_icon_radio_check_item,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    private static var __method_binding_add_multistate_item: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_multistate_item").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 150780458)!
        }
        }
    }()
    public func addMultistateItem(label: Godot.GodotString, maxStates: Int32, defaultState: Int32 = 0, id: Int32 = -1, accel: Godot.Key = Key(rawValue: 0)!) {
        label.withGodotUnsafeRawPointer { __ptr_label in
        maxStates.withGodotUnsafeRawPointer { __ptr_maxStates in
        defaultState.withGodotUnsafeRawPointer { __ptr_defaultState in
        id.withGodotUnsafeRawPointer { __ptr_id in
        accel.withGodotUnsafeRawPointer { __ptr_accel in
        withUnsafeArgumentPackPointer(__ptr_label, __ptr_maxStates, __ptr_defaultState, __ptr_id, __ptr_accel) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_multistate_item,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    private static var __method_binding_add_shortcut: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_shortcut").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3451850107)!
        }
        }
    }()
    public func addShortcut(_ shortcut: Godot.Shortcut?, id: Int32 = -1, global: Bool = false, allowEcho: Bool = false) {
        shortcut.withGodotUnsafeRawPointer { __ptr_shortcut in
        withUnsafePointer(to: __ptr_shortcut) { _ptr___ptr_shortcut in
        id.withGodotUnsafeRawPointer { __ptr_id in
        global.withGodotUnsafeRawPointer { __ptr_global in
        allowEcho.withGodotUnsafeRawPointer { __ptr_allowEcho in
        withUnsafeArgumentPackPointer(_ptr___ptr_shortcut, __ptr_id, __ptr_global, __ptr_allowEcho) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_shortcut,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    private static var __method_binding_add_icon_shortcut: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_icon_shortcut").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2997871092)!
        }
        }
    }()
    public func addIconShortcut(texture: Godot.Texture2D?, shortcut: Godot.Shortcut?, id: Int32 = -1, global: Bool = false, allowEcho: Bool = false) {
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafePointer(to: __ptr_texture) { _ptr___ptr_texture in
        shortcut.withGodotUnsafeRawPointer { __ptr_shortcut in
        withUnsafePointer(to: __ptr_shortcut) { _ptr___ptr_shortcut in
        id.withGodotUnsafeRawPointer { __ptr_id in
        global.withGodotUnsafeRawPointer { __ptr_global in
        allowEcho.withGodotUnsafeRawPointer { __ptr_allowEcho in
        withUnsafeArgumentPackPointer(_ptr___ptr_texture, _ptr___ptr_shortcut, __ptr_id, __ptr_global, __ptr_allowEcho) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_icon_shortcut,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}}
    }

    private static var __method_binding_add_check_shortcut: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_check_shortcut").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1642193386)!
        }
        }
    }()
    public func addCheckShortcut(_ shortcut: Godot.Shortcut?, id: Int32 = -1, global: Bool = false) {
        shortcut.withGodotUnsafeRawPointer { __ptr_shortcut in
        withUnsafePointer(to: __ptr_shortcut) { _ptr___ptr_shortcut in
        id.withGodotUnsafeRawPointer { __ptr_id in
        global.withGodotUnsafeRawPointer { __ptr_global in
        withUnsafeArgumentPackPointer(_ptr___ptr_shortcut, __ptr_id, __ptr_global) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_check_shortcut,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_add_icon_check_shortcut: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_icon_check_shortcut").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3856247530)!
        }
        }
    }()
    public func addIconCheckShortcut(texture: Godot.Texture2D?, shortcut: Godot.Shortcut?, id: Int32 = -1, global: Bool = false) {
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafePointer(to: __ptr_texture) { _ptr___ptr_texture in
        shortcut.withGodotUnsafeRawPointer { __ptr_shortcut in
        withUnsafePointer(to: __ptr_shortcut) { _ptr___ptr_shortcut in
        id.withGodotUnsafeRawPointer { __ptr_id in
        global.withGodotUnsafeRawPointer { __ptr_global in
        withUnsafeArgumentPackPointer(_ptr___ptr_texture, _ptr___ptr_shortcut, __ptr_id, __ptr_global) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_icon_check_shortcut,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}
    }

    private static var __method_binding_add_radio_check_shortcut: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_radio_check_shortcut").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1642193386)!
        }
        }
    }()
    public func addRadioCheckShortcut(_ shortcut: Godot.Shortcut?, id: Int32 = -1, global: Bool = false) {
        shortcut.withGodotUnsafeRawPointer { __ptr_shortcut in
        withUnsafePointer(to: __ptr_shortcut) { _ptr___ptr_shortcut in
        id.withGodotUnsafeRawPointer { __ptr_id in
        global.withGodotUnsafeRawPointer { __ptr_global in
        withUnsafeArgumentPackPointer(_ptr___ptr_shortcut, __ptr_id, __ptr_global) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_radio_check_shortcut,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_add_icon_radio_check_shortcut: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_icon_radio_check_shortcut").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3856247530)!
        }
        }
    }()
    public func addIconRadioCheckShortcut(texture: Godot.Texture2D?, shortcut: Godot.Shortcut?, id: Int32 = -1, global: Bool = false) {
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafePointer(to: __ptr_texture) { _ptr___ptr_texture in
        shortcut.withGodotUnsafeRawPointer { __ptr_shortcut in
        withUnsafePointer(to: __ptr_shortcut) { _ptr___ptr_shortcut in
        id.withGodotUnsafeRawPointer { __ptr_id in
        global.withGodotUnsafeRawPointer { __ptr_global in
        withUnsafeArgumentPackPointer(_ptr___ptr_texture, _ptr___ptr_shortcut, __ptr_id, __ptr_global) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_icon_radio_check_shortcut,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}
    }

    private static var __method_binding_add_submenu_item: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_submenu_item").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2979222410)!
        }
        }
    }()
    public func addSubmenuItem(label: Godot.GodotString, submenu: Godot.GodotString, id: Int32 = -1) {
        label.withGodotUnsafeRawPointer { __ptr_label in
        submenu.withGodotUnsafeRawPointer { __ptr_submenu in
        id.withGodotUnsafeRawPointer { __ptr_id in
        withUnsafeArgumentPackPointer(__ptr_label, __ptr_submenu, __ptr_id) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_submenu_item,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_set_item_text: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_item_text").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 501894301)!
        }
        }
    }()
    public func setItemText(index: Int32, text: Godot.GodotString) {
        index.withGodotUnsafeRawPointer { __ptr_index in
        text.withGodotUnsafeRawPointer { __ptr_text in
        withUnsafeArgumentPackPointer(__ptr_index, __ptr_text) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_item_text,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_set_item_text_direction: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_item_text_direction").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1707680378)!
        }
        }
    }()
    public func setItemTextDirection(index: Int32, direction: Godot.Control.TextDirection) {
        index.withGodotUnsafeRawPointer { __ptr_index in
        direction.withGodotUnsafeRawPointer { __ptr_direction in
        withUnsafeArgumentPackPointer(__ptr_index, __ptr_direction) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_item_text_direction,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_set_item_language: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_item_language").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 501894301)!
        }
        }
    }()
    public func setItemLanguage(index: Int32, language: Godot.GodotString) {
        index.withGodotUnsafeRawPointer { __ptr_index in
        language.withGodotUnsafeRawPointer { __ptr_language in
        withUnsafeArgumentPackPointer(__ptr_index, __ptr_language) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_item_language,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_set_item_icon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_item_icon").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 666127730)!
        }
        }
    }()
    public func setItemIcon(index: Int32, icon: Godot.Texture2D?) {
        index.withGodotUnsafeRawPointer { __ptr_index in
        icon.withGodotUnsafeRawPointer { __ptr_icon in
        withUnsafePointer(to: __ptr_icon) { _ptr___ptr_icon in
        withUnsafeArgumentPackPointer(__ptr_index, _ptr___ptr_icon) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_item_icon,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_set_item_icon_max_width: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_item_icon_max_width").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func setItemIconMaxWidth(index: Int32, width: Int32) {
        index.withGodotUnsafeRawPointer { __ptr_index in
        width.withGodotUnsafeRawPointer { __ptr_width in
        withUnsafeArgumentPackPointer(__ptr_index, __ptr_width) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_item_icon_max_width,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_set_item_icon_modulate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_item_icon_modulate").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2878471219)!
        }
        }
    }()
    public func setItemIconModulate(index: Int32, modulate: Godot.Color) {
        index.withGodotUnsafeRawPointer { __ptr_index in
        modulate.withGodotUnsafeRawPointer { __ptr_modulate in
        withUnsafeArgumentPackPointer(__ptr_index, __ptr_modulate) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_item_icon_modulate,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_set_item_checked: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_item_checked").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()
    public func setItemChecked(index: Int32, checked: Bool) {
        index.withGodotUnsafeRawPointer { __ptr_index in
        checked.withGodotUnsafeRawPointer { __ptr_checked in
        withUnsafeArgumentPackPointer(__ptr_index, __ptr_checked) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_item_checked,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_set_item_id: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_item_id").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func setItemId(index: Int32, id: Int32) {
        index.withGodotUnsafeRawPointer { __ptr_index in
        id.withGodotUnsafeRawPointer { __ptr_id in
        withUnsafeArgumentPackPointer(__ptr_index, __ptr_id) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_item_id,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_set_item_accelerator: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_item_accelerator").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2992817551)!
        }
        }
    }()
    public func setItemAccelerator(index: Int32, accel: Godot.Key) {
        index.withGodotUnsafeRawPointer { __ptr_index in
        accel.withGodotUnsafeRawPointer { __ptr_accel in
        withUnsafeArgumentPackPointer(__ptr_index, __ptr_accel) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_item_accelerator,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_set_item_metadata: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_item_metadata").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2152698145)!
        }
        }
    }()
    public func setItemMetadata<Value: VariantStorableIn>(index: Int32, metadata: Value) {
        index.withGodotUnsafeRawPointer { __ptr_index in
        Godot.Variant.withStorageUnsafeRawPointer(to: metadata) { __ptr_metadata in
        withUnsafeArgumentPackPointer(__ptr_index, __ptr_metadata) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_item_metadata,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_set_item_disabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_item_disabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()
    public func setItemDisabled(index: Int32, disabled: Bool) {
        index.withGodotUnsafeRawPointer { __ptr_index in
        disabled.withGodotUnsafeRawPointer { __ptr_disabled in
        withUnsafeArgumentPackPointer(__ptr_index, __ptr_disabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_item_disabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_set_item_submenu: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_item_submenu").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 501894301)!
        }
        }
    }()
    public func setItemSubmenu(index: Int32, submenu: Godot.GodotString) {
        index.withGodotUnsafeRawPointer { __ptr_index in
        submenu.withGodotUnsafeRawPointer { __ptr_submenu in
        withUnsafeArgumentPackPointer(__ptr_index, __ptr_submenu) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_item_submenu,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_set_item_as_separator: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_item_as_separator").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()
    public func setItemAsSeparator(index: Int32, enable: Bool) {
        index.withGodotUnsafeRawPointer { __ptr_index in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_index, __ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_item_as_separator,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_set_item_as_checkable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_item_as_checkable").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()
    public func setItemAsCheckable(index: Int32, enable: Bool) {
        index.withGodotUnsafeRawPointer { __ptr_index in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_index, __ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_item_as_checkable,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_set_item_as_radio_checkable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_item_as_radio_checkable").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()
    public func setItemAsRadioCheckable(index: Int32, enable: Bool) {
        index.withGodotUnsafeRawPointer { __ptr_index in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_index, __ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_item_as_radio_checkable,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_set_item_tooltip: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_item_tooltip").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 501894301)!
        }
        }
    }()
    public func setItemTooltip(index: Int32, tooltip: Godot.GodotString) {
        index.withGodotUnsafeRawPointer { __ptr_index in
        tooltip.withGodotUnsafeRawPointer { __ptr_tooltip in
        withUnsafeArgumentPackPointer(__ptr_index, __ptr_tooltip) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_item_tooltip,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_set_item_shortcut: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_item_shortcut").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 825127832)!
        }
        }
    }()
    public func setItemShortcut(index: Int32, shortcut: Godot.Shortcut?, global: Bool = false) {
        index.withGodotUnsafeRawPointer { __ptr_index in
        shortcut.withGodotUnsafeRawPointer { __ptr_shortcut in
        withUnsafePointer(to: __ptr_shortcut) { _ptr___ptr_shortcut in
        global.withGodotUnsafeRawPointer { __ptr_global in
        withUnsafeArgumentPackPointer(__ptr_index, _ptr___ptr_shortcut, __ptr_global) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_item_shortcut,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_set_item_indent: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_item_indent").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func setItemIndent(index: Int32, indent: Int32) {
        index.withGodotUnsafeRawPointer { __ptr_index in
        indent.withGodotUnsafeRawPointer { __ptr_indent in
        withUnsafeArgumentPackPointer(__ptr_index, __ptr_indent) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_item_indent,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_set_item_multistate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_item_multistate").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func setItemMultistate(index: Int32, state: Int32) {
        index.withGodotUnsafeRawPointer { __ptr_index in
        state.withGodotUnsafeRawPointer { __ptr_state in
        withUnsafeArgumentPackPointer(__ptr_index, __ptr_state) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_item_multistate,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_set_item_shortcut_disabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_item_shortcut_disabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()
    public func setItemShortcutDisabled(index: Int32, disabled: Bool) {
        index.withGodotUnsafeRawPointer { __ptr_index in
        disabled.withGodotUnsafeRawPointer { __ptr_disabled in
        withUnsafeArgumentPackPointer(__ptr_index, __ptr_disabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_item_shortcut_disabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_toggle_item_checked: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "toggle_item_checked").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func toggleItemChecked(index: Int32) {
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_toggle_item_checked,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_toggle_item_multistate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "toggle_item_multistate").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func toggleItemMultistate(index: Int32) {
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_toggle_item_multistate,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_item_text: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_item_text").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 844755477)!
        }
        }
    }()
    public func itemText(index: Int32) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_item_text,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_item_text_direction: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_item_text_direction").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4235602388)!
        }
        }
    }()
    public func itemTextDirection(index: Int32) -> Godot.Control.TextDirection {
        Godot.Control.TextDirection.fromMutatingGodotUnsafePointer { __temporary in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_item_text_direction,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_item_language: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_item_language").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 844755477)!
        }
        }
    }()
    public func itemLanguage(index: Int32) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_item_language,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_item_icon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_item_icon").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3536238170)!
        }
        }
    }()
    public func itemIcon(index: Int32) -> Godot.Texture2D? {
        Godot.Texture2D?.fromMutatingGodotUnsafePointer { __temporary in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_item_icon,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_item_icon_max_width: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_item_icon_max_width").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()
    public func itemIconMaxWidth(index: Int32) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_item_icon_max_width,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_item_icon_modulate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_item_icon_modulate").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3457211756)!
        }
        }
    }()
    public func itemIconModulate(index: Int32) -> Godot.Color {
        Godot.Color.fromMutatingGodotUnsafePointer { __temporary in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_item_icon_modulate,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_is_item_checked: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_item_checked").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func isItemChecked(index: Int32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_item_checked,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_item_id: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_item_id").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()
    public func itemId(index: Int32) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_item_id,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_item_index: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_item_index").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()
    public func itemIndex(id: Int32) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        id.withGodotUnsafeRawPointer { __ptr_id in
        withUnsafeArgumentPackPointer(__ptr_id) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_item_index,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_item_accelerator: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_item_accelerator").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 253789942)!
        }
        }
    }()
    public func itemAccelerator(index: Int32) -> Godot.Key {
        Godot.Key.fromMutatingGodotUnsafePointer { __temporary in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_item_accelerator,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_item_metadata: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_item_metadata").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4227898402)!
        }
        }
    }()
    public func itemMetadata(index: Int32) -> Godot.Variant {
        Godot.Variant.fromMutatingGodotUnsafePointer { __temporary in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_item_metadata,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_is_item_disabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_item_disabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func isItemDisabled(index: Int32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_item_disabled,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_item_submenu: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_item_submenu").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 844755477)!
        }
        }
    }()
    public func itemSubmenu(index: Int32) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_item_submenu,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_is_item_separator: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_item_separator").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func isItemSeparator(index: Int32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_item_separator,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_is_item_checkable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_item_checkable").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func isItemCheckable(index: Int32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_item_checkable,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_is_item_radio_checkable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_item_radio_checkable").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func isItemRadioCheckable(index: Int32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_item_radio_checkable,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_is_item_shortcut_disabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_item_shortcut_disabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func isItemShortcutDisabled(index: Int32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_item_shortcut_disabled,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_item_tooltip: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_item_tooltip").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 844755477)!
        }
        }
    }()
    public func itemTooltip(index: Int32) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_item_tooltip,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_item_shortcut: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_item_shortcut").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1449483325)!
        }
        }
    }()
    public func itemShortcut(index: Int32) -> Godot.Shortcut? {
        Godot.Shortcut?.fromMutatingGodotUnsafePointer { __temporary in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_item_shortcut,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_item_indent: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_item_indent").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()
    public func itemIndent(index: Int32) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_item_indent,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_focused_item: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_focused_item").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func setFocusedItem(index: Int32) {
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_focused_item,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_focused_item: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_focused_item").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func focusedItem() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_focused_item,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_item_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_item_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setItemCount(_ count: Int32) {
        count.withGodotUnsafeRawPointer { __ptr_count in
        withUnsafeArgumentPackPointer(__ptr_count) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_item_count,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_item_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_item_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getItemCount() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_item_count,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_scroll_to_item: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "scroll_to_item").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func scrollToItem(index: Int32) {
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_scroll_to_item,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_remove_item: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_item").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func removeItem(index: Int32) {
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_remove_item,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_add_separator: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_separator").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2266703459)!
        }
        }
    }()
    public func addSeparator(label: Godot.GodotString = "", id: Int32 = -1) {
        label.withGodotUnsafeRawPointer { __ptr_label in
        id.withGodotUnsafeRawPointer { __ptr_id in
        withUnsafeArgumentPackPointer(__ptr_label, __ptr_id) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_separator,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_clear: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 107499316)!
        }
        }
    }()
    public func clear(freeSubmenus: Bool = false) {
        freeSubmenus.withGodotUnsafeRawPointer { __ptr_freeSubmenus in
        withUnsafeArgumentPackPointer(__ptr_freeSubmenus) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_clear,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_hide_on_item_selection: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_hide_on_item_selection").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setHideOnItemSelection(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_hide_on_item_selection,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_hide_on_item_selection: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_hide_on_item_selection").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isHideOnItemSelection() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_hide_on_item_selection,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_hide_on_checkable_item_selection: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_hide_on_checkable_item_selection").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setHideOnCheckableItemSelection(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_hide_on_checkable_item_selection,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_hide_on_checkable_item_selection: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_hide_on_checkable_item_selection").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isHideOnCheckableItemSelection() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_hide_on_checkable_item_selection,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_hide_on_state_item_selection: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_hide_on_state_item_selection").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setHideOnStateItemSelection(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_hide_on_state_item_selection,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_hide_on_state_item_selection: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_hide_on_state_item_selection").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isHideOnStateItemSelection() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_hide_on_state_item_selection,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_submenu_popup_delay: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_submenu_popup_delay").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setSubmenuPopupDelay(seconds: Double) {
        seconds.withGodotUnsafeRawPointer { __ptr_seconds in
        withUnsafeArgumentPackPointer(__ptr_seconds) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_submenu_popup_delay,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_submenu_popup_delay: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_submenu_popup_delay").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getSubmenuPopupDelay() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_submenu_popup_delay,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_allow_search: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_allow_search").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setAllowSearch(allow: Bool) {
        allow.withGodotUnsafeRawPointer { __ptr_allow in
        withUnsafeArgumentPackPointer(__ptr_allow) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_allow_search,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_allow_search: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_allow_search").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getAllowSearch() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_allow_search,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var isHideOnItemSelection: Bool {
        get {
            __isHideOnItemSelection()
        }
        set {
            __setHideOnItemSelection(
                enable: newValue
            )
        }
    }

    public var isHideOnCheckableItemSelection: Bool {
        get {
            __isHideOnCheckableItemSelection()
        }
        set {
            __setHideOnCheckableItemSelection(
                enable: newValue
            )
        }
    }

    public var isHideOnStateItemSelection: Bool {
        get {
            __isHideOnStateItemSelection()
        }
        set {
            __setHideOnStateItemSelection(
                enable: newValue
            )
        }
    }

    public var submenuPopupDelay: Double {
        get {
            __getSubmenuPopupDelay()
        }
        set {
            __setSubmenuPopupDelay(
                seconds: newValue
            )
        }
    }

    public var allowSearch: Bool {
        get {
            __getAllowSearch()
        }
        set {
            __setAllowSearch(
                allow: newValue
            )
        }
    }

    public var itemCount: Int32 {
        get {
            __getItemCount()
        }
        set {
            __setItemCount(
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