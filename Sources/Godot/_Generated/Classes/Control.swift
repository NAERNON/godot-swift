//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotClass
open class Control: CanvasItem {
    public enum FocusMode: UInt32, GodotEnum {
        case none = 0
        case click = 1
        case all = 2

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("None", 0),
            ("Click", 1),
            ("All", 2),]
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
            ("Help", 16),]
        }
    }

    public enum LayoutPreset: UInt32, GodotEnum {
        case topLeft = 0
        case topRight = 1
        case bottomLeft = 2
        case bottomRight = 3
        case centerLeft = 4
        case centerTop = 5
        case centerRight = 6
        case centerBottom = 7
        case center = 8
        case leftWide = 9
        case topWide = 10
        case rightWide = 11
        case bottomWide = 12
        case vcenterWide = 13
        case hcenterWide = 14
        case fullRect = 15

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Top Left", 0),
            ("Top Right", 1),
            ("Bottom Left", 2),
            ("Bottom Right", 3),
            ("Center Left", 4),
            ("Center Top", 5),
            ("Center Right", 6),
            ("Center Bottom", 7),
            ("Center", 8),
            ("Left Wide", 9),
            ("Top Wide", 10),
            ("Right Wide", 11),
            ("Bottom Wide", 12),
            ("Vcenter Wide", 13),
            ("Hcenter Wide", 14),
            ("Full Rect", 15),]
        }
    }

    public enum LayoutPresetMode: UInt32, GodotEnum {
        case minsize = 0
        case keepWidth = 1
        case keepHeight = 2
        case keepSize = 3

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Minsize", 0),
            ("Keep Width", 1),
            ("Keep Height", 2),
            ("Keep Size", 3),]
        }
    }

    public struct SizeFlags: GodotOptionSet {
        public let rawValue: Int64

        public init(
            rawValue: Int64
        ) {
            self.rawValue = rawValue
        }

        public static let shrinkBegin: Self = .init(rawValue: 0)

        public static let fill: Self = .init(rawValue: 1)

        public static let expand: Self = .init(rawValue: 2)

        public static let expandFill: Self = .init(rawValue: 3)

        public static let shrinkCenter: Self = .init(rawValue: 4)

        public static let shrinkEnd: Self = .init(rawValue: 8)

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Shrink Begin", 0),
            ("Fill", 1),
            ("Expand", 2),
            ("Expand Fill", 3),
            ("Shrink Center", 4),
            ("Shrink End", 8),]
        }
    }

    public enum MouseFilter: UInt32, GodotEnum {
        case stop = 0
        case pass = 1
        case ignore = 2

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Stop", 0),
            ("Pass", 1),
            ("Ignore", 2),]
        }
    }

    public enum GrowDirection: UInt32, GodotEnum {
        case begin = 0
        case end = 1
        case both = 2

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Begin", 0),
            ("End", 1),
            ("Both", 2),]
        }
    }

    public enum Anchor: UInt32, GodotEnum {
        case begin = 0
        case end = 1

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Begin", 0),
            ("End", 1),]
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
            ("Rtl", 3),]
        }
    }

    public enum TextDirection: UInt32, GodotEnum {
        case inherited = 3
        case auto = 0
        case ltr = 1
        case rtl = 2

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Auto", 0),
            ("Ltr", 1),
            ("Rtl", 2),
            ("Inherited", 3),]
        }
    }

    public func resized() {
        _ = resizedSignal.emit()
    }

    public lazy var resizedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "resized") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct GuiInputSignalInput: Godot.SignalInput {
        public let event: Godot.InputEvent?

        fileprivate init(
            event: Godot.InputEvent?
        ) {
            self.event = event
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.event)]
        }
    }

    public func guiInput(
        event: Godot.InputEvent?
    ) {
        _ = guiInputSignal.emit(.init(event: event))
    }

    public lazy var guiInputSignal: Godot.SignalEmitter<GuiInputSignalInput> = {
        .init(object: self, signalName: "gui_input") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<GuiInputSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(event: Godot.InputEvent?.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<GuiInputSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<GuiInputSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func mouseEntered() {
        _ = mouseEnteredSignal.emit()
    }

    public lazy var mouseEnteredSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "mouse_entered") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func mouseExited() {
        _ = mouseExitedSignal.emit()
    }

    public lazy var mouseExitedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "mouse_exited") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func focusEntered() {
        _ = focusEnteredSignal.emit()
    }

    public lazy var focusEnteredSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "focus_entered") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func focusExited() {
        _ = focusExitedSignal.emit()
    }

    public lazy var focusExitedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "focus_exited") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func sizeFlagsChanged() {
        _ = sizeFlagsChangedSignal.emit()
    }

    public lazy var sizeFlagsChangedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "size_flags_changed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func minimumSizeChanged() {
        _ = minimumSizeChangedSignal.emit()
    }

    public lazy var minimumSizeChangedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "minimum_size_changed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func themeChanged() {
        _ = themeChangedSignal.emit()
    }

    public lazy var themeChangedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "theme_changed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public static let notificationResized: Notification = .init(rawValue: 40)

    public static let notificationMouseEnter: Notification = .init(rawValue: 41)

    public static let notificationMouseExit: Notification = .init(rawValue: 42)

    public static let notificationMouseEnterSelf: Notification = .init(rawValue: 60)

    public static let notificationMouseExitSelf: Notification = .init(rawValue: 61)

    public static let notificationFocusEnter: Notification = .init(rawValue: 43)

    public static let notificationFocusExit: Notification = .init(rawValue: 44)

    public static let notificationThemeChanged: Notification = .init(rawValue: 45)

    public static let notificationScrollBegin: Notification = .init(rawValue: 47)

    public static let notificationScrollEnd: Notification = .init(rawValue: 48)

    public static let notificationLayoutDirectionChanged: Notification = .init(rawValue: 49)

    open func _hasPoint(
        _ point: Godot.Vector2
    ) -> Bool {
        Bool()
    }

    open func _structuredTextParser(
        args: Godot.AnyGodotArray,
        text: Godot.GodotString
    ) -> Godot.GodotArray<Godot.Vector3I> {
        Godot.GodotArray<Godot.Vector3I>()
    }

    open func _getMinimumSize() -> Godot.Vector2 {
        Godot.Vector2()
    }

    open func _getTooltip(
        atPosition position: Godot.Vector2
    ) -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _getDragData(
        atPosition position: Godot.Vector2
    ) -> Godot.Variant {
        Variant()
    }

    open func _canDropData(
        atPosition position: Godot.Vector2,
        data: Godot.Variant
    ) -> Bool {
        Bool()
    }

    open func _dropData(
        atPosition position: Godot.Vector2,
        data: Godot.Variant
    ) {
    }

    open func _makeCustomTooltip(
        forText text: Godot.GodotString
    ) -> Godot.Object? {
        nil
    }

    open func _guiInput(
        event: Godot.InputEvent?
    ) {
    }

    internal static var __method_binding_accept_event: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "accept_event").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func acceptEvent() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_accept_event,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_get_minimum_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_minimum_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()

    public func minimumSize() -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_minimum_size,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_combined_minimum_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_combined_minimum_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()

    public func combinedMinimumSize() -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_combined_minimum_size,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_anchors_preset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_anchors_preset").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 509135270)!
        }
        }
    }()

    public func setAnchorsPreset(
        _ preset: Godot.Control.LayoutPreset,
        keepOffsets: Bool = false
    ) {
        preset.withGodotUnsafeRawPointer { __ptr_preset in
        keepOffsets.withGodotUnsafeRawPointer { __ptr_keepOffsets in
        withUnsafeArgumentPackPointer(__ptr_preset, __ptr_keepOffsets) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_anchors_preset,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_set_offsets_preset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_offsets_preset").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3724524307)!
        }
        }
    }()

    public func setOffsetsPreset(
        _ preset: Godot.Control.LayoutPreset,
        resizeMode: Godot.Control.LayoutPresetMode = Control.LayoutPresetMode(rawValue: 0)!,
        margin: Int32 = 0
    ) {
        preset.withGodotUnsafeRawPointer { __ptr_preset in
        resizeMode.withGodotUnsafeRawPointer { __ptr_resizeMode in
        margin.withGodotUnsafeRawPointer { __ptr_margin in
        withUnsafeArgumentPackPointer(__ptr_preset, __ptr_resizeMode, __ptr_margin) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_offsets_preset,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_set_anchors_and_offsets_preset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_anchors_and_offsets_preset").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3724524307)!
        }
        }
    }()

    public func setAnchorsAndOffsetsPreset(
        _ preset: Godot.Control.LayoutPreset,
        resizeMode: Godot.Control.LayoutPresetMode = Control.LayoutPresetMode(rawValue: 0)!,
        margin: Int32 = 0
    ) {
        preset.withGodotUnsafeRawPointer { __ptr_preset in
        resizeMode.withGodotUnsafeRawPointer { __ptr_resizeMode in
        margin.withGodotUnsafeRawPointer { __ptr_margin in
        withUnsafeArgumentPackPointer(__ptr_preset, __ptr_resizeMode, __ptr_margin) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_anchors_and_offsets_preset,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_set_anchor: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_anchor").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2302782885)!
        }
        }
    }()

    public func setAnchor(
        side: Godot.Side,
        anchor: Double,
        keepOffset: Bool = false,
        pushOppositeAnchor: Bool = true
    ) {
        side.withGodotUnsafeRawPointer { __ptr_side in
        anchor.withGodotUnsafeRawPointer { __ptr_anchor in
        keepOffset.withGodotUnsafeRawPointer { __ptr_keepOffset in
        pushOppositeAnchor.withGodotUnsafeRawPointer { __ptr_pushOppositeAnchor in
        withUnsafeArgumentPackPointer(__ptr_side, __ptr_anchor, __ptr_keepOffset, __ptr_pushOppositeAnchor) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_anchor,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    internal static var __method_binding_get_anchor: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_anchor").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2869120046)!
        }
        }
    }()

    private func __getAnchor(
        side: Godot.Side
    ) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        side.withGodotUnsafeRawPointer { __ptr_side in
        withUnsafeArgumentPackPointer(__ptr_side) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_anchor,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_offset").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4290182280)!
        }
        }
    }()

    public func setOffset(
        side: Godot.Side,
        offset: Double
    ) {
        side.withGodotUnsafeRawPointer { __ptr_side in
        offset.withGodotUnsafeRawPointer { __ptr_offset in
        withUnsafeArgumentPackPointer(__ptr_side, __ptr_offset) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_offset,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_offset").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2869120046)!
        }
        }
    }()

    private func __getOffset(
        _ offset: Godot.Side
    ) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        offset.withGodotUnsafeRawPointer { __ptr_offset in
        withUnsafeArgumentPackPointer(__ptr_offset) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_offset,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_anchor_and_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_anchor_and_offset").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4031722181)!
        }
        }
    }()

    public func setAnchorAndOffset(
        side: Godot.Side,
        anchor: Double,
        offset: Double,
        pushOppositeAnchor: Bool = false
    ) {
        side.withGodotUnsafeRawPointer { __ptr_side in
        anchor.withGodotUnsafeRawPointer { __ptr_anchor in
        offset.withGodotUnsafeRawPointer { __ptr_offset in
        pushOppositeAnchor.withGodotUnsafeRawPointer { __ptr_pushOppositeAnchor in
        withUnsafeArgumentPackPointer(__ptr_side, __ptr_anchor, __ptr_offset, __ptr_pushOppositeAnchor) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_anchor_and_offset,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    internal static var __method_binding_set_begin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_begin").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 743155724)!
        }
        }
    }()

    public func setBegin(
        position: Godot.Vector2
    ) {
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_begin,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_set_end: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_end").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 743155724)!
        }
        }
    }()

    public func setEnd(
        position: Godot.Vector2
    ) {
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_end,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_set_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2436320129)!
        }
        }
    }()

    public func setPosition(
        _ position: Godot.Vector2,
        keepOffsets: Bool = false
    ) {
        position.withGodotUnsafeRawPointer { __ptr_position in
        keepOffsets.withGodotUnsafeRawPointer { __ptr_keepOffsets in
        withUnsafeArgumentPackPointer(__ptr_position, __ptr_keepOffsets) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_position,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_set_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2436320129)!
        }
        }
    }()

    public func setSize(
        _ size: Godot.Vector2,
        keepOffsets: Bool = false
    ) {
        size.withGodotUnsafeRawPointer { __ptr_size in
        keepOffsets.withGodotUnsafeRawPointer { __ptr_keepOffsets in
        withUnsafeArgumentPackPointer(__ptr_size, __ptr_keepOffsets) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_size,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_reset_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "reset_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func resetSize() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_reset_size,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_set_custom_minimum_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_custom_minimum_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 743155724)!
        }
        }
    }()

    private func __setCustomMinimumSize(
        _ size: Godot.Vector2
    ) {
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_custom_minimum_size,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_set_global_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_global_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2436320129)!
        }
        }
    }()

    public func setGlobalPosition(
        _ position: Godot.Vector2,
        keepOffsets: Bool = false
    ) {
        position.withGodotUnsafeRawPointer { __ptr_position in
        keepOffsets.withGodotUnsafeRawPointer { __ptr_keepOffsets in
        withUnsafeArgumentPackPointer(__ptr_position, __ptr_keepOffsets) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_global_position,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_set_rotation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_rotation").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setRotation(
        radians: Double
    ) {
        radians.withGodotUnsafeRawPointer { __ptr_radians in
        withUnsafeArgumentPackPointer(__ptr_radians) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_rotation,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_set_rotation_degrees: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_rotation_degrees").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setRotationDegrees(
        _ degrees: Double
    ) {
        degrees.withGodotUnsafeRawPointer { __ptr_degrees in
        withUnsafeArgumentPackPointer(__ptr_degrees) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_rotation_degrees,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_set_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 743155724)!
        }
        }
    }()

    private func __setScale(
        _ scale: Godot.Vector2
    ) {
        scale.withGodotUnsafeRawPointer { __ptr_scale in
        withUnsafeArgumentPackPointer(__ptr_scale) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_scale,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_set_pivot_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_pivot_offset").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 743155724)!
        }
        }
    }()

    private func __setPivotOffset(
        _ pivotOffset: Godot.Vector2
    ) {
        pivotOffset.withGodotUnsafeRawPointer { __ptr_pivotOffset in
        withUnsafeArgumentPackPointer(__ptr_pivotOffset) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_pivot_offset,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_begin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_begin").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()

    public func begin() -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_begin,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_end: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_end").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()

    public func end() -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_end,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()

    private func __getPosition() -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_position,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()

    private func __getSize() -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_size,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_rotation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_rotation").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getRotation() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_rotation,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_rotation_degrees: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_rotation_degrees").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getRotationDegrees() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_rotation_degrees,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()

    private func __getScale() -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_scale,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_pivot_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_pivot_offset").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()

    private func __getPivotOffset() -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_pivot_offset,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_custom_minimum_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_custom_minimum_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()

    private func __getCustomMinimumSize() -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_custom_minimum_size,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_parent_area_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_parent_area_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()

    public func parentAreaSize() -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_parent_area_size,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_global_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_global_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()

    private func __getGlobalPosition() -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_global_position,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_screen_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_screen_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()

    public func screenPosition() -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_screen_position,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_rect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_rect").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1639390495)!
        }
        }
    }()

    public func rect() -> Godot.Rect2 {
        Godot.Rect2.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_rect,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_global_rect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_global_rect").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1639390495)!
        }
        }
    }()

    public func globalRect() -> Godot.Rect2 {
        Godot.Rect2.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_global_rect,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_focus_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_focus_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3232914922)!
        }
        }
    }()

    private func __setFocusMode(
        _ mode: Godot.Control.FocusMode
    ) {
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_focus_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_focus_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_focus_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2132829277)!
        }
        }
    }()

    private func __getFocusMode() -> Godot.Control.FocusMode {
        Godot.Control.FocusMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_focus_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_has_focus: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_focus").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    public func hasFocus() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_focus,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_grab_focus: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "grab_focus").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func grabFocus() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_grab_focus,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_release_focus: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "release_focus").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func releaseFocus() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_release_focus,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_find_prev_valid_focus: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "find_prev_valid_focus").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2783021301)!
        }
        }
    }()

    public func findPrevValidFocus() -> Godot.Control? {
        Godot.Control?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_find_prev_valid_focus,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_find_next_valid_focus: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "find_next_valid_focus").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2783021301)!
        }
        }
    }()

    public func findNextValidFocus() -> Godot.Control? {
        Godot.Control?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_find_next_valid_focus,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_find_valid_focus_neighbor: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "find_valid_focus_neighbor").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1543910170)!
        }
        }
    }()

    public func findValidFocusNeighbor(
        side: Godot.Side
    ) -> Godot.Control? {
        Godot.Control?.fromMutatingGodotUnsafePointer { __temporary in
        side.withGodotUnsafeRawPointer { __ptr_side in
        withUnsafeArgumentPackPointer(__ptr_side) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_find_valid_focus_neighbor,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_h_size_flags: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_h_size_flags").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 394851643)!
        }
        }
    }()

    private func __setHSizeFlags(
        _ flags: Godot.Control.SizeFlags
    ) {
        flags.withGodotUnsafeRawPointer { __ptr_flags in
        withUnsafeArgumentPackPointer(__ptr_flags) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_h_size_flags,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_h_size_flags: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_h_size_flags").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3781367401)!
        }
        }
    }()

    private func __getHSizeFlags() -> Godot.Control.SizeFlags {
        Godot.Control.SizeFlags.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_h_size_flags,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_stretch_ratio: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_stretch_ratio").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setStretchRatio(
        _ ratio: Double
    ) {
        ratio.withGodotUnsafeRawPointer { __ptr_ratio in
        withUnsafeArgumentPackPointer(__ptr_ratio) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_stretch_ratio,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_stretch_ratio: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_stretch_ratio").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getStretchRatio() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_stretch_ratio,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_v_size_flags: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_v_size_flags").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 394851643)!
        }
        }
    }()

    private func __setVSizeFlags(
        _ flags: Godot.Control.SizeFlags
    ) {
        flags.withGodotUnsafeRawPointer { __ptr_flags in
        withUnsafeArgumentPackPointer(__ptr_flags) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_v_size_flags,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_v_size_flags: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_v_size_flags").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3781367401)!
        }
        }
    }()

    private func __getVSizeFlags() -> Godot.Control.SizeFlags {
        Godot.Control.SizeFlags.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_v_size_flags,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_theme: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_theme").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2326690814)!
        }
        }
    }()

    private func __setTheme(
        _ theme: Godot.Theme?
    ) {
        theme.withGodotUnsafeRawPointer { __ptr_theme in
        withUnsafePointer(to: __ptr_theme) { _ptr___ptr_theme in
        withUnsafeArgumentPackPointer(_ptr___ptr_theme) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_theme,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_theme: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_theme").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3846893731)!
        }
        }
    }()

    private func __getTheme() -> Godot.Theme? {
        Godot.Theme?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_theme,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_theme_type_variation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_theme_type_variation").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3304788590)!
        }
        }
    }()

    private func __setThemeTypeVariation(
        themeType: Godot.GodotStringName
    ) {
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_theme_type_variation,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_theme_type_variation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_theme_type_variation").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2002593661)!
        }
        }
    }()

    private func __getThemeTypeVariation() -> Godot.GodotStringName {
        Godot.GodotStringName.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_theme_type_variation,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_begin_bulk_theme_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "begin_bulk_theme_override").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func beginBulkThemeOverride() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_begin_bulk_theme_override,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_end_bulk_theme_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "end_bulk_theme_override").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func endBulkThemeOverride() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_end_bulk_theme_override,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_add_theme_icon_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_theme_icon_override").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1373065600)!
        }
        }
    }()

    public func addThemeIconOverride(
        name: Godot.GodotStringName,
        texture: Godot.Texture2D?
    ) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafePointer(to: __ptr_texture) { _ptr___ptr_texture in
        withUnsafeArgumentPackPointer(__ptr_name, _ptr___ptr_texture) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_theme_icon_override,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_add_theme_stylebox_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_theme_stylebox_override").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4188838905)!
        }
        }
    }()

    public func addThemeStyleboxOverride(
        name: Godot.GodotStringName,
        stylebox: Godot.StyleBox?
    ) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        stylebox.withGodotUnsafeRawPointer { __ptr_stylebox in
        withUnsafePointer(to: __ptr_stylebox) { _ptr___ptr_stylebox in
        withUnsafeArgumentPackPointer(__ptr_name, _ptr___ptr_stylebox) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_theme_stylebox_override,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_add_theme_font_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_theme_font_override").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3518018674)!
        }
        }
    }()

    public func addThemeFontOverride(
        name: Godot.GodotStringName,
        font: Godot.Font?
    ) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        font.withGodotUnsafeRawPointer { __ptr_font in
        withUnsafePointer(to: __ptr_font) { _ptr___ptr_font in
        withUnsafeArgumentPackPointer(__ptr_name, _ptr___ptr_font) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_theme_font_override,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_add_theme_font_size_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_theme_font_size_override").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2415702435)!
        }
        }
    }()

    public func addThemeFontSizeOverride(
        name: Godot.GodotStringName,
        fontSize: Int32
    ) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        fontSize.withGodotUnsafeRawPointer { __ptr_fontSize in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_fontSize) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_theme_font_size_override,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_add_theme_color_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_theme_color_override").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4260178595)!
        }
        }
    }()

    public func addThemeColorOverride(
        name: Godot.GodotStringName,
        color: Godot.Color
    ) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_theme_color_override,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_add_theme_constant_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_theme_constant_override").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2415702435)!
        }
        }
    }()

    public func addThemeConstantOverride(
        name: Godot.GodotStringName,
        constant: Int32
    ) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        constant.withGodotUnsafeRawPointer { __ptr_constant in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_constant) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_theme_constant_override,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_remove_theme_icon_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_theme_icon_override").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3304788590)!
        }
        }
    }()

    public func removeThemeIconOverride(
        name: Godot.GodotStringName
    ) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_theme_icon_override,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_remove_theme_stylebox_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_theme_stylebox_override").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3304788590)!
        }
        }
    }()

    public func removeThemeStyleboxOverride(
        name: Godot.GodotStringName
    ) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_theme_stylebox_override,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_remove_theme_font_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_theme_font_override").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3304788590)!
        }
        }
    }()

    public func removeThemeFontOverride(
        name: Godot.GodotStringName
    ) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_theme_font_override,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_remove_theme_font_size_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_theme_font_size_override").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3304788590)!
        }
        }
    }()

    public func removeThemeFontSizeOverride(
        name: Godot.GodotStringName
    ) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_theme_font_size_override,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_remove_theme_color_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_theme_color_override").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3304788590)!
        }
        }
    }()

    public func removeThemeColorOverride(
        name: Godot.GodotStringName
    ) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_theme_color_override,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_remove_theme_constant_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_theme_constant_override").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3304788590)!
        }
        }
    }()

    public func removeThemeConstantOverride(
        name: Godot.GodotStringName
    ) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_theme_constant_override,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_theme_icon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_theme_icon").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3163973443)!
        }
        }
    }()

    public func themeIcon(
        name: Godot.GodotStringName,
        themeType: Godot.GodotStringName = ""
    ) -> Godot.Texture2D? {
        Godot.Texture2D?.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_theme_icon,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_get_theme_stylebox: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_theme_stylebox").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 604739069)!
        }
        }
    }()

    public func themeStylebox(
        name: Godot.GodotStringName,
        themeType: Godot.GodotStringName = ""
    ) -> Godot.StyleBox? {
        Godot.StyleBox?.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_theme_stylebox,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_get_theme_font: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_theme_font").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2826986490)!
        }
        }
    }()

    public func themeFont(
        name: Godot.GodotStringName,
        themeType: Godot.GodotStringName = ""
    ) -> Godot.Font? {
        Godot.Font?.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_theme_font,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_get_theme_font_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_theme_font_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1327056374)!
        }
        }
    }()

    public func themeFontSize(
        name: Godot.GodotStringName,
        themeType: Godot.GodotStringName = ""
    ) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_theme_font_size,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_get_theme_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_theme_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2798751242)!
        }
        }
    }()

    public func themeColor(
        name: Godot.GodotStringName,
        themeType: Godot.GodotStringName = ""
    ) -> Godot.Color {
        Godot.Color.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_theme_color,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_get_theme_constant: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_theme_constant").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1327056374)!
        }
        }
    }()

    public func themeConstant(
        name: Godot.GodotStringName,
        themeType: Godot.GodotStringName = ""
    ) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_theme_constant,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_has_theme_icon_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_theme_icon_override").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2619796661)!
        }
        }
    }()

    public func hasThemeIconOverride(
        name: Godot.GodotStringName
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_theme_icon_override,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_has_theme_stylebox_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_theme_stylebox_override").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2619796661)!
        }
        }
    }()

    public func hasThemeStyleboxOverride(
        name: Godot.GodotStringName
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_theme_stylebox_override,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_has_theme_font_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_theme_font_override").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2619796661)!
        }
        }
    }()

    public func hasThemeFontOverride(
        name: Godot.GodotStringName
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_theme_font_override,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_has_theme_font_size_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_theme_font_size_override").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2619796661)!
        }
        }
    }()

    public func hasThemeFontSizeOverride(
        name: Godot.GodotStringName
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_theme_font_size_override,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_has_theme_color_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_theme_color_override").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2619796661)!
        }
        }
    }()

    public func hasThemeColorOverride(
        name: Godot.GodotStringName
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_theme_color_override,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_has_theme_constant_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_theme_constant_override").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2619796661)!
        }
        }
    }()

    public func hasThemeConstantOverride(
        name: Godot.GodotStringName
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_theme_constant_override,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_has_theme_icon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_theme_icon").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 866386512)!
        }
        }
    }()

    public func hasThemeIcon(
        name: Godot.GodotStringName,
        themeType: Godot.GodotStringName = ""
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_theme_icon,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_has_theme_stylebox: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_theme_stylebox").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 866386512)!
        }
        }
    }()

    public func hasThemeStylebox(
        name: Godot.GodotStringName,
        themeType: Godot.GodotStringName = ""
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_theme_stylebox,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_has_theme_font: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_theme_font").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 866386512)!
        }
        }
    }()

    public func hasThemeFont(
        name: Godot.GodotStringName,
        themeType: Godot.GodotStringName = ""
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_theme_font,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_has_theme_font_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_theme_font_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 866386512)!
        }
        }
    }()

    public func hasThemeFontSize(
        name: Godot.GodotStringName,
        themeType: Godot.GodotStringName = ""
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_theme_font_size,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_has_theme_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_theme_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 866386512)!
        }
        }
    }()

    public func hasThemeColor(
        name: Godot.GodotStringName,
        themeType: Godot.GodotStringName = ""
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_theme_color,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_has_theme_constant: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_theme_constant").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 866386512)!
        }
        }
    }()

    public func hasThemeConstant(
        name: Godot.GodotStringName,
        themeType: Godot.GodotStringName = ""
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_theme_constant,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_get_theme_default_base_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_theme_default_base_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    public func themeDefaultBaseScale() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_theme_default_base_scale,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_theme_default_font: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_theme_default_font").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3229501585)!
        }
        }
    }()

    public func themeDefaultFont() -> Godot.Font? {
        Godot.Font?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_theme_default_font,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_theme_default_font_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_theme_default_font_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    public func themeDefaultFontSize() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_theme_default_font_size,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_parent_control: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_parent_control").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2783021301)!
        }
        }
    }()

    public func parentControl() -> Godot.Control? {
        Godot.Control?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_parent_control,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_h_grow_direction: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_h_grow_direction").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2022385301)!
        }
        }
    }()

    private func __setHGrowDirection(
        _ direction: Godot.Control.GrowDirection
    ) {
        direction.withGodotUnsafeRawPointer { __ptr_direction in
        withUnsafeArgumentPackPointer(__ptr_direction) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_h_grow_direction,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_h_grow_direction: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_h_grow_direction").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3635610155)!
        }
        }
    }()

    private func __getHGrowDirection() -> Godot.Control.GrowDirection {
        Godot.Control.GrowDirection.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_h_grow_direction,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_v_grow_direction: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_v_grow_direction").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2022385301)!
        }
        }
    }()

    private func __setVGrowDirection(
        _ direction: Godot.Control.GrowDirection
    ) {
        direction.withGodotUnsafeRawPointer { __ptr_direction in
        withUnsafeArgumentPackPointer(__ptr_direction) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_v_grow_direction,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_v_grow_direction: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_v_grow_direction").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3635610155)!
        }
        }
    }()

    private func __getVGrowDirection() -> Godot.Control.GrowDirection {
        Godot.Control.GrowDirection.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_v_grow_direction,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_tooltip_text: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tooltip_text").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()

    private func __setTooltipText(
        hint: Godot.GodotString
    ) {
        hint.withGodotUnsafeRawPointer { __ptr_hint in
        withUnsafeArgumentPackPointer(__ptr_hint) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_tooltip_text,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_tooltip_text: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tooltip_text").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()

    private func __getTooltipText() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_tooltip_text,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_tooltip: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tooltip").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2895288280)!
        }
        }
    }()

    public func tooltip(
        atPosition position: Godot.Vector2 = Vector2(x: 0, y: 0)
    ) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_tooltip,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_default_cursor_shape: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_default_cursor_shape").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 217062046)!
        }
        }
    }()

    private func __setDefaultCursorShape(
        _ shape: Godot.Control.CursorShape
    ) {
        shape.withGodotUnsafeRawPointer { __ptr_shape in
        withUnsafeArgumentPackPointer(__ptr_shape) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_default_cursor_shape,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_default_cursor_shape: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_default_cursor_shape").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2359535750)!
        }
        }
    }()

    private func __getDefaultCursorShape() -> Godot.Control.CursorShape {
        Godot.Control.CursorShape.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_default_cursor_shape,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_cursor_shape: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_cursor_shape").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1395773853)!
        }
        }
    }()

    public func cursorShape(
        position: Godot.Vector2 = Vector2(x: 0, y: 0)
    ) -> Godot.Control.CursorShape {
        Godot.Control.CursorShape.fromMutatingGodotUnsafePointer { __temporary in
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_cursor_shape,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_focus_neighbor: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_focus_neighbor").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2024461774)!
        }
        }
    }()

    public func setFocusNeighbor(
        side: Godot.Side,
        neighbor: Godot.NodePath
    ) {
        side.withGodotUnsafeRawPointer { __ptr_side in
        neighbor.withGodotUnsafeRawPointer { __ptr_neighbor in
        withUnsafeArgumentPackPointer(__ptr_side, __ptr_neighbor) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_focus_neighbor,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_focus_neighbor: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_focus_neighbor").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2757935761)!
        }
        }
    }()

    private func __getFocusNeighbor(
        side: Godot.Side
    ) -> Godot.NodePath {
        Godot.NodePath.fromMutatingGodotUnsafePointer { __temporary in
        side.withGodotUnsafeRawPointer { __ptr_side in
        withUnsafeArgumentPackPointer(__ptr_side) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_focus_neighbor,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_focus_next: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_focus_next").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1348162250)!
        }
        }
    }()

    private func __setFocusNext(
        _ next: Godot.NodePath
    ) {
        next.withGodotUnsafeRawPointer { __ptr_next in
        withUnsafeArgumentPackPointer(__ptr_next) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_focus_next,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_focus_next: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_focus_next").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4075236667)!
        }
        }
    }()

    private func __getFocusNext() -> Godot.NodePath {
        Godot.NodePath.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_focus_next,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_focus_previous: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_focus_previous").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1348162250)!
        }
        }
    }()

    private func __setFocusPrevious(
        _ previous: Godot.NodePath
    ) {
        previous.withGodotUnsafeRawPointer { __ptr_previous in
        withUnsafeArgumentPackPointer(__ptr_previous) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_focus_previous,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_focus_previous: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_focus_previous").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4075236667)!
        }
        }
    }()

    private func __getFocusPrevious() -> Godot.NodePath {
        Godot.NodePath.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_focus_previous,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_force_drag: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "force_drag").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3191844692)!
        }
        }
    }()

    public func forceDrag<Value: VariantStorableIn>(
        data: Value,
        preview: Godot.Control?
    ) {
        Godot.Variant.withStorageUnsafeRawPointer(to: data) { __ptr_data in
        preview.withGodotUnsafeRawPointer { __ptr_preview in
        withUnsafePointer(to: __ptr_preview) { _ptr___ptr_preview in
        withUnsafeArgumentPackPointer(__ptr_data, _ptr___ptr_preview) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_force_drag,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_set_mouse_filter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_mouse_filter").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3891156122)!
        }
        }
    }()

    private func __setMouseFilter(
        _ filter: Godot.Control.MouseFilter
    ) {
        filter.withGodotUnsafeRawPointer { __ptr_filter in
        withUnsafeArgumentPackPointer(__ptr_filter) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_mouse_filter,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_mouse_filter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_mouse_filter").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1572545674)!
        }
        }
    }()

    private func __getMouseFilter() -> Godot.Control.MouseFilter {
        Godot.Control.MouseFilter.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_mouse_filter,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_force_pass_scroll_events: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_force_pass_scroll_events").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setForcePassScrollEvents(
        _ forcePassScrollEvents: Bool
    ) {
        forcePassScrollEvents.withGodotUnsafeRawPointer { __ptr_forcePassScrollEvents in
        withUnsafeArgumentPackPointer(__ptr_forcePassScrollEvents) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_force_pass_scroll_events,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_force_pass_scroll_events: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_force_pass_scroll_events").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isForcePassScrollEvents() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_force_pass_scroll_events,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_clip_contents: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_clip_contents").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setClipContents(
        enable: Bool
    ) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_clip_contents,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_clipping_contents: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_clipping_contents").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()

    private func __isClippingContents() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_clipping_contents,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_grab_click_focus: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "grab_click_focus").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func grabClickFocus() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_grab_click_focus,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_set_drag_forwarding: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_drag_forwarding").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1076571380)!
        }
        }
    }()

    public func setDragForwarding(
        dragFunc: Godot.Callable,
        canDropFunc: Godot.Callable,
        dropFunc: Godot.Callable
    ) {
        dragFunc.withGodotUnsafeRawPointer { __ptr_dragFunc in
        canDropFunc.withGodotUnsafeRawPointer { __ptr_canDropFunc in
        dropFunc.withGodotUnsafeRawPointer { __ptr_dropFunc in
        withUnsafeArgumentPackPointer(__ptr_dragFunc, __ptr_canDropFunc, __ptr_dropFunc) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_drag_forwarding,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_set_drag_preview: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_drag_preview").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1496901182)!
        }
        }
    }()

    public func setDragPreview(
        _ control: Godot.Control?
    ) {
        control.withGodotUnsafeRawPointer { __ptr_control in
        withUnsafePointer(to: __ptr_control) { _ptr___ptr_control in
        withUnsafeArgumentPackPointer(_ptr___ptr_control) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_drag_preview,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_is_drag_successful: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_drag_successful").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    public func isDragSuccessful() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_drag_successful,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_warp_mouse: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "warp_mouse").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 743155724)!
        }
        }
    }()

    public func warpMouse(
        position: Godot.Vector2
    ) {
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

    internal static var __method_binding_set_shortcut_context: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_shortcut_context").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1078189570)!
        }
        }
    }()

    private func __setShortcutContext(
        node: Godot.Node?
    ) {
        node.withGodotUnsafeRawPointer { __ptr_node in
        withUnsafePointer(to: __ptr_node) { _ptr___ptr_node in
        withUnsafeArgumentPackPointer(_ptr___ptr_node) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_shortcut_context,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_shortcut_context: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_shortcut_context").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3160264692)!
        }
        }
    }()

    private func __getShortcutContext() -> Godot.Node? {
        Godot.Node?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_shortcut_context,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_update_minimum_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "update_minimum_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func updateMinimumSize() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_update_minimum_size,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_set_layout_direction: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_layout_direction").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3310692370)!
        }
        }
    }()

    private func __setLayoutDirection(
        _ direction: Godot.Control.LayoutDirection
    ) {
        direction.withGodotUnsafeRawPointer { __ptr_direction in
        withUnsafeArgumentPackPointer(__ptr_direction) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_layout_direction,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_layout_direction: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_layout_direction").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1546772008)!
        }
        }
    }()

    private func __getLayoutDirection() -> Godot.Control.LayoutDirection {
        Godot.Control.LayoutDirection.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_layout_direction,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_is_layout_rtl: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_layout_rtl").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    public func isLayoutRtl() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_layout_rtl,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_auto_translate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_auto_translate").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setAutoTranslate(
        enable: Bool
    ) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_auto_translate,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_auto_translating: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_auto_translating").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isAutoTranslating() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_auto_translating,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_localize_numeral_system: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_localize_numeral_system").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setLocalizeNumeralSystem(
        enable: Bool
    ) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_localize_numeral_system,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_localizing_numeral_system: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_localizing_numeral_system").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isLocalizingNumeralSystem() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_localizing_numeral_system,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var isClippingContents: Bool {
        get {
            __isClippingContents()
        }
        set {
            __setClipContents(
                enable: newValue
            )
        }
    }

    public var customMinimumSize: Godot.Vector2 {
        get {
            __getCustomMinimumSize()
        }
        set {
            __setCustomMinimumSize(
                newValue
            )
        }
    }

    public var layoutDirection: Godot.Control.LayoutDirection {
        get {
            __getLayoutDirection()
        }
        set {
            __setLayoutDirection(
                newValue
            )
        }
    }

    public var anchorLeft: Double {
        get {
            __getAnchor(
                side: .init(rawValue: 0)!
            )
        }
    }

    public var anchorTop: Double {
        get {
            __getAnchor(
                side: .init(rawValue: 1)!
            )
        }
    }

    public var anchorRight: Double {
        get {
            __getAnchor(
                side: .init(rawValue: 2)!
            )
        }
    }

    public var anchorBottom: Double {
        get {
            __getAnchor(
                side: .init(rawValue: 3)!
            )
        }
    }

    public var offsetLeft: Double {
        get {
            __getOffset(
                .init(rawValue: 0)!
            )
        }
    }

    public var offsetTop: Double {
        get {
            __getOffset(
                .init(rawValue: 1)!
            )
        }
    }

    public var offsetRight: Double {
        get {
            __getOffset(
                .init(rawValue: 2)!
            )
        }
    }

    public var offsetBottom: Double {
        get {
            __getOffset(
                .init(rawValue: 3)!
            )
        }
    }

    public var hGrowDirection: Godot.Control.GrowDirection {
        get {
            __getHGrowDirection()
        }
        set {
            __setHGrowDirection(
                newValue
            )
        }
    }

    public var vGrowDirection: Godot.Control.GrowDirection {
        get {
            __getVGrowDirection()
        }
        set {
            __setVGrowDirection(
                newValue
            )
        }
    }

    public var size: Godot.Vector2 {
        get {
            __getSize()
        }
    }

    public var position: Godot.Vector2 {
        get {
            __getPosition()
        }
    }

    public var globalPosition: Godot.Vector2 {
        get {
            __getGlobalPosition()
        }
    }

    public var rotation: Double {
        get {
            __getRotation()
        }
        set {
            __setRotation(
                radians: newValue
            )
        }
    }

    public var rotationDegrees: Double {
        get {
            __getRotationDegrees()
        }
        set {
            __setRotationDegrees(
                newValue
            )
        }
    }

    public var scale: Godot.Vector2 {
        get {
            __getScale()
        }
        set {
            __setScale(
                newValue
            )
        }
    }

    public var pivotOffset: Godot.Vector2 {
        get {
            __getPivotOffset()
        }
        set {
            __setPivotOffset(
                newValue
            )
        }
    }

    public var hSizeFlags: Godot.Control.SizeFlags {
        get {
            __getHSizeFlags()
        }
        set {
            __setHSizeFlags(
                newValue
            )
        }
    }

    public var vSizeFlags: Godot.Control.SizeFlags {
        get {
            __getVSizeFlags()
        }
        set {
            __setVSizeFlags(
                newValue
            )
        }
    }

    public var stretchRatio: Double {
        get {
            __getStretchRatio()
        }
        set {
            __setStretchRatio(
                newValue
            )
        }
    }

    public var isAutoTranslating: Bool {
        get {
            __isAutoTranslating()
        }
        set {
            __setAutoTranslate(
                enable: newValue
            )
        }
    }

    public var isLocalizingNumeralSystem: Bool {
        get {
            __isLocalizingNumeralSystem()
        }
        set {
            __setLocalizeNumeralSystem(
                enable: newValue
            )
        }
    }

    public var tooltipText: Godot.GodotString {
        get {
            __getTooltipText()
        }
        set {
            __setTooltipText(
                hint: newValue
            )
        }
    }

    public var focusNeighborLeft: Godot.NodePath {
        get {
            __getFocusNeighbor(
                side: .init(rawValue: 0)!
            )
        }
    }

    public var focusNeighborTop: Godot.NodePath {
        get {
            __getFocusNeighbor(
                side: .init(rawValue: 1)!
            )
        }
    }

    public var focusNeighborRight: Godot.NodePath {
        get {
            __getFocusNeighbor(
                side: .init(rawValue: 2)!
            )
        }
    }

    public var focusNeighborBottom: Godot.NodePath {
        get {
            __getFocusNeighbor(
                side: .init(rawValue: 3)!
            )
        }
    }

    public var focusNext: Godot.NodePath {
        get {
            __getFocusNext()
        }
        set {
            __setFocusNext(
                newValue
            )
        }
    }

    public var focusPrevious: Godot.NodePath {
        get {
            __getFocusPrevious()
        }
        set {
            __setFocusPrevious(
                newValue
            )
        }
    }

    public var focusMode: Godot.Control.FocusMode {
        get {
            __getFocusMode()
        }
        set {
            __setFocusMode(
                newValue
            )
        }
    }

    public var mouseFilter: Godot.Control.MouseFilter {
        get {
            __getMouseFilter()
        }
        set {
            __setMouseFilter(
                newValue
            )
        }
    }

    public var isForcePassScrollEvents: Bool {
        get {
            __isForcePassScrollEvents()
        }
        set {
            __setForcePassScrollEvents(
                newValue
            )
        }
    }

    public var defaultCursorShape: Godot.Control.CursorShape {
        get {
            __getDefaultCursorShape()
        }
        set {
            __setDefaultCursorShape(
                newValue
            )
        }
    }

    public var shortcutContext: Godot.Node? {
        get {
            __getShortcutContext()
        }
        set {
            __setShortcutContext(
                node: newValue
            )
        }
    }

    public var theme: Godot.Theme? {
        get {
            __getTheme()
        }
        set {
            __setTheme(
                newValue
            )
        }
    }

    public var themeTypeVariation: Godot.GodotStringName {
        get {
            __getThemeTypeVariation()
        }
        set {
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
        let _has_point_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<Control>.fromOpaque(instancePtr).takeUnretainedValue()
        ._hasPoint(
            Godot.Vector2.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _structured_text_parser_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<Control>.fromOpaque(instancePtr).takeUnretainedValue()
        ._structuredTextParser(
            args: Godot.AnyGodotArray.fromGodotUnsafePointer(args[0]!),
            text: Godot.GodotString.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_minimum_size_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<Control>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getMinimumSize()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_tooltip_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<Control>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getTooltip(
            atPosition: Godot.Vector2.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_drag_data_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<Control>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getDragData(
            atPosition: Godot.Vector2.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _can_drop_data_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<Control>.fromOpaque(instancePtr).takeUnretainedValue()
        ._canDropData(
            atPosition: Godot.Vector2.fromGodotUnsafePointer(args[0]!),
            data: Godot.Variant.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _drop_data_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<Control>.fromOpaque(instancePtr).takeUnretainedValue()
        ._dropData(
            atPosition: Godot.Vector2.fromGodotUnsafePointer(args[0]!),
            data: Godot.Variant.fromGodotUnsafePointer(args[1]!)
        )}
        let _make_custom_tooltip_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<Control>.fromOpaque(instancePtr).takeUnretainedValue()
        ._makeCustomTooltip(
            forText: Godot.GodotString.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _gui_input_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<Control>.fromOpaque(instancePtr).takeUnretainedValue()
        ._guiInput(
            event: Godot.InputEvent?.fromGodotUnsafePointer(args[0]!)
        )}
        _virtualFunctions = [
            "_hasPoint" : ("_has_point", _has_point_call),
            "_structuredTextParser" : ("_structured_text_parser", _structured_text_parser_call),
            "_getMinimumSize" : ("_get_minimum_size", _get_minimum_size_call),
            "_getTooltip" : ("_get_tooltip", _get_tooltip_call),
            "_getDragData" : ("_get_drag_data", _get_drag_data_call),
            "_canDropData" : ("_can_drop_data", _can_drop_data_call),
            "_dropData" : ("_drop_data", _drop_data_call),
            "_makeCustomTooltip" : ("_make_custom_tooltip", _make_custom_tooltip_call),
            "_guiInput" : ("_gui_input", _gui_input_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }
}