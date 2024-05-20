//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotClass
open class TabBar: Control {
    public enum AlignmentMode: UInt32, GodotEnum {
        case left = 0
        case center = 1
        case right = 2
        case max = 3

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Left", 0),
            ("Center", 1),
            ("Right", 2),
            ("Max", 3),]
        }
    }

    public enum CloseButtonDisplayPolicy: UInt32, GodotEnum {
        case showNever = 0
        case showActiveOnly = 1
        case showAlways = 2
        case max = 3

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Show Never", 0),
            ("Show Active Only", 1),
            ("Show Always", 2),
            ("Max", 3),]
        }
    }

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

    public struct TabRmbClickedSignalInput: Godot.SignalInput {
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

    public func tabRmbClicked(
        tab: Int
    ) {
        _ = tabRmbClickedSignal.emit(.init(tab: tab))
    }

    public lazy var tabRmbClickedSignal: Godot.SignalEmitter<TabRmbClickedSignalInput> = {
        .init(object: self, signalName: "tab_rmb_clicked") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<TabRmbClickedSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(tab: Int.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<TabRmbClickedSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<TabRmbClickedSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct TabClosePressedSignalInput: Godot.SignalInput {
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

    public func tabClosePressed(
        tab: Int
    ) {
        _ = tabClosePressedSignal.emit(.init(tab: tab))
    }

    public lazy var tabClosePressedSignal: Godot.SignalEmitter<TabClosePressedSignalInput> = {
        .init(object: self, signalName: "tab_close_pressed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<TabClosePressedSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(tab: Int.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<TabClosePressedSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<TabClosePressedSignalInput>> .fromOpaque(callablePtr!)
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

    internal static var __method_binding_set_tab_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tab_count").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    private func __setTabCount(
        _ count: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: count) { __ptr_count in
            withUnsafeArgumentPackPointer(__ptr_count) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_tab_count,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_tab_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tab_count").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    private func __getTabCount() -> Int32 {
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
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_current_tab").withUnsafeOpaquePointer { __ptr__method_name in
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
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_current_tab").withUnsafeOpaquePointer { __ptr__method_name in
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
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_previous_tab").withUnsafeOpaquePointer { __ptr__method_name in
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
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "select_previous_available").withUnsafeOpaquePointer { __ptr__method_name in
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
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "select_next_available").withUnsafeOpaquePointer { __ptr__method_name in
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

    internal static var __method_binding_set_tab_title: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tab_title").withUnsafeOpaquePointer { __ptr__method_name in
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
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tab_title").withUnsafeOpaquePointer { __ptr__method_name in
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

    internal static var __method_binding_set_tab_text_direction: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tab_text_direction").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1707680378)!
        }
        }
    }()

    public func setTabTextDirection(
        tabIdx: Int32,
        direction: Godot.Control.TextDirection
    ) {
        withTransferrableUnsafeRawPointer(to: tabIdx) { __ptr_tabIdx in
            withTransferrableUnsafeRawPointer(to: direction) { __ptr_direction in
                withUnsafeArgumentPackPointer(__ptr_tabIdx, __ptr_direction) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_tab_text_direction,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_tab_text_direction: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tab_text_direction").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4235602388)!
        }
        }
    }()

    public func tabTextDirection(
        tabIdx: Int32
    ) -> Godot.Control.TextDirection {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: tabIdx) { __ptr_tabIdx in
                withUnsafeArgumentPackPointer(__ptr_tabIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_tab_text_direction,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_tab_language: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tab_language").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 501894301)!
        }
        }
    }()

    public func setTabLanguage(
        tabIdx: Int32,
        language: Godot.GodotString
    ) {
        withTransferrableUnsafeRawPointer(to: tabIdx) { __ptr_tabIdx in
            withTransferrableUnsafeRawPointer(to: language) { __ptr_language in
                withUnsafeArgumentPackPointer(__ptr_tabIdx, __ptr_language) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_tab_language,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_tab_language: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tab_language").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 844755477)!
        }
        }
    }()

    public func tabLanguage(
        tabIdx: Int32
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: tabIdx) { __ptr_tabIdx in
                withUnsafeArgumentPackPointer(__ptr_tabIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_tab_language,
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
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tab_icon").withUnsafeOpaquePointer { __ptr__method_name in
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
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tab_icon").withUnsafeOpaquePointer { __ptr__method_name in
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

    internal static var __method_binding_set_tab_icon_max_width: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tab_icon_max_width").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()

    public func setTabIconMaxWidth(
        tabIdx: Int32,
        width: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: tabIdx) { __ptr_tabIdx in
            withTransferrableUnsafeRawPointer(to: width) { __ptr_width in
                withUnsafeArgumentPackPointer(__ptr_tabIdx, __ptr_width) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_tab_icon_max_width,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_tab_icon_max_width: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tab_icon_max_width").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()

    public func tabIconMaxWidth(
        tabIdx: Int32
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: tabIdx) { __ptr_tabIdx in
                withUnsafeArgumentPackPointer(__ptr_tabIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_tab_icon_max_width,
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
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tab_button_icon").withUnsafeOpaquePointer { __ptr__method_name in
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
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tab_button_icon").withUnsafeOpaquePointer { __ptr__method_name in
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

    internal static var __method_binding_set_tab_disabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tab_disabled").withUnsafeOpaquePointer { __ptr__method_name in
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
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_tab_disabled").withUnsafeOpaquePointer { __ptr__method_name in
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
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tab_hidden").withUnsafeOpaquePointer { __ptr__method_name in
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
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_tab_hidden").withUnsafeOpaquePointer { __ptr__method_name in
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
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tab_metadata").withUnsafeOpaquePointer { __ptr__method_name in
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
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tab_metadata").withUnsafeOpaquePointer { __ptr__method_name in
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

    internal static var __method_binding_remove_tab: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_tab").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    public func removeTab(
        tabIdx: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: tabIdx) { __ptr_tabIdx in
            withUnsafeArgumentPackPointer(__ptr_tabIdx) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_remove_tab,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_add_tab: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_tab").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1465444425)!
        }
        }
    }()

    public func addTab(
        title: Godot.GodotString = "",
        icon: Godot.Texture2D? = nil
    ) {
        withTransferrableUnsafeRawPointer(to: title) { __ptr_title in
            withTransferrableUnsafeRawPointer(to: icon) { __ptr_icon in
                withUnsafePointer(to: __ptr_icon) { _ptr___ptr_icon in
                    withUnsafeArgumentPackPointer(__ptr_title, _ptr___ptr_icon) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_add_tab,
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

    internal static var __method_binding_get_tab_idx_at_point: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tab_idx_at_point").withUnsafeOpaquePointer { __ptr__method_name in
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

    internal static var __method_binding_set_tab_alignment: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tab_alignment").withUnsafeOpaquePointer { __ptr__method_name in
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
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tab_alignment").withUnsafeOpaquePointer { __ptr__method_name in
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
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_clip_tabs").withUnsafeOpaquePointer { __ptr__method_name in
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
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_clip_tabs").withUnsafeOpaquePointer { __ptr__method_name in
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

    internal static var __method_binding_get_tab_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tab_offset").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    public func tabOffset() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_tab_offset,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_offset_buttons_visible: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_offset_buttons_visible").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    public func offsetButtonsVisible() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_offset_buttons_visible,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_ensure_tab_visible: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "ensure_tab_visible").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    public func ensureTabVisible(
        idx: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: idx) { __ptr_idx in
            withUnsafeArgumentPackPointer(__ptr_idx) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_ensure_tab_visible,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_tab_rect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tab_rect").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3327874267)!
        }
        }
    }()

    public func tabRect(
        tabIdx: Int32
    ) -> Godot.Rect2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: tabIdx) { __ptr_tabIdx in
                withUnsafeArgumentPackPointer(__ptr_tabIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_tab_rect,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_move_tab: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "move_tab").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()

    public func moveTab(
        from: Int32,
        to: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
            withTransferrableUnsafeRawPointer(to: to) { __ptr_to in
                withUnsafeArgumentPackPointer(__ptr_from, __ptr_to) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_move_tab,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_tab_close_display_policy: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tab_close_display_policy").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2212906737)!
        }
        }
    }()

    private func __setTabCloseDisplayPolicy(
        _ policy: Godot.TabBar.CloseButtonDisplayPolicy
    ) {
        withTransferrableUnsafeRawPointer(to: policy) { __ptr_policy in
            withUnsafeArgumentPackPointer(__ptr_policy) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_tab_close_display_policy,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_tab_close_display_policy: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tab_close_display_policy").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2956568028)!
        }
        }
    }()

    private func __getTabCloseDisplayPolicy() -> Godot.TabBar.CloseButtonDisplayPolicy {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_tab_close_display_policy,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_max_tab_width: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_max_tab_width").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    private func __setMaxTabWidth(
        _ width: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: width) { __ptr_width in
            withUnsafeArgumentPackPointer(__ptr_width) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_max_tab_width,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_max_tab_width: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_max_tab_width").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    private func __getMaxTabWidth() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_max_tab_width,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_scrolling_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_scrolling_enabled").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setScrollingEnabled(
        _ enabled: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: enabled) { __ptr_enabled in
            withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_scrolling_enabled,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_scrolling_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_scrolling_enabled").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __getScrollingEnabled() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_scrolling_enabled,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_drag_to_rearrange_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_drag_to_rearrange_enabled").withUnsafeOpaquePointer { __ptr__method_name in
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
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_drag_to_rearrange_enabled").withUnsafeOpaquePointer { __ptr__method_name in
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
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tabs_rearrange_group").withUnsafeOpaquePointer { __ptr__method_name in
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
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tabs_rearrange_group").withUnsafeOpaquePointer { __ptr__method_name in
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

    internal static var __method_binding_set_scroll_to_selected: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_scroll_to_selected").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setScrollToSelected(
        enabled: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: enabled) { __ptr_enabled in
            withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_scroll_to_selected,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_scroll_to_selected: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_scroll_to_selected").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __getScrollToSelected() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_scroll_to_selected,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_select_with_rmb: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_select_with_rmb").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setSelectWithRmb(
        enabled: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: enabled) { __ptr_enabled in
            withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_select_with_rmb,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_select_with_rmb: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_select_with_rmb").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __getSelectWithRmb() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_select_with_rmb,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_clear_tabs: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_tabs").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func clearTabs() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_clear_tabs,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    public var tabCount: Int32 {
        get {
            __getTabCount()
        }
        set {
            __setTabCount(
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

    public var tabCloseDisplayPolicy: Godot.TabBar.CloseButtonDisplayPolicy {
        get {
            __getTabCloseDisplayPolicy()
        }
        set {
            __setTabCloseDisplayPolicy(
                newValue
            )
        }
    }

    public var maxTabWidth: Int32 {
        get {
            __getMaxTabWidth()
        }
        set {
            __setMaxTabWidth(
                newValue
            )
        }
    }

    public var scrollingEnabled: Bool {
        get {
            __getScrollingEnabled()
        }
        set {
            __setScrollingEnabled(
                newValue
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

    public var scrollToSelected: Bool {
        get {
            __getScrollToSelected()
        }
        set {
            __setScrollToSelected(
                enabled: newValue
            )
        }
    }

    public var selectWithRmb: Bool {
        get {
            __getSelectWithRmb()
        }
        set {
            __setSelectWithRmb(
                enabled: newValue
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