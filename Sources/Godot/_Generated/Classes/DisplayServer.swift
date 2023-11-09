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

    private static var __method_binding_has_feature: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_feature").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 334065950)!
        }
        }
    }()
    public func hasFeature(_ feature: Godot.DisplayServer.Feature) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: feature) { (__ptr_feature) in
            withUnsafeArgumentPackPointer(__ptr_feature) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_has_feature,
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

    private static var __method_binding_get_name: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_name").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    public func name() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_name,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_global_menu_add_submenu_item: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_add_submenu_item").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3806306913)!
        }
        }
    }()
    public func globalMenuAddSubmenuItem(menuRoot: Godot.GodotString, label: Godot.GodotString, submenu: Godot.GodotString, index: Int32 = -1) -> Int32 {
        var __temporary = Int32()
        menuRoot.withUnsafeRawPointer { (__ptr_menuRoot) in
            label.withUnsafeRawPointer { (__ptr_label) in
                submenu.withUnsafeRawPointer { (__ptr_submenu) in
                    withUnsafePointer(to: index) { (__ptr_index) in
                        withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_label, __ptr_submenu, __ptr_index) { (__accessPtr) in
                            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_global_menu_add_submenu_item,
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

    private static var __method_binding_global_menu_add_item: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_add_item").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3415468211)!
        }
        }
    }()
    public func globalMenuAddItem<Variant1 : ConvertibleToVariant>(menuRoot: Godot.GodotString, label: Godot.GodotString, callback: Godot.Callable = Callable(), keyCallback: Godot.Callable = Callable(), tag: Variant1 = Variant(), accelerator: Godot.Key = Key(rawValue: 0)!, index: Int32 = -1) -> Int32 {
        var __temporary = Int32()
        menuRoot.withUnsafeRawPointer { (__ptr_menuRoot) in
            label.withUnsafeRawPointer { (__ptr_label) in
                callback.withUnsafeRawPointer { (__ptr_callback) in
                    keyCallback.withUnsafeRawPointer { (__ptr_keyCallback) in
                        tag.makeVariant().withUnsafeRawPointer { (__ptr_tag) in
                            withUnsafePointer(to: accelerator) { (__ptr_accelerator) in
                                withUnsafePointer(to: index) { (__ptr_index) in
                                    withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_label, __ptr_callback, __ptr_keyCallback, __ptr_tag, __ptr_accelerator, __ptr_index) { (__accessPtr) in
                                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                                gdextension_interface_object_method_bind_ptrcall(
                                                    Self.__method_binding_global_menu_add_item,
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
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_global_menu_add_check_item: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_add_check_item").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3415468211)!
        }
        }
    }()
    public func globalMenuAddCheckItem<Variant1 : ConvertibleToVariant>(menuRoot: Godot.GodotString, label: Godot.GodotString, callback: Godot.Callable = Callable(), keyCallback: Godot.Callable = Callable(), tag: Variant1 = Variant(), accelerator: Godot.Key = Key(rawValue: 0)!, index: Int32 = -1) -> Int32 {
        var __temporary = Int32()
        menuRoot.withUnsafeRawPointer { (__ptr_menuRoot) in
            label.withUnsafeRawPointer { (__ptr_label) in
                callback.withUnsafeRawPointer { (__ptr_callback) in
                    keyCallback.withUnsafeRawPointer { (__ptr_keyCallback) in
                        tag.makeVariant().withUnsafeRawPointer { (__ptr_tag) in
                            withUnsafePointer(to: accelerator) { (__ptr_accelerator) in
                                withUnsafePointer(to: index) { (__ptr_index) in
                                    withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_label, __ptr_callback, __ptr_keyCallback, __ptr_tag, __ptr_accelerator, __ptr_index) { (__accessPtr) in
                                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                                gdextension_interface_object_method_bind_ptrcall(
                                                    Self.__method_binding_global_menu_add_check_item,
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
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_global_menu_add_icon_item: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_add_icon_item").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1700867534)!
        }
        }
    }()
    public func globalMenuAddIconItem<Variant1 : ConvertibleToVariant>(menuRoot: Godot.GodotString, icon: Godot.Texture2D?, label: Godot.GodotString, callback: Godot.Callable = Callable(), keyCallback: Godot.Callable = Callable(), tag: Variant1 = Variant(), accelerator: Godot.Key = Key(rawValue: 0)!, index: Int32 = -1) -> Int32 {
        var __temporary = Int32()
        menuRoot.withUnsafeRawPointer { (__ptr_menuRoot) in
            icon.withUnsafeRawPointer { (__ptr_icon) in
                withUnsafePointer(to: __ptr_icon) { (_ptr___ptr_icon) in
                    label.withUnsafeRawPointer { (__ptr_label) in
                        callback.withUnsafeRawPointer { (__ptr_callback) in
                            keyCallback.withUnsafeRawPointer { (__ptr_keyCallback) in
                                tag.makeVariant().withUnsafeRawPointer { (__ptr_tag) in
                                    withUnsafePointer(to: accelerator) { (__ptr_accelerator) in
                                        withUnsafePointer(to: index) { (__ptr_index) in
                                            withUnsafeArgumentPackPointer(__ptr_menuRoot, _ptr___ptr_icon, __ptr_label, __ptr_callback, __ptr_keyCallback, __ptr_tag, __ptr_accelerator, __ptr_index) { (__accessPtr) in
                                                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                                        gdextension_interface_object_method_bind_ptrcall(
                                                            Self.__method_binding_global_menu_add_icon_item,
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
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_global_menu_add_icon_check_item: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_add_icon_check_item").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1700867534)!
        }
        }
    }()
    public func globalMenuAddIconCheckItem<Variant1 : ConvertibleToVariant>(menuRoot: Godot.GodotString, icon: Godot.Texture2D?, label: Godot.GodotString, callback: Godot.Callable = Callable(), keyCallback: Godot.Callable = Callable(), tag: Variant1 = Variant(), accelerator: Godot.Key = Key(rawValue: 0)!, index: Int32 = -1) -> Int32 {
        var __temporary = Int32()
        menuRoot.withUnsafeRawPointer { (__ptr_menuRoot) in
            icon.withUnsafeRawPointer { (__ptr_icon) in
                withUnsafePointer(to: __ptr_icon) { (_ptr___ptr_icon) in
                    label.withUnsafeRawPointer { (__ptr_label) in
                        callback.withUnsafeRawPointer { (__ptr_callback) in
                            keyCallback.withUnsafeRawPointer { (__ptr_keyCallback) in
                                tag.makeVariant().withUnsafeRawPointer { (__ptr_tag) in
                                    withUnsafePointer(to: accelerator) { (__ptr_accelerator) in
                                        withUnsafePointer(to: index) { (__ptr_index) in
                                            withUnsafeArgumentPackPointer(__ptr_menuRoot, _ptr___ptr_icon, __ptr_label, __ptr_callback, __ptr_keyCallback, __ptr_tag, __ptr_accelerator, __ptr_index) { (__accessPtr) in
                                                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                                        gdextension_interface_object_method_bind_ptrcall(
                                                            Self.__method_binding_global_menu_add_icon_check_item,
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
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_global_menu_add_radio_check_item: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_add_radio_check_item").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3415468211)!
        }
        }
    }()
    public func globalMenuAddRadioCheckItem<Variant1 : ConvertibleToVariant>(menuRoot: Godot.GodotString, label: Godot.GodotString, callback: Godot.Callable = Callable(), keyCallback: Godot.Callable = Callable(), tag: Variant1 = Variant(), accelerator: Godot.Key = Key(rawValue: 0)!, index: Int32 = -1) -> Int32 {
        var __temporary = Int32()
        menuRoot.withUnsafeRawPointer { (__ptr_menuRoot) in
            label.withUnsafeRawPointer { (__ptr_label) in
                callback.withUnsafeRawPointer { (__ptr_callback) in
                    keyCallback.withUnsafeRawPointer { (__ptr_keyCallback) in
                        tag.makeVariant().withUnsafeRawPointer { (__ptr_tag) in
                            withUnsafePointer(to: accelerator) { (__ptr_accelerator) in
                                withUnsafePointer(to: index) { (__ptr_index) in
                                    withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_label, __ptr_callback, __ptr_keyCallback, __ptr_tag, __ptr_accelerator, __ptr_index) { (__accessPtr) in
                                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                                gdextension_interface_object_method_bind_ptrcall(
                                                    Self.__method_binding_global_menu_add_radio_check_item,
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
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_global_menu_add_icon_radio_check_item: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_add_icon_radio_check_item").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1700867534)!
        }
        }
    }()
    public func globalMenuAddIconRadioCheckItem<Variant1 : ConvertibleToVariant>(menuRoot: Godot.GodotString, icon: Godot.Texture2D?, label: Godot.GodotString, callback: Godot.Callable = Callable(), keyCallback: Godot.Callable = Callable(), tag: Variant1 = Variant(), accelerator: Godot.Key = Key(rawValue: 0)!, index: Int32 = -1) -> Int32 {
        var __temporary = Int32()
        menuRoot.withUnsafeRawPointer { (__ptr_menuRoot) in
            icon.withUnsafeRawPointer { (__ptr_icon) in
                withUnsafePointer(to: __ptr_icon) { (_ptr___ptr_icon) in
                    label.withUnsafeRawPointer { (__ptr_label) in
                        callback.withUnsafeRawPointer { (__ptr_callback) in
                            keyCallback.withUnsafeRawPointer { (__ptr_keyCallback) in
                                tag.makeVariant().withUnsafeRawPointer { (__ptr_tag) in
                                    withUnsafePointer(to: accelerator) { (__ptr_accelerator) in
                                        withUnsafePointer(to: index) { (__ptr_index) in
                                            withUnsafeArgumentPackPointer(__ptr_menuRoot, _ptr___ptr_icon, __ptr_label, __ptr_callback, __ptr_keyCallback, __ptr_tag, __ptr_accelerator, __ptr_index) { (__accessPtr) in
                                                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                                        gdextension_interface_object_method_bind_ptrcall(
                                                            Self.__method_binding_global_menu_add_icon_radio_check_item,
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
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_global_menu_add_multistate_item: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_add_multistate_item").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 635750054)!
        }
        }
    }()
    public func globalMenuAddMultistateItem<Variant1 : ConvertibleToVariant>(menuRoot: Godot.GodotString, label: Godot.GodotString, maxStates: Int32, defaultState: Int32, callback: Godot.Callable = Callable(), keyCallback: Godot.Callable = Callable(), tag: Variant1 = Variant(), accelerator: Godot.Key = Key(rawValue: 0)!, index: Int32 = -1) -> Int32 {
        var __temporary = Int32()
        menuRoot.withUnsafeRawPointer { (__ptr_menuRoot) in
            label.withUnsafeRawPointer { (__ptr_label) in
                withUnsafePointer(to: maxStates) { (__ptr_maxStates) in
                    withUnsafePointer(to: defaultState) { (__ptr_defaultState) in
                        callback.withUnsafeRawPointer { (__ptr_callback) in
                            keyCallback.withUnsafeRawPointer { (__ptr_keyCallback) in
                                tag.makeVariant().withUnsafeRawPointer { (__ptr_tag) in
                                    withUnsafePointer(to: accelerator) { (__ptr_accelerator) in
                                        withUnsafePointer(to: index) { (__ptr_index) in
                                            withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_label, __ptr_maxStates, __ptr_defaultState, __ptr_callback, __ptr_keyCallback, __ptr_tag, __ptr_accelerator, __ptr_index) { (__accessPtr) in
                                                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                                        gdextension_interface_object_method_bind_ptrcall(
                                                            Self.__method_binding_global_menu_add_multistate_item,
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
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_global_menu_add_separator: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_add_separator").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1041533178)!
        }
        }
    }()
    public func globalMenuAddSeparator(menuRoot: Godot.GodotString, index: Int32 = -1) -> Int32 {
        var __temporary = Int32()
        menuRoot.withUnsafeRawPointer { (__ptr_menuRoot) in
            withUnsafePointer(to: index) { (__ptr_index) in
                withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_index) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_global_menu_add_separator,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_global_menu_get_item_index_from_text: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_get_item_index_from_text").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2878152881)!
        }
        }
    }()
    public func globalMenuGetItemIndexFromText(menuRoot: Godot.GodotString, text: Godot.GodotString) -> Int32 {
        var __temporary = Int32()
        menuRoot.withUnsafeRawPointer { (__ptr_menuRoot) in
            text.withUnsafeRawPointer { (__ptr_text) in
                withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_text) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_global_menu_get_item_index_from_text,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_global_menu_get_item_index_from_tag: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_get_item_index_from_tag").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2941063483)!
        }
        }
    }()
    public func globalMenuGetItemIndexFromTag<Variant1 : ConvertibleToVariant>(menuRoot: Godot.GodotString, tag: Variant1) -> Int32 {
        var __temporary = Int32()
        menuRoot.withUnsafeRawPointer { (__ptr_menuRoot) in
            tag.makeVariant().withUnsafeRawPointer { (__ptr_tag) in
                withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_tag) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_global_menu_get_item_index_from_tag,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_global_menu_is_item_checked: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_is_item_checked").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3511468594)!
        }
        }
    }()
    public func globalMenuIsItemChecked(menuRoot: Godot.GodotString, idx: Int32) -> Bool {
        var __temporary = Bool()
        menuRoot.withUnsafeRawPointer { (__ptr_menuRoot) in
            withUnsafePointer(to: idx) { (__ptr_idx) in
                withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_global_menu_is_item_checked,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_global_menu_is_item_checkable: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_is_item_checkable").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3511468594)!
        }
        }
    }()
    public func globalMenuIsItemCheckable(menuRoot: Godot.GodotString, idx: Int32) -> Bool {
        var __temporary = Bool()
        menuRoot.withUnsafeRawPointer { (__ptr_menuRoot) in
            withUnsafePointer(to: idx) { (__ptr_idx) in
                withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_global_menu_is_item_checkable,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_global_menu_is_item_radio_checkable: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_is_item_radio_checkable").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3511468594)!
        }
        }
    }()
    public func globalMenuIsItemRadioCheckable(menuRoot: Godot.GodotString, idx: Int32) -> Bool {
        var __temporary = Bool()
        menuRoot.withUnsafeRawPointer { (__ptr_menuRoot) in
            withUnsafePointer(to: idx) { (__ptr_idx) in
                withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_global_menu_is_item_radio_checkable,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_global_menu_get_item_callback: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_get_item_callback").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 748666903)!
        }
        }
    }()
    public func globalMenuGetItemCallback(menuRoot: Godot.GodotString, idx: Int32) -> Godot.Callable {
        let __temporary = Godot.Callable()
        menuRoot.withUnsafeRawPointer { (__ptr_menuRoot) in
            withUnsafePointer(to: idx) { (__ptr_idx) in
                withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_global_menu_get_item_callback,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_global_menu_get_item_key_callback: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_get_item_key_callback").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 748666903)!
        }
        }
    }()
    public func globalMenuGetItemKeyCallback(menuRoot: Godot.GodotString, idx: Int32) -> Godot.Callable {
        let __temporary = Godot.Callable()
        menuRoot.withUnsafeRawPointer { (__ptr_menuRoot) in
            withUnsafePointer(to: idx) { (__ptr_idx) in
                withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_global_menu_get_item_key_callback,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_global_menu_get_item_tag: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_get_item_tag").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 330672633)!
        }
        }
    }()
    public func globalMenuGetItemTag(menuRoot: Godot.GodotString, idx: Int32) -> Godot.Variant {
        let __temporary = Godot.Variant()
        menuRoot.withUnsafeRawPointer { (__ptr_menuRoot) in
            withUnsafePointer(to: idx) { (__ptr_idx) in
                withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_global_menu_get_item_tag,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_global_menu_get_item_text: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_get_item_text").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 591067909)!
        }
        }
    }()
    public func globalMenuGetItemText(menuRoot: Godot.GodotString, idx: Int32) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        menuRoot.withUnsafeRawPointer { (__ptr_menuRoot) in
            withUnsafePointer(to: idx) { (__ptr_idx) in
                withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_global_menu_get_item_text,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_global_menu_get_item_submenu: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_get_item_submenu").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 591067909)!
        }
        }
    }()
    public func globalMenuGetItemSubmenu(menuRoot: Godot.GodotString, idx: Int32) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        menuRoot.withUnsafeRawPointer { (__ptr_menuRoot) in
            withUnsafePointer(to: idx) { (__ptr_idx) in
                withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_global_menu_get_item_submenu,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_global_menu_get_item_accelerator: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_get_item_accelerator").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 936065394)!
        }
        }
    }()
    public func globalMenuGetItemAccelerator(menuRoot: Godot.GodotString, idx: Int32) -> Godot.Key {
        var __temporary = Godot.Key.RawValue(0)
        menuRoot.withUnsafeRawPointer { (__ptr_menuRoot) in
            withUnsafePointer(to: idx) { (__ptr_idx) in
                withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_global_menu_get_item_accelerator,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return Godot.Key(rawValue: __temporary)!
    }

    private static var __method_binding_global_menu_is_item_disabled: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_is_item_disabled").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3511468594)!
        }
        }
    }()
    public func globalMenuIsItemDisabled(menuRoot: Godot.GodotString, idx: Int32) -> Bool {
        var __temporary = Bool()
        menuRoot.withUnsafeRawPointer { (__ptr_menuRoot) in
            withUnsafePointer(to: idx) { (__ptr_idx) in
                withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_global_menu_is_item_disabled,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_global_menu_get_item_tooltip: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_get_item_tooltip").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 591067909)!
        }
        }
    }()
    public func globalMenuGetItemTooltip(menuRoot: Godot.GodotString, idx: Int32) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        menuRoot.withUnsafeRawPointer { (__ptr_menuRoot) in
            withUnsafePointer(to: idx) { (__ptr_idx) in
                withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_global_menu_get_item_tooltip,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_global_menu_get_item_state: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_get_item_state").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3422818498)!
        }
        }
    }()
    public func globalMenuGetItemState(menuRoot: Godot.GodotString, idx: Int32) -> Int32 {
        var __temporary = Int32()
        menuRoot.withUnsafeRawPointer { (__ptr_menuRoot) in
            withUnsafePointer(to: idx) { (__ptr_idx) in
                withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_global_menu_get_item_state,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_global_menu_get_item_max_states: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_get_item_max_states").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3422818498)!
        }
        }
    }()
    public func globalMenuGetItemMaxStates(menuRoot: Godot.GodotString, idx: Int32) -> Int32 {
        var __temporary = Int32()
        menuRoot.withUnsafeRawPointer { (__ptr_menuRoot) in
            withUnsafePointer(to: idx) { (__ptr_idx) in
                withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_global_menu_get_item_max_states,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_global_menu_get_item_icon: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_get_item_icon").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3591713183)!
        }
        }
    }()
    public func globalMenuGetItemIcon(menuRoot: Godot.GodotString, idx: Int32) -> Godot.Texture2D? {
        var __temporary: GDExtensionObjectPtr!
        menuRoot.withUnsafeRawPointer { (__ptr_menuRoot) in
            withUnsafePointer(to: idx) { (__ptr_idx) in
                withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_global_menu_get_item_icon,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return Godot.Texture2D.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_global_menu_get_item_indentation_level: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_get_item_indentation_level").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3422818498)!
        }
        }
    }()
    public func globalMenuGetItemIndentationLevel(menuRoot: Godot.GodotString, idx: Int32) -> Int32 {
        var __temporary = Int32()
        menuRoot.withUnsafeRawPointer { (__ptr_menuRoot) in
            withUnsafePointer(to: idx) { (__ptr_idx) in
                withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_global_menu_get_item_indentation_level,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_global_menu_set_item_checked: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_set_item_checked").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4108344793)!
        }
        }
    }()
    public func globalMenuSetItemChecked(menuRoot: Godot.GodotString, idx: Int32, checked: Bool) {
        menuRoot.withUnsafeRawPointer { (__ptr_menuRoot) in
            withUnsafePointer(to: idx) { (__ptr_idx) in
                withUnsafePointer(to: checked) { (__ptr_checked) in
                    withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx, __ptr_checked) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_global_menu_set_item_checked,
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

    private static var __method_binding_global_menu_set_item_checkable: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_set_item_checkable").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4108344793)!
        }
        }
    }()
    public func globalMenuSetItemCheckable(menuRoot: Godot.GodotString, idx: Int32, checkable: Bool) {
        menuRoot.withUnsafeRawPointer { (__ptr_menuRoot) in
            withUnsafePointer(to: idx) { (__ptr_idx) in
                withUnsafePointer(to: checkable) { (__ptr_checkable) in
                    withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx, __ptr_checkable) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_global_menu_set_item_checkable,
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

    private static var __method_binding_global_menu_set_item_radio_checkable: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_set_item_radio_checkable").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4108344793)!
        }
        }
    }()
    public func globalMenuSetItemRadioCheckable(menuRoot: Godot.GodotString, idx: Int32, checkable: Bool) {
        menuRoot.withUnsafeRawPointer { (__ptr_menuRoot) in
            withUnsafePointer(to: idx) { (__ptr_idx) in
                withUnsafePointer(to: checkable) { (__ptr_checkable) in
                    withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx, __ptr_checkable) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_global_menu_set_item_radio_checkable,
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

    private static var __method_binding_global_menu_set_item_callback: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_set_item_callback").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3809915389)!
        }
        }
    }()
    public func globalMenuSetItemCallback(menuRoot: Godot.GodotString, idx: Int32, callback: Godot.Callable) {
        menuRoot.withUnsafeRawPointer { (__ptr_menuRoot) in
            withUnsafePointer(to: idx) { (__ptr_idx) in
                callback.withUnsafeRawPointer { (__ptr_callback) in
                    withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx, __ptr_callback) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_global_menu_set_item_callback,
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

    private static var __method_binding_global_menu_set_item_key_callback: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_set_item_key_callback").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3809915389)!
        }
        }
    }()
    public func globalMenuSetItemKeyCallback(menuRoot: Godot.GodotString, idx: Int32, keyCallback: Godot.Callable) {
        menuRoot.withUnsafeRawPointer { (__ptr_menuRoot) in
            withUnsafePointer(to: idx) { (__ptr_idx) in
                keyCallback.withUnsafeRawPointer { (__ptr_keyCallback) in
                    withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx, __ptr_keyCallback) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_global_menu_set_item_key_callback,
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

    private static var __method_binding_global_menu_set_item_tag: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_set_item_tag").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 453659863)!
        }
        }
    }()
    public func globalMenuSetItemTag<Variant1 : ConvertibleToVariant>(menuRoot: Godot.GodotString, idx: Int32, tag: Variant1) {
        menuRoot.withUnsafeRawPointer { (__ptr_menuRoot) in
            withUnsafePointer(to: idx) { (__ptr_idx) in
                tag.makeVariant().withUnsafeRawPointer { (__ptr_tag) in
                    withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx, __ptr_tag) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_global_menu_set_item_tag,
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

    private static var __method_binding_global_menu_set_item_text: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_set_item_text").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 965966136)!
        }
        }
    }()
    public func globalMenuSetItemText(menuRoot: Godot.GodotString, idx: Int32, text: Godot.GodotString) {
        menuRoot.withUnsafeRawPointer { (__ptr_menuRoot) in
            withUnsafePointer(to: idx) { (__ptr_idx) in
                text.withUnsafeRawPointer { (__ptr_text) in
                    withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx, __ptr_text) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_global_menu_set_item_text,
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

    private static var __method_binding_global_menu_set_item_submenu: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_set_item_submenu").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 965966136)!
        }
        }
    }()
    public func globalMenuSetItemSubmenu(menuRoot: Godot.GodotString, idx: Int32, submenu: Godot.GodotString) {
        menuRoot.withUnsafeRawPointer { (__ptr_menuRoot) in
            withUnsafePointer(to: idx) { (__ptr_idx) in
                submenu.withUnsafeRawPointer { (__ptr_submenu) in
                    withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx, __ptr_submenu) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_global_menu_set_item_submenu,
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

    private static var __method_binding_global_menu_set_item_accelerator: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_set_item_accelerator").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 566943293)!
        }
        }
    }()
    public func globalMenuSetItemAccelerator(menuRoot: Godot.GodotString, idx: Int32, keycode: Godot.Key) {
        menuRoot.withUnsafeRawPointer { (__ptr_menuRoot) in
            withUnsafePointer(to: idx) { (__ptr_idx) in
                withUnsafePointer(to: keycode) { (__ptr_keycode) in
                    withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx, __ptr_keycode) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_global_menu_set_item_accelerator,
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

    private static var __method_binding_global_menu_set_item_disabled: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_set_item_disabled").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4108344793)!
        }
        }
    }()
    public func globalMenuSetItemDisabled(menuRoot: Godot.GodotString, idx: Int32, disabled: Bool) {
        menuRoot.withUnsafeRawPointer { (__ptr_menuRoot) in
            withUnsafePointer(to: idx) { (__ptr_idx) in
                withUnsafePointer(to: disabled) { (__ptr_disabled) in
                    withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx, __ptr_disabled) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_global_menu_set_item_disabled,
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

    private static var __method_binding_global_menu_set_item_tooltip: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_set_item_tooltip").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 965966136)!
        }
        }
    }()
    public func globalMenuSetItemTooltip(menuRoot: Godot.GodotString, idx: Int32, tooltip: Godot.GodotString) {
        menuRoot.withUnsafeRawPointer { (__ptr_menuRoot) in
            withUnsafePointer(to: idx) { (__ptr_idx) in
                tooltip.withUnsafeRawPointer { (__ptr_tooltip) in
                    withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx, __ptr_tooltip) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_global_menu_set_item_tooltip,
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

    private static var __method_binding_global_menu_set_item_state: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_set_item_state").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3474840532)!
        }
        }
    }()
    public func globalMenuSetItemState(menuRoot: Godot.GodotString, idx: Int32, state: Int32) {
        menuRoot.withUnsafeRawPointer { (__ptr_menuRoot) in
            withUnsafePointer(to: idx) { (__ptr_idx) in
                withUnsafePointer(to: state) { (__ptr_state) in
                    withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx, __ptr_state) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_global_menu_set_item_state,
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

    private static var __method_binding_global_menu_set_item_max_states: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_set_item_max_states").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3474840532)!
        }
        }
    }()
    public func globalMenuSetItemMaxStates(menuRoot: Godot.GodotString, idx: Int32, maxStates: Int32) {
        menuRoot.withUnsafeRawPointer { (__ptr_menuRoot) in
            withUnsafePointer(to: idx) { (__ptr_idx) in
                withUnsafePointer(to: maxStates) { (__ptr_maxStates) in
                    withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx, __ptr_maxStates) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_global_menu_set_item_max_states,
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

    private static var __method_binding_global_menu_set_item_icon: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_set_item_icon").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3201338066)!
        }
        }
    }()
    public func globalMenuSetItemIcon(menuRoot: Godot.GodotString, idx: Int32, icon: Godot.Texture2D?) {
        menuRoot.withUnsafeRawPointer { (__ptr_menuRoot) in
            withUnsafePointer(to: idx) { (__ptr_idx) in
                icon.withUnsafeRawPointer { (__ptr_icon) in
                    withUnsafePointer(to: __ptr_icon) { (_ptr___ptr_icon) in
                        withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx, _ptr___ptr_icon) { (__accessPtr) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_global_menu_set_item_icon,
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

    private static var __method_binding_global_menu_set_item_indentation_level: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_set_item_indentation_level").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3474840532)!
        }
        }
    }()
    public func globalMenuSetItemIndentationLevel(menuRoot: Godot.GodotString, idx: Int32, level: Int32) {
        menuRoot.withUnsafeRawPointer { (__ptr_menuRoot) in
            withUnsafePointer(to: idx) { (__ptr_idx) in
                withUnsafePointer(to: level) { (__ptr_level) in
                    withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx, __ptr_level) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_global_menu_set_item_indentation_level,
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

    private static var __method_binding_global_menu_get_item_count: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_get_item_count").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1321353865)!
        }
        }
    }()
    public func globalMenuGetItemCount(menuRoot: Godot.GodotString) -> Int32 {
        var __temporary = Int32()
        menuRoot.withUnsafeRawPointer { (__ptr_menuRoot) in
            withUnsafeArgumentPackPointer(__ptr_menuRoot) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_global_menu_get_item_count,
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

    private static var __method_binding_global_menu_remove_item: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_remove_item").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2956805083)!
        }
        }
    }()
    public func globalMenuRemoveItem(menuRoot: Godot.GodotString, idx: Int32) {
        menuRoot.withUnsafeRawPointer { (__ptr_menuRoot) in
            withUnsafePointer(to: idx) { (__ptr_idx) in
                withUnsafeArgumentPackPointer(__ptr_menuRoot, __ptr_idx) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_global_menu_remove_item,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_global_menu_clear: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_menu_clear").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func globalMenuClear(menuRoot: Godot.GodotString) {
        menuRoot.withUnsafeRawPointer { (__ptr_menuRoot) in
            withUnsafeArgumentPackPointer(__ptr_menuRoot) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_global_menu_clear,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_tts_is_speaking: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "tts_is_speaking").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func ttsIsSpeaking() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_tts_is_speaking,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_tts_is_paused: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "tts_is_paused").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func ttsIsPaused() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_tts_is_paused,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_tts_get_voices: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "tts_get_voices").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()
    public func ttsGetVoices() -> Godot.GodotTypedArray<Godot.GodotDictionary> {
        let __temporary = Godot.GodotTypedArray<Godot.GodotDictionary>()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_tts_get_voices,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_tts_get_voices_for_language: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "tts_get_voices_for_language").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4291131558)!
        }
        }
    }()
    public func ttsGetVoicesForLanguage(_ language: Godot.GodotString) -> Godot.PackedStringArray {
        let __temporary = Godot.PackedStringArray()
        language.withUnsafeRawPointer { (__ptr_language) in
            withUnsafeArgumentPackPointer(__ptr_language) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_tts_get_voices_for_language,
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

    private static var __method_binding_tts_speak: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "tts_speak").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3741216677)!
        }
        }
    }()
    public func ttsSpeak(text: Godot.GodotString, voice: Godot.GodotString, volume: Int32 = 50, pitch: Double = 1.0, rate: Double = 1.0, utteranceId: Int32 = 0, interrupt: Bool = false) {
        text.withUnsafeRawPointer { (__ptr_text) in
            voice.withUnsafeRawPointer { (__ptr_voice) in
                withUnsafePointer(to: volume) { (__ptr_volume) in
                    withUnsafePointer(to: pitch) { (__ptr_pitch) in
                        withUnsafePointer(to: rate) { (__ptr_rate) in
                            withUnsafePointer(to: utteranceId) { (__ptr_utteranceId) in
                                withUnsafePointer(to: interrupt) { (__ptr_interrupt) in
                                    withUnsafeArgumentPackPointer(__ptr_text, __ptr_voice, __ptr_volume, __ptr_pitch, __ptr_rate, __ptr_utteranceId, __ptr_interrupt) { (__accessPtr) in
                                        `self`.withUnsafeRawPointer { (__ptr_self) in
                                            gdextension_interface_object_method_bind_ptrcall(
                                                Self.__method_binding_tts_speak,
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
    }

    private static var __method_binding_tts_pause: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "tts_pause").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func ttsPause() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_tts_pause,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_tts_resume: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "tts_resume").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func ttsResume() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_tts_resume,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_tts_stop: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "tts_stop").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func ttsStop() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_tts_stop,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_tts_set_utterance_callback: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "tts_set_utterance_callback").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 109679083)!
        }
        }
    }()
    public func ttsSetUtteranceCallback(event: Godot.DisplayServer.TTSUtteranceEvent, callable: Godot.Callable) {
        withUnsafePointer(to: event) { (__ptr_event) in
            callable.withUnsafeRawPointer { (__ptr_callable) in
                withUnsafeArgumentPackPointer(__ptr_event, __ptr_callable) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_tts_set_utterance_callback,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_is_dark_mode_supported: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_dark_mode_supported").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func isDarkModeSupported() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_dark_mode_supported,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_is_dark_mode: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_dark_mode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func isDarkMode() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_dark_mode,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_accent_color: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_accent_color").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3444240500)!
        }
        }
    }()
    public func accentColor() -> Godot.Color {
        var __temporary = Godot.Color()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_accent_color,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_mouse_set_mode: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "mouse_set_mode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 348288463)!
        }
        }
    }()
    public func mouseSetMode(mouseMode: Godot.DisplayServer.MouseMode) {
        withUnsafePointer(to: mouseMode) { (__ptr_mouseMode) in
            withUnsafeArgumentPackPointer(__ptr_mouseMode) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_mouse_set_mode,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_mouse_get_mode: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "mouse_get_mode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1353961651)!
        }
        }
    }()
    public func mouseGetMode() -> Godot.DisplayServer.MouseMode {
        var __temporary = Godot.DisplayServer.MouseMode.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_mouse_get_mode,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.DisplayServer.MouseMode(rawValue: __temporary)!
    }

    private static var __method_binding_warp_mouse: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "warp_mouse").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1130785943)!
        }
        }
    }()
    public func warpMouse(position: Godot.Vector2i) {
        withUnsafePointer(to: position) { (__ptr_position) in
            withUnsafeArgumentPackPointer(__ptr_position) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_warp_mouse,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_mouse_get_position: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "mouse_get_position").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3690982128)!
        }
        }
    }()
    public func mouseGetPosition() -> Godot.Vector2i {
        var __temporary = Godot.Vector2i()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_mouse_get_position,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_mouse_get_button_state: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "mouse_get_button_state").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2512161324)!
        }
        }
    }()
    public func mouseGetButtonState() -> Godot.MouseButtonMask {
        var __temporary = Godot.MouseButtonMask()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_mouse_get_button_state,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_clipboard_set: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clipboard_set").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func clipboardSet(clipboard: Godot.GodotString) {
        clipboard.withUnsafeRawPointer { (__ptr_clipboard) in
            withUnsafeArgumentPackPointer(__ptr_clipboard) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_clipboard_set,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_clipboard_get: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clipboard_get").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    public func clipboardGet() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_clipboard_get,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_clipboard_has: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clipboard_has").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func clipboardHas() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_clipboard_has,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_clipboard_set_primary: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clipboard_set_primary").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func clipboardSetPrimary(clipboardPrimary: Godot.GodotString) {
        clipboardPrimary.withUnsafeRawPointer { (__ptr_clipboardPrimary) in
            withUnsafeArgumentPackPointer(__ptr_clipboardPrimary) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_clipboard_set_primary,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_clipboard_get_primary: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clipboard_get_primary").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    public func clipboardGetPrimary() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_clipboard_get_primary,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_display_cutouts: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_display_cutouts").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()
    public func displayCutouts() -> Godot.GodotTypedArray<Godot.Rect2> {
        let __temporary = Godot.GodotTypedArray<Godot.Rect2>()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_display_cutouts,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_display_safe_area: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_display_safe_area").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 410525958)!
        }
        }
    }()
    public func displaySafeArea() -> Godot.Rect2i {
        var __temporary = Godot.Rect2i()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_display_safe_area,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_screen_count: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_screen_count").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func screenCount() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_screen_count,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_primary_screen: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_primary_screen").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func primaryScreen() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_primary_screen,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_keyboard_focus_screen: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_keyboard_focus_screen").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func keyboardFocusScreen() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_keyboard_focus_screen,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_screen_from_rect: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_screen_from_rect").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 741354659)!
        }
        }
    }()
    public func screenFromRect(_ rect: Godot.Rect2) -> Int32 {
        var __temporary = Int32()
        withUnsafePointer(to: rect) { (__ptr_rect) in
            withUnsafeArgumentPackPointer(__ptr_rect) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_screen_from_rect,
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

    private static var __method_binding_screen_get_position: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "screen_get_position").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1725937825)!
        }
        }
    }()
    public func screenGetPosition(screen: Int32 = -1) -> Godot.Vector2i {
        var __temporary = Godot.Vector2i()
        withUnsafePointer(to: screen) { (__ptr_screen) in
            withUnsafeArgumentPackPointer(__ptr_screen) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_screen_get_position,
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

    private static var __method_binding_screen_get_size: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "screen_get_size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1725937825)!
        }
        }
    }()
    public func screenGetSize(screen: Int32 = -1) -> Godot.Vector2i {
        var __temporary = Godot.Vector2i()
        withUnsafePointer(to: screen) { (__ptr_screen) in
            withUnsafeArgumentPackPointer(__ptr_screen) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_screen_get_size,
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

    private static var __method_binding_screen_get_usable_rect: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "screen_get_usable_rect").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2439012528)!
        }
        }
    }()
    public func screenGetUsableRect(screen: Int32 = -1) -> Godot.Rect2i {
        var __temporary = Godot.Rect2i()
        withUnsafePointer(to: screen) { (__ptr_screen) in
            withUnsafeArgumentPackPointer(__ptr_screen) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_screen_get_usable_rect,
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

    private static var __method_binding_screen_get_dpi: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "screen_get_dpi").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 181039630)!
        }
        }
    }()
    public func screenGetDpi(screen: Int32 = -1) -> Int32 {
        var __temporary = Int32()
        withUnsafePointer(to: screen) { (__ptr_screen) in
            withUnsafeArgumentPackPointer(__ptr_screen) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_screen_get_dpi,
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

    private static var __method_binding_screen_get_scale: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "screen_get_scale").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 909105437)!
        }
        }
    }()
    public func screenGetScale(screen: Int32 = -1) -> Double {
        var __temporary = Double()
        withUnsafePointer(to: screen) { (__ptr_screen) in
            withUnsafeArgumentPackPointer(__ptr_screen) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_screen_get_scale,
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

    private static var __method_binding_is_touchscreen_available: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_touchscreen_available").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4162880507)!
        }
        }
    }()
    public func isTouchscreenAvailable() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_touchscreen_available,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_screen_get_max_scale: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "screen_get_max_scale").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    public func screenGetMaxScale() -> Double {
        var __temporary = Double()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_screen_get_max_scale,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_screen_get_refresh_rate: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "screen_get_refresh_rate").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 909105437)!
        }
        }
    }()
    public func screenGetRefreshRate(screen: Int32 = -1) -> Double {
        var __temporary = Double()
        withUnsafePointer(to: screen) { (__ptr_screen) in
            withUnsafeArgumentPackPointer(__ptr_screen) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_screen_get_refresh_rate,
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

    private static var __method_binding_screen_get_pixel: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "screen_get_pixel").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1532707496)!
        }
        }
    }()
    public func screenGetPixel(position: Godot.Vector2i) -> Godot.Color {
        var __temporary = Godot.Color()
        withUnsafePointer(to: position) { (__ptr_position) in
            withUnsafeArgumentPackPointer(__ptr_position) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_screen_get_pixel,
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

    private static var __method_binding_screen_get_image: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "screen_get_image").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3813388802)!
        }
        }
    }()
    public func screenGetImage(screen: Int32 = -1) -> Godot.Image? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafePointer(to: screen) { (__ptr_screen) in
            withUnsafeArgumentPackPointer(__ptr_screen) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_screen_get_image,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.Image.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_screen_set_orientation: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "screen_set_orientation").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2629526904)!
        }
        }
    }()
    public func screenSetOrientation(_ orientation: Godot.DisplayServer.ScreenOrientation, screen: Int32 = -1) {
        withUnsafePointer(to: orientation) { (__ptr_orientation) in
            withUnsafePointer(to: screen) { (__ptr_screen) in
                withUnsafeArgumentPackPointer(__ptr_orientation, __ptr_screen) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_screen_set_orientation,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_screen_get_orientation: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "screen_get_orientation").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 133818562)!
        }
        }
    }()
    public func screenGetOrientation(screen: Int32 = -1) -> Godot.DisplayServer.ScreenOrientation {
        var __temporary = Godot.DisplayServer.ScreenOrientation.RawValue(0)
        withUnsafePointer(to: screen) { (__ptr_screen) in
            withUnsafeArgumentPackPointer(__ptr_screen) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_screen_get_orientation,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.DisplayServer.ScreenOrientation(rawValue: __temporary)!
    }

    private static var __method_binding_screen_set_keep_on: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "screen_set_keep_on").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    public func screenSetKeepOn(enable: Bool) {
        withUnsafePointer(to: enable) { (__ptr_enable) in
            withUnsafeArgumentPackPointer(__ptr_enable) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_screen_set_keep_on,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_screen_is_kept_on: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "screen_is_kept_on").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func screenIsKeptOn() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_screen_is_kept_on,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_window_list: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_window_list").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1930428628)!
        }
        }
    }()
    public func windowList() -> Godot.PackedInt32Array {
        let __temporary = Godot.PackedInt32Array()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_window_list,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_window_at_screen_position: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_window_at_screen_position").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2485466453)!
        }
        }
    }()
    public func windowAtScreenPosition(_ position: Godot.Vector2i) -> Int32 {
        var __temporary = Int32()
        withUnsafePointer(to: position) { (__ptr_position) in
            withUnsafeArgumentPackPointer(__ptr_position) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_window_at_screen_position,
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

    private static var __method_binding_window_get_native_handle: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_get_native_handle").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2709193271)!
        }
        }
    }()
    public func windowGetNativeHandle(handleType: Godot.DisplayServer.HandleType, windowId: Int32 = 0) -> Int64 {
        var __temporary = Int64()
        withUnsafePointer(to: handleType) { (__ptr_handleType) in
            withUnsafePointer(to: windowId) { (__ptr_windowId) in
                withUnsafeArgumentPackPointer(__ptr_handleType, __ptr_windowId) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_window_get_native_handle,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_window_get_active_popup: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_get_active_popup").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func windowGetActivePopup() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_window_get_active_popup,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_window_set_popup_safe_rect: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_set_popup_safe_rect").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3317281434)!
        }
        }
    }()
    public func windowSetPopupSafeRect(window: Int32, rect: Godot.Rect2i) {
        withUnsafePointer(to: window) { (__ptr_window) in
            withUnsafePointer(to: rect) { (__ptr_rect) in
                withUnsafeArgumentPackPointer(__ptr_window, __ptr_rect) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_window_set_popup_safe_rect,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_window_get_popup_safe_rect: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_get_popup_safe_rect").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2161169500)!
        }
        }
    }()
    public func windowGetPopupSafeRect(window: Int32) -> Godot.Rect2i {
        var __temporary = Godot.Rect2i()
        withUnsafePointer(to: window) { (__ptr_window) in
            withUnsafeArgumentPackPointer(__ptr_window) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_window_get_popup_safe_rect,
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

    private static var __method_binding_window_set_title: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_set_title").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3043792800)!
        }
        }
    }()
    public func windowSetTitle(_ title: Godot.GodotString, windowId: Int32 = 0) {
        title.withUnsafeRawPointer { (__ptr_title) in
            withUnsafePointer(to: windowId) { (__ptr_windowId) in
                withUnsafeArgumentPackPointer(__ptr_title, __ptr_windowId) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_window_set_title,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_window_set_mouse_passthrough: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_set_mouse_passthrough").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3958815166)!
        }
        }
    }()
    public func windowSetMousePassthrough(region: Godot.PackedVector2Array, windowId: Int32 = 0) {
        region.withUnsafeRawPointer { (__ptr_region) in
            withUnsafePointer(to: windowId) { (__ptr_windowId) in
                withUnsafeArgumentPackPointer(__ptr_region, __ptr_windowId) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_window_set_mouse_passthrough,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_window_get_current_screen: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_get_current_screen").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1591665591)!
        }
        }
    }()
    public func windowGetCurrentScreen(windowId: Int32 = 0) -> Int32 {
        var __temporary = Int32()
        withUnsafePointer(to: windowId) { (__ptr_windowId) in
            withUnsafeArgumentPackPointer(__ptr_windowId) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_window_get_current_screen,
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

    private static var __method_binding_window_set_current_screen: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_set_current_screen").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3023605688)!
        }
        }
    }()
    public func windowSetCurrentScreen(_ screen: Int32, windowId: Int32 = 0) {
        withUnsafePointer(to: screen) { (__ptr_screen) in
            withUnsafePointer(to: windowId) { (__ptr_windowId) in
                withUnsafeArgumentPackPointer(__ptr_screen, __ptr_windowId) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_window_set_current_screen,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_window_get_position: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_get_position").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 763922886)!
        }
        }
    }()
    public func windowGetPosition(windowId: Int32 = 0) -> Godot.Vector2i {
        var __temporary = Godot.Vector2i()
        withUnsafePointer(to: windowId) { (__ptr_windowId) in
            withUnsafeArgumentPackPointer(__ptr_windowId) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_window_get_position,
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

    private static var __method_binding_window_get_position_with_decorations: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_get_position_with_decorations").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 763922886)!
        }
        }
    }()
    public func windowGetPositionWithDecorations(windowId: Int32 = 0) -> Godot.Vector2i {
        var __temporary = Godot.Vector2i()
        withUnsafePointer(to: windowId) { (__ptr_windowId) in
            withUnsafeArgumentPackPointer(__ptr_windowId) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_window_get_position_with_decorations,
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

    private static var __method_binding_window_set_position: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_set_position").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3614040015)!
        }
        }
    }()
    public func windowSetPosition(_ position: Godot.Vector2i, windowId: Int32 = 0) {
        withUnsafePointer(to: position) { (__ptr_position) in
            withUnsafePointer(to: windowId) { (__ptr_windowId) in
                withUnsafeArgumentPackPointer(__ptr_position, __ptr_windowId) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_window_set_position,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_window_get_size: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_get_size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 763922886)!
        }
        }
    }()
    public func windowGetSize(windowId: Int32 = 0) -> Godot.Vector2i {
        var __temporary = Godot.Vector2i()
        withUnsafePointer(to: windowId) { (__ptr_windowId) in
            withUnsafeArgumentPackPointer(__ptr_windowId) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_window_get_size,
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

    private static var __method_binding_window_set_size: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_set_size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3614040015)!
        }
        }
    }()
    public func windowSetSize(_ size: Godot.Vector2i, windowId: Int32 = 0) {
        withUnsafePointer(to: size) { (__ptr_size) in
            withUnsafePointer(to: windowId) { (__ptr_windowId) in
                withUnsafeArgumentPackPointer(__ptr_size, __ptr_windowId) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_window_set_size,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_window_set_rect_changed_callback: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_set_rect_changed_callback").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3653650673)!
        }
        }
    }()
    public func windowSetRectChangedCallback(_ callback: Godot.Callable, windowId: Int32 = 0) {
        callback.withUnsafeRawPointer { (__ptr_callback) in
            withUnsafePointer(to: windowId) { (__ptr_windowId) in
                withUnsafeArgumentPackPointer(__ptr_callback, __ptr_windowId) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_window_set_rect_changed_callback,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_window_set_window_event_callback: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_set_window_event_callback").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3653650673)!
        }
        }
    }()
    public func windowSetWindowEventCallback(_ callback: Godot.Callable, windowId: Int32 = 0) {
        callback.withUnsafeRawPointer { (__ptr_callback) in
            withUnsafePointer(to: windowId) { (__ptr_windowId) in
                withUnsafeArgumentPackPointer(__ptr_callback, __ptr_windowId) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_window_set_window_event_callback,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_window_set_input_event_callback: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_set_input_event_callback").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3653650673)!
        }
        }
    }()
    public func windowSetInputEventCallback(_ callback: Godot.Callable, windowId: Int32 = 0) {
        callback.withUnsafeRawPointer { (__ptr_callback) in
            withUnsafePointer(to: windowId) { (__ptr_windowId) in
                withUnsafeArgumentPackPointer(__ptr_callback, __ptr_windowId) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_window_set_input_event_callback,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_window_set_input_text_callback: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_set_input_text_callback").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3653650673)!
        }
        }
    }()
    public func windowSetInputTextCallback(_ callback: Godot.Callable, windowId: Int32 = 0) {
        callback.withUnsafeRawPointer { (__ptr_callback) in
            withUnsafePointer(to: windowId) { (__ptr_windowId) in
                withUnsafeArgumentPackPointer(__ptr_callback, __ptr_windowId) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_window_set_input_text_callback,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_window_set_drop_files_callback: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_set_drop_files_callback").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3653650673)!
        }
        }
    }()
    public func windowSetDropFilesCallback(_ callback: Godot.Callable, windowId: Int32 = 0) {
        callback.withUnsafeRawPointer { (__ptr_callback) in
            withUnsafePointer(to: windowId) { (__ptr_windowId) in
                withUnsafeArgumentPackPointer(__ptr_callback, __ptr_windowId) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_window_set_drop_files_callback,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_window_get_attached_instance_id: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_get_attached_instance_id").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1591665591)!
        }
        }
    }()
    public func windowGetAttachedInstanceId(windowId: Int32 = 0) -> UInt64 {
        var __temporary = UInt64()
        withUnsafePointer(to: windowId) { (__ptr_windowId) in
            withUnsafeArgumentPackPointer(__ptr_windowId) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_window_get_attached_instance_id,
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

    private static var __method_binding_window_get_max_size: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_get_max_size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 763922886)!
        }
        }
    }()
    public func windowGetMaxSize(windowId: Int32 = 0) -> Godot.Vector2i {
        var __temporary = Godot.Vector2i()
        withUnsafePointer(to: windowId) { (__ptr_windowId) in
            withUnsafeArgumentPackPointer(__ptr_windowId) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_window_get_max_size,
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

    private static var __method_binding_window_set_max_size: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_set_max_size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3614040015)!
        }
        }
    }()
    public func windowSetMaxSize(_ maxSize: Godot.Vector2i, windowId: Int32 = 0) {
        withUnsafePointer(to: maxSize) { (__ptr_maxSize) in
            withUnsafePointer(to: windowId) { (__ptr_windowId) in
                withUnsafeArgumentPackPointer(__ptr_maxSize, __ptr_windowId) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_window_set_max_size,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_window_get_min_size: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_get_min_size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 763922886)!
        }
        }
    }()
    public func windowGetMinSize(windowId: Int32 = 0) -> Godot.Vector2i {
        var __temporary = Godot.Vector2i()
        withUnsafePointer(to: windowId) { (__ptr_windowId) in
            withUnsafeArgumentPackPointer(__ptr_windowId) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_window_get_min_size,
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

    private static var __method_binding_window_set_min_size: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_set_min_size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3614040015)!
        }
        }
    }()
    public func windowSetMinSize(_ minSize: Godot.Vector2i, windowId: Int32 = 0) {
        withUnsafePointer(to: minSize) { (__ptr_minSize) in
            withUnsafePointer(to: windowId) { (__ptr_windowId) in
                withUnsafeArgumentPackPointer(__ptr_minSize, __ptr_windowId) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_window_set_min_size,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_window_get_size_with_decorations: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_get_size_with_decorations").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 763922886)!
        }
        }
    }()
    public func windowGetSizeWithDecorations(windowId: Int32 = 0) -> Godot.Vector2i {
        var __temporary = Godot.Vector2i()
        withUnsafePointer(to: windowId) { (__ptr_windowId) in
            withUnsafeArgumentPackPointer(__ptr_windowId) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_window_get_size_with_decorations,
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

    private static var __method_binding_window_get_mode: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_get_mode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2185728461)!
        }
        }
    }()
    public func windowGetMode(windowId: Int32 = 0) -> Godot.DisplayServer.WindowMode {
        var __temporary = Godot.DisplayServer.WindowMode.RawValue(0)
        withUnsafePointer(to: windowId) { (__ptr_windowId) in
            withUnsafeArgumentPackPointer(__ptr_windowId) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_window_get_mode,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.DisplayServer.WindowMode(rawValue: __temporary)!
    }

    private static var __method_binding_window_set_mode: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_set_mode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2942569511)!
        }
        }
    }()
    public func windowSetMode(_ mode: Godot.DisplayServer.WindowMode, windowId: Int32 = 0) {
        withUnsafePointer(to: mode) { (__ptr_mode) in
            withUnsafePointer(to: windowId) { (__ptr_windowId) in
                withUnsafeArgumentPackPointer(__ptr_mode, __ptr_windowId) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_window_set_mode,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_window_set_flag: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_set_flag").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3971592565)!
        }
        }
    }()
    public func windowSetFlag(_ flag: Godot.DisplayServer.WindowFlags, enabled: Bool, windowId: Int32 = 0) {
        withUnsafePointer(to: flag) { (__ptr_flag) in
            withUnsafePointer(to: enabled) { (__ptr_enabled) in
                withUnsafePointer(to: windowId) { (__ptr_windowId) in
                    withUnsafeArgumentPackPointer(__ptr_flag, __ptr_enabled, __ptr_windowId) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_window_set_flag,
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

    private static var __method_binding_window_get_flag: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_get_flag").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2662949986)!
        }
        }
    }()
    public func windowGetFlag(_ flag: Godot.DisplayServer.WindowFlags, windowId: Int32 = 0) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: flag) { (__ptr_flag) in
            withUnsafePointer(to: windowId) { (__ptr_windowId) in
                withUnsafeArgumentPackPointer(__ptr_flag, __ptr_windowId) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_window_get_flag,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_window_set_window_buttons_offset: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_set_window_buttons_offset").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3614040015)!
        }
        }
    }()
    public func windowSetWindowButtonsOffset(_ offset: Godot.Vector2i, windowId: Int32 = 0) {
        withUnsafePointer(to: offset) { (__ptr_offset) in
            withUnsafePointer(to: windowId) { (__ptr_windowId) in
                withUnsafeArgumentPackPointer(__ptr_offset, __ptr_windowId) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_window_set_window_buttons_offset,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_window_get_safe_title_margins: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_get_safe_title_margins").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2295066620)!
        }
        }
    }()
    public func windowGetSafeTitleMargins(windowId: Int32 = 0) -> Godot.Vector3i {
        var __temporary = Godot.Vector3i()
        withUnsafePointer(to: windowId) { (__ptr_windowId) in
            withUnsafeArgumentPackPointer(__ptr_windowId) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_window_get_safe_title_margins,
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

    private static var __method_binding_window_request_attention: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_request_attention").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1995695955)!
        }
        }
    }()
    public func windowRequestAttention(windowId: Int32 = 0) {
        withUnsafePointer(to: windowId) { (__ptr_windowId) in
            withUnsafeArgumentPackPointer(__ptr_windowId) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_window_request_attention,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_window_move_to_foreground: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_move_to_foreground").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1995695955)!
        }
        }
    }()
    public func windowMoveToForeground(windowId: Int32 = 0) {
        withUnsafePointer(to: windowId) { (__ptr_windowId) in
            withUnsafeArgumentPackPointer(__ptr_windowId) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_window_move_to_foreground,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_window_is_focused: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_is_focused").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1051549951)!
        }
        }
    }()
    public func windowIsFocused(windowId: Int32 = 0) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: windowId) { (__ptr_windowId) in
            withUnsafeArgumentPackPointer(__ptr_windowId) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_window_is_focused,
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

    private static var __method_binding_window_can_draw: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_can_draw").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1051549951)!
        }
        }
    }()
    public func windowCanDraw(windowId: Int32 = 0) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: windowId) { (__ptr_windowId) in
            withUnsafeArgumentPackPointer(__ptr_windowId) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_window_can_draw,
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

    private static var __method_binding_window_set_transient: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_set_transient").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func windowSetTransient(windowId: Int32, parentWindowId: Int32) {
        withUnsafePointer(to: windowId) { (__ptr_windowId) in
            withUnsafePointer(to: parentWindowId) { (__ptr_parentWindowId) in
                withUnsafeArgumentPackPointer(__ptr_windowId, __ptr_parentWindowId) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_window_set_transient,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_window_set_exclusive: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_set_exclusive").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()
    public func windowSetExclusive(windowId: Int32, exclusive: Bool) {
        withUnsafePointer(to: windowId) { (__ptr_windowId) in
            withUnsafePointer(to: exclusive) { (__ptr_exclusive) in
                withUnsafeArgumentPackPointer(__ptr_windowId, __ptr_exclusive) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_window_set_exclusive,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_window_set_ime_active: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_set_ime_active").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 450484987)!
        }
        }
    }()
    public func windowSetImeActive(_ active: Bool, windowId: Int32 = 0) {
        withUnsafePointer(to: active) { (__ptr_active) in
            withUnsafePointer(to: windowId) { (__ptr_windowId) in
                withUnsafeArgumentPackPointer(__ptr_active, __ptr_windowId) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_window_set_ime_active,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_window_set_ime_position: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_set_ime_position").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3614040015)!
        }
        }
    }()
    public func windowSetImePosition(_ position: Godot.Vector2i, windowId: Int32 = 0) {
        withUnsafePointer(to: position) { (__ptr_position) in
            withUnsafePointer(to: windowId) { (__ptr_windowId) in
                withUnsafeArgumentPackPointer(__ptr_position, __ptr_windowId) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_window_set_ime_position,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_window_set_vsync_mode: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_set_vsync_mode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1708924624)!
        }
        }
    }()
    public func windowSetVsyncMode(_ vsyncMode: Godot.DisplayServer.VSyncMode, windowId: Int32 = 0) {
        withUnsafePointer(to: vsyncMode) { (__ptr_vsyncMode) in
            withUnsafePointer(to: windowId) { (__ptr_windowId) in
                withUnsafeArgumentPackPointer(__ptr_vsyncMode, __ptr_windowId) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_window_set_vsync_mode,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_window_get_vsync_mode: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_get_vsync_mode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 578873795)!
        }
        }
    }()
    public func windowGetVsyncMode(windowId: Int32 = 0) -> Godot.DisplayServer.VSyncMode {
        var __temporary = Godot.DisplayServer.VSyncMode.RawValue(0)
        withUnsafePointer(to: windowId) { (__ptr_windowId) in
            withUnsafeArgumentPackPointer(__ptr_windowId) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_window_get_vsync_mode,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.DisplayServer.VSyncMode(rawValue: __temporary)!
    }

    private static var __method_binding_window_is_maximize_allowed: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_is_maximize_allowed").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1051549951)!
        }
        }
    }()
    public func windowIsMaximizeAllowed(windowId: Int32 = 0) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: windowId) { (__ptr_windowId) in
            withUnsafeArgumentPackPointer(__ptr_windowId) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_window_is_maximize_allowed,
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

    private static var __method_binding_window_maximize_on_title_dbl_click: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_maximize_on_title_dbl_click").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func windowMaximizeOnTitleDblClick() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_window_maximize_on_title_dbl_click,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_window_minimize_on_title_dbl_click: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "window_minimize_on_title_dbl_click").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func windowMinimizeOnTitleDblClick() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_window_minimize_on_title_dbl_click,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_ime_get_selection: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "ime_get_selection").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3690982128)!
        }
        }
    }()
    public func imeGetSelection() -> Godot.Vector2i {
        var __temporary = Godot.Vector2i()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_ime_get_selection,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_ime_get_text: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "ime_get_text").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    public func imeGetText() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_ime_get_text,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_virtual_keyboard_show: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "virtual_keyboard_show").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 860410478)!
        }
        }
    }()
    public func virtualKeyboardShow(existingText: Godot.GodotString, position: Godot.Rect2 = Rect2(x: 0, y: 0, width: 0, height: 0), type: Godot.DisplayServer.VirtualKeyboardType = DisplayServer.VirtualKeyboardType(rawValue: 0)!, maxLength: Int32 = -1, cursorStart: Int32 = -1, cursorEnd: Int32 = -1) {
        existingText.withUnsafeRawPointer { (__ptr_existingText) in
            withUnsafePointer(to: position) { (__ptr_position) in
                withUnsafePointer(to: type) { (__ptr_type) in
                    withUnsafePointer(to: maxLength) { (__ptr_maxLength) in
                        withUnsafePointer(to: cursorStart) { (__ptr_cursorStart) in
                            withUnsafePointer(to: cursorEnd) { (__ptr_cursorEnd) in
                                withUnsafeArgumentPackPointer(__ptr_existingText, __ptr_position, __ptr_type, __ptr_maxLength, __ptr_cursorStart, __ptr_cursorEnd) { (__accessPtr) in
                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                        gdextension_interface_object_method_bind_ptrcall(
                                            Self.__method_binding_virtual_keyboard_show,
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

    private static var __method_binding_virtual_keyboard_hide: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "virtual_keyboard_hide").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func virtualKeyboardHide() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_virtual_keyboard_hide,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_virtual_keyboard_get_height: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "virtual_keyboard_get_height").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func virtualKeyboardGetHeight() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_virtual_keyboard_get_height,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_cursor_set_shape: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "cursor_set_shape").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2026291549)!
        }
        }
    }()
    public func cursorSetShape(_ shape: Godot.DisplayServer.CursorShape) {
        withUnsafePointer(to: shape) { (__ptr_shape) in
            withUnsafeArgumentPackPointer(__ptr_shape) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_cursor_set_shape,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_cursor_get_shape: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "cursor_get_shape").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1087724927)!
        }
        }
    }()
    public func cursorGetShape() -> Godot.DisplayServer.CursorShape {
        var __temporary = Godot.DisplayServer.CursorShape.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_cursor_get_shape,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.DisplayServer.CursorShape(rawValue: __temporary)!
    }

    private static var __method_binding_cursor_set_custom_image: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "cursor_set_custom_image").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1358907026)!
        }
        }
    }()
    public func cursorSetCustomImage(cursor: Godot.Resource?, shape: Godot.DisplayServer.CursorShape = DisplayServer.CursorShape(rawValue: 0)!, hotspot: Godot.Vector2 = Vector2(x: 0, y: 0)) {
        cursor.withUnsafeRawPointer { (__ptr_cursor) in
            withUnsafePointer(to: __ptr_cursor) { (_ptr___ptr_cursor) in
                withUnsafePointer(to: shape) { (__ptr_shape) in
                    withUnsafePointer(to: hotspot) { (__ptr_hotspot) in
                        withUnsafeArgumentPackPointer(_ptr___ptr_cursor, __ptr_shape, __ptr_hotspot) { (__accessPtr) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_cursor_set_custom_image,
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

    private static var __method_binding_get_swap_cancel_ok: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_swap_cancel_ok").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()
    public func swapCancelOk() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_swap_cancel_ok,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_enable_for_stealing_focus: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "enable_for_stealing_focus").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func enableForStealingFocus(processId: Int64) {
        withUnsafePointer(to: processId) { (__ptr_processId) in
            withUnsafeArgumentPackPointer(__ptr_processId) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_enable_for_stealing_focus,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_dialog_show: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "dialog_show").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4115553226)!
        }
        }
    }()
    public func dialogShow(title: Godot.GodotString, description: Godot.GodotString, buttons: Godot.PackedStringArray, callback: Godot.Callable) -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        title.withUnsafeRawPointer { (__ptr_title) in
            description.withUnsafeRawPointer { (__ptr_description) in
                buttons.withUnsafeRawPointer { (__ptr_buttons) in
                    callback.withUnsafeRawPointer { (__ptr_callback) in
                        withUnsafeArgumentPackPointer(__ptr_title, __ptr_description, __ptr_buttons, __ptr_callback) { (__accessPtr) in
                            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_dialog_show,
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
        return Godot.ErrorType(rawValue: __temporary)!
    }

    private static var __method_binding_dialog_input_text: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "dialog_input_text").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3088703427)!
        }
        }
    }()
    public func dialogInputText(title: Godot.GodotString, description: Godot.GodotString, existingText: Godot.GodotString, callback: Godot.Callable) -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        title.withUnsafeRawPointer { (__ptr_title) in
            description.withUnsafeRawPointer { (__ptr_description) in
                existingText.withUnsafeRawPointer { (__ptr_existingText) in
                    callback.withUnsafeRawPointer { (__ptr_callback) in
                        withUnsafeArgumentPackPointer(__ptr_title, __ptr_description, __ptr_existingText, __ptr_callback) { (__accessPtr) in
                            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_dialog_input_text,
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
        return Godot.ErrorType(rawValue: __temporary)!
    }

    private static var __method_binding_keyboard_get_layout_count: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "keyboard_get_layout_count").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func keyboardGetLayoutCount() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_keyboard_get_layout_count,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_keyboard_get_current_layout: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "keyboard_get_current_layout").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func keyboardGetCurrentLayout() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_keyboard_get_current_layout,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_keyboard_set_current_layout: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "keyboard_set_current_layout").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func keyboardSetCurrentLayout(index: Int32) {
        withUnsafePointer(to: index) { (__ptr_index) in
            withUnsafeArgumentPackPointer(__ptr_index) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_keyboard_set_current_layout,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_keyboard_get_layout_language: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "keyboard_get_layout_language").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 844755477)!
        }
        }
    }()
    public func keyboardGetLayoutLanguage(index: Int32) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        withUnsafePointer(to: index) { (__ptr_index) in
            withUnsafeArgumentPackPointer(__ptr_index) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_keyboard_get_layout_language,
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

    private static var __method_binding_keyboard_get_layout_name: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "keyboard_get_layout_name").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 844755477)!
        }
        }
    }()
    public func keyboardGetLayoutName(index: Int32) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        withUnsafePointer(to: index) { (__ptr_index) in
            withUnsafeArgumentPackPointer(__ptr_index) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_keyboard_get_layout_name,
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

    private static var __method_binding_keyboard_get_keycode_from_physical: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "keyboard_get_keycode_from_physical").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3447613187)!
        }
        }
    }()
    public func keyboardGetKeycodeFromPhysical(keycode: Godot.Key) -> Godot.Key {
        var __temporary = Godot.Key.RawValue(0)
        withUnsafePointer(to: keycode) { (__ptr_keycode) in
            withUnsafeArgumentPackPointer(__ptr_keycode) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_keyboard_get_keycode_from_physical,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.Key(rawValue: __temporary)!
    }

    private static var __method_binding_process_events: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "process_events").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func processEvents() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_process_events,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_force_process_and_drop_events: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "force_process_and_drop_events").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func forceProcessAndDropEvents() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_force_process_and_drop_events,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_set_native_icon: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_native_icon").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func setNativeIcon(filename: Godot.GodotString) {
        filename.withUnsafeRawPointer { (__ptr_filename) in
            withUnsafeArgumentPackPointer(__ptr_filename) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_native_icon,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_set_icon: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_icon").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 532598488)!
        }
        }
    }()
    public func setIcon(image: Godot.Image?) {
        image.withUnsafeRawPointer { (__ptr_image) in
            withUnsafePointer(to: __ptr_image) { (_ptr___ptr_image) in
                withUnsafeArgumentPackPointer(_ptr___ptr_image) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_icon,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_tablet_get_driver_count: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "tablet_get_driver_count").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func tabletGetDriverCount() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_tablet_get_driver_count,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_tablet_get_driver_name: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "tablet_get_driver_name").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 844755477)!
        }
        }
    }()
    public func tabletGetDriverName(idx: Int32) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        withUnsafePointer(to: idx) { (__ptr_idx) in
            withUnsafeArgumentPackPointer(__ptr_idx) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_tablet_get_driver_name,
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

    private static var __method_binding_tablet_get_current_driver: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "tablet_get_current_driver").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    public func tabletGetCurrentDriver() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_tablet_get_current_driver,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_tablet_set_current_driver: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "tablet_set_current_driver").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func tabletSetCurrentDriver(name: Godot.GodotString) {
        name.withUnsafeRawPointer { (__ptr_name) in
            withUnsafeArgumentPackPointer(__ptr_name) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_tablet_set_current_driver,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
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