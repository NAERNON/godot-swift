//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class TabContainer: Container {
    @Emitter(signal: "active_tab_rearranged", args: ("idxTo", Int))
    public struct ActiveTabRearranged {
    }

    @Emitter(signal: "tab_changed", args: ("tab", Int))
    public struct TabChanged {
    }

    @Emitter(signal: "tab_clicked", args: ("tab", Int))
    public struct TabClicked {
    }

    @Emitter(signal: "tab_hovered", args: ("tab", Int))
    public struct TabHovered {
    }

    @Emitter(signal: "tab_selected", args: ("tab", Int))
    public struct TabSelected {
    }

    @Emitter(signal: "tab_button_pressed", args: ("tab", Int))
    public struct TabButtonPressed {
    }

    @Emitter(signal: "pre_popup_pressed")
    public struct PrePopupPressed {
    }

    private static var __method_binding_get_tab_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tab_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func tabCount() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_tab_count,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_current_tab: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_current_tab").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setCurrentTab(tabIdx: Int32) {
        tabIdx.withGodotUnsafeRawPointer { __ptr_tabIdx in
        withUnsafeArgumentPackPointer(__ptr_tabIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_current_tab,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_current_tab: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_current_tab").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getCurrentTab() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_current_tab,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_previous_tab: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_previous_tab").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func previousTab() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_previous_tab,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_select_previous_available: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "select_previous_available").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()
    public func selectPreviousAvailable() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_select_previous_available,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_select_next_available: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "select_next_available").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()
    public func selectNextAvailable() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_select_next_available,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_current_tab_control: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_current_tab_control").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2783021301)!
        }
        }
    }()
    public func currentTabControl() -> Godot.Control? {
        Godot.Control?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_current_tab_control,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_tab_bar: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tab_bar").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1865451809)!
        }
        }
    }()
    public func tabBar() -> Godot.TabBar? {
        Godot.TabBar?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_tab_bar,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_tab_control: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tab_control").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1065994134)!
        }
        }
    }()
    public func tabControl(tabIdx: Int32) -> Godot.Control? {
        Godot.Control?.fromMutatingGodotUnsafePointer { __temporary in
        tabIdx.withGodotUnsafeRawPointer { __ptr_tabIdx in
        withUnsafeArgumentPackPointer(__ptr_tabIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_tab_control,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_tab_alignment: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tab_alignment").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2413632353)!
        }
        }
    }()
    private func __setTabAlignment(_ alignment: Godot.TabBar.AlignmentMode) {
        alignment.withGodotUnsafeRawPointer { __ptr_alignment in
        withUnsafeArgumentPackPointer(__ptr_alignment) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_tab_alignment,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_tab_alignment: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tab_alignment").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2178122193)!
        }
        }
    }()
    private func __getTabAlignment() -> Godot.TabBar.AlignmentMode {
        Godot.TabBar.AlignmentMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_tab_alignment,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_clip_tabs: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_clip_tabs").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setClipTabs(_ clipTabs: Bool) {
        clipTabs.withGodotUnsafeRawPointer { __ptr_clipTabs in
        withUnsafeArgumentPackPointer(__ptr_clipTabs) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_clip_tabs,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_clip_tabs: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_clip_tabs").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getClipTabs() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_clip_tabs,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_tabs_visible: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tabs_visible").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setTabsVisible(_ visible: Bool) {
        visible.withGodotUnsafeRawPointer { __ptr_visible in
        withUnsafeArgumentPackPointer(__ptr_visible) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_tabs_visible,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_are_tabs_visible: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "are_tabs_visible").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __areTabsVisible() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_are_tabs_visible,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_all_tabs_in_front: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_all_tabs_in_front").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setAllTabsInFront(isFront: Bool) {
        isFront.withGodotUnsafeRawPointer { __ptr_isFront in
        withUnsafeArgumentPackPointer(__ptr_isFront) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_all_tabs_in_front,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_all_tabs_in_front: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_all_tabs_in_front").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isAllTabsInFront() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_all_tabs_in_front,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_tab_title: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tab_title").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 501894301)!
        }
        }
    }()
    public func setTabTitle(tabIdx: Int32, title: Godot.GodotString) {
        tabIdx.withGodotUnsafeRawPointer { __ptr_tabIdx in
        title.withGodotUnsafeRawPointer { __ptr_title in
        withUnsafeArgumentPackPointer(__ptr_tabIdx, __ptr_title) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_tab_title,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_tab_title: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tab_title").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 844755477)!
        }
        }
    }()
    public func tabTitle(tabIdx: Int32) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        tabIdx.withGodotUnsafeRawPointer { __ptr_tabIdx in
        withUnsafeArgumentPackPointer(__ptr_tabIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_tab_title,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_tab_icon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tab_icon").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 666127730)!
        }
        }
    }()
    public func setTabIcon(tabIdx: Int32, icon: Godot.Texture2D?) {
        tabIdx.withGodotUnsafeRawPointer { __ptr_tabIdx in
        icon.withGodotUnsafeRawPointer { __ptr_icon in
        withUnsafePointer(to: __ptr_icon) { _ptr___ptr_icon in
        withUnsafeArgumentPackPointer(__ptr_tabIdx, _ptr___ptr_icon) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_tab_icon,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_get_tab_icon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tab_icon").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3536238170)!
        }
        }
    }()
    public func tabIcon(tabIdx: Int32) -> Godot.Texture2D? {
        Godot.Texture2D?.fromMutatingGodotUnsafePointer { __temporary in
        tabIdx.withGodotUnsafeRawPointer { __ptr_tabIdx in
        withUnsafeArgumentPackPointer(__ptr_tabIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_tab_icon,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_tab_disabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tab_disabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()
    public func setTabDisabled(tabIdx: Int32, disabled: Bool) {
        tabIdx.withGodotUnsafeRawPointer { __ptr_tabIdx in
        disabled.withGodotUnsafeRawPointer { __ptr_disabled in
        withUnsafeArgumentPackPointer(__ptr_tabIdx, __ptr_disabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_tab_disabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_is_tab_disabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_tab_disabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func isTabDisabled(tabIdx: Int32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        tabIdx.withGodotUnsafeRawPointer { __ptr_tabIdx in
        withUnsafeArgumentPackPointer(__ptr_tabIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_tab_disabled,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_tab_hidden: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tab_hidden").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()
    public func setTabHidden(tabIdx: Int32, hidden: Bool) {
        tabIdx.withGodotUnsafeRawPointer { __ptr_tabIdx in
        hidden.withGodotUnsafeRawPointer { __ptr_hidden in
        withUnsafeArgumentPackPointer(__ptr_tabIdx, __ptr_hidden) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_tab_hidden,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_is_tab_hidden: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_tab_hidden").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func isTabHidden(tabIdx: Int32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        tabIdx.withGodotUnsafeRawPointer { __ptr_tabIdx in
        withUnsafeArgumentPackPointer(__ptr_tabIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_tab_hidden,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_tab_metadata: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tab_metadata").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2152698145)!
        }
        }
    }()
    public func setTabMetadata<Value: VariantStorableIn>(tabIdx: Int32, metadata: Value) {
        tabIdx.withGodotUnsafeRawPointer { __ptr_tabIdx in
        Godot.Variant.withStorageUnsafeRawPointer(to: metadata) { __ptr_metadata in
        withUnsafeArgumentPackPointer(__ptr_tabIdx, __ptr_metadata) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_tab_metadata,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_tab_metadata: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tab_metadata").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4227898402)!
        }
        }
    }()
    public func tabMetadata(tabIdx: Int32) -> Godot.Variant {
        Godot.Variant.fromMutatingGodotUnsafePointer { __temporary in
        tabIdx.withGodotUnsafeRawPointer { __ptr_tabIdx in
        withUnsafeArgumentPackPointer(__ptr_tabIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_tab_metadata,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_tab_button_icon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tab_button_icon").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 666127730)!
        }
        }
    }()
    public func setTabButtonIcon(tabIdx: Int32, icon: Godot.Texture2D?) {
        tabIdx.withGodotUnsafeRawPointer { __ptr_tabIdx in
        icon.withGodotUnsafeRawPointer { __ptr_icon in
        withUnsafePointer(to: __ptr_icon) { _ptr___ptr_icon in
        withUnsafeArgumentPackPointer(__ptr_tabIdx, _ptr___ptr_icon) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_tab_button_icon,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_get_tab_button_icon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tab_button_icon").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3536238170)!
        }
        }
    }()
    public func tabButtonIcon(tabIdx: Int32) -> Godot.Texture2D? {
        Godot.Texture2D?.fromMutatingGodotUnsafePointer { __temporary in
        tabIdx.withGodotUnsafeRawPointer { __ptr_tabIdx in
        withUnsafeArgumentPackPointer(__ptr_tabIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_tab_button_icon,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_tab_idx_at_point: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tab_idx_at_point").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3820158470)!
        }
        }
    }()
    public func tabIdxAtPoint(_ point: Godot.Vector2) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        point.withGodotUnsafeRawPointer { __ptr_point in
        withUnsafeArgumentPackPointer(__ptr_point) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_tab_idx_at_point,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_tab_idx_from_control: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tab_idx_from_control").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2787397975)!
        }
        }
    }()
    public func tabIdxFromControl(_ control: Godot.Control?) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        control.withGodotUnsafeRawPointer { __ptr_control in
        withUnsafePointer(to: __ptr_control) { _ptr___ptr_control in
        withUnsafeArgumentPackPointer(_ptr___ptr_control) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_tab_idx_from_control,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_set_popup: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_popup").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1078189570)!
        }
        }
    }()
    public func setPopup(_ popup: Godot.Node?) {
        popup.withGodotUnsafeRawPointer { __ptr_popup in
        withUnsafePointer(to: __ptr_popup) { _ptr___ptr_popup in
        withUnsafeArgumentPackPointer(_ptr___ptr_popup) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_popup,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_popup: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_popup").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 111095082)!
        }
        }
    }()
    public func popup() -> Godot.Popup? {
        Godot.Popup?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_popup,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_drag_to_rearrange_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_drag_to_rearrange_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setDragToRearrangeEnabled(_ enabled: Bool) {
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_drag_to_rearrange_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_drag_to_rearrange_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_drag_to_rearrange_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getDragToRearrangeEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_drag_to_rearrange_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_tabs_rearrange_group: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tabs_rearrange_group").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setTabsRearrangeGroup(groupId: Int32) {
        groupId.withGodotUnsafeRawPointer { __ptr_groupId in
        withUnsafeArgumentPackPointer(__ptr_groupId) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_tabs_rearrange_group,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_tabs_rearrange_group: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tabs_rearrange_group").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getTabsRearrangeGroup() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_tabs_rearrange_group,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_use_hidden_tabs_for_min_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_use_hidden_tabs_for_min_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setUseHiddenTabsForMinSize(enabled: Bool) {
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_use_hidden_tabs_for_min_size,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_use_hidden_tabs_for_min_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_use_hidden_tabs_for_min_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getUseHiddenTabsForMinSize() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_use_hidden_tabs_for_min_size,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_tab_focus_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tab_focus_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3232914922)!
        }
        }
    }()
    private func __setTabFocusMode(_ focusMode: Godot.Control.FocusMode) {
        focusMode.withGodotUnsafeRawPointer { __ptr_focusMode in
        withUnsafeArgumentPackPointer(__ptr_focusMode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_tab_focus_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_tab_focus_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tab_focus_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2132829277)!
        }
        }
    }()
    private func __getTabFocusMode() -> Godot.Control.FocusMode {
        Godot.Control.FocusMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_tab_focus_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var tabAlignment: Godot.TabBar.AlignmentMode {
        get {
            __getTabAlignment()
        }
        set {
            __setTabAlignment(
                newValue
            )
        }
    }

    public var currentTab: Int32 {
        get {
            __getCurrentTab()
        }
        set {
            __setCurrentTab(
                tabIdx: newValue
            )
        }
    }

    public var clipTabs: Bool {
        get {
            __getClipTabs()
        }
        set {
            __setClipTabs(
                newValue
            )
        }
    }

    public var areTabsVisible: Bool {
        get {
            __areTabsVisible()
        }
        set {
            __setTabsVisible(
                newValue
            )
        }
    }

    public var isAllTabsInFront: Bool {
        get {
            __isAllTabsInFront()
        }
        set {
            __setAllTabsInFront(
                isFront: newValue
            )
        }
    }

    public var dragToRearrangeEnabled: Bool {
        get {
            __getDragToRearrangeEnabled()
        }
        set {
            __setDragToRearrangeEnabled(
                newValue
            )
        }
    }

    public var tabsRearrangeGroup: Int32 {
        get {
            __getTabsRearrangeGroup()
        }
        set {
            __setTabsRearrangeGroup(
                groupId: newValue
            )
        }
    }

    public var useHiddenTabsForMinSize: Bool {
        get {
            __getUseHiddenTabsForMinSize()
        }
        set {
            __setUseHiddenTabsForMinSize(
                enabled: newValue
            )
        }
    }

    public var tabFocusMode: Godot.Control.FocusMode {
        get {
            __getTabFocusMode()
        }
        set {
            __setTabFocusMode(
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