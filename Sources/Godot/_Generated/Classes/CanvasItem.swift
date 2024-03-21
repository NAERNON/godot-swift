//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class CanvasItem: Node {
    public enum TextureFilter: UInt32, GodotEnum {
        case parentNode = 0
        case nearest = 1
        case linear = 2
        case nearestWithMipmaps = 3
        case linearWithMipmaps = 4
        case nearestWithMipmapsAnisotropic = 5
        case linearWithMipmapsAnisotropic = 6
        case max = 7
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Parent Node", 0),
            ("Nearest", 1),
            ("Linear", 2),
            ("Nearest With Mipmaps", 3),
            ("Linear With Mipmaps", 4),
            ("Nearest With Mipmaps Anisotropic", 5),
            ("Linear With Mipmaps Anisotropic", 6),
            ("Max", 7),]
        }
    }
    public enum TextureRepeat: UInt32, GodotEnum {
        case parentNode = 0
        case disabled = 1
        case enabled = 2
        case mirror = 3
        case max = 4
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Parent Node", 0),
            ("Disabled", 1),
            ("Enabled", 2),
            ("Mirror", 3),
            ("Max", 4),]
        }
    }
    public enum ClipChildrenMode: UInt32, GodotEnum {
        case disabled = 0
        case only = 1
        case andDraw = 2
        case max = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Disabled", 0),
            ("Only", 1),
            ("And Draw", 2),
            ("Max", 3),]
        }
    }

    public func draw() {
        _ = drawSignal.emit()
    }
    public lazy var drawSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "draw") { callablePtr, args, _, _, _ in
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

    public func visibilityChanged() {
        _ = visibilityChangedSignal.emit()
    }
    public lazy var visibilityChangedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "visibility_changed") { callablePtr, args, _, _, _ in
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

    public func hidden() {
        _ = hiddenSignal.emit()
    }
    public lazy var hiddenSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "hidden") { callablePtr, args, _, _, _ in
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

    public func itemRectChanged() {
        _ = itemRectChangedSignal.emit()
    }
    public lazy var itemRectChangedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "item_rect_changed") { callablePtr, args, _, _, _ in
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

    public static let notificationTransformChanged: Notification = .init(rawValue: 2000)
    public static let notificationLocalTransformChanged: Notification = .init(rawValue: 35)
    public static let notificationDraw: Notification = .init(rawValue: 30)
    public static let notificationVisibilityChanged: Notification = .init(rawValue: 31)
    public static let notificationEnterCanvas: Notification = .init(rawValue: 32)
    public static let notificationExitCanvas: Notification = .init(rawValue: 33)
    public static let notificationWorld2DChanged: Notification = .init(rawValue: 36)

    open func _draw() {
    }

    internal static var __method_binding_get_canvas_item: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_canvas_item").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2944877500)!
        }
        }
    }()
    public func canvasItem() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_canvas_item,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_visible: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_visible").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setVisible(_ visible: Bool) {
        visible.withGodotUnsafeRawPointer { __ptr_visible in
        withUnsafeArgumentPackPointer(__ptr_visible) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_visible,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_visible: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_visible").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isVisible() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_visible,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_is_visible_in_tree: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_visible_in_tree").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func isVisibleInTree() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_visible_in_tree,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_show: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "show").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func show() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_show,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_hide: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "hide").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func hide() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_hide,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_queue_redraw: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "queue_redraw").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func queueRedraw() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_queue_redraw,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_move_to_front: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "move_to_front").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func moveToFront() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_move_to_front,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_set_as_top_level: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_as_top_level").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setAsTopLevel(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_as_top_level,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_set_as_top_level: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_set_as_top_level").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isSetAsTopLevel() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_set_as_top_level,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_light_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_light_mask").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setLightMask(_ lightMask: Int32) {
        lightMask.withGodotUnsafeRawPointer { __ptr_lightMask in
        withUnsafeArgumentPackPointer(__ptr_lightMask) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_light_mask,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_light_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_light_mask").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getLightMask() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_light_mask,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_modulate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_modulate").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2920490490)!
        }
        }
    }()
    private func __setModulate(_ modulate: Godot.Color) {
        modulate.withGodotUnsafeRawPointer { __ptr_modulate in
        withUnsafeArgumentPackPointer(__ptr_modulate) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_modulate,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_modulate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_modulate").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3444240500)!
        }
        }
    }()
    private func __getModulate() -> Godot.Color {
        Godot.Color.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_modulate,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_self_modulate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_self_modulate").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2920490490)!
        }
        }
    }()
    private func __setSelfModulate(_ selfModulate: Godot.Color) {
        selfModulate.withGodotUnsafeRawPointer { __ptr_selfModulate in
        withUnsafeArgumentPackPointer(__ptr_selfModulate) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_self_modulate,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_self_modulate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_self_modulate").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3444240500)!
        }
        }
    }()
    private func __getSelfModulate() -> Godot.Color {
        Godot.Color.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_self_modulate,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_z_index: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_z_index").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setZIndex(_ zIndex: Int32) {
        zIndex.withGodotUnsafeRawPointer { __ptr_zIndex in
        withUnsafeArgumentPackPointer(__ptr_zIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_z_index,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_z_index: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_z_index").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getZIndex() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_z_index,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_z_as_relative: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_z_as_relative").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setZAsRelative(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_z_as_relative,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_z_relative: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_z_relative").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isZRelative() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_z_relative,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_y_sort_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_y_sort_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setYSortEnabled(_ enabled: Bool) {
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_y_sort_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_y_sort_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_y_sort_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isYSortEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_y_sort_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_draw_behind_parent: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_draw_behind_parent").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setDrawBehindParent(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_draw_behind_parent,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_draw_behind_parent_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_draw_behind_parent_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isDrawBehindParentEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_draw_behind_parent_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_draw_line: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_line").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1562330099)!
        }
        }
    }()
    public func drawLine(from: Godot.Vector2, to: Godot.Vector2, color: Godot.Color, width: Double = -1.0, antialiased: Bool = false) {
        from.withGodotUnsafeRawPointer { __ptr_from in
        to.withGodotUnsafeRawPointer { __ptr_to in
        color.withGodotUnsafeRawPointer { __ptr_color in
        width.withGodotUnsafeRawPointer { __ptr_width in
        antialiased.withGodotUnsafeRawPointer { __ptr_antialiased in
        withUnsafeArgumentPackPointer(__ptr_from, __ptr_to, __ptr_color, __ptr_width, __ptr_antialiased) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_draw_line,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    internal static var __method_binding_draw_dashed_line: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_dashed_line").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 684651049)!
        }
        }
    }()
    public func drawDashedLine(from: Godot.Vector2, to: Godot.Vector2, color: Godot.Color, width: Double = -1.0, dash: Double = 2.0, aligned: Bool = true) {
        from.withGodotUnsafeRawPointer { __ptr_from in
        to.withGodotUnsafeRawPointer { __ptr_to in
        color.withGodotUnsafeRawPointer { __ptr_color in
        width.withGodotUnsafeRawPointer { __ptr_width in
        dash.withGodotUnsafeRawPointer { __ptr_dash in
        aligned.withGodotUnsafeRawPointer { __ptr_aligned in
        withUnsafeArgumentPackPointer(__ptr_from, __ptr_to, __ptr_color, __ptr_width, __ptr_dash, __ptr_aligned) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_draw_dashed_line,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}
    }

    internal static var __method_binding_draw_polyline: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_polyline").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3797364428)!
        }
        }
    }()
    public func drawPolyline(points: Godot.PackedVector2Array, color: Godot.Color, width: Double = -1.0, antialiased: Bool = false) {
        points.withGodotUnsafeRawPointer { __ptr_points in
        color.withGodotUnsafeRawPointer { __ptr_color in
        width.withGodotUnsafeRawPointer { __ptr_width in
        antialiased.withGodotUnsafeRawPointer { __ptr_antialiased in
        withUnsafeArgumentPackPointer(__ptr_points, __ptr_color, __ptr_width, __ptr_antialiased) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_draw_polyline,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    internal static var __method_binding_draw_polyline_colors: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_polyline_colors").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2311979562)!
        }
        }
    }()
    public func drawPolylineColors(points: Godot.PackedVector2Array, colors: Godot.PackedColorArray, width: Double = -1.0, antialiased: Bool = false) {
        points.withGodotUnsafeRawPointer { __ptr_points in
        colors.withGodotUnsafeRawPointer { __ptr_colors in
        width.withGodotUnsafeRawPointer { __ptr_width in
        antialiased.withGodotUnsafeRawPointer { __ptr_antialiased in
        withUnsafeArgumentPackPointer(__ptr_points, __ptr_colors, __ptr_width, __ptr_antialiased) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_draw_polyline_colors,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    internal static var __method_binding_draw_arc: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_arc").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4140652635)!
        }
        }
    }()
    public func drawArc(center: Godot.Vector2, radius: Double, startAngle: Double, endAngle: Double, pointCount: Int32, color: Godot.Color, width: Double = -1.0, antialiased: Bool = false) {
        center.withGodotUnsafeRawPointer { __ptr_center in
        radius.withGodotUnsafeRawPointer { __ptr_radius in
        startAngle.withGodotUnsafeRawPointer { __ptr_startAngle in
        endAngle.withGodotUnsafeRawPointer { __ptr_endAngle in
        pointCount.withGodotUnsafeRawPointer { __ptr_pointCount in
        color.withGodotUnsafeRawPointer { __ptr_color in
        width.withGodotUnsafeRawPointer { __ptr_width in
        antialiased.withGodotUnsafeRawPointer { __ptr_antialiased in
        withUnsafeArgumentPackPointer(__ptr_center, __ptr_radius, __ptr_startAngle, __ptr_endAngle, __ptr_pointCount, __ptr_color, __ptr_width, __ptr_antialiased) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_draw_arc,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}}}
    }

    internal static var __method_binding_draw_multiline: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_multiline").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2239075205)!
        }
        }
    }()
    public func drawMultiline(points: Godot.PackedVector2Array, color: Godot.Color, width: Double = -1.0) {
        points.withGodotUnsafeRawPointer { __ptr_points in
        color.withGodotUnsafeRawPointer { __ptr_color in
        width.withGodotUnsafeRawPointer { __ptr_width in
        withUnsafeArgumentPackPointer(__ptr_points, __ptr_color, __ptr_width) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_draw_multiline,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_draw_multiline_colors: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_multiline_colors").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4072951537)!
        }
        }
    }()
    public func drawMultilineColors(points: Godot.PackedVector2Array, colors: Godot.PackedColorArray, width: Double = -1.0) {
        points.withGodotUnsafeRawPointer { __ptr_points in
        colors.withGodotUnsafeRawPointer { __ptr_colors in
        width.withGodotUnsafeRawPointer { __ptr_width in
        withUnsafeArgumentPackPointer(__ptr_points, __ptr_colors, __ptr_width) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_draw_multiline_colors,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_draw_rect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_rect").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2417231121)!
        }
        }
    }()
    public func drawRect(_ rect: Godot.Rect2, color: Godot.Color, filled: Bool = true, width: Double = -1.0) {
        rect.withGodotUnsafeRawPointer { __ptr_rect in
        color.withGodotUnsafeRawPointer { __ptr_color in
        filled.withGodotUnsafeRawPointer { __ptr_filled in
        width.withGodotUnsafeRawPointer { __ptr_width in
        withUnsafeArgumentPackPointer(__ptr_rect, __ptr_color, __ptr_filled, __ptr_width) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_draw_rect,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    internal static var __method_binding_draw_circle: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_circle").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3063020269)!
        }
        }
    }()
    public func drawCircle(position: Godot.Vector2, radius: Double, color: Godot.Color) {
        position.withGodotUnsafeRawPointer { __ptr_position in
        radius.withGodotUnsafeRawPointer { __ptr_radius in
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_position, __ptr_radius, __ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_draw_circle,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_draw_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_texture").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 520200117)!
        }
        }
    }()
    public func drawTexture(_ texture: Godot.Texture2D?, position: Godot.Vector2, modulate: Godot.Color = .white) {
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafePointer(to: __ptr_texture) { _ptr___ptr_texture in
        position.withGodotUnsafeRawPointer { __ptr_position in
        modulate.withGodotUnsafeRawPointer { __ptr_modulate in
        withUnsafeArgumentPackPointer(_ptr___ptr_texture, __ptr_position, __ptr_modulate) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_draw_texture,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    internal static var __method_binding_draw_texture_rect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_texture_rect").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3832805018)!
        }
        }
    }()
    public func drawTextureRect(texture: Godot.Texture2D?, rect: Godot.Rect2, tile: Bool, modulate: Godot.Color = .white, transpose: Bool = false) {
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafePointer(to: __ptr_texture) { _ptr___ptr_texture in
        rect.withGodotUnsafeRawPointer { __ptr_rect in
        tile.withGodotUnsafeRawPointer { __ptr_tile in
        modulate.withGodotUnsafeRawPointer { __ptr_modulate in
        transpose.withGodotUnsafeRawPointer { __ptr_transpose in
        withUnsafeArgumentPackPointer(_ptr___ptr_texture, __ptr_rect, __ptr_tile, __ptr_modulate, __ptr_transpose) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_draw_texture_rect,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}
    }

    internal static var __method_binding_draw_texture_rect_region: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_texture_rect_region").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3883821411)!
        }
        }
    }()
    public func drawTextureRectRegion(texture: Godot.Texture2D?, rect: Godot.Rect2, srcRect: Godot.Rect2, modulate: Godot.Color = .white, transpose: Bool = false, clipUv: Bool = true) {
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafePointer(to: __ptr_texture) { _ptr___ptr_texture in
        rect.withGodotUnsafeRawPointer { __ptr_rect in
        srcRect.withGodotUnsafeRawPointer { __ptr_srcRect in
        modulate.withGodotUnsafeRawPointer { __ptr_modulate in
        transpose.withGodotUnsafeRawPointer { __ptr_transpose in
        clipUv.withGodotUnsafeRawPointer { __ptr_clipUv in
        withUnsafeArgumentPackPointer(_ptr___ptr_texture, __ptr_rect, __ptr_srcRect, __ptr_modulate, __ptr_transpose, __ptr_clipUv) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_draw_texture_rect_region,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}}
    }

    internal static var __method_binding_draw_msdf_texture_rect_region: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_msdf_texture_rect_region").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4219163252)!
        }
        }
    }()
    public func drawMsdfTextureRectRegion(texture: Godot.Texture2D?, rect: Godot.Rect2, srcRect: Godot.Rect2, modulate: Godot.Color = .white, outline: Double = 0.0, pixelRange: Double = 4.0, scale: Double = 1.0) {
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafePointer(to: __ptr_texture) { _ptr___ptr_texture in
        rect.withGodotUnsafeRawPointer { __ptr_rect in
        srcRect.withGodotUnsafeRawPointer { __ptr_srcRect in
        modulate.withGodotUnsafeRawPointer { __ptr_modulate in
        outline.withGodotUnsafeRawPointer { __ptr_outline in
        pixelRange.withGodotUnsafeRawPointer { __ptr_pixelRange in
        scale.withGodotUnsafeRawPointer { __ptr_scale in
        withUnsafeArgumentPackPointer(_ptr___ptr_texture, __ptr_rect, __ptr_srcRect, __ptr_modulate, __ptr_outline, __ptr_pixelRange, __ptr_scale) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_draw_msdf_texture_rect_region,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}}}
    }

    internal static var __method_binding_draw_lcd_texture_rect_region: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_lcd_texture_rect_region").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3212350954)!
        }
        }
    }()
    public func drawLcdTextureRectRegion(texture: Godot.Texture2D?, rect: Godot.Rect2, srcRect: Godot.Rect2, modulate: Godot.Color = .white) {
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafePointer(to: __ptr_texture) { _ptr___ptr_texture in
        rect.withGodotUnsafeRawPointer { __ptr_rect in
        srcRect.withGodotUnsafeRawPointer { __ptr_srcRect in
        modulate.withGodotUnsafeRawPointer { __ptr_modulate in
        withUnsafeArgumentPackPointer(_ptr___ptr_texture, __ptr_rect, __ptr_srcRect, __ptr_modulate) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_draw_lcd_texture_rect_region,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    internal static var __method_binding_draw_style_box: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_style_box").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 388176283)!
        }
        }
    }()
    public func drawStyleBox(_ styleBox: Godot.StyleBox?, rect: Godot.Rect2) {
        styleBox.withGodotUnsafeRawPointer { __ptr_styleBox in
        withUnsafePointer(to: __ptr_styleBox) { _ptr___ptr_styleBox in
        rect.withGodotUnsafeRawPointer { __ptr_rect in
        withUnsafeArgumentPackPointer(_ptr___ptr_styleBox, __ptr_rect) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_draw_style_box,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_draw_primitive: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_primitive").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3288481815)!
        }
        }
    }()
    public func drawPrimitive(points: Godot.PackedVector2Array, colors: Godot.PackedColorArray, uvs: Godot.PackedVector2Array, texture: Godot.Texture2D? = nil) {
        points.withGodotUnsafeRawPointer { __ptr_points in
        colors.withGodotUnsafeRawPointer { __ptr_colors in
        uvs.withGodotUnsafeRawPointer { __ptr_uvs in
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafePointer(to: __ptr_texture) { _ptr___ptr_texture in
        withUnsafeArgumentPackPointer(__ptr_points, __ptr_colors, __ptr_uvs, _ptr___ptr_texture) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_draw_primitive,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    internal static var __method_binding_draw_polygon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_polygon").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 974537912)!
        }
        }
    }()
    public func drawPolygon(points: Godot.PackedVector2Array, colors: Godot.PackedColorArray, uvs: Godot.PackedVector2Array = PackedVector2Array(), texture: Godot.Texture2D? = nil) {
        points.withGodotUnsafeRawPointer { __ptr_points in
        colors.withGodotUnsafeRawPointer { __ptr_colors in
        uvs.withGodotUnsafeRawPointer { __ptr_uvs in
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafePointer(to: __ptr_texture) { _ptr___ptr_texture in
        withUnsafeArgumentPackPointer(__ptr_points, __ptr_colors, __ptr_uvs, _ptr___ptr_texture) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_draw_polygon,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    internal static var __method_binding_draw_colored_polygon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_colored_polygon").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 15245644)!
        }
        }
    }()
    public func drawColoredPolygon(points: Godot.PackedVector2Array, color: Godot.Color, uvs: Godot.PackedVector2Array = PackedVector2Array(), texture: Godot.Texture2D? = nil) {
        points.withGodotUnsafeRawPointer { __ptr_points in
        color.withGodotUnsafeRawPointer { __ptr_color in
        uvs.withGodotUnsafeRawPointer { __ptr_uvs in
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafePointer(to: __ptr_texture) { _ptr___ptr_texture in
        withUnsafeArgumentPackPointer(__ptr_points, __ptr_color, __ptr_uvs, _ptr___ptr_texture) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_draw_colored_polygon,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    internal static var __method_binding_draw_string: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_string").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 728290553)!
        }
        }
    }()
    public func drawString(font: Godot.Font?, pos: Godot.Vector2, text: Godot.GodotString, alignment: Godot.HorizontalAlignment = HorizontalAlignment(rawValue: 0)!, width: Double = -1, fontSize: Int32 = 16, modulate: Godot.Color = .white, justificationFlags: Godot.TextServer.JustificationFlag = TextServer.JustificationFlag(rawValue: 3), direction: Godot.TextServer.Direction = TextServer.Direction(rawValue: 0)!, orientation: Godot.TextServer.Orientation = TextServer.Orientation(rawValue: 0)!) {
        font.withGodotUnsafeRawPointer { __ptr_font in
        withUnsafePointer(to: __ptr_font) { _ptr___ptr_font in
        pos.withGodotUnsafeRawPointer { __ptr_pos in
        text.withGodotUnsafeRawPointer { __ptr_text in
        alignment.withGodotUnsafeRawPointer { __ptr_alignment in
        width.withGodotUnsafeRawPointer { __ptr_width in
        fontSize.withGodotUnsafeRawPointer { __ptr_fontSize in
        modulate.withGodotUnsafeRawPointer { __ptr_modulate in
        justificationFlags.withGodotUnsafeRawPointer { __ptr_justificationFlags in
        direction.withGodotUnsafeRawPointer { __ptr_direction in
        orientation.withGodotUnsafeRawPointer { __ptr_orientation in
        withUnsafeArgumentPackPointer(_ptr___ptr_font, __ptr_pos, __ptr_text, __ptr_alignment, __ptr_width, __ptr_fontSize, __ptr_modulate, __ptr_justificationFlags, __ptr_direction, __ptr_orientation) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_draw_string,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}}}}}}
    }

    internal static var __method_binding_draw_multiline_string: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_multiline_string").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1927038192)!
        }
        }
    }()
    public func drawMultilineString(font: Godot.Font?, pos: Godot.Vector2, text: Godot.GodotString, alignment: Godot.HorizontalAlignment = HorizontalAlignment(rawValue: 0)!, width: Double = -1, fontSize: Int32 = 16, maxLines: Int32 = -1, modulate: Godot.Color = .white, brkFlags: Godot.TextServer.LineBreakFlag = TextServer.LineBreakFlag(rawValue: 3), justificationFlags: Godot.TextServer.JustificationFlag = TextServer.JustificationFlag(rawValue: 3), direction: Godot.TextServer.Direction = TextServer.Direction(rawValue: 0)!, orientation: Godot.TextServer.Orientation = TextServer.Orientation(rawValue: 0)!) {
        font.withGodotUnsafeRawPointer { __ptr_font in
        withUnsafePointer(to: __ptr_font) { _ptr___ptr_font in
        pos.withGodotUnsafeRawPointer { __ptr_pos in
        text.withGodotUnsafeRawPointer { __ptr_text in
        alignment.withGodotUnsafeRawPointer { __ptr_alignment in
        width.withGodotUnsafeRawPointer { __ptr_width in
        fontSize.withGodotUnsafeRawPointer { __ptr_fontSize in
        maxLines.withGodotUnsafeRawPointer { __ptr_maxLines in
        modulate.withGodotUnsafeRawPointer { __ptr_modulate in
        brkFlags.withGodotUnsafeRawPointer { __ptr_brkFlags in
        justificationFlags.withGodotUnsafeRawPointer { __ptr_justificationFlags in
        direction.withGodotUnsafeRawPointer { __ptr_direction in
        orientation.withGodotUnsafeRawPointer { __ptr_orientation in
        withUnsafeArgumentPackPointer(_ptr___ptr_font, __ptr_pos, __ptr_text, __ptr_alignment, __ptr_width, __ptr_fontSize, __ptr_maxLines, __ptr_modulate, __ptr_brkFlags, __ptr_justificationFlags, __ptr_direction, __ptr_orientation) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_draw_multiline_string,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}}}}}}}}
    }

    internal static var __method_binding_draw_string_outline: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_string_outline").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 340562381)!
        }
        }
    }()
    public func drawStringOutline(font: Godot.Font?, pos: Godot.Vector2, text: Godot.GodotString, alignment: Godot.HorizontalAlignment = HorizontalAlignment(rawValue: 0)!, width: Double = -1, fontSize: Int32 = 16, size: Int32 = 1, modulate: Godot.Color = .white, justificationFlags: Godot.TextServer.JustificationFlag = TextServer.JustificationFlag(rawValue: 3), direction: Godot.TextServer.Direction = TextServer.Direction(rawValue: 0)!, orientation: Godot.TextServer.Orientation = TextServer.Orientation(rawValue: 0)!) {
        font.withGodotUnsafeRawPointer { __ptr_font in
        withUnsafePointer(to: __ptr_font) { _ptr___ptr_font in
        pos.withGodotUnsafeRawPointer { __ptr_pos in
        text.withGodotUnsafeRawPointer { __ptr_text in
        alignment.withGodotUnsafeRawPointer { __ptr_alignment in
        width.withGodotUnsafeRawPointer { __ptr_width in
        fontSize.withGodotUnsafeRawPointer { __ptr_fontSize in
        size.withGodotUnsafeRawPointer { __ptr_size in
        modulate.withGodotUnsafeRawPointer { __ptr_modulate in
        justificationFlags.withGodotUnsafeRawPointer { __ptr_justificationFlags in
        direction.withGodotUnsafeRawPointer { __ptr_direction in
        orientation.withGodotUnsafeRawPointer { __ptr_orientation in
        withUnsafeArgumentPackPointer(_ptr___ptr_font, __ptr_pos, __ptr_text, __ptr_alignment, __ptr_width, __ptr_fontSize, __ptr_size, __ptr_modulate, __ptr_justificationFlags, __ptr_direction, __ptr_orientation) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_draw_string_outline,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}}}}}}}
    }

    internal static var __method_binding_draw_multiline_string_outline: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_multiline_string_outline").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1912318525)!
        }
        }
    }()
    public func drawMultilineStringOutline(font: Godot.Font?, pos: Godot.Vector2, text: Godot.GodotString, alignment: Godot.HorizontalAlignment = HorizontalAlignment(rawValue: 0)!, width: Double = -1, fontSize: Int32 = 16, maxLines: Int32 = -1, size: Int32 = 1, modulate: Godot.Color = .white, brkFlags: Godot.TextServer.LineBreakFlag = TextServer.LineBreakFlag(rawValue: 3), justificationFlags: Godot.TextServer.JustificationFlag = TextServer.JustificationFlag(rawValue: 3), direction: Godot.TextServer.Direction = TextServer.Direction(rawValue: 0)!, orientation: Godot.TextServer.Orientation = TextServer.Orientation(rawValue: 0)!) {
        font.withGodotUnsafeRawPointer { __ptr_font in
        withUnsafePointer(to: __ptr_font) { _ptr___ptr_font in
        pos.withGodotUnsafeRawPointer { __ptr_pos in
        text.withGodotUnsafeRawPointer { __ptr_text in
        alignment.withGodotUnsafeRawPointer { __ptr_alignment in
        width.withGodotUnsafeRawPointer { __ptr_width in
        fontSize.withGodotUnsafeRawPointer { __ptr_fontSize in
        maxLines.withGodotUnsafeRawPointer { __ptr_maxLines in
        size.withGodotUnsafeRawPointer { __ptr_size in
        modulate.withGodotUnsafeRawPointer { __ptr_modulate in
        brkFlags.withGodotUnsafeRawPointer { __ptr_brkFlags in
        justificationFlags.withGodotUnsafeRawPointer { __ptr_justificationFlags in
        direction.withGodotUnsafeRawPointer { __ptr_direction in
        orientation.withGodotUnsafeRawPointer { __ptr_orientation in
        withUnsafeArgumentPackPointer(_ptr___ptr_font, __ptr_pos, __ptr_text, __ptr_alignment, __ptr_width, __ptr_fontSize, __ptr_maxLines, __ptr_size, __ptr_modulate, __ptr_brkFlags, __ptr_justificationFlags, __ptr_direction, __ptr_orientation) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_draw_multiline_string_outline,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}}}}}}}}}
    }

    internal static var __method_binding_draw_char: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_char").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3339793283)!
        }
        }
    }()
    public func drawChar(font: Godot.Font?, pos: Godot.Vector2, char: Godot.GodotString, fontSize: Int32 = 16, modulate: Godot.Color = .white) {
        font.withGodotUnsafeRawPointer { __ptr_font in
        withUnsafePointer(to: __ptr_font) { _ptr___ptr_font in
        pos.withGodotUnsafeRawPointer { __ptr_pos in
        char.withGodotUnsafeRawPointer { __ptr_char in
        fontSize.withGodotUnsafeRawPointer { __ptr_fontSize in
        modulate.withGodotUnsafeRawPointer { __ptr_modulate in
        withUnsafeArgumentPackPointer(_ptr___ptr_font, __ptr_pos, __ptr_char, __ptr_fontSize, __ptr_modulate) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_draw_char,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}
    }

    internal static var __method_binding_draw_char_outline: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_char_outline").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3302344391)!
        }
        }
    }()
    public func drawCharOutline(font: Godot.Font?, pos: Godot.Vector2, char: Godot.GodotString, fontSize: Int32 = 16, size: Int32 = -1, modulate: Godot.Color = .white) {
        font.withGodotUnsafeRawPointer { __ptr_font in
        withUnsafePointer(to: __ptr_font) { _ptr___ptr_font in
        pos.withGodotUnsafeRawPointer { __ptr_pos in
        char.withGodotUnsafeRawPointer { __ptr_char in
        fontSize.withGodotUnsafeRawPointer { __ptr_fontSize in
        size.withGodotUnsafeRawPointer { __ptr_size in
        modulate.withGodotUnsafeRawPointer { __ptr_modulate in
        withUnsafeArgumentPackPointer(_ptr___ptr_font, __ptr_pos, __ptr_char, __ptr_fontSize, __ptr_size, __ptr_modulate) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_draw_char_outline,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}}
    }

    internal static var __method_binding_draw_mesh: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_mesh").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 153818295)!
        }
        }
    }()
    public func drawMesh(_ mesh: Godot.Mesh?, texture: Godot.Texture2D?, transform: Godot.Transform2D = .identity, modulate: Godot.Color = .white) {
        mesh.withGodotUnsafeRawPointer { __ptr_mesh in
        withUnsafePointer(to: __ptr_mesh) { _ptr___ptr_mesh in
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafePointer(to: __ptr_texture) { _ptr___ptr_texture in
        transform.withGodotUnsafeRawPointer { __ptr_transform in
        modulate.withGodotUnsafeRawPointer { __ptr_modulate in
        withUnsafeArgumentPackPointer(_ptr___ptr_mesh, _ptr___ptr_texture, __ptr_transform, __ptr_modulate) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_draw_mesh,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}
    }

    internal static var __method_binding_draw_multimesh: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_multimesh").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 937992368)!
        }
        }
    }()
    public func drawMultimesh(_ multimesh: Godot.MultiMesh?, texture: Godot.Texture2D?) {
        multimesh.withGodotUnsafeRawPointer { __ptr_multimesh in
        withUnsafePointer(to: __ptr_multimesh) { _ptr___ptr_multimesh in
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafePointer(to: __ptr_texture) { _ptr___ptr_texture in
        withUnsafeArgumentPackPointer(_ptr___ptr_multimesh, _ptr___ptr_texture) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_draw_multimesh,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    internal static var __method_binding_draw_set_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_set_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 288975085)!
        }
        }
    }()
    public func drawSetTransform(position: Godot.Vector2, rotation: Double = 0.0, scale: Godot.Vector2 = Vector2(x: 1, y: 1)) {
        position.withGodotUnsafeRawPointer { __ptr_position in
        rotation.withGodotUnsafeRawPointer { __ptr_rotation in
        scale.withGodotUnsafeRawPointer { __ptr_scale in
        withUnsafeArgumentPackPointer(__ptr_position, __ptr_rotation, __ptr_scale) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_draw_set_transform,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_draw_set_transform_matrix: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_set_transform_matrix").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2761652528)!
        }
        }
    }()
    public func drawSetTransformMatrix(xform: Godot.Transform2D) {
        xform.withGodotUnsafeRawPointer { __ptr_xform in
        withUnsafeArgumentPackPointer(__ptr_xform) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_draw_set_transform_matrix,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_draw_animation_slice: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_animation_slice").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3112831842)!
        }
        }
    }()
    public func drawAnimationSlice(animationLength: Double, sliceBegin: Double, sliceEnd: Double, offset: Double = 0.0) {
        animationLength.withGodotUnsafeRawPointer { __ptr_animationLength in
        sliceBegin.withGodotUnsafeRawPointer { __ptr_sliceBegin in
        sliceEnd.withGodotUnsafeRawPointer { __ptr_sliceEnd in
        offset.withGodotUnsafeRawPointer { __ptr_offset in
        withUnsafeArgumentPackPointer(__ptr_animationLength, __ptr_sliceBegin, __ptr_sliceEnd, __ptr_offset) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_draw_animation_slice,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    internal static var __method_binding_draw_end_animation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_end_animation").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func drawEndAnimation() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_draw_end_animation,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_get_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3814499831)!
        }
        }
    }()
    public func transform() -> Godot.Transform2D {
        Godot.Transform2D.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_transform,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_global_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_global_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3814499831)!
        }
        }
    }()
    public func globalTransform() -> Godot.Transform2D {
        Godot.Transform2D.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_global_transform,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_global_transform_with_canvas: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_global_transform_with_canvas").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3814499831)!
        }
        }
    }()
    public func globalTransformWithCanvas() -> Godot.Transform2D {
        Godot.Transform2D.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_global_transform_with_canvas,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_viewport_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_viewport_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3814499831)!
        }
        }
    }()
    public func viewportTransform() -> Godot.Transform2D {
        Godot.Transform2D.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_viewport_transform,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_viewport_rect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_viewport_rect").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1639390495)!
        }
        }
    }()
    public func viewportRect() -> Godot.Rect2 {
        Godot.Rect2.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_viewport_rect,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_canvas_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_canvas_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3814499831)!
        }
        }
    }()
    public func canvasTransform() -> Godot.Transform2D {
        Godot.Transform2D.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_canvas_transform,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_screen_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_screen_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3814499831)!
        }
        }
    }()
    public func screenTransform() -> Godot.Transform2D {
        Godot.Transform2D.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_screen_transform,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_local_mouse_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_local_mouse_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()
    public func localMousePosition() -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_local_mouse_position,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_global_mouse_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_global_mouse_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()
    public func globalMousePosition() -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_global_mouse_position,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_canvas: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_canvas").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2944877500)!
        }
        }
    }()
    public func canvas() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_canvas,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_world_2d: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_world_2d").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2339128592)!
        }
        }
    }()
    public func world2D() -> Godot.World2D? {
        Godot.World2D?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_world_2d,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_material: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_material").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2757459619)!
        }
        }
    }()
    private func __setMaterial(_ material: Godot.Material?) {
        material.withGodotUnsafeRawPointer { __ptr_material in
        withUnsafePointer(to: __ptr_material) { _ptr___ptr_material in
        withUnsafeArgumentPackPointer(_ptr___ptr_material) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_material,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_material: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_material").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 5934680)!
        }
        }
    }()
    private func __getMaterial() -> Godot.Material? {
        Godot.Material?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_material,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_use_parent_material: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_use_parent_material").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setUseParentMaterial(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_use_parent_material,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_use_parent_material: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_use_parent_material").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getUseParentMaterial() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_use_parent_material,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_notify_local_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_notify_local_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    public func setNotifyLocalTransform(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_notify_local_transform,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_local_transform_notification_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_local_transform_notification_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func isLocalTransformNotificationEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_local_transform_notification_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_notify_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_notify_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    public func setNotifyTransform(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_notify_transform,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_transform_notification_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_transform_notification_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func isTransformNotificationEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_transform_notification_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_force_update_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "force_update_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func forceUpdateTransform() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_force_update_transform,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_make_canvas_position_local: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "make_canvas_position_local").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2656412154)!
        }
        }
    }()
    public func makeCanvasPositionLocal(screenPoint: Godot.Vector2) -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        screenPoint.withGodotUnsafeRawPointer { __ptr_screenPoint in
        withUnsafeArgumentPackPointer(__ptr_screenPoint) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_make_canvas_position_local,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_make_input_local: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "make_input_local").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 811130057)!
        }
        }
    }()
    public func makeInputLocal(event: Godot.InputEvent?) -> Godot.InputEvent? {
        Godot.InputEvent?.fromMutatingGodotUnsafePointer { __temporary in
        event.withGodotUnsafeRawPointer { __ptr_event in
        withUnsafePointer(to: __ptr_event) { _ptr___ptr_event in
        withUnsafeArgumentPackPointer(_ptr___ptr_event) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_make_input_local,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_set_visibility_layer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_visibility_layer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setVisibilityLayer(_ layer: UInt32) {
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        withUnsafeArgumentPackPointer(__ptr_layer) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_visibility_layer,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_visibility_layer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_visibility_layer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getVisibilityLayer() -> UInt32 {
        UInt32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_visibility_layer,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_visibility_layer_bit: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_visibility_layer_bit").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()
    public func setVisibilityLayerBit(layer: UInt32, enabled: Bool) {
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_layer, __ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_visibility_layer_bit,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_visibility_layer_bit: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_visibility_layer_bit").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func visibilityLayerBit(layer: UInt32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        withUnsafeArgumentPackPointer(__ptr_layer) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_visibility_layer_bit,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_texture_filter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_texture_filter").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1037999706)!
        }
        }
    }()
    private func __setTextureFilter(mode: Godot.CanvasItem.TextureFilter) {
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_texture_filter,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_texture_filter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture_filter").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 121960042)!
        }
        }
    }()
    private func __getTextureFilter() -> Godot.CanvasItem.TextureFilter {
        Godot.CanvasItem.TextureFilter.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_texture_filter,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_texture_repeat: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_texture_repeat").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1716472974)!
        }
        }
    }()
    private func __setTextureRepeat(mode: Godot.CanvasItem.TextureRepeat) {
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_texture_repeat,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_texture_repeat: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture_repeat").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2667158319)!
        }
        }
    }()
    private func __getTextureRepeat() -> Godot.CanvasItem.TextureRepeat {
        Godot.CanvasItem.TextureRepeat.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_texture_repeat,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_clip_children_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_clip_children_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1319393776)!
        }
        }
    }()
    private func __setClipChildrenMode(_ mode: Godot.CanvasItem.ClipChildrenMode) {
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_clip_children_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_clip_children_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_clip_children_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3581808349)!
        }
        }
    }()
    private func __getClipChildrenMode() -> Godot.CanvasItem.ClipChildrenMode {
        Godot.CanvasItem.ClipChildrenMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_clip_children_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var isVisible: Bool {
        get {
            __isVisible()
        }
        set {
            __setVisible(
                newValue
            )
        }
    }

    public var modulate: Godot.Color {
        get {
            __getModulate()
        }
        set {
            __setModulate(
                newValue
            )
        }
    }

    public var selfModulate: Godot.Color {
        get {
            __getSelfModulate()
        }
        set {
            __setSelfModulate(
                newValue
            )
        }
    }

    public var isDrawBehindParentEnabled: Bool {
        get {
            __isDrawBehindParentEnabled()
        }
        set {
            __setDrawBehindParent(
                enable: newValue
            )
        }
    }

    public var isSetAsTopLevel: Bool {
        get {
            __isSetAsTopLevel()
        }
        set {
            __setAsTopLevel(
                enable: newValue
            )
        }
    }

    public var clipChildrenMode: Godot.CanvasItem.ClipChildrenMode {
        get {
            __getClipChildrenMode()
        }
        set {
            __setClipChildrenMode(
                newValue
            )
        }
    }

    public var lightMask: Int32 {
        get {
            __getLightMask()
        }
        set {
            __setLightMask(
                newValue
            )
        }
    }

    public var visibilityLayer: UInt32 {
        get {
            __getVisibilityLayer()
        }
        set {
            __setVisibilityLayer(
                newValue
            )
        }
    }

    public var zIndex: Int32 {
        get {
            __getZIndex()
        }
        set {
            __setZIndex(
                newValue
            )
        }
    }

    public var isZRelative: Bool {
        get {
            __isZRelative()
        }
        set {
            __setZAsRelative(
                enable: newValue
            )
        }
    }

    public var isYSortEnabled: Bool {
        get {
            __isYSortEnabled()
        }
        set {
            __setYSortEnabled(
                newValue
            )
        }
    }

    public var textureFilter: Godot.CanvasItem.TextureFilter {
        get {
            __getTextureFilter()
        }
        set {
            __setTextureFilter(
                mode: newValue
            )
        }
    }

    public var textureRepeat: Godot.CanvasItem.TextureRepeat {
        get {
            __getTextureRepeat()
        }
        set {
            __setTextureRepeat(
                mode: newValue
            )
        }
    }

    public var material: Godot.Material? {
        get {
            __getMaterial()
        }
        set {
            __setMaterial(
                newValue
            )
        }
    }

    public var useParentMaterial: Bool {
        get {
            __getUseParentMaterial()
        }
        set {
            __setUseParentMaterial(
                enable: newValue
            )
        }
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _draw_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<CanvasItem>.fromOpaque(instancePtr).takeUnretainedValue()
        ._draw()}
        _virtualFunctions = [
            "_draw" : ("_draw", _draw_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }