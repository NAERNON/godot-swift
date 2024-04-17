//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotClass
open class TabContainer: Container {
    public struct ActiveTabRearrangedSignalInput: Godot.SignalInput {
        public let idxTo: Int

        fileprivate init(
            idxTo: Int
        ) {
            self.idxTo = idxTo
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.idxTo)]
        }
    }

    public func activeTabRearranged(
        idxTo: Int
    ) {
        _ = activeTabRearrangedSignal.emit(.init(idxTo: idxTo))
    }

    public lazy var activeTabRearrangedSignal: Godot.SignalEmitter<ActiveTabRearrangedSignalInput> = {
        .init(object: self, signalName: "active_tab_rearranged") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<ActiveTabRearrangedSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(idxTo: Int.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<ActiveTabRearrangedSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<ActiveTabRearrangedSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct TabChangedSignalInput: Godot.SignalInput {
        public let tab: Int

        fileprivate init(
            tab: Int
        ) {
            self.tab = tab
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.tab)]
        }
    }

    public func tabChanged(
        tab: Int
    ) {
        _ = tabChangedSignal.emit(.init(tab: tab))
    }

    public lazy var tabChangedSignal: Godot.SignalEmitter<TabChangedSignalInput> = {
        .init(object: self, signalName: "tab_changed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<TabChangedSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(tab: Int.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<TabChangedSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<TabChangedSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct TabClickedSignalInput: Godot.SignalInput {
        public let tab: Int

        fileprivate init(
            tab: Int
        ) {
            self.tab = tab
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.tab)]
        }
    }

    public func tabClicked(
        tab: Int
    ) {
        _ = tabClickedSignal.emit(.init(tab: tab))
    }

    public lazy var tabClickedSignal: Godot.SignalEmitter<TabClickedSignalInput> = {
        .init(object: self, signalName: "tab_clicked") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<TabClickedSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(tab: Int.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<TabClickedSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<TabClickedSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct TabHoveredSignalInput: Godot.SignalInput {
        public let tab: Int

        fileprivate init(
            tab: Int
        ) {
            self.tab = tab
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.tab)]
        }
    }

    public func tabHovered(
        tab: Int
    ) {
        _ = tabHoveredSignal.emit(.init(tab: tab))
    }

    public lazy var tabHoveredSignal: Godot.SignalEmitter<TabHoveredSignalInput> = {
        .init(object: self, signalName: "tab_hovered") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<TabHoveredSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(tab: Int.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<TabHoveredSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<TabHoveredSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct TabSelectedSignalInput: Godot.SignalInput {
        public let tab: Int

        fileprivate init(
            tab: Int
        ) {
            self.tab = tab
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.tab)]
        }
    }

    public func tabSelected(
        tab: Int
    ) {
        _ = tabSelectedSignal.emit(.init(tab: tab))
    }

    public lazy var tabSelectedSignal: Godot.SignalEmitter<TabSelectedSignalInput> = {
        .init(object: self, signalName: "tab_selected") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<TabSelectedSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(tab: Int.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<TabSelectedSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<TabSelectedSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct TabButtonPressedSignalInput: Godot.SignalInput {
        public let tab: Int

        fileprivate init(
            tab: Int
        ) {
            self.tab = tab
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.tab)]
        }
    }

    public func tabButtonPressed(
        tab: Int
    ) {
        _ = tabButtonPressedSignal.emit(.init(tab: tab))
    }

    public lazy var tabButtonPressedSignal: Godot.SignalEmitter<TabButtonPressedSignalInput> = {
        .init(object: self, signalName: "tab_button_pressed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<TabButtonPressedSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(tab: Int.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<TabButtonPressedSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<TabButtonPressedSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func prePopupPressed() {
        _ = prePopupPressedSignal.emit()
    }

    public lazy var prePopupPressedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "pre_popup_pressed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    internal static var __method_binding_get_tab_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tab_count").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    public func tabCount() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_tab_count,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_current_tab: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_current_tab").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    private func __setCurrentTab(
        tabIdx: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: tabIdx) { __ptr_tabIdx in
            withUnsafeArgumentPackPointer(__ptr_tabIdx) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_current_tab,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_current_tab: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_current_tab").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    private func __getCurrentTab() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_current_tab,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_previous_tab: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_previous_tab").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    public func previousTab() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_previous_tab,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_select_previous_available: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "select_previous_available").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()

    public func selectPreviousAvailable() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_select_previous_available,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_select_next_available: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "select_next_available").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()

    public func selectNextAvailable() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_select_next_available,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_current_tab_control: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_current_tab_control").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2783021301)!
        }
        }
    }()

    public func currentTabControl() -> Godot.Control? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_current_tab_control,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_tab_bar: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tab_bar").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1865451809)!
        }
        }
    }()

    public func tabBar() -> Godot.TabBar? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_tab_bar,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_tab_control: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tab_control").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1065994134)!
        }
        }
    }()

    public func tabControl(
        tabIdx: Int32
    ) -> Godot.Control? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: tabIdx) { __ptr_tabIdx in
                withUnsafeArgumentPackPointer(__ptr_tabIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_tab_control,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_tab_alignment: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tab_alignment").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2413632353)!
        }
        }
    }()

    private func __setTabAlignment(
        _ alignment: Godot.TabBar.AlignmentMode
    ) {
        withTransferrableUnsafeRawPointer(to: alignment) { __ptr_alignment in
            withUnsafeArgumentPackPointer(__ptr_alignment) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_tab_alignment,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_tab_alignment: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tab_alignment").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2178122193)!
        }
        }
    }()

    private func __getTabAlignment() -> Godot.TabBar.AlignmentMode {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_tab_alignment,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_clip_tabs: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_clip_tabs").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setClipTabs(
        _ clipTabs: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: clipTabs) { __ptr_clipTabs in
            withUnsafeArgumentPackPointer(__ptr_clipTabs) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_clip_tabs,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_clip_tabs: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_clip_tabs").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __getClipTabs() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_clip_tabs,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_tabs_visible: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tabs_visible").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setTabsVisible(
        _ visible: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: visible) { __ptr_visible in
            withUnsafeArgumentPackPointer(__ptr_visible) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_tabs_visible,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_are_tabs_visible: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "are_tabs_visible").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __areTabsVisible() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_are_tabs_visible,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_all_tabs_in_front: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_all_tabs_in_front").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setAllTabsInFront(
        isFront: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: isFront) { __ptr_isFront in
            withUnsafeArgumentPackPointer(__ptr_isFront) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_all_tabs_in_front,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_is_all_tabs_in_front: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_all_tabs_in_front").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isAllTabsInFront() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_all_tabs_in_front,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_tab_title: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tab_title").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 501894301)!
        }
        }
    }()

    public func setTabTitle(
        tabIdx: Int32,
        title: Godot.GodotString
    ) {
        withTransferrableUnsafeRawPointer(to: tabIdx) { __ptr_tabIdx in
            withTransferrableUnsafeRawPointer(to: title) { __ptr_title in
                withUnsafeArgumentPackPointer(__ptr_tabIdx, __ptr_title) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_tab_title,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_tab_title: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tab_title").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 844755477)!
        }
        }
    }()

    public func tabTitle(
        tabIdx: Int32
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: tabIdx) { __ptr_tabIdx in
                withUnsafeArgumentPackPointer(__ptr_tabIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_tab_title,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_tab_icon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tab_icon").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 666127730)!
        }
        }
    }()

    public func setTabIcon(
        tabIdx: Int32,
        icon: Godot.Texture2D?
    ) {
        withTransferrableUnsafeRawPointer(to: tabIdx) { __ptr_tabIdx in
            withTransferrableUnsafeRawPointer(to: icon) { __ptr_icon in
                withUnsafePointer(to: __ptr_icon) { _ptr___ptr_icon in
                    withUnsafeArgumentPackPointer(__ptr_tabIdx, _ptr___ptr_icon) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_set_tab_icon,
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

    internal static var __method_binding_get_tab_icon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tab_icon").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3536238170)!
        }
        }
    }()

    public func tabIcon(
        tabIdx: Int32
    ) -> Godot.Texture2D? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: tabIdx) { __ptr_tabIdx in
                withUnsafeArgumentPackPointer(__ptr_tabIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_tab_icon,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_tab_disabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tab_disabled").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()

    public func setTabDisabled(
        tabIdx: Int32,
        disabled: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: tabIdx) { __ptr_tabIdx in
            withTransferrableUnsafeRawPointer(to: disabled) { __ptr_disabled in
                withUnsafeArgumentPackPointer(__ptr_tabIdx, __ptr_disabled) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_tab_disabled,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_is_tab_disabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_tab_disabled").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()

    public func isTabDisabled(
        tabIdx: Int32
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: tabIdx) { __ptr_tabIdx in
                withUnsafeArgumentPackPointer(__ptr_tabIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_is_tab_disabled,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_tab_hidden: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tab_hidden").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()

    public func setTabHidden(
        tabIdx: Int32,
        hidden: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: tabIdx) { __ptr_tabIdx in
            withTransferrableUnsafeRawPointer(to: hidden) { __ptr_hidden in
                withUnsafeArgumentPackPointer(__ptr_tabIdx, __ptr_hidden) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_tab_hidden,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_is_tab_hidden: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_tab_hidden").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()

    public func isTabHidden(
        tabIdx: Int32
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: tabIdx) { __ptr_tabIdx in
                withUnsafeArgumentPackPointer(__ptr_tabIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_is_tab_hidden,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_tab_metadata: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tab_metadata").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2152698145)!
        }
        }
    }()

    public func setTabMetadata<Value: Variant.Storable>(
        tabIdx: Int32,
        metadata: Value
    ) {
        withTransferrableUnsafeRawPointer(to: tabIdx) { __ptr_tabIdx in
            Godot.Variant.withStorageUnsafeRawPointer(to: metadata) { __ptr_metadata in
                withUnsafeArgumentPackPointer(__ptr_tabIdx, __ptr_metadata) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_tab_metadata,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_tab_metadata: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tab_metadata").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4227898402)!
        }
        }
    }()

    public func tabMetadata(
        tabIdx: Int32
    ) -> Godot.Variant {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: tabIdx) { __ptr_tabIdx in
                withUnsafeArgumentPackPointer(__ptr_tabIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_tab_metadata,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_tab_button_icon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tab_button_icon").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 666127730)!
        }
        }
    }()

    public func setTabButtonIcon(
        tabIdx: Int32,
        icon: Godot.Texture2D?
    ) {
        withTransferrableUnsafeRawPointer(to: tabIdx) { __ptr_tabIdx in
            withTransferrableUnsafeRawPointer(to: icon) { __ptr_icon in
                withUnsafePointer(to: __ptr_icon) { _ptr___ptr_icon in
                    withUnsafeArgumentPackPointer(__ptr_tabIdx, _ptr___ptr_icon) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_set_tab_button_icon,
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

    internal static var __method_binding_get_tab_button_icon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tab_button_icon").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3536238170)!
        }
        }
    }()

    public func tabButtonIcon(
        tabIdx: Int32
    ) -> Godot.Texture2D? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: tabIdx) { __ptr_tabIdx in
                withUnsafeArgumentPackPointer(__ptr_tabIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_tab_button_icon,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_tab_idx_at_point: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tab_idx_at_point").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3820158470)!
        }
        }
    }()

    public func tabIdxAtPoint(
        _ point: Godot.Vector2
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: point) { __ptr_point in
                withUnsafeArgumentPackPointer(__ptr_point) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_tab_idx_at_point,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_tab_idx_from_control: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tab_idx_from_control").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2787397975)!
        }
        }
    }()

    public func tabIdxFromControl(
        _ control: Godot.Control?
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: control) { __ptr_control in
                withUnsafePointer(to: __ptr_control) { _ptr___ptr_control in
                    withUnsafeArgumentPackPointer(_ptr___ptr_control) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_get_tab_idx_from_control,
                                __ptr_self,
                                __accessPtr,
                                __temporary
                            )
                        }
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_popup: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_popup").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1078189570)!
        }
        }
    }()

    public func setPopup(
        _ popup: Godot.Node?
    ) {
        withTransferrableUnsafeRawPointer(to: popup) { __ptr_popup in
            withUnsafePointer(to: __ptr_popup) { _ptr___ptr_popup in
                withUnsafeArgumentPackPointer(_ptr___ptr_popup) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_popup,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_popup: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_popup").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 111095082)!
        }
        }
    }()

    public func popup() -> Godot.Popup? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_popup,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_drag_to_rearrange_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_drag_to_rearrange_enabled").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setDragToRearrangeEnabled(
        _ enabled: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: enabled) { __ptr_enabled in
            withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_drag_to_rearrange_enabled,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_drag_to_rearrange_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_drag_to_rearrange_enabled").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __getDragToRearrangeEnabled() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_drag_to_rearrange_enabled,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_tabs_rearrange_group: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tabs_rearrange_group").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    private func __setTabsRearrangeGroup(
        groupID: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: groupID) { __ptr_groupID in
            withUnsafeArgumentPackPointer(__ptr_groupID) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_tabs_rearrange_group,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_tabs_rearrange_group: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tabs_rearrange_group").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    private func __getTabsRearrangeGroup() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_tabs_rearrange_group,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_use_hidden_tabs_for_min_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_use_hidden_tabs_for_min_size").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setUseHiddenTabsForMinSize(
        enabled: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: enabled) { __ptr_enabled in
            withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_use_hidden_tabs_for_min_size,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_use_hidden_tabs_for_min_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_use_hidden_tabs_for_min_size").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __getUseHiddenTabsForMinSize() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_use_hidden_tabs_for_min_size,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_tab_focus_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tab_focus_mode").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3232914922)!
        }
        }
    }()

    private func __setTabFocusMode(
        _ focusMode: Godot.Control.FocusMode
    ) {
        withTransferrableUnsafeRawPointer(to: focusMode) { __ptr_focusMode in
            withUnsafeArgumentPackPointer(__ptr_focusMode) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_tab_focus_mode,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_tab_focus_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tab_focus_mode").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2132829277)!
        }
        }
    }()

    private func __getTabFocusMode() -> Godot.Control.FocusMode {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_tab_focus_mode,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
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
                groupID: newValue
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