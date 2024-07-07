//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotClass
open class Window: Viewport {
    public enum Mode: UInt32, GodotEnum {
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
               ("Exclusive Fullscreen", 4),
            ]
        }
    }
    
    public enum Flags: UInt32, GodotEnum {
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
               ("Max", 8),
            ]
        }
    }
    
    public enum ContentScaleMode: UInt32, GodotEnum {
        case disabled = 0
        case canvasItems = 1
        case viewport = 2
        
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
               ("Disabled", 0),
               ("Canvas Items", 1),
               ("Viewport", 2),
            ]
        }
    }
    
    public enum ContentScaleAspect: UInt32, GodotEnum {
        case ignore = 0
        case keep = 1
        case keepWidth = 2
        case keepHeight = 3
        case expand = 4
        
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
               ("Ignore", 0),
               ("Keep", 1),
               ("Keep Width", 2),
               ("Keep Height", 3),
               ("Expand", 4),
            ]
        }
    }
    
    public enum ContentScaleStretch: UInt32, GodotEnum {
        case fractional = 0
        case integer = 1
        
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
               ("Fractional", 0),
               ("Integer", 1),
            ]
        }
    }
    
    public enum LayoutDirection: UInt32, GodotEnum {
        case inherited = 0
        case locale = 1
        case ltr = 2
        case rtl = 3
        
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
               ("Inherited", 0),
               ("Locale", 1),
               ("Ltr", 2),
               ("Rtl", 3),
            ]
        }
    }
    
    public enum WindowInitialPosition: UInt32, GodotEnum {
        case absolute = 0
        case centerPrimaryScreen = 1
        case centerMainWindowScreen = 2
        case centerOtherScreen = 3
        case centerScreenWithMouseFocus = 4
        case centerScreenWithKeyboardFocus = 5
        
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
               ("Absolute", 0),
               ("Center Primary Screen", 1),
               ("Center Main Window Screen", 2),
               ("Center Other Screen", 3),
               ("Center Screen With Mouse Focus", 4),
               ("Center Screen With Keyboard Focus", 5),
            ]
        }
    }
    
    public struct WindowInputSignalInput: Godot.SignalInput {
        public let event: Godot.InputEvent?
        fileprivate init(event: Godot.InputEvent?) {
            self.event = event
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.event)]
        }
    }
    public func windowInput(event: Godot.InputEvent?) {
        _ = windowInputSignal.emit(.init(event: event))
    }
    public lazy var windowInputSignal: Godot.SignalEmitter<WindowInputSignalInput> = {
        .init(object: self, signalName: "window_input") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<WindowInputSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(event: Godot.InputEvent?.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<WindowInputSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<WindowInputSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()
    
    public struct FilesDroppedSignalInput: Godot.SignalInput {
        public let files: Godot.GodotContiguousArray<GodotString>
        fileprivate init(files: Godot.GodotContiguousArray<GodotString>) {
            self.files = files
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.files)]
        }
    }
    public func filesDropped(files: Godot.GodotContiguousArray<GodotString>) {
        _ = filesDroppedSignal.emit(.init(files: files))
    }
    public lazy var filesDroppedSignal: Godot.SignalEmitter<FilesDroppedSignalInput> = {
        .init(object: self, signalName: "files_dropped") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<FilesDroppedSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(files: Godot.GodotContiguousArray<GodotString> .convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<FilesDroppedSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<FilesDroppedSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()
    
    
    public func mouseEntered() {
        _ = mouseEnteredSignal.emit()
    }
    public lazy var mouseEnteredSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "mouse_entered") { callablePtr, args, _, _, _ in
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
    
    
    public func mouseExited() {
        _ = mouseExitedSignal.emit()
    }
    public lazy var mouseExitedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "mouse_exited") { callablePtr, args, _, _, _ in
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
    
    
    public func focusEntered() {
        _ = focusEnteredSignal.emit()
    }
    public lazy var focusEnteredSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "focus_entered") { callablePtr, args, _, _, _ in
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
    
    
    public func focusExited() {
        _ = focusExitedSignal.emit()
    }
    public lazy var focusExitedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "focus_exited") { callablePtr, args, _, _, _ in
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
    
    
    public func closeRequested() {
        _ = closeRequestedSignal.emit()
    }
    public lazy var closeRequestedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "close_requested") { callablePtr, args, _, _, _ in
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
    
    
    public func goBackRequested() {
        _ = goBackRequestedSignal.emit()
    }
    public lazy var goBackRequestedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "go_back_requested") { callablePtr, args, _, _, _ in
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
    
    
    public func visibilityChanged() {
        _ = visibilityChangedSignal.emit()
    }
    public lazy var visibilityChangedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "visibility_changed") { callablePtr, args, _, _, _ in
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
    
    
    public func aboutToPopup() {
        _ = aboutToPopupSignal.emit()
    }
    public lazy var aboutToPopupSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "about_to_popup") { callablePtr, args, _, _, _ in
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
    
    
    public func themeChanged() {
        _ = themeChangedSignal.emit()
    }
    public lazy var themeChangedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "theme_changed") { callablePtr, args, _, _, _ in
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
    
    
    public func dpiChanged() {
        _ = dpiChangedSignal.emit()
    }
    public lazy var dpiChangedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "dpi_changed") { callablePtr, args, _, _, _ in
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
    
    
    public func titlebarChanged() {
        _ = titlebarChangedSignal.emit()
    }
    public lazy var titlebarChangedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "titlebar_changed") { callablePtr, args, _, _, _ in
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
    
    public static let notificationVisibilityChanged: Notification = .init(rawValue: 30)
    
    public static let notificationThemeChanged: Notification = .init(rawValue: 32)
    
    open func _getContentsMinimumSize() -> Godot.Vector2 {
        Godot.Vector2()
    }
    
    internal static var __method_binding_set_title: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_title").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
            }
        }
    }()
    
    private func __setTitle(
        _ title: Godot.GodotString
    ) {
        withTransferrableUnsafeRawPointer(to: title) { __ptr_title in
            withUnsafeArgumentPackPointer(__ptr_title) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_title,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_title: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_title").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
            }
        }
    }()
    
    private func __getTitle() -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_title,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_get_window_id: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_window_id").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
            }
        }
    }()
    
    public func windowID() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_window_id,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_initial_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_initial_position").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4084468099)!
            }
        }
    }()
    
    private func __setInitialPosition(
        _ initialPosition: Godot.Window.WindowInitialPosition
    ) {
        withTransferrableUnsafeRawPointer(to: initialPosition) { __ptr_initialPosition in
            withUnsafeArgumentPackPointer(__ptr_initialPosition) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_initial_position,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_initial_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_initial_position").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4294066647)!
            }
        }
    }()
    
    private func __getInitialPosition() -> Godot.Window.WindowInitialPosition {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_initial_position,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_current_screen: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_current_screen").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
            }
        }
    }()
    
    private func __setCurrentScreen(
        index: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: index) { __ptr_index in
            withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_current_screen,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_current_screen: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_current_screen").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
            }
        }
    }()
    
    private func __getCurrentScreen() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_current_screen,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_position").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1130785943)!
            }
        }
    }()
    
    private func __setPosition(
        _ position: Godot.Vector2I
    ) {
        withTransferrableUnsafeRawPointer(to: position) { __ptr_position in
            withUnsafeArgumentPackPointer(__ptr_position) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_position,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_position").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3690982128)!
            }
        }
    }()
    
    private func __getPosition() -> Godot.Vector2I {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_position,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_move_to_center: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "move_to_center").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
            }
        }
    }()
    
    public func moveToCenter() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_move_to_center,
                __ptr_self,
                nil,
                nil
            )
        }
    }
    
    internal static var __method_binding_set_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_size").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1130785943)!
            }
        }
    }()
    
    private func __setSize(
        _ size: Godot.Vector2I
    ) {
        withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
            withUnsafeArgumentPackPointer(__ptr_size) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_size,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_size").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3690982128)!
            }
        }
    }()
    
    private func __getSize() -> Godot.Vector2I {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_size,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_reset_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "reset_size").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
            }
        }
    }()
    
    public func resetSize() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_reset_size,
                __ptr_self,
                nil,
                nil
            )
        }
    }
    
    internal static var __method_binding_get_position_with_decorations: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_position_with_decorations").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3690982128)!
            }
        }
    }()
    
    public func positionWithDecorations() -> Godot.Vector2I {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_position_with_decorations,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_get_size_with_decorations: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_size_with_decorations").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3690982128)!
            }
        }
    }()
    
    public func sizeWithDecorations() -> Godot.Vector2I {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_size_with_decorations,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_max_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_max_size").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1130785943)!
            }
        }
    }()
    
    private func __setMaxSize(
        _ maxSize: Godot.Vector2I
    ) {
        withTransferrableUnsafeRawPointer(to: maxSize) { __ptr_maxSize in
            withUnsafeArgumentPackPointer(__ptr_maxSize) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_max_size,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_max_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_max_size").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3690982128)!
            }
        }
    }()
    
    private func __getMaxSize() -> Godot.Vector2I {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_max_size,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_min_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_min_size").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1130785943)!
            }
        }
    }()
    
    private func __setMinSize(
        _ minSize: Godot.Vector2I
    ) {
        withTransferrableUnsafeRawPointer(to: minSize) { __ptr_minSize in
            withUnsafeArgumentPackPointer(__ptr_minSize) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_min_size,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_min_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_min_size").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3690982128)!
            }
        }
    }()
    
    private func __getMinSize() -> Godot.Vector2I {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_min_size,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_mode").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3095236531)!
            }
        }
    }()
    
    private func __setMode(
        _ mode: Godot.Window.Mode
    ) {
        withTransferrableUnsafeRawPointer(to: mode) { __ptr_mode in
            withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_mode,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_mode").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2566346114)!
            }
        }
    }()
    
    private func __getMode() -> Godot.Window.Mode {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_mode,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_flag: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_flag").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3426449779)!
            }
        }
    }()
    
    public func setFlag(
        _ flag: Godot.Window.Flags,
        enabled: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: flag) { __ptr_flag in
            withTransferrableUnsafeRawPointer(to: enabled) { __ptr_enabled in
                withUnsafeArgumentPackPointer(__ptr_flag, __ptr_enabled) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_flag,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_flag: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_flag").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3062752289)!
            }
        }
    }()
    
    private func __getFlag(
        _ flag: Godot.Window.Flags
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: flag) { __ptr_flag in
                withUnsafeArgumentPackPointer(__ptr_flag) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_flag,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_is_maximize_allowed: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "is_maximize_allowed").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
            }
        }
    }()
    
    public func isMaximizeAllowed() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_maximize_allowed,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_request_attention: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "request_attention").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
            }
        }
    }()
    
    public func requestAttention() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_request_attention,
                __ptr_self,
                nil,
                nil
            )
        }
    }
    
    internal static var __method_binding_move_to_foreground: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "move_to_foreground").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
            }
        }
    }()
    
    public func moveToForeground() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_move_to_foreground,
                __ptr_self,
                nil,
                nil
            )
        }
    }
    
    internal static var __method_binding_set_visible: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_visible").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
            }
        }
    }()
    
    private func __setVisible(
        _ visible: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: visible) { __ptr_visible in
            withUnsafeArgumentPackPointer(__ptr_visible) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_visible,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_is_visible: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "is_visible").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
            }
        }
    }()
    
    private func __isVisible() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_visible,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_hide: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "hide").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
            }
        }
    }()
    
    public func hide() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_hide,
                __ptr_self,
                nil,
                nil
            )
        }
    }
    
    internal static var __method_binding_show: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "show").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
            }
        }
    }()
    
    public func show() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_show,
                __ptr_self,
                nil,
                nil
            )
        }
    }
    
    internal static var __method_binding_set_transient: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_transient").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
            }
        }
    }()
    
    private func __setTransient(
        _ transient: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: transient) { __ptr_transient in
            withUnsafeArgumentPackPointer(__ptr_transient) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_transient,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_is_transient: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "is_transient").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
            }
        }
    }()
    
    private func __isTransient() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_transient,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_exclusive: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_exclusive").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
            }
        }
    }()
    
    private func __setExclusive(
        _ exclusive: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: exclusive) { __ptr_exclusive in
            withUnsafeArgumentPackPointer(__ptr_exclusive) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_exclusive,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_is_exclusive: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "is_exclusive").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
            }
        }
    }()
    
    private func __isExclusive() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_exclusive,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_unparent_when_invisible: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_unparent_when_invisible").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
            }
        }
    }()
    
    public func setUnparentWhenInvisible(
        unparent: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: unparent) { __ptr_unparent in
            withUnsafeArgumentPackPointer(__ptr_unparent) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_unparent_when_invisible,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_can_draw: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "can_draw").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
            }
        }
    }()
    
    public func canDraw() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_can_draw,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_has_focus: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "has_focus").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
            }
        }
    }()
    
    public func hasFocus() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_has_focus,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_grab_focus: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "grab_focus").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
            }
        }
    }()
    
    public func grabFocus() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_grab_focus,
                __ptr_self,
                nil,
                nil
            )
        }
    }
    
    internal static var __method_binding_set_ime_active: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_ime_active").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
            }
        }
    }()
    
    public func setImeActive(
        _ active: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: active) { __ptr_active in
            withUnsafeArgumentPackPointer(__ptr_active) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_ime_active,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_set_ime_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_ime_position").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1130785943)!
            }
        }
    }()
    
    public func setImePosition(
        _ position: Godot.Vector2I
    ) {
        withTransferrableUnsafeRawPointer(to: position) { __ptr_position in
            withUnsafeArgumentPackPointer(__ptr_position) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_ime_position,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_is_embedded: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "is_embedded").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
            }
        }
    }()
    
    public func isEmbedded() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_embedded,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_get_contents_minimum_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_contents_minimum_size").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3341600327)!
            }
        }
    }()
    
    public func contentsMinimumSize() -> Godot.Vector2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_contents_minimum_size,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_content_scale_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_content_scale_size").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1130785943)!
            }
        }
    }()
    
    private func __setContentScaleSize(
        _ size: Godot.Vector2I
    ) {
        withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
            withUnsafeArgumentPackPointer(__ptr_size) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_content_scale_size,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_content_scale_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_content_scale_size").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3690982128)!
            }
        }
    }()
    
    private func __getContentScaleSize() -> Godot.Vector2I {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_content_scale_size,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_content_scale_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_content_scale_mode").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2937716473)!
            }
        }
    }()
    
    private func __setContentScaleMode(
        _ mode: Godot.Window.ContentScaleMode
    ) {
        withTransferrableUnsafeRawPointer(to: mode) { __ptr_mode in
            withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_content_scale_mode,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_content_scale_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_content_scale_mode").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 161585230)!
            }
        }
    }()
    
    private func __getContentScaleMode() -> Godot.Window.ContentScaleMode {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_content_scale_mode,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_content_scale_aspect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_content_scale_aspect").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2370399418)!
            }
        }
    }()
    
    private func __setContentScaleAspect(
        _ aspect: Godot.Window.ContentScaleAspect
    ) {
        withTransferrableUnsafeRawPointer(to: aspect) { __ptr_aspect in
            withUnsafeArgumentPackPointer(__ptr_aspect) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_content_scale_aspect,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_content_scale_aspect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_content_scale_aspect").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4158790715)!
            }
        }
    }()
    
    private func __getContentScaleAspect() -> Godot.Window.ContentScaleAspect {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_content_scale_aspect,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_content_scale_stretch: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_content_scale_stretch").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 349355940)!
            }
        }
    }()
    
    private func __setContentScaleStretch(
        _ stretch: Godot.Window.ContentScaleStretch
    ) {
        withTransferrableUnsafeRawPointer(to: stretch) { __ptr_stretch in
            withUnsafeArgumentPackPointer(__ptr_stretch) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_content_scale_stretch,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_content_scale_stretch: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_content_scale_stretch").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 536857316)!
            }
        }
    }()
    
    private func __getContentScaleStretch() -> Godot.Window.ContentScaleStretch {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_content_scale_stretch,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_keep_title_visible: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_keep_title_visible").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
            }
        }
    }()
    
    private func __setKeepTitleVisible(
        _ titleVisible: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: titleVisible) { __ptr_titleVisible in
            withUnsafeArgumentPackPointer(__ptr_titleVisible) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_keep_title_visible,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_keep_title_visible: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_keep_title_visible").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
            }
        }
    }()
    
    private func __getKeepTitleVisible() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_keep_title_visible,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_content_scale_factor: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_content_scale_factor").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
            }
        }
    }()
    
    private func __setContentScaleFactor(
        _ factor: Double
    ) {
        withTransferrableUnsafeRawPointer(to: factor) { __ptr_factor in
            withUnsafeArgumentPackPointer(__ptr_factor) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_content_scale_factor,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_content_scale_factor: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_content_scale_factor").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
            }
        }
    }()
    
    private func __getContentScaleFactor() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_content_scale_factor,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_use_font_oversampling: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_use_font_oversampling").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
            }
        }
    }()
    
    public func setUseFontOversampling(
        enable: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: enable) { __ptr_enable in
            withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_use_font_oversampling,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_is_using_font_oversampling: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "is_using_font_oversampling").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
            }
        }
    }()
    
    public func isUsingFontOversampling() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_using_font_oversampling,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_mouse_passthrough_polygon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_mouse_passthrough_polygon").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1509147220)!
            }
        }
    }()
    
    private func __setMousePassthroughPolygon(
        _ polygon: Godot.GodotContiguousArray<Vector2>
    ) {
        withTransferrableUnsafeRawPointer(to: polygon) { __ptr_polygon in
            withUnsafeArgumentPackPointer(__ptr_polygon) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_mouse_passthrough_polygon,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_mouse_passthrough_polygon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_mouse_passthrough_polygon").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2961356807)!
            }
        }
    }()
    
    private func __getMousePassthroughPolygon() -> Godot.GodotContiguousArray<Vector2> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_mouse_passthrough_polygon,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_wrap_controls: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_wrap_controls").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
            }
        }
    }()
    
    private func __setWrapControls(
        enable: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: enable) { __ptr_enable in
            withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_wrap_controls,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_is_wrapping_controls: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "is_wrapping_controls").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
            }
        }
    }()
    
    private func __isWrappingControls() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_wrapping_controls,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_child_controls_changed: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "child_controls_changed").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
            }
        }
    }()
    
    public func childControlsChanged() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_child_controls_changed,
                __ptr_self,
                nil,
                nil
            )
        }
    }
    
    internal static var __method_binding_set_theme: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_theme").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2326690814)!
            }
        }
    }()
    
    private func __setTheme(
        _ theme: Godot.Theme?
    ) {
        withTransferrableUnsafeRawPointer(to: theme) { __ptr_theme in
            withUnsafePointer(to: __ptr_theme) { _ptr___ptr_theme in
                withUnsafeArgumentPackPointer(_ptr___ptr_theme) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_theme,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_theme: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_theme").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3846893731)!
            }
        }
    }()
    
    private func __getTheme() -> Godot.Theme? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_theme,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_theme_type_variation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_theme_type_variation").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3304788590)!
            }
        }
    }()
    
    private func __setThemeTypeVariation(
        themeType: Godot.GodotStringName
    ) {
        withTransferrableUnsafeRawPointer(to: themeType) { __ptr_themeType in
            withUnsafeArgumentPackPointer(__ptr_themeType) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_theme_type_variation,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_theme_type_variation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_theme_type_variation").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2002593661)!
            }
        }
    }()
    
    private func __getThemeTypeVariation() -> Godot.GodotStringName {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_theme_type_variation,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_begin_bulk_theme_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "begin_bulk_theme_override").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
            }
        }
    }()
    
    public func beginBulkThemeOverride() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_begin_bulk_theme_override,
                __ptr_self,
                nil,
                nil
            )
        }
    }
    
    internal static var __method_binding_end_bulk_theme_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "end_bulk_theme_override").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
            }
        }
    }()
    
    public func endBulkThemeOverride() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_end_bulk_theme_override,
                __ptr_self,
                nil,
                nil
            )
        }
    }
    
    internal static var __method_binding_add_theme_icon_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "add_theme_icon_override").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1373065600)!
            }
        }
    }()
    
    public func addThemeIconOverride(
        name: Godot.GodotStringName,
        texture: Godot.Texture2D?
    ) {
        withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
            withTransferrableUnsafeRawPointer(to: texture) { __ptr_texture in
                withUnsafePointer(to: __ptr_texture) { _ptr___ptr_texture in
                    withUnsafeArgumentPackPointer(__ptr_name, _ptr___ptr_texture) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_add_theme_icon_override,
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
    
    internal static var __method_binding_add_theme_stylebox_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "add_theme_stylebox_override").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4188838905)!
            }
        }
    }()
    
    public func addThemeStyleboxOverride(
        name: Godot.GodotStringName,
        stylebox: Godot.StyleBox?
    ) {
        withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
            withTransferrableUnsafeRawPointer(to: stylebox) { __ptr_stylebox in
                withUnsafePointer(to: __ptr_stylebox) { _ptr___ptr_stylebox in
                    withUnsafeArgumentPackPointer(__ptr_name, _ptr___ptr_stylebox) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_add_theme_stylebox_override,
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
    
    internal static var __method_binding_add_theme_font_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "add_theme_font_override").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3518018674)!
            }
        }
    }()
    
    public func addThemeFontOverride(
        name: Godot.GodotStringName,
        font: Godot.Font?
    ) {
        withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
            withTransferrableUnsafeRawPointer(to: font) { __ptr_font in
                withUnsafePointer(to: __ptr_font) { _ptr___ptr_font in
                    withUnsafeArgumentPackPointer(__ptr_name, _ptr___ptr_font) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_add_theme_font_override,
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
    
    internal static var __method_binding_add_theme_font_size_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "add_theme_font_size_override").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2415702435)!
            }
        }
    }()
    
    public func addThemeFontSizeOverride(
        name: Godot.GodotStringName,
        fontSize: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
            withTransferrableUnsafeRawPointer(to: fontSize) { __ptr_fontSize in
                withUnsafeArgumentPackPointer(__ptr_name, __ptr_fontSize) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_add_theme_font_size_override,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_add_theme_color_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "add_theme_color_override").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4260178595)!
            }
        }
    }()
    
    public func addThemeColorOverride(
        name: Godot.GodotStringName,
        color: Godot.Color
    ) {
        withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
            withTransferrableUnsafeRawPointer(to: color) { __ptr_color in
                withUnsafeArgumentPackPointer(__ptr_name, __ptr_color) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_add_theme_color_override,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_add_theme_constant_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "add_theme_constant_override").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2415702435)!
            }
        }
    }()
    
    public func addThemeConstantOverride(
        name: Godot.GodotStringName,
        constant: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
            withTransferrableUnsafeRawPointer(to: constant) { __ptr_constant in
                withUnsafeArgumentPackPointer(__ptr_name, __ptr_constant) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_add_theme_constant_override,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_remove_theme_icon_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "remove_theme_icon_override").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3304788590)!
            }
        }
    }()
    
    public func removeThemeIconOverride(
        name: Godot.GodotStringName
    ) {
        withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
            withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_remove_theme_icon_override,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_remove_theme_stylebox_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "remove_theme_stylebox_override").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3304788590)!
            }
        }
    }()
    
    public func removeThemeStyleboxOverride(
        name: Godot.GodotStringName
    ) {
        withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
            withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_remove_theme_stylebox_override,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_remove_theme_font_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "remove_theme_font_override").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3304788590)!
            }
        }
    }()
    
    public func removeThemeFontOverride(
        name: Godot.GodotStringName
    ) {
        withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
            withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_remove_theme_font_override,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_remove_theme_font_size_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "remove_theme_font_size_override").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3304788590)!
            }
        }
    }()
    
    public func removeThemeFontSizeOverride(
        name: Godot.GodotStringName
    ) {
        withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
            withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_remove_theme_font_size_override,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_remove_theme_color_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "remove_theme_color_override").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3304788590)!
            }
        }
    }()
    
    public func removeThemeColorOverride(
        name: Godot.GodotStringName
    ) {
        withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
            withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_remove_theme_color_override,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_remove_theme_constant_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "remove_theme_constant_override").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3304788590)!
            }
        }
    }()
    
    public func removeThemeConstantOverride(
        name: Godot.GodotStringName
    ) {
        withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
            withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_remove_theme_constant_override,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_theme_icon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_theme_icon").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3163973443)!
            }
        }
    }()
    
    public func themeIcon(
        name: Godot.GodotStringName,
        themeType: Godot.GodotStringName = ""
    ) -> Godot.Texture2D? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
                withTransferrableUnsafeRawPointer(to: themeType) { __ptr_themeType in
                    withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_get_theme_icon,
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
    
    internal static var __method_binding_get_theme_stylebox: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_theme_stylebox").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 604739069)!
            }
        }
    }()
    
    public func themeStylebox(
        name: Godot.GodotStringName,
        themeType: Godot.GodotStringName = ""
    ) -> Godot.StyleBox? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
                withTransferrableUnsafeRawPointer(to: themeType) { __ptr_themeType in
                    withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_get_theme_stylebox,
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
    
    internal static var __method_binding_get_theme_font: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_theme_font").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2826986490)!
            }
        }
    }()
    
    public func themeFont(
        name: Godot.GodotStringName,
        themeType: Godot.GodotStringName = ""
    ) -> Godot.Font? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
                withTransferrableUnsafeRawPointer(to: themeType) { __ptr_themeType in
                    withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_get_theme_font,
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
    
    internal static var __method_binding_get_theme_font_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_theme_font_size").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1327056374)!
            }
        }
    }()
    
    public func themeFontSize(
        name: Godot.GodotStringName,
        themeType: Godot.GodotStringName = ""
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
                withTransferrableUnsafeRawPointer(to: themeType) { __ptr_themeType in
                    withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_get_theme_font_size,
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
    
    internal static var __method_binding_get_theme_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_theme_color").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2798751242)!
            }
        }
    }()
    
    public func themeColor(
        name: Godot.GodotStringName,
        themeType: Godot.GodotStringName = ""
    ) -> Godot.Color {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
                withTransferrableUnsafeRawPointer(to: themeType) { __ptr_themeType in
                    withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_get_theme_color,
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
    
    internal static var __method_binding_get_theme_constant: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_theme_constant").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1327056374)!
            }
        }
    }()
    
    public func themeConstant(
        name: Godot.GodotStringName,
        themeType: Godot.GodotStringName = ""
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
                withTransferrableUnsafeRawPointer(to: themeType) { __ptr_themeType in
                    withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_get_theme_constant,
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
    
    internal static var __method_binding_has_theme_icon_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "has_theme_icon_override").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2619796661)!
            }
        }
    }()
    
    public func hasThemeIconOverride(
        name: Godot.GodotStringName
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
                withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_has_theme_icon_override,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_has_theme_stylebox_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "has_theme_stylebox_override").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2619796661)!
            }
        }
    }()
    
    public func hasThemeStyleboxOverride(
        name: Godot.GodotStringName
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
                withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_has_theme_stylebox_override,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_has_theme_font_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "has_theme_font_override").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2619796661)!
            }
        }
    }()
    
    public func hasThemeFontOverride(
        name: Godot.GodotStringName
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
                withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_has_theme_font_override,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_has_theme_font_size_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "has_theme_font_size_override").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2619796661)!
            }
        }
    }()
    
    public func hasThemeFontSizeOverride(
        name: Godot.GodotStringName
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
                withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_has_theme_font_size_override,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_has_theme_color_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "has_theme_color_override").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2619796661)!
            }
        }
    }()
    
    public func hasThemeColorOverride(
        name: Godot.GodotStringName
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
                withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_has_theme_color_override,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_has_theme_constant_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "has_theme_constant_override").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2619796661)!
            }
        }
    }()
    
    public func hasThemeConstantOverride(
        name: Godot.GodotStringName
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
                withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_has_theme_constant_override,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_has_theme_icon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "has_theme_icon").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 866386512)!
            }
        }
    }()
    
    public func hasThemeIcon(
        name: Godot.GodotStringName,
        themeType: Godot.GodotStringName = ""
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
                withTransferrableUnsafeRawPointer(to: themeType) { __ptr_themeType in
                    withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_has_theme_icon,
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
    
    internal static var __method_binding_has_theme_stylebox: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "has_theme_stylebox").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 866386512)!
            }
        }
    }()
    
    public func hasThemeStylebox(
        name: Godot.GodotStringName,
        themeType: Godot.GodotStringName = ""
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
                withTransferrableUnsafeRawPointer(to: themeType) { __ptr_themeType in
                    withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_has_theme_stylebox,
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
    
    internal static var __method_binding_has_theme_font: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "has_theme_font").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 866386512)!
            }
        }
    }()
    
    public func hasThemeFont(
        name: Godot.GodotStringName,
        themeType: Godot.GodotStringName = ""
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
                withTransferrableUnsafeRawPointer(to: themeType) { __ptr_themeType in
                    withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_has_theme_font,
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
    
    internal static var __method_binding_has_theme_font_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "has_theme_font_size").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 866386512)!
            }
        }
    }()
    
    public func hasThemeFontSize(
        name: Godot.GodotStringName,
        themeType: Godot.GodotStringName = ""
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
                withTransferrableUnsafeRawPointer(to: themeType) { __ptr_themeType in
                    withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_has_theme_font_size,
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
    
    internal static var __method_binding_has_theme_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "has_theme_color").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 866386512)!
            }
        }
    }()
    
    public func hasThemeColor(
        name: Godot.GodotStringName,
        themeType: Godot.GodotStringName = ""
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
                withTransferrableUnsafeRawPointer(to: themeType) { __ptr_themeType in
                    withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_has_theme_color,
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
    
    internal static var __method_binding_has_theme_constant: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "has_theme_constant").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 866386512)!
            }
        }
    }()
    
    public func hasThemeConstant(
        name: Godot.GodotStringName,
        themeType: Godot.GodotStringName = ""
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
                withTransferrableUnsafeRawPointer(to: themeType) { __ptr_themeType in
                    withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_has_theme_constant,
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
    
    internal static var __method_binding_get_theme_default_base_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_theme_default_base_scale").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
            }
        }
    }()
    
    public func themeDefaultBaseScale() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_theme_default_base_scale,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_get_theme_default_font: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_theme_default_font").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3229501585)!
            }
        }
    }()
    
    public func themeDefaultFont() -> Godot.Font? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_theme_default_font,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_get_theme_default_font_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_theme_default_font_size").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
            }
        }
    }()
    
    public func themeDefaultFontSize() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_theme_default_font_size,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_layout_direction: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_layout_direction").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3094704184)!
            }
        }
    }()
    
    public func setLayoutDirection(
        _ direction: Godot.Window.LayoutDirection
    ) {
        withTransferrableUnsafeRawPointer(to: direction) { __ptr_direction in
            withUnsafeArgumentPackPointer(__ptr_direction) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_layout_direction,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_layout_direction: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_layout_direction").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3909617982)!
            }
        }
    }()
    
    public func layoutDirection() -> Godot.Window.LayoutDirection {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_layout_direction,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_is_layout_rtl: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "is_layout_rtl").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
            }
        }
    }()
    
    public func isLayoutRtl() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_layout_rtl,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_auto_translate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_auto_translate").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
            }
        }
    }()
    
    private func __setAutoTranslate(
        enable: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: enable) { __ptr_enable in
            withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_auto_translate,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_is_auto_translating: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "is_auto_translating").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
            }
        }
    }()
    
    private func __isAutoTranslating() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_auto_translating,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_popup: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "popup").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1680304321)!
            }
        }
    }()
    
    public func popup(
        rect: Godot.Rect2I = Rect2i(x: 0, y: 0, width: 0, height: 0)
    ) {
        withTransferrableUnsafeRawPointer(to: rect) { __ptr_rect in
            withUnsafeArgumentPackPointer(__ptr_rect) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_popup,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_popup_on_parent: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "popup_on_parent").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1763793166)!
            }
        }
    }()
    
    public func popupOnParent(
        parentRect: Godot.Rect2I
    ) {
        withTransferrableUnsafeRawPointer(to: parentRect) { __ptr_parentRect in
            withUnsafeArgumentPackPointer(__ptr_parentRect) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_popup_on_parent,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_popup_centered: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "popup_centered").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3447975422)!
            }
        }
    }()
    
    public func popupCentered(
        minsize: Godot.Vector2I = Vector2i(x: 0, y: 0)
    ) {
        withTransferrableUnsafeRawPointer(to: minsize) { __ptr_minsize in
            withUnsafeArgumentPackPointer(__ptr_minsize) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_popup_centered,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_popup_centered_ratio: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "popup_centered_ratio").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1014814997)!
            }
        }
    }()
    
    public func popupCenteredRatio(
        _ ratio: Double = 0.8
    ) {
        withTransferrableUnsafeRawPointer(to: ratio) { __ptr_ratio in
            withUnsafeArgumentPackPointer(__ptr_ratio) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_popup_centered_ratio,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_popup_centered_clamped: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "popup_centered_clamped").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2613752477)!
            }
        }
    }()
    
    public func popupCenteredClamped(
        minsize: Godot.Vector2I = Vector2i(x: 0, y: 0),
        fallbackRatio: Double = 0.75
    ) {
        withTransferrableUnsafeRawPointer(to: minsize) { __ptr_minsize in
            withTransferrableUnsafeRawPointer(to: fallbackRatio) { __ptr_fallbackRatio in
                withUnsafeArgumentPackPointer(__ptr_minsize, __ptr_fallbackRatio) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_popup_centered_clamped,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_popup_exclusive: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "popup_exclusive").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2134721627)!
            }
        }
    }()
    
    public func popupExclusive(
        fromNode node: Godot.Node?,
        rect: Godot.Rect2I = Rect2i(x: 0, y: 0, width: 0, height: 0)
    ) {
        withTransferrableUnsafeRawPointer(to: node) { __ptr_node in
            withUnsafePointer(to: __ptr_node) { _ptr___ptr_node in
                withTransferrableUnsafeRawPointer(to: rect) { __ptr_rect in
                    withUnsafeArgumentPackPointer(_ptr___ptr_node, __ptr_rect) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_popup_exclusive,
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
    
    internal static var __method_binding_popup_exclusive_on_parent: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "popup_exclusive_on_parent").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2344671043)!
            }
        }
    }()
    
    public func popupExclusiveOnParent(
        fromNode node: Godot.Node?,
        parentRect: Godot.Rect2I
    ) {
        withTransferrableUnsafeRawPointer(to: node) { __ptr_node in
            withUnsafePointer(to: __ptr_node) { _ptr___ptr_node in
                withTransferrableUnsafeRawPointer(to: parentRect) { __ptr_parentRect in
                    withUnsafeArgumentPackPointer(_ptr___ptr_node, __ptr_parentRect) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_popup_exclusive_on_parent,
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
    
    internal static var __method_binding_popup_exclusive_centered: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "popup_exclusive_centered").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3357594017)!
            }
        }
    }()
    
    public func popupExclusiveCentered(
        fromNode node: Godot.Node?,
        minsize: Godot.Vector2I = Vector2i(x: 0, y: 0)
    ) {
        withTransferrableUnsafeRawPointer(to: node) { __ptr_node in
            withUnsafePointer(to: __ptr_node) { _ptr___ptr_node in
                withTransferrableUnsafeRawPointer(to: minsize) { __ptr_minsize in
                    withUnsafeArgumentPackPointer(_ptr___ptr_node, __ptr_minsize) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_popup_exclusive_centered,
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
    
    internal static var __method_binding_popup_exclusive_centered_ratio: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "popup_exclusive_centered_ratio").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2284776287)!
            }
        }
    }()
    
    public func popupExclusiveCenteredRatio(
        fromNode node: Godot.Node?,
        ratio: Double = 0.8
    ) {
        withTransferrableUnsafeRawPointer(to: node) { __ptr_node in
            withUnsafePointer(to: __ptr_node) { _ptr___ptr_node in
                withTransferrableUnsafeRawPointer(to: ratio) { __ptr_ratio in
                    withUnsafeArgumentPackPointer(_ptr___ptr_node, __ptr_ratio) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_popup_exclusive_centered_ratio,
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
    
    internal static var __method_binding_popup_exclusive_centered_clamped: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "popup_exclusive_centered_clamped").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2612708785)!
            }
        }
    }()
    
    public func popupExclusiveCenteredClamped(
        fromNode node: Godot.Node?,
        minsize: Godot.Vector2I = Vector2i(x: 0, y: 0),
        fallbackRatio: Double = 0.75
    ) {
        withTransferrableUnsafeRawPointer(to: node) { __ptr_node in
            withUnsafePointer(to: __ptr_node) { _ptr___ptr_node in
                withTransferrableUnsafeRawPointer(to: minsize) { __ptr_minsize in
                    withTransferrableUnsafeRawPointer(to: fallbackRatio) { __ptr_fallbackRatio in
                        withUnsafeArgumentPackPointer(_ptr___ptr_node, __ptr_minsize, __ptr_fallbackRatio) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_popup_exclusive_centered_clamped,
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
    
    public var mode: Godot.Window.Mode {
        get {
            __getMode()
        }
        set(newValue) {
            __setMode(
                newValue
            )
        }
    }
    
    public var title: Godot.GodotString {
        get {
            __getTitle()
        }
        set(newValue) {
            __setTitle(
                newValue
            )
        }
    }
    
    public var initialPosition: Godot.Window.WindowInitialPosition {
        get {
            __getInitialPosition()
        }
        set(newValue) {
            __setInitialPosition(
                newValue
            )
        }
    }
    
    public var position: Godot.Vector2I {
        get {
            __getPosition()
        }
        set(newValue) {
            __setPosition(
                newValue
            )
        }
    }
    
    public var size: Godot.Vector2I {
        get {
            __getSize()
        }
        set(newValue) {
            __setSize(
                newValue
            )
        }
    }
    
    public var currentScreen: Int32 {
        get {
            __getCurrentScreen()
        }
        set(newValue) {
            __setCurrentScreen(
                index: newValue
            )
        }
    }
    
    public var mousePassthroughPolygon: Godot.GodotContiguousArray<Vector2> {
        get {
            __getMousePassthroughPolygon()
        }
        set(newValue) {
            __setMousePassthroughPolygon(
                newValue
            )
        }
    }
    
    public var isVisible: Bool {
        get {
            __isVisible()
        }
        set(newValue) {
            __setVisible(
                newValue
            )
        }
    }
    
    public var isWrappingControls: Bool {
        get {
            __isWrappingControls()
        }
        set(newValue) {
            __setWrapControls(
                enable: newValue
            )
        }
    }
    
    public var isTransient: Bool {
        get {
            __isTransient()
        }
        set(newValue) {
            __setTransient(
                newValue
            )
        }
    }
    
    public var isExclusive: Bool {
        get {
            __isExclusive()
        }
        set(newValue) {
            __setExclusive(
                newValue
            )
        }
    }
    
    public var unresizable: Bool {
        get {
            __getFlag(
                .init(rawValue: 0)!
            )
        }
    }
    
    public var borderless: Bool {
        get {
            __getFlag(
                .init(rawValue: 1)!
            )
        }
    }
    
    public var alwaysOnTop: Bool {
        get {
            __getFlag(
                .init(rawValue: 2)!
            )
        }
    }
    
    public var transparent: Bool {
        get {
            __getFlag(
                .init(rawValue: 3)!
            )
        }
    }
    
    public var unfocusable: Bool {
        get {
            __getFlag(
                .init(rawValue: 4)!
            )
        }
    }
    
    public var popupWindow: Bool {
        get {
            __getFlag(
                .init(rawValue: 5)!
            )
        }
    }
    
    public var extendToTitle: Bool {
        get {
            __getFlag(
                .init(rawValue: 6)!
            )
        }
    }
    
    public var mousePassthrough: Bool {
        get {
            __getFlag(
                .init(rawValue: 7)!
            )
        }
    }
    
    public var minSize: Godot.Vector2I {
        get {
            __getMinSize()
        }
        set(newValue) {
            __setMinSize(
                newValue
            )
        }
    }
    
    public var maxSize: Godot.Vector2I {
        get {
            __getMaxSize()
        }
        set(newValue) {
            __setMaxSize(
                newValue
            )
        }
    }
    
    public var keepTitleVisible: Bool {
        get {
            __getKeepTitleVisible()
        }
        set(newValue) {
            __setKeepTitleVisible(
                newValue
            )
        }
    }
    
    public var contentScaleSize: Godot.Vector2I {
        get {
            __getContentScaleSize()
        }
        set(newValue) {
            __setContentScaleSize(
                newValue
            )
        }
    }
    
    public var contentScaleMode: Godot.Window.ContentScaleMode {
        get {
            __getContentScaleMode()
        }
        set(newValue) {
            __setContentScaleMode(
                newValue
            )
        }
    }
    
    public var contentScaleAspect: Godot.Window.ContentScaleAspect {
        get {
            __getContentScaleAspect()
        }
        set(newValue) {
            __setContentScaleAspect(
                newValue
            )
        }
    }
    
    public var contentScaleStretch: Godot.Window.ContentScaleStretch {
        get {
            __getContentScaleStretch()
        }
        set(newValue) {
            __setContentScaleStretch(
                newValue
            )
        }
    }
    
    public var contentScaleFactor: Double {
        get {
            __getContentScaleFactor()
        }
        set(newValue) {
            __setContentScaleFactor(
                newValue
            )
        }
    }
    
    public var isAutoTranslating: Bool {
        get {
            __isAutoTranslating()
        }
        set(newValue) {
            __setAutoTranslate(
                enable: newValue
            )
        }
    }
    
    public var theme: Godot.Theme? {
        get {
            __getTheme()
        }
        set(newValue) {
            __setTheme(
                newValue
            )
        }
    }
    
    public var themeTypeVariation: Godot.GodotStringName {
        get {
            __getThemeTypeVariation()
        }
        set(newValue) {
            __setThemeTypeVariation(
                themeType: newValue
            )
        }
    }
    
    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _get_contents_minimum_size_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else { return }
            Unmanaged<Window>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._getContentsMinimumSize()
               .transferToGodot(unsafePointer: returnPtr!)
        }
        _virtualFunctions = [
            "_getContentsMinimumSize" : ("_get_contents_minimum_size", _get_contents_minimum_size_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions![key] = value
        }
        return _virtualFunctions!
    }
}