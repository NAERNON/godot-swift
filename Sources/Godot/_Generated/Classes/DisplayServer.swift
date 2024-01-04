//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class DisplayServer: Object {
    public enum Feature: UInt32, GodotEnum {
        case globalMenu = 0
        case subwindows = 1
        case touchscreen = 2
        case mouse = 3
        case mouseWarp = 4
        case clipboard = 5
        case virtualKeyboard = 6
        case cursorShape = 7
        case customCursorShape = 8
        case nativeDialog = 9
        case ime = 10
        case windowTransparency = 11
        case hidpi = 12
        case icon = 13
        case nativeIcon = 14
        case orientation = 15
        case swapBuffers = 16
        case clipboardPrimary = 18
        case textToSpeech = 19
        case extendToTitle = 20
        case screenCapture = 21
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Global Menu", 0),
            ("Subwindows", 1),
            ("Touchscreen", 2),
            ("Mouse", 3),
            ("Mouse Warp", 4),
            ("Clipboard", 5),
            ("Virtual Keyboard", 6),
            ("Cursor Shape", 7),
            ("Custom Cursor Shape", 8),
            ("Native Dialog", 9),
            ("Ime", 10),
            ("Window Transparency", 11),
            ("Hidpi", 12),
            ("Icon", 13),
            ("Native Icon", 14),
            ("Orientation", 15),
            ("Swap Buffers", 16),
            ("Clipboard Primary", 18),
            ("Text To Speech", 19),
            ("Extend To Title", 20),
            ("Screen Capture", 21),]
        }
    }
    public enum MouseMode: UInt32, GodotEnum {
        case visible = 0
        case hidden = 1
        case captured = 2
        case confined = 3
        case confinedHidden = 4
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Visible", 0),
            ("Hidden", 1),
            ("Captured", 2),
            ("Confined", 3),
            ("Confined Hidden", 4),]
        }
    }
    public enum ScreenOrientation: UInt32, GodotEnum {
        case landscape = 0
        case portrait = 1
        case reverseLandscape = 2
        case reversePortrait = 3
        case sensorLandscape = 4
        case sensorPortrait = 5
        case sensor = 6
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Landscape", 0),
            ("Portrait", 1),
            ("Reverse Landscape", 2),
            ("Reverse Portrait", 3),
            ("Sensor Landscape", 4),
            ("Sensor Portrait", 5),
            ("Sensor", 6),]
        }
    }
    public enum VirtualKeyboardType: UInt32, GodotEnum {
        case `default` = 0
        case multiline = 1
        case number = 2
        case numberDecimal = 3
        case phone = 4
        case emailAddress = 5
        case password = 6
        case url = 7
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Default", 0),
            ("Multiline", 1),
            ("Number", 2),
            ("Number Decimal", 3),
            ("Phone", 4),
            ("Email Address", 5),
            ("Password", 6),
            ("Url", 7),]
        }
    }
    public enum CursorShape: UInt32, GodotEnum {
        case arrow = 0
        case ibeam = 1
        case pointingHand = 2
        case cross = 3
        case wait = 4
        case busy = 5
        case drag = 6
        case canDrop = 7
        case forbidden = 8
        case vsize = 9
        case hsize = 10
        case bdiagsize = 11
        case fdiagsize = 12
        case move = 13
        case vsplit = 14
        case hsplit = 15
        case help = 16
        case max = 17
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Arrow", 0),
            ("Ibeam", 1),
            ("Pointing Hand", 2),
            ("Cross", 3),
            ("Wait", 4),
            ("Busy", 5),
            ("Drag", 6),
            ("Can Drop", 7),
            ("Forbidden", 8),
            ("Vsize", 9),
            ("Hsize", 10),
            ("Bdiagsize", 11),
            ("Fdiagsize", 12),
            ("Move", 13),
            ("Vsplit", 14),
            ("Hsplit", 15),
            ("Help", 16),
            ("Max", 17),]
        }
    }
    public enum FileDialogMode: UInt32, GodotEnum {
        case openFile = 0
        case openFiles = 1
        case openDir = 2
        case openAny = 3
        case saveFile = 4
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Open File", 0),
            ("Open Files", 1),
            ("Open Dir", 2),
            ("Open Any", 3),
            ("Save File", 4),]
        }
    }
    public enum WindowMode: UInt32, GodotEnum {
        case windowed = 0
        case minimized = 1
        case maximized = 2
        case fullscreen = 3
        case exclusiveFullscreen = 4
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Windowed", 0),
            ("Minimized", 1),
            ("Maximized", 2),
            ("Fullscreen", 3),
            ("Exclusive Fullscreen", 4),]
        }
    }
    public enum WindowFlags: UInt32, GodotEnum {
        case resizeDisabled = 0
        case borderless = 1
        case alwaysOnTop = 2
        case transparent = 3
        case noFocus = 4
        case popup = 5
        case extendToTitle = 6
        case mousePassthrough = 7
        case max = 8
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Resize Disabled", 0),
            ("Borderless", 1),
            ("Always On Top", 2),
            ("Transparent", 3),
            ("No Focus", 4),
            ("Popup", 5),
            ("Extend To Title", 6),
            ("Mouse Passthrough", 7),
            ("Max", 8),]
        }
    }
    public enum WindowEvent: UInt32, GodotEnum {
        case mouseEnter = 0
        case mouseExit = 1
        case focusIn = 2
        case focusOut = 3
        case closeRequest = 4
        case goBackRequest = 5
        case dpiChange = 6
        case titlebarChange = 7
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Mouse Enter", 0),
            ("Mouse Exit", 1),
            ("Focus In", 2),
            ("Focus Out", 3),
            ("Close Request", 4),
            ("Go Back Request", 5),
            ("Dpi Change", 6),
            ("Titlebar Change", 7),]
        }
    }
    public enum VSyncMode: UInt32, GodotEnum {
        case disabled = 0
        case enabled = 1
        case adaptive = 2
        case mailbox = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Disabled", 0),
            ("Enabled", 1),
            ("Adaptive", 2),
            ("Mailbox", 3),]
        }
    }
    public enum HandleType: UInt32, GodotEnum {
        case displayHandle = 0
        case windowHandle = 1
        case windowView = 2
        case openglContext = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Display Handle", 0),
            ("Window Handle", 1),
            ("Window View", 2),
            ("Opengl Context", 3),]
        }
    }
    public enum TTSUtteranceEvent: UInt32, GodotEnum {
        case started = 0
        case ended = 1
        case canceled = 2
        case boundary = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Started", 0),
            ("Ended", 1),
            ("Canceled", 2),
            ("Boundary", 3),]
        }
    }

    public static let screenWithMouseFocus: Int = -4
    public static let screenWithKeyboardFocus: Int = -3
    public static let screenPrimary: Int = -2
    public static let screenOfMainWindow: Int = -1
    public static let mainWindowID: Int = 0
    public static let invalidWindowID: Int = -1

    internal static var __method_binding_has_feature: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_feature").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 334065950)!
        }
        }
    }()
    public func hasFeature(_ feature: Godot.DisplayServer.Feature) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        feature.withGodotUnsafeRawPointer { __ptr_feature in
        withUnsafeArgumentPackPointer(__ptr_feature) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_feature,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    public func name() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_name,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_global_menu_set_popup_callbacks: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_set_popup_callbacks").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3893727526)!
        }
        }
    }()
    public func globalMenuSetPopupCallbacks(menuRoot: Godot.GodotString, openCallback: Godot.Callable, closeCallback: Godot.Callable) {
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        openCallback.withGodotUnsafeRawPointer { __ptr_openCallback in
        closeCallback.withGodotUnsafeRawPointer { __ptr_closeCallback in
        withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_openCallback, __ptr_closeCallback) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_set_popup_callbacks,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_global_menu_add_submenu_item: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_add_submenu_item").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2828985934)!
        }
        }
    }()
    public func globalMenuAddSubmenuItem(menuRoot: Godot.GodotString, label: Godot.GodotString, submenu: Godot.GodotString, index: Int32 = -1) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        label.withGodotUnsafeRawPointer { __ptr_label in
        submenu.withGodotUnsafeRawPointer { __ptr_submenu in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_label, __ptr_submenu, __ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_add_submenu_item,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}
    }

    internal static var __method_binding_global_menu_add_item: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_add_item").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3401266716)!
        }
        }
    }()
    public func globalMenuAddItem<Value: VariantStorableIn>(menuRoot: Godot.GodotString, label: Godot.GodotString, callback: Godot.Callable = Callable(), keyCallback: Godot.Callable = Callable(), tag: Value = Variant(), accelerator: Godot.Key = Key(rawValue: 0)!, index: Int32 = -1) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        label.withGodotUnsafeRawPointer { __ptr_label in
        callback.withGodotUnsafeRawPointer { __ptr_callback in
        keyCallback.withGodotUnsafeRawPointer { __ptr_keyCallback in
        Godot.Variant.withStorageUnsafeRawPointer(to: tag) { __ptr_tag in
        accelerator.withGodotUnsafeRawPointer { __ptr_accelerator in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_label, __ptr_callback, __ptr_keyCallback, __ptr_tag, __ptr_accelerator, __ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_add_item,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}}}
    }

    internal static var __method_binding_global_menu_add_check_item: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_add_check_item").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3401266716)!
        }
        }
    }()
    public func globalMenuAddCheckItem<Value: VariantStorableIn>(menuRoot: Godot.GodotString, label: Godot.GodotString, callback: Godot.Callable = Callable(), keyCallback: Godot.Callable = Callable(), tag: Value = Variant(), accelerator: Godot.Key = Key(rawValue: 0)!, index: Int32 = -1) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        label.withGodotUnsafeRawPointer { __ptr_label in
        callback.withGodotUnsafeRawPointer { __ptr_callback in
        keyCallback.withGodotUnsafeRawPointer { __ptr_keyCallback in
        Godot.Variant.withStorageUnsafeRawPointer(to: tag) { __ptr_tag in
        accelerator.withGodotUnsafeRawPointer { __ptr_accelerator in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_label, __ptr_callback, __ptr_keyCallback, __ptr_tag, __ptr_accelerator, __ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_add_check_item,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}}}
    }

    internal static var __method_binding_global_menu_add_icon_item: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_add_icon_item").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4245856523)!
        }
        }
    }()
    public func globalMenuAddIconItem<Value: VariantStorableIn>(menuRoot: Godot.GodotString, icon: Godot.Texture2D?, label: Godot.GodotString, callback: Godot.Callable = Callable(), keyCallback: Godot.Callable = Callable(), tag: Value = Variant(), accelerator: Godot.Key = Key(rawValue: 0)!, index: Int32 = -1) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        icon.withGodotUnsafeRawPointer { __ptr_icon in
        withUnsafePointer(to: __ptr_icon) { _ptr___ptr_icon in
        label.withGodotUnsafeRawPointer { __ptr_label in
        callback.withGodotUnsafeRawPointer { __ptr_callback in
        keyCallback.withGodotUnsafeRawPointer { __ptr_keyCallback in
        Godot.Variant.withStorageUnsafeRawPointer(to: tag) { __ptr_tag in
        accelerator.withGodotUnsafeRawPointer { __ptr_accelerator in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_menuRoot, _ptr___ptr_icon, __ptr_label, __ptr_callback, __ptr_keyCallback, __ptr_tag, __ptr_accelerator, __ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_add_icon_item,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}}}}}
    }

    internal static var __method_binding_global_menu_add_icon_check_item: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_add_icon_check_item").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4245856523)!
        }
        }
    }()
    public func globalMenuAddIconCheckItem<Value: VariantStorableIn>(menuRoot: Godot.GodotString, icon: Godot.Texture2D?, label: Godot.GodotString, callback: Godot.Callable = Callable(), keyCallback: Godot.Callable = Callable(), tag: Value = Variant(), accelerator: Godot.Key = Key(rawValue: 0)!, index: Int32 = -1) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        icon.withGodotUnsafeRawPointer { __ptr_icon in
        withUnsafePointer(to: __ptr_icon) { _ptr___ptr_icon in
        label.withGodotUnsafeRawPointer { __ptr_label in
        callback.withGodotUnsafeRawPointer { __ptr_callback in
        keyCallback.withGodotUnsafeRawPointer { __ptr_keyCallback in
        Godot.Variant.withStorageUnsafeRawPointer(to: tag) { __ptr_tag in
        accelerator.withGodotUnsafeRawPointer { __ptr_accelerator in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_menuRoot, _ptr___ptr_icon, __ptr_label, __ptr_callback, __ptr_keyCallback, __ptr_tag, __ptr_accelerator, __ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_add_icon_check_item,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}}}}}
    }

    internal static var __method_binding_global_menu_add_radio_check_item: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_add_radio_check_item").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3401266716)!
        }
        }
    }()
    public func globalMenuAddRadioCheckItem<Value: VariantStorableIn>(menuRoot: Godot.GodotString, label: Godot.GodotString, callback: Godot.Callable = Callable(), keyCallback: Godot.Callable = Callable(), tag: Value = Variant(), accelerator: Godot.Key = Key(rawValue: 0)!, index: Int32 = -1) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        label.withGodotUnsafeRawPointer { __ptr_label in
        callback.withGodotUnsafeRawPointer { __ptr_callback in
        keyCallback.withGodotUnsafeRawPointer { __ptr_keyCallback in
        Godot.Variant.withStorageUnsafeRawPointer(to: tag) { __ptr_tag in
        accelerator.withGodotUnsafeRawPointer { __ptr_accelerator in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_label, __ptr_callback, __ptr_keyCallback, __ptr_tag, __ptr_accelerator, __ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_add_radio_check_item,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}}}
    }

    internal static var __method_binding_global_menu_add_icon_radio_check_item: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_add_icon_radio_check_item").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4245856523)!
        }
        }
    }()
    public func globalMenuAddIconRadioCheckItem<Value: VariantStorableIn>(menuRoot: Godot.GodotString, icon: Godot.Texture2D?, label: Godot.GodotString, callback: Godot.Callable = Callable(), keyCallback: Godot.Callable = Callable(), tag: Value = Variant(), accelerator: Godot.Key = Key(rawValue: 0)!, index: Int32 = -1) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        icon.withGodotUnsafeRawPointer { __ptr_icon in
        withUnsafePointer(to: __ptr_icon) { _ptr___ptr_icon in
        label.withGodotUnsafeRawPointer { __ptr_label in
        callback.withGodotUnsafeRawPointer { __ptr_callback in
        keyCallback.withGodotUnsafeRawPointer { __ptr_keyCallback in
        Godot.Variant.withStorageUnsafeRawPointer(to: tag) { __ptr_tag in
        accelerator.withGodotUnsafeRawPointer { __ptr_accelerator in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_menuRoot, _ptr___ptr_icon, __ptr_label, __ptr_callback, __ptr_keyCallback, __ptr_tag, __ptr_accelerator, __ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_add_icon_radio_check_item,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}}}}}
    }

    internal static var __method_binding_global_menu_add_multistate_item: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_add_multistate_item").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3431222859)!
        }
        }
    }()
    public func globalMenuAddMultistateItem<Value: VariantStorableIn>(menuRoot: Godot.GodotString, label: Godot.GodotString, maxStates: Int32, defaultState: Int32, callback: Godot.Callable = Callable(), keyCallback: Godot.Callable = Callable(), tag: Value = Variant(), accelerator: Godot.Key = Key(rawValue: 0)!, index: Int32 = -1) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        label.withGodotUnsafeRawPointer { __ptr_label in
        maxStates.withGodotUnsafeRawPointer { __ptr_maxStates in
        defaultState.withGodotUnsafeRawPointer { __ptr_defaultState in
        callback.withGodotUnsafeRawPointer { __ptr_callback in
        keyCallback.withGodotUnsafeRawPointer { __ptr_keyCallback in
        Godot.Variant.withStorageUnsafeRawPointer(to: tag) { __ptr_tag in
        accelerator.withGodotUnsafeRawPointer { __ptr_accelerator in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_label, __ptr_maxStates, __ptr_defaultState, __ptr_callback, __ptr_keyCallback, __ptr_tag, __ptr_accelerator, __ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_add_multistate_item,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}}}}}
    }

    internal static var __method_binding_global_menu_add_separator: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_add_separator").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3214812433)!
        }
        }
    }()
    public func globalMenuAddSeparator(menuRoot: Godot.GodotString, index: Int32 = -1) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_add_separator,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_global_menu_get_item_index_from_text: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_get_item_index_from_text").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2878152881)!
        }
        }
    }()
    public func globalMenuGetItemIndexFromText(menuRoot: Godot.GodotString, text: Godot.GodotString) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        text.withGodotUnsafeRawPointer { __ptr_text in
        withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_text) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_get_item_index_from_text,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_global_menu_get_item_index_from_tag: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_get_item_index_from_tag").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2941063483)!
        }
        }
    }()
    public func globalMenuGetItemIndexFromTag<Value: VariantStorableIn>(menuRoot: Godot.GodotString, tag: Value) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        Godot.Variant.withStorageUnsafeRawPointer(to: tag) { __ptr_tag in
        withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_tag) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_get_item_index_from_tag,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_global_menu_is_item_checked: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_is_item_checked").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3511468594)!
        }
        }
    }()
    public func globalMenuIsItemChecked(menuRoot: Godot.GodotString, idx: Int32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_is_item_checked,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_global_menu_is_item_checkable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_is_item_checkable").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3511468594)!
        }
        }
    }()
    public func globalMenuIsItemCheckable(menuRoot: Godot.GodotString, idx: Int32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_is_item_checkable,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_global_menu_is_item_radio_checkable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_is_item_radio_checkable").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3511468594)!
        }
        }
    }()
    public func globalMenuIsItemRadioCheckable(menuRoot: Godot.GodotString, idx: Int32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_is_item_radio_checkable,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_global_menu_get_item_callback: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_get_item_callback").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 748666903)!
        }
        }
    }()
    public func globalMenuGetItemCallback(menuRoot: Godot.GodotString, idx: Int32) -> Godot.Callable {
        Godot.Callable.fromMutatingGodotUnsafePointer { __temporary in
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_get_item_callback,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_global_menu_get_item_key_callback: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_get_item_key_callback").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 748666903)!
        }
        }
    }()
    public func globalMenuGetItemKeyCallback(menuRoot: Godot.GodotString, idx: Int32) -> Godot.Callable {
        Godot.Callable.fromMutatingGodotUnsafePointer { __temporary in
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_get_item_key_callback,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_global_menu_get_item_tag: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_get_item_tag").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 330672633)!
        }
        }
    }()
    public func globalMenuGetItemTag(menuRoot: Godot.GodotString, idx: Int32) -> Godot.Variant {
        Godot.Variant.fromMutatingGodotUnsafePointer { __temporary in
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_get_item_tag,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_global_menu_get_item_text: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_get_item_text").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 591067909)!
        }
        }
    }()
    public func globalMenuGetItemText(menuRoot: Godot.GodotString, idx: Int32) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_get_item_text,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_global_menu_get_item_submenu: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_get_item_submenu").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 591067909)!
        }
        }
    }()
    public func globalMenuGetItemSubmenu(menuRoot: Godot.GodotString, idx: Int32) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_get_item_submenu,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_global_menu_get_item_accelerator: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_get_item_accelerator").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 936065394)!
        }
        }
    }()
    public func globalMenuGetItemAccelerator(menuRoot: Godot.GodotString, idx: Int32) -> Godot.Key {
        Godot.Key.fromMutatingGodotUnsafePointer { __temporary in
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_get_item_accelerator,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_global_menu_is_item_disabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_is_item_disabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3511468594)!
        }
        }
    }()
    public func globalMenuIsItemDisabled(menuRoot: Godot.GodotString, idx: Int32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_is_item_disabled,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_global_menu_is_item_hidden: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_is_item_hidden").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3511468594)!
        }
        }
    }()
    public func globalMenuIsItemHidden(menuRoot: Godot.GodotString, idx: Int32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_is_item_hidden,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_global_menu_get_item_tooltip: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_get_item_tooltip").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 591067909)!
        }
        }
    }()
    public func globalMenuGetItemTooltip(menuRoot: Godot.GodotString, idx: Int32) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_get_item_tooltip,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_global_menu_get_item_state: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_get_item_state").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3422818498)!
        }
        }
    }()
    public func globalMenuGetItemState(menuRoot: Godot.GodotString, idx: Int32) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_get_item_state,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_global_menu_get_item_max_states: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_get_item_max_states").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3422818498)!
        }
        }
    }()
    public func globalMenuGetItemMaxStates(menuRoot: Godot.GodotString, idx: Int32) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_get_item_max_states,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_global_menu_get_item_icon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_get_item_icon").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3591713183)!
        }
        }
    }()
    public func globalMenuGetItemIcon(menuRoot: Godot.GodotString, idx: Int32) -> Godot.Texture2D? {
        Godot.Texture2D?.fromMutatingGodotUnsafePointer { __temporary in
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_get_item_icon,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_global_menu_get_item_indentation_level: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_get_item_indentation_level").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3422818498)!
        }
        }
    }()
    public func globalMenuGetItemIndentationLevel(menuRoot: Godot.GodotString, idx: Int32) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_get_item_indentation_level,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_global_menu_set_item_checked: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_set_item_checked").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4108344793)!
        }
        }
    }()
    public func globalMenuSetItemChecked(menuRoot: Godot.GodotString, idx: Int32, checked: Bool) {
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        checked.withGodotUnsafeRawPointer { __ptr_checked in
        withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx, __ptr_checked) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_set_item_checked,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_global_menu_set_item_checkable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_set_item_checkable").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4108344793)!
        }
        }
    }()
    public func globalMenuSetItemCheckable(menuRoot: Godot.GodotString, idx: Int32, checkable: Bool) {
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        checkable.withGodotUnsafeRawPointer { __ptr_checkable in
        withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx, __ptr_checkable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_set_item_checkable,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_global_menu_set_item_radio_checkable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_set_item_radio_checkable").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4108344793)!
        }
        }
    }()
    public func globalMenuSetItemRadioCheckable(menuRoot: Godot.GodotString, idx: Int32, checkable: Bool) {
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        checkable.withGodotUnsafeRawPointer { __ptr_checkable in
        withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx, __ptr_checkable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_set_item_radio_checkable,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_global_menu_set_item_callback: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_set_item_callback").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3809915389)!
        }
        }
    }()
    public func globalMenuSetItemCallback(menuRoot: Godot.GodotString, idx: Int32, callback: Godot.Callable) {
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        callback.withGodotUnsafeRawPointer { __ptr_callback in
        withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx, __ptr_callback) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_set_item_callback,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_global_menu_set_item_hover_callbacks: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_set_item_hover_callbacks").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3809915389)!
        }
        }
    }()
    public func globalMenuSetItemHoverCallbacks(menuRoot: Godot.GodotString, idx: Int32, callback: Godot.Callable) {
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        callback.withGodotUnsafeRawPointer { __ptr_callback in
        withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx, __ptr_callback) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_set_item_hover_callbacks,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_global_menu_set_item_key_callback: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_set_item_key_callback").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3809915389)!
        }
        }
    }()
    public func globalMenuSetItemKeyCallback(menuRoot: Godot.GodotString, idx: Int32, keyCallback: Godot.Callable) {
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        keyCallback.withGodotUnsafeRawPointer { __ptr_keyCallback in
        withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx, __ptr_keyCallback) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_set_item_key_callback,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_global_menu_set_item_tag: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_set_item_tag").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 453659863)!
        }
        }
    }()
    public func globalMenuSetItemTag<Value: VariantStorableIn>(menuRoot: Godot.GodotString, idx: Int32, tag: Value) {
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        Godot.Variant.withStorageUnsafeRawPointer(to: tag) { __ptr_tag in
        withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx, __ptr_tag) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_set_item_tag,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_global_menu_set_item_text: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_set_item_text").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 965966136)!
        }
        }
    }()
    public func globalMenuSetItemText(menuRoot: Godot.GodotString, idx: Int32, text: Godot.GodotString) {
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        text.withGodotUnsafeRawPointer { __ptr_text in
        withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx, __ptr_text) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_set_item_text,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_global_menu_set_item_submenu: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_set_item_submenu").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 965966136)!
        }
        }
    }()
    public func globalMenuSetItemSubmenu(menuRoot: Godot.GodotString, idx: Int32, submenu: Godot.GodotString) {
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        submenu.withGodotUnsafeRawPointer { __ptr_submenu in
        withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx, __ptr_submenu) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_set_item_submenu,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_global_menu_set_item_accelerator: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_set_item_accelerator").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 566943293)!
        }
        }
    }()
    public func globalMenuSetItemAccelerator(menuRoot: Godot.GodotString, idx: Int32, keycode: Godot.Key) {
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        keycode.withGodotUnsafeRawPointer { __ptr_keycode in
        withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx, __ptr_keycode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_set_item_accelerator,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_global_menu_set_item_disabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_set_item_disabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4108344793)!
        }
        }
    }()
    public func globalMenuSetItemDisabled(menuRoot: Godot.GodotString, idx: Int32, disabled: Bool) {
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        disabled.withGodotUnsafeRawPointer { __ptr_disabled in
        withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx, __ptr_disabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_set_item_disabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_global_menu_set_item_hidden: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_set_item_hidden").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4108344793)!
        }
        }
    }()
    public func globalMenuSetItemHidden(menuRoot: Godot.GodotString, idx: Int32, hidden: Bool) {
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        hidden.withGodotUnsafeRawPointer { __ptr_hidden in
        withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx, __ptr_hidden) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_set_item_hidden,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_global_menu_set_item_tooltip: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_set_item_tooltip").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 965966136)!
        }
        }
    }()
    public func globalMenuSetItemTooltip(menuRoot: Godot.GodotString, idx: Int32, tooltip: Godot.GodotString) {
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        tooltip.withGodotUnsafeRawPointer { __ptr_tooltip in
        withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx, __ptr_tooltip) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_set_item_tooltip,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_global_menu_set_item_state: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_set_item_state").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3474840532)!
        }
        }
    }()
    public func globalMenuSetItemState(menuRoot: Godot.GodotString, idx: Int32, state: Int32) {
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        state.withGodotUnsafeRawPointer { __ptr_state in
        withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx, __ptr_state) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_set_item_state,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_global_menu_set_item_max_states: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_set_item_max_states").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3474840532)!
        }
        }
    }()
    public func globalMenuSetItemMaxStates(menuRoot: Godot.GodotString, idx: Int32, maxStates: Int32) {
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        maxStates.withGodotUnsafeRawPointer { __ptr_maxStates in
        withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx, __ptr_maxStates) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_set_item_max_states,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_global_menu_set_item_icon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_set_item_icon").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3201338066)!
        }
        }
    }()
    public func globalMenuSetItemIcon(menuRoot: Godot.GodotString, idx: Int32, icon: Godot.Texture2D?) {
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        icon.withGodotUnsafeRawPointer { __ptr_icon in
        withUnsafePointer(to: __ptr_icon) { _ptr___ptr_icon in
        withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx, _ptr___ptr_icon) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_set_item_icon,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    internal static var __method_binding_global_menu_set_item_indentation_level: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_set_item_indentation_level").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3474840532)!
        }
        }
    }()
    public func globalMenuSetItemIndentationLevel(menuRoot: Godot.GodotString, idx: Int32, level: Int32) {
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        level.withGodotUnsafeRawPointer { __ptr_level in
        withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx, __ptr_level) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_set_item_indentation_level,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_global_menu_get_item_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_get_item_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1321353865)!
        }
        }
    }()
    public func globalMenuGetItemCount(menuRoot: Godot.GodotString) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        withUnsafeArgumentPackPointer(__ptr_menuRoot) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_get_item_count,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_global_menu_remove_item: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_remove_item").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2956805083)!
        }
        }
    }()
    public func globalMenuRemoveItem(menuRoot: Godot.GodotString, idx: Int32) {
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_remove_item,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_global_menu_clear: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_clear").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func globalMenuClear(menuRoot: Godot.GodotString) {
        menuRoot.withGodotUnsafeRawPointer { __ptr_menuRoot in
        withUnsafeArgumentPackPointer(__ptr_menuRoot) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_menu_clear,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_tts_is_speaking: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "tts_is_speaking").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func ttsIsSpeaking() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_tts_is_speaking,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_tts_is_paused: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "tts_is_paused").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func ttsIsPaused() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_tts_is_paused,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_tts_get_voices: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "tts_get_voices").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()
    public func ttsGetVoices() -> Godot.GodotArray<Godot.AnyGodotDictionary> {
        Godot.GodotArray<Godot.AnyGodotDictionary>.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_tts_get_voices,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_tts_get_voices_for_language: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "tts_get_voices_for_language").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4291131558)!
        }
        }
    }()
    public func ttsGetVoicesForLanguage(_ language: Godot.GodotString) -> Godot.PackedStringArray {
        Godot.PackedStringArray.fromMutatingGodotUnsafePointer { __temporary in
        language.withGodotUnsafeRawPointer { __ptr_language in
        withUnsafeArgumentPackPointer(__ptr_language) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_tts_get_voices_for_language,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_tts_speak: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "tts_speak").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 903992738)!
        }
        }
    }()
    public func ttsSpeak(text: Godot.GodotString, voice: Godot.GodotString, volume: Int32 = 50, pitch: Double = 1.0, rate: Double = 1.0, utteranceID: Int32 = 0, interrupt: Bool = false) {
        text.withGodotUnsafeRawPointer { __ptr_text in
        voice.withGodotUnsafeRawPointer { __ptr_voice in
        volume.withGodotUnsafeRawPointer { __ptr_volume in
        pitch.withGodotUnsafeRawPointer { __ptr_pitch in
        rate.withGodotUnsafeRawPointer { __ptr_rate in
        utteranceID.withGodotUnsafeRawPointer { __ptr_utteranceID in
        interrupt.withGodotUnsafeRawPointer { __ptr_interrupt in
        withUnsafeArgumentPackPointer(__ptr_text, __ptr_voice, __ptr_volume, __ptr_pitch, __ptr_rate, __ptr_utteranceID, __ptr_interrupt) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_tts_speak,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}}
    }

    internal static var __method_binding_tts_pause: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "tts_pause").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func ttsPause() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_tts_pause,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_tts_resume: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "tts_resume").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func ttsResume() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_tts_resume,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_tts_stop: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "tts_stop").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func ttsStop() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_tts_stop,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_tts_set_utterance_callback: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "tts_set_utterance_callback").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 109679083)!
        }
        }
    }()
    public func ttsSetUtteranceCallback(event: Godot.DisplayServer.TTSUtteranceEvent, callable: Godot.Callable) {
        event.withGodotUnsafeRawPointer { __ptr_event in
        callable.withGodotUnsafeRawPointer { __ptr_callable in
        withUnsafeArgumentPackPointer(__ptr_event, __ptr_callable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_tts_set_utterance_callback,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_is_dark_mode_supported: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_dark_mode_supported").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func isDarkModeSupported() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_dark_mode_supported,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_is_dark_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_dark_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func isDarkMode() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_dark_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_accent_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_accent_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3444240500)!
        }
        }
    }()
    public func accentColor() -> Godot.Color {
        Godot.Color.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_accent_color,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_mouse_set_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "mouse_set_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 348288463)!
        }
        }
    }()
    public func mouseSetMode(mouseMode: Godot.DisplayServer.MouseMode) {
        mouseMode.withGodotUnsafeRawPointer { __ptr_mouseMode in
        withUnsafeArgumentPackPointer(__ptr_mouseMode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_mouse_set_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_mouse_get_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "mouse_get_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1353961651)!
        }
        }
    }()
    public func mouseGetMode() -> Godot.DisplayServer.MouseMode {
        Godot.DisplayServer.MouseMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_mouse_get_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_warp_mouse: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "warp_mouse").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1130785943)!
        }
        }
    }()
    public func warpMouse(position: Godot.Vector2i) {
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_warp_mouse,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_mouse_get_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "mouse_get_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3690982128)!
        }
        }
    }()
    public func mouseGetPosition() -> Godot.Vector2i {
        Godot.Vector2i.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_mouse_get_position,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_mouse_get_button_state: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "mouse_get_button_state").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2512161324)!
        }
        }
    }()
    public func mouseGetButtonState() -> Godot.MouseButtonMask {
        Godot.MouseButtonMask.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_mouse_get_button_state,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_clipboard_set: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clipboard_set").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func clipboardSet(clipboard: Godot.GodotString) {
        clipboard.withGodotUnsafeRawPointer { __ptr_clipboard in
        withUnsafeArgumentPackPointer(__ptr_clipboard) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_clipboard_set,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_clipboard_get: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clipboard_get").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    public func clipboardGet() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_clipboard_get,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_clipboard_get_image: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clipboard_get_image").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4190603485)!
        }
        }
    }()
    public func clipboardGetImage() -> Godot.Image? {
        Godot.Image?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_clipboard_get_image,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_clipboard_has: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clipboard_has").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func clipboardHas() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_clipboard_has,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_clipboard_has_image: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clipboard_has_image").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func clipboardHasImage() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_clipboard_has_image,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_clipboard_set_primary: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clipboard_set_primary").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func clipboardSetPrimary(clipboardPrimary: Godot.GodotString) {
        clipboardPrimary.withGodotUnsafeRawPointer { __ptr_clipboardPrimary in
        withUnsafeArgumentPackPointer(__ptr_clipboardPrimary) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_clipboard_set_primary,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_clipboard_get_primary: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clipboard_get_primary").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    public func clipboardGetPrimary() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_clipboard_get_primary,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_display_cutouts: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_display_cutouts").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()
    public func displayCutouts() -> Godot.GodotArray<Godot.Rect2> {
        Godot.GodotArray<Godot.Rect2>.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_display_cutouts,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_display_safe_area: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_display_safe_area").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 410525958)!
        }
        }
    }()
    public func displaySafeArea() -> Godot.Rect2i {
        Godot.Rect2i.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_display_safe_area,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_screen_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_screen_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func screenCount() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_screen_count,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_primary_screen: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_primary_screen").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func primaryScreen() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_primary_screen,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_keyboard_focus_screen: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_keyboard_focus_screen").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func keyboardFocusScreen() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_keyboard_focus_screen,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_screen_from_rect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_screen_from_rect").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 741354659)!
        }
        }
    }()
    public func screenFromRect(_ rect: Godot.Rect2) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        rect.withGodotUnsafeRawPointer { __ptr_rect in
        withUnsafeArgumentPackPointer(__ptr_rect) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_screen_from_rect,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_screen_get_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "screen_get_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1725937825)!
        }
        }
    }()
    public func screenGetPosition(screen: Int32 = -1) -> Godot.Vector2i {
        Godot.Vector2i.fromMutatingGodotUnsafePointer { __temporary in
        screen.withGodotUnsafeRawPointer { __ptr_screen in
        withUnsafeArgumentPackPointer(__ptr_screen) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_screen_get_position,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_screen_get_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "screen_get_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1725937825)!
        }
        }
    }()
    public func screenGetSize(screen: Int32 = -1) -> Godot.Vector2i {
        Godot.Vector2i.fromMutatingGodotUnsafePointer { __temporary in
        screen.withGodotUnsafeRawPointer { __ptr_screen in
        withUnsafeArgumentPackPointer(__ptr_screen) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_screen_get_size,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_screen_get_usable_rect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "screen_get_usable_rect").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2439012528)!
        }
        }
    }()
    public func screenGetUsableRect(screen: Int32 = -1) -> Godot.Rect2i {
        Godot.Rect2i.fromMutatingGodotUnsafePointer { __temporary in
        screen.withGodotUnsafeRawPointer { __ptr_screen in
        withUnsafeArgumentPackPointer(__ptr_screen) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_screen_get_usable_rect,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_screen_get_dpi: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "screen_get_dpi").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 181039630)!
        }
        }
    }()
    public func screenGetDpi(screen: Int32 = -1) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        screen.withGodotUnsafeRawPointer { __ptr_screen in
        withUnsafeArgumentPackPointer(__ptr_screen) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_screen_get_dpi,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_screen_get_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "screen_get_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 909105437)!
        }
        }
    }()
    public func screenGetScale(screen: Int32 = -1) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        screen.withGodotUnsafeRawPointer { __ptr_screen in
        withUnsafeArgumentPackPointer(__ptr_screen) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_screen_get_scale,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_is_touchscreen_available: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_touchscreen_available").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3323674545)!
        }
        }
    }()
    public func isTouchscreenAvailable() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_touchscreen_available,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_screen_get_max_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "screen_get_max_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    public func screenGetMaxScale() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_screen_get_max_scale,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_screen_get_refresh_rate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "screen_get_refresh_rate").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 909105437)!
        }
        }
    }()
    public func screenGetRefreshRate(screen: Int32 = -1) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        screen.withGodotUnsafeRawPointer { __ptr_screen in
        withUnsafeArgumentPackPointer(__ptr_screen) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_screen_get_refresh_rate,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_screen_get_pixel: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "screen_get_pixel").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1532707496)!
        }
        }
    }()
    public func screenGetPixel(position: Godot.Vector2i) -> Godot.Color {
        Godot.Color.fromMutatingGodotUnsafePointer { __temporary in
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_screen_get_pixel,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_screen_get_image: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "screen_get_image").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3813388802)!
        }
        }
    }()
    public func screenGetImage(screen: Int32 = -1) -> Godot.Image? {
        Godot.Image?.fromMutatingGodotUnsafePointer { __temporary in
        screen.withGodotUnsafeRawPointer { __ptr_screen in
        withUnsafeArgumentPackPointer(__ptr_screen) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_screen_get_image,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_screen_set_orientation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "screen_set_orientation").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2211511631)!
        }
        }
    }()
    public func screenSetOrientation(_ orientation: Godot.DisplayServer.ScreenOrientation, screen: Int32 = -1) {
        orientation.withGodotUnsafeRawPointer { __ptr_orientation in
        screen.withGodotUnsafeRawPointer { __ptr_screen in
        withUnsafeArgumentPackPointer(__ptr_orientation, __ptr_screen) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_screen_set_orientation,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_screen_get_orientation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "screen_get_orientation").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 133818562)!
        }
        }
    }()
    public func screenGetOrientation(screen: Int32 = -1) -> Godot.DisplayServer.ScreenOrientation {
        Godot.DisplayServer.ScreenOrientation.fromMutatingGodotUnsafePointer { __temporary in
        screen.withGodotUnsafeRawPointer { __ptr_screen in
        withUnsafeArgumentPackPointer(__ptr_screen) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_screen_get_orientation,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_screen_set_keep_on: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "screen_set_keep_on").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    public func screenSetKeepOn(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_screen_set_keep_on,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_screen_is_kept_on: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "screen_is_kept_on").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func screenIsKeptOn() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_screen_is_kept_on,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_window_list: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_window_list").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1930428628)!
        }
        }
    }()
    public func windowList() -> Godot.PackedInt32Array {
        Godot.PackedInt32Array.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_window_list,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_window_at_screen_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_window_at_screen_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2485466453)!
        }
        }
    }()
    public func windowAtScreenPosition(_ position: Godot.Vector2i) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_window_at_screen_position,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_window_get_native_handle: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_get_native_handle").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1096425680)!
        }
        }
    }()
    public func windowGetNativeHandle(handleType: Godot.DisplayServer.HandleType, windowID: Int32 = 0) -> Int64 {
        Int64.fromMutatingGodotUnsafePointer { __temporary in
        handleType.withGodotUnsafeRawPointer { __ptr_handleType in
        windowID.withGodotUnsafeRawPointer { __ptr_windowID in
        withUnsafeArgumentPackPointer(__ptr_handleType, __ptr_windowID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_window_get_native_handle,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_window_get_active_popup: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_get_active_popup").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func windowGetActivePopup() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_window_get_active_popup,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_window_set_popup_safe_rect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_set_popup_safe_rect").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3317281434)!
        }
        }
    }()
    public func windowSetPopupSafeRect(window: Int32, rect: Godot.Rect2i) {
        window.withGodotUnsafeRawPointer { __ptr_window in
        rect.withGodotUnsafeRawPointer { __ptr_rect in
        withUnsafeArgumentPackPointer(__ptr_window, __ptr_rect) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_window_set_popup_safe_rect,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_window_get_popup_safe_rect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_get_popup_safe_rect").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2161169500)!
        }
        }
    }()
    public func windowGetPopupSafeRect(window: Int32) -> Godot.Rect2i {
        Godot.Rect2i.fromMutatingGodotUnsafePointer { __temporary in
        window.withGodotUnsafeRawPointer { __ptr_window in
        withUnsafeArgumentPackPointer(__ptr_window) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_window_get_popup_safe_rect,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_window_set_title: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_set_title").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 441246282)!
        }
        }
    }()
    public func windowSetTitle(_ title: Godot.GodotString, windowID: Int32 = 0) {
        title.withGodotUnsafeRawPointer { __ptr_title in
        windowID.withGodotUnsafeRawPointer { __ptr_windowID in
        withUnsafeArgumentPackPointer(__ptr_title, __ptr_windowID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_window_set_title,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_window_get_title_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_get_title_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2925301799)!
        }
        }
    }()
    public func windowGetTitleSize(title: Godot.GodotString, windowID: Int32 = 0) -> Godot.Vector2i {
        Godot.Vector2i.fromMutatingGodotUnsafePointer { __temporary in
        title.withGodotUnsafeRawPointer { __ptr_title in
        windowID.withGodotUnsafeRawPointer { __ptr_windowID in
        withUnsafeArgumentPackPointer(__ptr_title, __ptr_windowID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_window_get_title_size,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_window_set_mouse_passthrough: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_set_mouse_passthrough").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1993637420)!
        }
        }
    }()
    public func windowSetMousePassthrough(region: Godot.PackedVector2Array, windowID: Int32 = 0) {
        region.withGodotUnsafeRawPointer { __ptr_region in
        windowID.withGodotUnsafeRawPointer { __ptr_windowID in
        withUnsafeArgumentPackPointer(__ptr_region, __ptr_windowID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_window_set_mouse_passthrough,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_window_get_current_screen: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_get_current_screen").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1591665591)!
        }
        }
    }()
    public func windowGetCurrentScreen(windowID: Int32 = 0) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        windowID.withGodotUnsafeRawPointer { __ptr_windowID in
        withUnsafeArgumentPackPointer(__ptr_windowID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_window_get_current_screen,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_window_set_current_screen: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_set_current_screen").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2230941749)!
        }
        }
    }()
    public func windowSetCurrentScreen(_ screen: Int32, windowID: Int32 = 0) {
        screen.withGodotUnsafeRawPointer { __ptr_screen in
        windowID.withGodotUnsafeRawPointer { __ptr_windowID in
        withUnsafeArgumentPackPointer(__ptr_screen, __ptr_windowID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_window_set_current_screen,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_window_get_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_get_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 763922886)!
        }
        }
    }()
    public func windowGetPosition(windowID: Int32 = 0) -> Godot.Vector2i {
        Godot.Vector2i.fromMutatingGodotUnsafePointer { __temporary in
        windowID.withGodotUnsafeRawPointer { __ptr_windowID in
        withUnsafeArgumentPackPointer(__ptr_windowID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_window_get_position,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_window_get_position_with_decorations: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_get_position_with_decorations").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 763922886)!
        }
        }
    }()
    public func windowGetPositionWithDecorations(windowID: Int32 = 0) -> Godot.Vector2i {
        Godot.Vector2i.fromMutatingGodotUnsafePointer { __temporary in
        windowID.withGodotUnsafeRawPointer { __ptr_windowID in
        withUnsafeArgumentPackPointer(__ptr_windowID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_window_get_position_with_decorations,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_window_set_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_set_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2019273902)!
        }
        }
    }()
    public func windowSetPosition(_ position: Godot.Vector2i, windowID: Int32 = 0) {
        position.withGodotUnsafeRawPointer { __ptr_position in
        windowID.withGodotUnsafeRawPointer { __ptr_windowID in
        withUnsafeArgumentPackPointer(__ptr_position, __ptr_windowID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_window_set_position,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_window_get_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_get_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 763922886)!
        }
        }
    }()
    public func windowGetSize(windowID: Int32 = 0) -> Godot.Vector2i {
        Godot.Vector2i.fromMutatingGodotUnsafePointer { __temporary in
        windowID.withGodotUnsafeRawPointer { __ptr_windowID in
        withUnsafeArgumentPackPointer(__ptr_windowID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_window_get_size,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_window_set_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_set_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2019273902)!
        }
        }
    }()
    public func windowSetSize(_ size: Godot.Vector2i, windowID: Int32 = 0) {
        size.withGodotUnsafeRawPointer { __ptr_size in
        windowID.withGodotUnsafeRawPointer { __ptr_windowID in
        withUnsafeArgumentPackPointer(__ptr_size, __ptr_windowID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_window_set_size,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_window_set_rect_changed_callback: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_set_rect_changed_callback").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1091192925)!
        }
        }
    }()
    public func windowSetRectChangedCallback(_ callback: Godot.Callable, windowID: Int32 = 0) {
        callback.withGodotUnsafeRawPointer { __ptr_callback in
        windowID.withGodotUnsafeRawPointer { __ptr_windowID in
        withUnsafeArgumentPackPointer(__ptr_callback, __ptr_windowID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_window_set_rect_changed_callback,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_window_set_window_event_callback: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_set_window_event_callback").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1091192925)!
        }
        }
    }()
    public func windowSetWindowEventCallback(_ callback: Godot.Callable, windowID: Int32 = 0) {
        callback.withGodotUnsafeRawPointer { __ptr_callback in
        windowID.withGodotUnsafeRawPointer { __ptr_windowID in
        withUnsafeArgumentPackPointer(__ptr_callback, __ptr_windowID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_window_set_window_event_callback,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_window_set_input_event_callback: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_set_input_event_callback").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1091192925)!
        }
        }
    }()
    public func windowSetInputEventCallback(_ callback: Godot.Callable, windowID: Int32 = 0) {
        callback.withGodotUnsafeRawPointer { __ptr_callback in
        windowID.withGodotUnsafeRawPointer { __ptr_windowID in
        withUnsafeArgumentPackPointer(__ptr_callback, __ptr_windowID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_window_set_input_event_callback,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_window_set_input_text_callback: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_set_input_text_callback").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1091192925)!
        }
        }
    }()
    public func windowSetInputTextCallback(_ callback: Godot.Callable, windowID: Int32 = 0) {
        callback.withGodotUnsafeRawPointer { __ptr_callback in
        windowID.withGodotUnsafeRawPointer { __ptr_windowID in
        withUnsafeArgumentPackPointer(__ptr_callback, __ptr_windowID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_window_set_input_text_callback,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_window_set_drop_files_callback: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_set_drop_files_callback").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1091192925)!
        }
        }
    }()
    public func windowSetDropFilesCallback(_ callback: Godot.Callable, windowID: Int32 = 0) {
        callback.withGodotUnsafeRawPointer { __ptr_callback in
        windowID.withGodotUnsafeRawPointer { __ptr_windowID in
        withUnsafeArgumentPackPointer(__ptr_callback, __ptr_windowID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_window_set_drop_files_callback,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_window_get_attached_instance_id: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_get_attached_instance_id").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1591665591)!
        }
        }
    }()
    public func windowGetAttachedInstanceID(windowID: Int32 = 0) -> UInt64 {
        UInt64.fromMutatingGodotUnsafePointer { __temporary in
        windowID.withGodotUnsafeRawPointer { __ptr_windowID in
        withUnsafeArgumentPackPointer(__ptr_windowID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_window_get_attached_instance_id,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_window_get_max_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_get_max_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 763922886)!
        }
        }
    }()
    public func windowGetMaxSize(windowID: Int32 = 0) -> Godot.Vector2i {
        Godot.Vector2i.fromMutatingGodotUnsafePointer { __temporary in
        windowID.withGodotUnsafeRawPointer { __ptr_windowID in
        withUnsafeArgumentPackPointer(__ptr_windowID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_window_get_max_size,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_window_set_max_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_set_max_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2019273902)!
        }
        }
    }()
    public func windowSetMaxSize(_ maxSize: Godot.Vector2i, windowID: Int32 = 0) {
        maxSize.withGodotUnsafeRawPointer { __ptr_maxSize in
        windowID.withGodotUnsafeRawPointer { __ptr_windowID in
        withUnsafeArgumentPackPointer(__ptr_maxSize, __ptr_windowID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_window_set_max_size,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_window_get_min_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_get_min_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 763922886)!
        }
        }
    }()
    public func windowGetMinSize(windowID: Int32 = 0) -> Godot.Vector2i {
        Godot.Vector2i.fromMutatingGodotUnsafePointer { __temporary in
        windowID.withGodotUnsafeRawPointer { __ptr_windowID in
        withUnsafeArgumentPackPointer(__ptr_windowID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_window_get_min_size,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_window_set_min_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_set_min_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2019273902)!
        }
        }
    }()
    public func windowSetMinSize(_ minSize: Godot.Vector2i, windowID: Int32 = 0) {
        minSize.withGodotUnsafeRawPointer { __ptr_minSize in
        windowID.withGodotUnsafeRawPointer { __ptr_windowID in
        withUnsafeArgumentPackPointer(__ptr_minSize, __ptr_windowID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_window_set_min_size,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_window_get_size_with_decorations: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_get_size_with_decorations").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 763922886)!
        }
        }
    }()
    public func windowGetSizeWithDecorations(windowID: Int32 = 0) -> Godot.Vector2i {
        Godot.Vector2i.fromMutatingGodotUnsafePointer { __temporary in
        windowID.withGodotUnsafeRawPointer { __ptr_windowID in
        withUnsafeArgumentPackPointer(__ptr_windowID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_window_get_size_with_decorations,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_window_get_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_get_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2185728461)!
        }
        }
    }()
    public func windowGetMode(windowID: Int32 = 0) -> Godot.DisplayServer.WindowMode {
        Godot.DisplayServer.WindowMode.fromMutatingGodotUnsafePointer { __temporary in
        windowID.withGodotUnsafeRawPointer { __ptr_windowID in
        withUnsafeArgumentPackPointer(__ptr_windowID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_window_get_mode,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_window_set_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_set_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1319965401)!
        }
        }
    }()
    public func windowSetMode(_ mode: Godot.DisplayServer.WindowMode, windowID: Int32 = 0) {
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        windowID.withGodotUnsafeRawPointer { __ptr_windowID in
        withUnsafeArgumentPackPointer(__ptr_mode, __ptr_windowID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_window_set_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_window_set_flag: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_set_flag").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 254894155)!
        }
        }
    }()
    public func windowSetFlag(_ flag: Godot.DisplayServer.WindowFlags, enabled: Bool, windowID: Int32 = 0) {
        flag.withGodotUnsafeRawPointer { __ptr_flag in
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        windowID.withGodotUnsafeRawPointer { __ptr_windowID in
        withUnsafeArgumentPackPointer(__ptr_flag, __ptr_enabled, __ptr_windowID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_window_set_flag,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_window_get_flag: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_get_flag").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 802816991)!
        }
        }
    }()
    public func windowGetFlag(_ flag: Godot.DisplayServer.WindowFlags, windowID: Int32 = 0) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        flag.withGodotUnsafeRawPointer { __ptr_flag in
        windowID.withGodotUnsafeRawPointer { __ptr_windowID in
        withUnsafeArgumentPackPointer(__ptr_flag, __ptr_windowID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_window_get_flag,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_window_set_window_buttons_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_set_window_buttons_offset").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2019273902)!
        }
        }
    }()
    public func windowSetWindowButtonsOffset(_ offset: Godot.Vector2i, windowID: Int32 = 0) {
        offset.withGodotUnsafeRawPointer { __ptr_offset in
        windowID.withGodotUnsafeRawPointer { __ptr_windowID in
        withUnsafeArgumentPackPointer(__ptr_offset, __ptr_windowID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_window_set_window_buttons_offset,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_window_get_safe_title_margins: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_get_safe_title_margins").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2295066620)!
        }
        }
    }()
    public func windowGetSafeTitleMargins(windowID: Int32 = 0) -> Godot.Vector3i {
        Godot.Vector3i.fromMutatingGodotUnsafePointer { __temporary in
        windowID.withGodotUnsafeRawPointer { __ptr_windowID in
        withUnsafeArgumentPackPointer(__ptr_windowID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_window_get_safe_title_margins,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_window_request_attention: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_request_attention").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1995695955)!
        }
        }
    }()
    public func windowRequestAttention(windowID: Int32 = 0) {
        windowID.withGodotUnsafeRawPointer { __ptr_windowID in
        withUnsafeArgumentPackPointer(__ptr_windowID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_window_request_attention,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_window_move_to_foreground: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_move_to_foreground").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1995695955)!
        }
        }
    }()
    public func windowMoveToForeground(windowID: Int32 = 0) {
        windowID.withGodotUnsafeRawPointer { __ptr_windowID in
        withUnsafeArgumentPackPointer(__ptr_windowID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_window_move_to_foreground,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_window_is_focused: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_is_focused").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1051549951)!
        }
        }
    }()
    public func windowIsFocused(windowID: Int32 = 0) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        windowID.withGodotUnsafeRawPointer { __ptr_windowID in
        withUnsafeArgumentPackPointer(__ptr_windowID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_window_is_focused,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_window_can_draw: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_can_draw").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1051549951)!
        }
        }
    }()
    public func windowCanDraw(windowID: Int32 = 0) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        windowID.withGodotUnsafeRawPointer { __ptr_windowID in
        withUnsafeArgumentPackPointer(__ptr_windowID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_window_can_draw,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_window_set_transient: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_set_transient").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func windowSetTransient(windowID: Int32, parentWindowID: Int32) {
        windowID.withGodotUnsafeRawPointer { __ptr_windowID in
        parentWindowID.withGodotUnsafeRawPointer { __ptr_parentWindowID in
        withUnsafeArgumentPackPointer(__ptr_windowID, __ptr_parentWindowID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_window_set_transient,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_window_set_exclusive: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_set_exclusive").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()
    public func windowSetExclusive(windowID: Int32, exclusive: Bool) {
        windowID.withGodotUnsafeRawPointer { __ptr_windowID in
        exclusive.withGodotUnsafeRawPointer { __ptr_exclusive in
        withUnsafeArgumentPackPointer(__ptr_windowID, __ptr_exclusive) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_window_set_exclusive,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_window_set_ime_active: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_set_ime_active").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1661950165)!
        }
        }
    }()
    public func windowSetImeActive(_ active: Bool, windowID: Int32 = 0) {
        active.withGodotUnsafeRawPointer { __ptr_active in
        windowID.withGodotUnsafeRawPointer { __ptr_windowID in
        withUnsafeArgumentPackPointer(__ptr_active, __ptr_windowID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_window_set_ime_active,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_window_set_ime_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_set_ime_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2019273902)!
        }
        }
    }()
    public func windowSetImePosition(_ position: Godot.Vector2i, windowID: Int32 = 0) {
        position.withGodotUnsafeRawPointer { __ptr_position in
        windowID.withGodotUnsafeRawPointer { __ptr_windowID in
        withUnsafeArgumentPackPointer(__ptr_position, __ptr_windowID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_window_set_ime_position,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_window_set_vsync_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_set_vsync_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2179333492)!
        }
        }
    }()
    public func windowSetVsyncMode(_ vsyncMode: Godot.DisplayServer.VSyncMode, windowID: Int32 = 0) {
        vsyncMode.withGodotUnsafeRawPointer { __ptr_vsyncMode in
        windowID.withGodotUnsafeRawPointer { __ptr_windowID in
        withUnsafeArgumentPackPointer(__ptr_vsyncMode, __ptr_windowID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_window_set_vsync_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_window_get_vsync_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_get_vsync_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 578873795)!
        }
        }
    }()
    public func windowGetVsyncMode(windowID: Int32 = 0) -> Godot.DisplayServer.VSyncMode {
        Godot.DisplayServer.VSyncMode.fromMutatingGodotUnsafePointer { __temporary in
        windowID.withGodotUnsafeRawPointer { __ptr_windowID in
        withUnsafeArgumentPackPointer(__ptr_windowID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_window_get_vsync_mode,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_window_is_maximize_allowed: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_is_maximize_allowed").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1051549951)!
        }
        }
    }()
    public func windowIsMaximizeAllowed(windowID: Int32 = 0) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        windowID.withGodotUnsafeRawPointer { __ptr_windowID in
        withUnsafeArgumentPackPointer(__ptr_windowID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_window_is_maximize_allowed,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_window_maximize_on_title_dbl_click: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_maximize_on_title_dbl_click").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func windowMaximizeOnTitleDblClick() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_window_maximize_on_title_dbl_click,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_window_minimize_on_title_dbl_click: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_minimize_on_title_dbl_click").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func windowMinimizeOnTitleDblClick() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_window_minimize_on_title_dbl_click,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_ime_get_selection: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "ime_get_selection").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3690982128)!
        }
        }
    }()
    public func imeGetSelection() -> Godot.Vector2i {
        Godot.Vector2i.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_ime_get_selection,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_ime_get_text: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "ime_get_text").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    public func imeGetText() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_ime_get_text,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_virtual_keyboard_show: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "virtual_keyboard_show").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3042891259)!
        }
        }
    }()
    public func virtualKeyboardShow(existingText: Godot.GodotString, position: Godot.Rect2 = Rect2(x: 0, y: 0, width: 0, height: 0), type: Godot.DisplayServer.VirtualKeyboardType = DisplayServer.VirtualKeyboardType(rawValue: 0)!, maxLength: Int32 = -1, cursorStart: Int32 = -1, cursorEnd: Int32 = -1) {
        existingText.withGodotUnsafeRawPointer { __ptr_existingText in
        position.withGodotUnsafeRawPointer { __ptr_position in
        type.withGodotUnsafeRawPointer { __ptr_type in
        maxLength.withGodotUnsafeRawPointer { __ptr_maxLength in
        cursorStart.withGodotUnsafeRawPointer { __ptr_cursorStart in
        cursorEnd.withGodotUnsafeRawPointer { __ptr_cursorEnd in
        withUnsafeArgumentPackPointer(__ptr_existingText, __ptr_position, __ptr_type, __ptr_maxLength, __ptr_cursorStart, __ptr_cursorEnd) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_virtual_keyboard_show,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}
    }

    internal static var __method_binding_virtual_keyboard_hide: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "virtual_keyboard_hide").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func virtualKeyboardHide() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_virtual_keyboard_hide,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_virtual_keyboard_get_height: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "virtual_keyboard_get_height").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func virtualKeyboardGetHeight() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_virtual_keyboard_get_height,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_cursor_set_shape: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "cursor_set_shape").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2026291549)!
        }
        }
    }()
    public func cursorSetShape(_ shape: Godot.DisplayServer.CursorShape) {
        shape.withGodotUnsafeRawPointer { __ptr_shape in
        withUnsafeArgumentPackPointer(__ptr_shape) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_cursor_set_shape,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_cursor_get_shape: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "cursor_get_shape").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1087724927)!
        }
        }
    }()
    public func cursorGetShape() -> Godot.DisplayServer.CursorShape {
        Godot.DisplayServer.CursorShape.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_cursor_get_shape,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_cursor_set_custom_image: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "cursor_set_custom_image").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1816663697)!
        }
        }
    }()
    public func cursorSetCustomImage(cursor: Godot.Resource?, shape: Godot.DisplayServer.CursorShape = DisplayServer.CursorShape(rawValue: 0)!, hotspot: Godot.Vector2 = Vector2(x: 0, y: 0)) {
        cursor.withGodotUnsafeRawPointer { __ptr_cursor in
        withUnsafePointer(to: __ptr_cursor) { _ptr___ptr_cursor in
        shape.withGodotUnsafeRawPointer { __ptr_shape in
        hotspot.withGodotUnsafeRawPointer { __ptr_hotspot in
        withUnsafeArgumentPackPointer(_ptr___ptr_cursor, __ptr_shape, __ptr_hotspot) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_cursor_set_custom_image,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    internal static var __method_binding_get_swap_cancel_ok: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_swap_cancel_ok").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()
    public func swapCancelOk() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_swap_cancel_ok,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_enable_for_stealing_focus: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "enable_for_stealing_focus").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func enableForStealingFocus(processID: Int64) {
        processID.withGodotUnsafeRawPointer { __ptr_processID in
        withUnsafeArgumentPackPointer(__ptr_processID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_enable_for_stealing_focus,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_dialog_show: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "dialog_show").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4115553226)!
        }
        }
    }()
    public func dialogShow(title: Godot.GodotString, description: Godot.GodotString, buttons: Godot.PackedStringArray, callback: Godot.Callable) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        title.withGodotUnsafeRawPointer { __ptr_title in
        description.withGodotUnsafeRawPointer { __ptr_description in
        buttons.withGodotUnsafeRawPointer { __ptr_buttons in
        callback.withGodotUnsafeRawPointer { __ptr_callback in
        withUnsafeArgumentPackPointer(__ptr_title, __ptr_description, __ptr_buttons, __ptr_callback) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_dialog_show,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}
    }

    internal static var __method_binding_dialog_input_text: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "dialog_input_text").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3088703427)!
        }
        }
    }()
    public func dialogInputText(title: Godot.GodotString, description: Godot.GodotString, existingText: Godot.GodotString, callback: Godot.Callable) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        title.withGodotUnsafeRawPointer { __ptr_title in
        description.withGodotUnsafeRawPointer { __ptr_description in
        existingText.withGodotUnsafeRawPointer { __ptr_existingText in
        callback.withGodotUnsafeRawPointer { __ptr_callback in
        withUnsafeArgumentPackPointer(__ptr_title, __ptr_description, __ptr_existingText, __ptr_callback) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_dialog_input_text,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}
    }

    internal static var __method_binding_file_dialog_show: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "file_dialog_show").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1531299078)!
        }
        }
    }()
    public func fileDialogShow(title: Godot.GodotString, currentDirectory: Godot.GodotString, filename: Godot.GodotString, showHidden: Bool, mode: Godot.DisplayServer.FileDialogMode, filters: Godot.PackedStringArray, callback: Godot.Callable) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        title.withGodotUnsafeRawPointer { __ptr_title in
        currentDirectory.withGodotUnsafeRawPointer { __ptr_currentDirectory in
        filename.withGodotUnsafeRawPointer { __ptr_filename in
        showHidden.withGodotUnsafeRawPointer { __ptr_showHidden in
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        filters.withGodotUnsafeRawPointer { __ptr_filters in
        callback.withGodotUnsafeRawPointer { __ptr_callback in
        withUnsafeArgumentPackPointer(__ptr_title, __ptr_currentDirectory, __ptr_filename, __ptr_showHidden, __ptr_mode, __ptr_filters, __ptr_callback) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_file_dialog_show,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}}}
    }

    internal static var __method_binding_keyboard_get_layout_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "keyboard_get_layout_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func keyboardGetLayoutCount() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_keyboard_get_layout_count,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_keyboard_get_current_layout: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "keyboard_get_current_layout").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func keyboardGetCurrentLayout() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_keyboard_get_current_layout,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_keyboard_set_current_layout: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "keyboard_set_current_layout").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func keyboardSetCurrentLayout(index: Int32) {
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_keyboard_set_current_layout,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_keyboard_get_layout_language: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "keyboard_get_layout_language").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 844755477)!
        }
        }
    }()
    public func keyboardGetLayoutLanguage(index: Int32) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_keyboard_get_layout_language,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_keyboard_get_layout_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "keyboard_get_layout_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 844755477)!
        }
        }
    }()
    public func keyboardGetLayoutName(index: Int32) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_keyboard_get_layout_name,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_keyboard_get_keycode_from_physical: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "keyboard_get_keycode_from_physical").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3447613187)!
        }
        }
    }()
    public func keyboardGetKeycodeFromPhysical(keycode: Godot.Key) -> Godot.Key {
        Godot.Key.fromMutatingGodotUnsafePointer { __temporary in
        keycode.withGodotUnsafeRawPointer { __ptr_keycode in
        withUnsafeArgumentPackPointer(__ptr_keycode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_keyboard_get_keycode_from_physical,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_keyboard_get_label_from_physical: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "keyboard_get_label_from_physical").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3447613187)!
        }
        }
    }()
    public func keyboardGetLabelFromPhysical(keycode: Godot.Key) -> Godot.Key {
        Godot.Key.fromMutatingGodotUnsafePointer { __temporary in
        keycode.withGodotUnsafeRawPointer { __ptr_keycode in
        withUnsafeArgumentPackPointer(__ptr_keycode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_keyboard_get_label_from_physical,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_process_events: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "process_events").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func processEvents() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_process_events,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_force_process_and_drop_events: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "force_process_and_drop_events").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func forceProcessAndDropEvents() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_force_process_and_drop_events,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_set_native_icon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_native_icon").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func setNativeIcon(filename: Godot.GodotString) {
        filename.withGodotUnsafeRawPointer { __ptr_filename in
        withUnsafeArgumentPackPointer(__ptr_filename) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_native_icon,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_set_icon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_icon").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 532598488)!
        }
        }
    }()
    public func setIcon(image: Godot.Image?) {
        image.withGodotUnsafeRawPointer { __ptr_image in
        withUnsafePointer(to: __ptr_image) { _ptr___ptr_image in
        withUnsafeArgumentPackPointer(_ptr___ptr_image) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_icon,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_tablet_get_driver_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "tablet_get_driver_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func tabletGetDriverCount() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_tablet_get_driver_count,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_tablet_get_driver_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "tablet_get_driver_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 844755477)!
        }
        }
    }()
    public func tabletGetDriverName(idx: Int32) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        withUnsafeArgumentPackPointer(__ptr_idx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_tablet_get_driver_name,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_tablet_get_current_driver: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "tablet_get_current_driver").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    public func tabletGetCurrentDriver() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_tablet_get_current_driver,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_tablet_set_current_driver: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "tablet_set_current_driver").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func tabletSetCurrentDriver(name: Godot.GodotString) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_tablet_set_current_driver,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
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