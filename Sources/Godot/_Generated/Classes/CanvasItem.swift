//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class CanvasItem: Node {
    public enum TextureFilter: UInt32 {
        case parentNode = 0
        case nearest = 1
        case linear = 2
        case nearestWithMipmaps = 3
        case linearWithMipmaps = 4
        case nearestWithMipmapsAnisotropic = 5
        case linearWithMipmapsAnisotropic = 6
        case max = 7
    }
    public enum TextureRepeat: UInt32 {
        case parentNode = 0
        case disabled = 1
        case enabled = 2
        case mirror = 3
        case max = 4
    }
    public enum ClipChildrenMode: UInt32 {
        case disabled = 0
        case only = 1
        case andDraw = 2
        case max = 3
    }

    @Emitter(signal: "draw")
    public struct Draw {
    }

    @Emitter(signal: "visibility_changed")
    public struct VisibilityChanged {
    }

    @Emitter(signal: "hidden")
    public struct Hidden {
    }

    @Emitter(signal: "item_rect_changed")
    public struct ItemRectChanged {
    }

    open func _draw() {
    }

    private static var __method_binding_get_canvas_item: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_canvas_item").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2944877500)!
        }
        }
    }()
    public func canvasItem() -> Godot.RID {
        let __temporary = Godot.RID()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_canvas_item,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_visible: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_visible").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setVisible(_ visible: Bool) {
        withUnsafePointer(to: visible) { (__ptr_visible) in
            withUnsafeArgumentPackPointer(__ptr_visible) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_visible,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_is_visible: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_visible").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isVisible() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_visible,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_is_visible_in_tree: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_visible_in_tree").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func isVisibleInTree() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_visible_in_tree,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_show: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "show").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func show() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_show,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_hide: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "hide").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func hide() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_hide,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_queue_redraw: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "queue_redraw").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func queueRedraw() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_queue_redraw,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_move_to_front: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "move_to_front").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func moveToFront() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_move_to_front,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_set_as_top_level: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_as_top_level").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setAsTopLevel(enable: Bool) {
        withUnsafePointer(to: enable) { (__ptr_enable) in
            withUnsafeArgumentPackPointer(__ptr_enable) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_as_top_level,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_is_set_as_top_level: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_set_as_top_level").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isSetAsTopLevel() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_set_as_top_level,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_light_mask: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_light_mask").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setLightMask(_ lightMask: Int32) {
        withUnsafePointer(to: lightMask) { (__ptr_lightMask) in
            withUnsafeArgumentPackPointer(__ptr_lightMask) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_light_mask,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_light_mask: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_light_mask").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getLightMask() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_light_mask,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_modulate: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_modulate").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2920490490)!
        }
        }
    }()
    private func __setModulate(_ modulate: Godot.Color) {
        withUnsafePointer(to: modulate) { (__ptr_modulate) in
            withUnsafeArgumentPackPointer(__ptr_modulate) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_modulate,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_modulate: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_modulate").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3444240500)!
        }
        }
    }()
    private func __getModulate() -> Godot.Color {
        var __temporary = Godot.Color()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_modulate,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_self_modulate: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_self_modulate").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2920490490)!
        }
        }
    }()
    private func __setSelfModulate(_ selfModulate: Godot.Color) {
        withUnsafePointer(to: selfModulate) { (__ptr_selfModulate) in
            withUnsafeArgumentPackPointer(__ptr_selfModulate) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_self_modulate,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_self_modulate: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_self_modulate").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3444240500)!
        }
        }
    }()
    private func __getSelfModulate() -> Godot.Color {
        var __temporary = Godot.Color()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_self_modulate,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_z_index: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_z_index").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setZIndex(_ zIndex: Int32) {
        withUnsafePointer(to: zIndex) { (__ptr_zIndex) in
            withUnsafeArgumentPackPointer(__ptr_zIndex) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_z_index,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_z_index: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_z_index").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getZIndex() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_z_index,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_z_as_relative: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_z_as_relative").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setZAsRelative(enable: Bool) {
        withUnsafePointer(to: enable) { (__ptr_enable) in
            withUnsafeArgumentPackPointer(__ptr_enable) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_z_as_relative,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_is_z_relative: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_z_relative").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isZRelative() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_z_relative,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_y_sort_enabled: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_y_sort_enabled").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setYSortEnabled(_ enabled: Bool) {
        withUnsafePointer(to: enabled) { (__ptr_enabled) in
            withUnsafeArgumentPackPointer(__ptr_enabled) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_y_sort_enabled,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_is_y_sort_enabled: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_y_sort_enabled").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isYSortEnabled() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_y_sort_enabled,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_draw_behind_parent: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_draw_behind_parent").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setDrawBehindParent(enable: Bool) {
        withUnsafePointer(to: enable) { (__ptr_enable) in
            withUnsafeArgumentPackPointer(__ptr_enable) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_draw_behind_parent,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_is_draw_behind_parent_enabled: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_draw_behind_parent_enabled").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isDrawBehindParentEnabled() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_draw_behind_parent_enabled,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_draw_line: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_line").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2516941890)!
        }
        }
    }()
    public func drawLine(from: Godot.Vector2, to: Godot.Vector2, color: Godot.Color, width: Double = -1.0, antialiased: Bool = false) {
        withUnsafePointer(to: from) { (__ptr_from) in
            withUnsafePointer(to: to) { (__ptr_to) in
                withUnsafePointer(to: color) { (__ptr_color) in
                    withUnsafePointer(to: width) { (__ptr_width) in
                        withUnsafePointer(to: antialiased) { (__ptr_antialiased) in
                            withUnsafeArgumentPackPointer(__ptr_from, __ptr_to, __ptr_color, __ptr_width, __ptr_antialiased) { (__accessPtr) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_draw_line,
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

    private static var __method_binding_draw_dashed_line: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_dashed_line").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2175215884)!
        }
        }
    }()
    public func drawDashedLine(from: Godot.Vector2, to: Godot.Vector2, color: Godot.Color, width: Double = -1.0, dash: Double = 2.0, aligned: Bool = true) {
        withUnsafePointer(to: from) { (__ptr_from) in
            withUnsafePointer(to: to) { (__ptr_to) in
                withUnsafePointer(to: color) { (__ptr_color) in
                    withUnsafePointer(to: width) { (__ptr_width) in
                        withUnsafePointer(to: dash) { (__ptr_dash) in
                            withUnsafePointer(to: aligned) { (__ptr_aligned) in
                                withUnsafeArgumentPackPointer(__ptr_from, __ptr_to, __ptr_color, __ptr_width, __ptr_dash, __ptr_aligned) { (__accessPtr) in
                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                        gdextension_interface_object_method_bind_ptrcall(
                                            Self.__method_binding_draw_dashed_line,
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

    private static var __method_binding_draw_polyline: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_polyline").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4175878946)!
        }
        }
    }()
    public func drawPolyline(points: Godot.PackedVector2Array, color: Godot.Color, width: Double = -1.0, antialiased: Bool = false) {
        points.withUnsafeRawPointer { (__ptr_points) in
            withUnsafePointer(to: color) { (__ptr_color) in
                withUnsafePointer(to: width) { (__ptr_width) in
                    withUnsafePointer(to: antialiased) { (__ptr_antialiased) in
                        withUnsafeArgumentPackPointer(__ptr_points, __ptr_color, __ptr_width, __ptr_antialiased) { (__accessPtr) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_draw_polyline,
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

    private static var __method_binding_draw_polyline_colors: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_polyline_colors").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2239164197)!
        }
        }
    }()
    public func drawPolylineColors(points: Godot.PackedVector2Array, colors: Godot.PackedColorArray, width: Double = -1.0, antialiased: Bool = false) {
        points.withUnsafeRawPointer { (__ptr_points) in
            colors.withUnsafeRawPointer { (__ptr_colors) in
                withUnsafePointer(to: width) { (__ptr_width) in
                    withUnsafePointer(to: antialiased) { (__ptr_antialiased) in
                        withUnsafeArgumentPackPointer(__ptr_points, __ptr_colors, __ptr_width, __ptr_antialiased) { (__accessPtr) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_draw_polyline_colors,
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

    private static var __method_binding_draw_arc: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_arc").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3486841771)!
        }
        }
    }()
    public func drawArc(center: Godot.Vector2, radius: Double, startAngle: Double, endAngle: Double, pointCount: Int32, color: Godot.Color, width: Double = -1.0, antialiased: Bool = false) {
        withUnsafePointer(to: center) { (__ptr_center) in
            withUnsafePointer(to: radius) { (__ptr_radius) in
                withUnsafePointer(to: startAngle) { (__ptr_startAngle) in
                    withUnsafePointer(to: endAngle) { (__ptr_endAngle) in
                        withUnsafePointer(to: pointCount) { (__ptr_pointCount) in
                            withUnsafePointer(to: color) { (__ptr_color) in
                                withUnsafePointer(to: width) { (__ptr_width) in
                                    withUnsafePointer(to: antialiased) { (__ptr_antialiased) in
                                        withUnsafeArgumentPackPointer(__ptr_center, __ptr_radius, __ptr_startAngle, __ptr_endAngle, __ptr_pointCount, __ptr_color, __ptr_width, __ptr_antialiased) { (__accessPtr) in
                                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                                gdextension_interface_object_method_bind_ptrcall(
                                                    Self.__method_binding_draw_arc,
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
    }

    private static var __method_binding_draw_multiline: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_multiline").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4230657331)!
        }
        }
    }()
    public func drawMultiline(points: Godot.PackedVector2Array, color: Godot.Color, width: Double = -1.0) {
        points.withUnsafeRawPointer { (__ptr_points) in
            withUnsafePointer(to: color) { (__ptr_color) in
                withUnsafePointer(to: width) { (__ptr_width) in
                    withUnsafeArgumentPackPointer(__ptr_points, __ptr_color, __ptr_width) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_draw_multiline,
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

    private static var __method_binding_draw_multiline_colors: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_multiline_colors").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 235933050)!
        }
        }
    }()
    public func drawMultilineColors(points: Godot.PackedVector2Array, colors: Godot.PackedColorArray, width: Double = -1.0) {
        points.withUnsafeRawPointer { (__ptr_points) in
            colors.withUnsafeRawPointer { (__ptr_colors) in
                withUnsafePointer(to: width) { (__ptr_width) in
                    withUnsafeArgumentPackPointer(__ptr_points, __ptr_colors, __ptr_width) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_draw_multiline_colors,
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

    private static var __method_binding_draw_rect: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_rect").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 84391229)!
        }
        }
    }()
    public func drawRect(_ rect: Godot.Rect2, color: Godot.Color, filled: Bool = true, width: Double = -1.0) {
        withUnsafePointer(to: rect) { (__ptr_rect) in
            withUnsafePointer(to: color) { (__ptr_color) in
                withUnsafePointer(to: filled) { (__ptr_filled) in
                    withUnsafePointer(to: width) { (__ptr_width) in
                        withUnsafeArgumentPackPointer(__ptr_rect, __ptr_color, __ptr_filled, __ptr_width) { (__accessPtr) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_draw_rect,
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

    private static var __method_binding_draw_circle: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_circle").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3063020269)!
        }
        }
    }()
    public func drawCircle(position: Godot.Vector2, radius: Double, color: Godot.Color) {
        withUnsafePointer(to: position) { (__ptr_position) in
            withUnsafePointer(to: radius) { (__ptr_radius) in
                withUnsafePointer(to: color) { (__ptr_color) in
                    withUnsafeArgumentPackPointer(__ptr_position, __ptr_radius, __ptr_color) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_draw_circle,
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

    private static var __method_binding_draw_texture: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_texture").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1695860435)!
        }
        }
    }()
    public func drawTexture(_ texture: Godot.Texture2D?, position: Godot.Vector2, modulate: Godot.Color = Color(r: 1, g: 1, b: 1, a: 1)) {
        texture.withUnsafeRawPointer { (__ptr_texture) in
            withUnsafePointer(to: __ptr_texture) { (_ptr___ptr_texture) in
                withUnsafePointer(to: position) { (__ptr_position) in
                    withUnsafePointer(to: modulate) { (__ptr_modulate) in
                        withUnsafeArgumentPackPointer(_ptr___ptr_texture, __ptr_position, __ptr_modulate) { (__accessPtr) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_draw_texture,
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

    private static var __method_binding_draw_texture_rect: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_texture_rect").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3204081724)!
        }
        }
    }()
    public func drawTextureRect(texture: Godot.Texture2D?, rect: Godot.Rect2, tile: Bool, modulate: Godot.Color = Color(r: 1, g: 1, b: 1, a: 1), transpose: Bool = false) {
        texture.withUnsafeRawPointer { (__ptr_texture) in
            withUnsafePointer(to: __ptr_texture) { (_ptr___ptr_texture) in
                withUnsafePointer(to: rect) { (__ptr_rect) in
                    withUnsafePointer(to: tile) { (__ptr_tile) in
                        withUnsafePointer(to: modulate) { (__ptr_modulate) in
                            withUnsafePointer(to: transpose) { (__ptr_transpose) in
                                withUnsafeArgumentPackPointer(_ptr___ptr_texture, __ptr_rect, __ptr_tile, __ptr_modulate, __ptr_transpose) { (__accessPtr) in
                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                        gdextension_interface_object_method_bind_ptrcall(
                                            Self.__method_binding_draw_texture_rect,
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

    private static var __method_binding_draw_texture_rect_region: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_texture_rect_region").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3196597532)!
        }
        }
    }()
    public func drawTextureRectRegion(texture: Godot.Texture2D?, rect: Godot.Rect2, srcRect: Godot.Rect2, modulate: Godot.Color = Color(r: 1, g: 1, b: 1, a: 1), transpose: Bool = false, clipUv: Bool = true) {
        texture.withUnsafeRawPointer { (__ptr_texture) in
            withUnsafePointer(to: __ptr_texture) { (_ptr___ptr_texture) in
                withUnsafePointer(to: rect) { (__ptr_rect) in
                    withUnsafePointer(to: srcRect) { (__ptr_srcRect) in
                        withUnsafePointer(to: modulate) { (__ptr_modulate) in
                            withUnsafePointer(to: transpose) { (__ptr_transpose) in
                                withUnsafePointer(to: clipUv) { (__ptr_clipUv) in
                                    withUnsafeArgumentPackPointer(_ptr___ptr_texture, __ptr_rect, __ptr_srcRect, __ptr_modulate, __ptr_transpose, __ptr_clipUv) { (__accessPtr) in
                                        `self`.withUnsafeRawPointer { (__ptr_self) in
                                            gdextension_interface_object_method_bind_ptrcall(
                                                Self.__method_binding_draw_texture_rect_region,
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

    private static var __method_binding_draw_msdf_texture_rect_region: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_msdf_texture_rect_region").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2672026175)!
        }
        }
    }()
    public func drawMsdfTextureRectRegion(texture: Godot.Texture2D?, rect: Godot.Rect2, srcRect: Godot.Rect2, modulate: Godot.Color = Color(r: 1, g: 1, b: 1, a: 1), outline: Double = 0.0, pixelRange: Double = 4.0, scale: Double = 1.0) {
        texture.withUnsafeRawPointer { (__ptr_texture) in
            withUnsafePointer(to: __ptr_texture) { (_ptr___ptr_texture) in
                withUnsafePointer(to: rect) { (__ptr_rect) in
                    withUnsafePointer(to: srcRect) { (__ptr_srcRect) in
                        withUnsafePointer(to: modulate) { (__ptr_modulate) in
                            withUnsafePointer(to: outline) { (__ptr_outline) in
                                withUnsafePointer(to: pixelRange) { (__ptr_pixelRange) in
                                    withUnsafePointer(to: scale) { (__ptr_scale) in
                                        withUnsafeArgumentPackPointer(_ptr___ptr_texture, __ptr_rect, __ptr_srcRect, __ptr_modulate, __ptr_outline, __ptr_pixelRange, __ptr_scale) { (__accessPtr) in
                                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                                gdextension_interface_object_method_bind_ptrcall(
                                                    Self.__method_binding_draw_msdf_texture_rect_region,
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
    }

    private static var __method_binding_draw_lcd_texture_rect_region: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_lcd_texture_rect_region").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 169610548)!
        }
        }
    }()
    public func drawLcdTextureRectRegion(texture: Godot.Texture2D?, rect: Godot.Rect2, srcRect: Godot.Rect2, modulate: Godot.Color = Color(r: 1, g: 1, b: 1, a: 1)) {
        texture.withUnsafeRawPointer { (__ptr_texture) in
            withUnsafePointer(to: __ptr_texture) { (_ptr___ptr_texture) in
                withUnsafePointer(to: rect) { (__ptr_rect) in
                    withUnsafePointer(to: srcRect) { (__ptr_srcRect) in
                        withUnsafePointer(to: modulate) { (__ptr_modulate) in
                            withUnsafeArgumentPackPointer(_ptr___ptr_texture, __ptr_rect, __ptr_srcRect, __ptr_modulate) { (__accessPtr) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_draw_lcd_texture_rect_region,
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

    private static var __method_binding_draw_style_box: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_style_box").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 388176283)!
        }
        }
    }()
    public func drawStyleBox(_ styleBox: Godot.StyleBox?, rect: Godot.Rect2) {
        styleBox.withUnsafeRawPointer { (__ptr_styleBox) in
            withUnsafePointer(to: __ptr_styleBox) { (_ptr___ptr_styleBox) in
                withUnsafePointer(to: rect) { (__ptr_rect) in
                    withUnsafeArgumentPackPointer(_ptr___ptr_styleBox, __ptr_rect) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_draw_style_box,
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

    private static var __method_binding_draw_primitive: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_primitive").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2248678295)!
        }
        }
    }()
    public func drawPrimitive(points: Godot.PackedVector2Array, colors: Godot.PackedColorArray, uvs: Godot.PackedVector2Array, texture: Godot.Texture2D? = nil) {
        points.withUnsafeRawPointer { (__ptr_points) in
            colors.withUnsafeRawPointer { (__ptr_colors) in
                uvs.withUnsafeRawPointer { (__ptr_uvs) in
                    texture.withUnsafeRawPointer { (__ptr_texture) in
                        withUnsafePointer(to: __ptr_texture) { (_ptr___ptr_texture) in
                            withUnsafeArgumentPackPointer(__ptr_points, __ptr_colors, __ptr_uvs, _ptr___ptr_texture) { (__accessPtr) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_draw_primitive,
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

    private static var __method_binding_draw_polygon: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_polygon").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2683625537)!
        }
        }
    }()
    public func drawPolygon(points: Godot.PackedVector2Array, colors: Godot.PackedColorArray, uvs: Godot.PackedVector2Array = PackedVector2Array(), texture: Godot.Texture2D? = nil) {
        points.withUnsafeRawPointer { (__ptr_points) in
            colors.withUnsafeRawPointer { (__ptr_colors) in
                uvs.withUnsafeRawPointer { (__ptr_uvs) in
                    texture.withUnsafeRawPointer { (__ptr_texture) in
                        withUnsafePointer(to: __ptr_texture) { (_ptr___ptr_texture) in
                            withUnsafeArgumentPackPointer(__ptr_points, __ptr_colors, __ptr_uvs, _ptr___ptr_texture) { (__accessPtr) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_draw_polygon,
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

    private static var __method_binding_draw_colored_polygon: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_colored_polygon").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1659099617)!
        }
        }
    }()
    public func drawColoredPolygon(points: Godot.PackedVector2Array, color: Godot.Color, uvs: Godot.PackedVector2Array = PackedVector2Array(), texture: Godot.Texture2D? = nil) {
        points.withUnsafeRawPointer { (__ptr_points) in
            withUnsafePointer(to: color) { (__ptr_color) in
                uvs.withUnsafeRawPointer { (__ptr_uvs) in
                    texture.withUnsafeRawPointer { (__ptr_texture) in
                        withUnsafePointer(to: __ptr_texture) { (_ptr___ptr_texture) in
                            withUnsafeArgumentPackPointer(__ptr_points, __ptr_color, __ptr_uvs, _ptr___ptr_texture) { (__accessPtr) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_draw_colored_polygon,
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

    private static var __method_binding_draw_string: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_string").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2552080639)!
        }
        }
    }()
    public func drawString(font: Godot.Font?, pos: Godot.Vector2, text: Godot.GodotString, alignment: Godot.HorizontalAlignment = HorizontalAlignment(rawValue: 0)!, width: Double = -1, fontSize: Int32 = 16, modulate: Godot.Color = Color(r: 1, g: 1, b: 1, a: 1), justificationFlags: Godot.TextServer.JustificationFlag = TextServer.JustificationFlag(rawValue: 3), direction: Godot.TextServer.Direction = TextServer.Direction(rawValue: 0)!, orientation: Godot.TextServer.Orientation = TextServer.Orientation(rawValue: 0)!) {
        font.withUnsafeRawPointer { (__ptr_font) in
            withUnsafePointer(to: __ptr_font) { (_ptr___ptr_font) in
                withUnsafePointer(to: pos) { (__ptr_pos) in
                    text.withUnsafeRawPointer { (__ptr_text) in
                        withUnsafePointer(to: alignment) { (__ptr_alignment) in
                            withUnsafePointer(to: width) { (__ptr_width) in
                                withUnsafePointer(to: fontSize) { (__ptr_fontSize) in
                                    withUnsafePointer(to: modulate) { (__ptr_modulate) in
                                        withUnsafePointer(to: justificationFlags) { (__ptr_justificationFlags) in
                                            withUnsafePointer(to: direction) { (__ptr_direction) in
                                                withUnsafePointer(to: orientation) { (__ptr_orientation) in
                                                    withUnsafeArgumentPackPointer(_ptr___ptr_font, __ptr_pos, __ptr_text, __ptr_alignment, __ptr_width, __ptr_fontSize, __ptr_modulate, __ptr_justificationFlags, __ptr_direction, __ptr_orientation) { (__accessPtr) in
                                                        `self`.withUnsafeRawPointer { (__ptr_self) in
                                                            gdextension_interface_object_method_bind_ptrcall(
                                                                Self.__method_binding_draw_string,
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
                }
            }
        }
    }

    private static var __method_binding_draw_multiline_string: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_multiline_string").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4002645436)!
        }
        }
    }()
    public func drawMultilineString(font: Godot.Font?, pos: Godot.Vector2, text: Godot.GodotString, alignment: Godot.HorizontalAlignment = HorizontalAlignment(rawValue: 0)!, width: Double = -1, fontSize: Int32 = 16, maxLines: Int32 = -1, modulate: Godot.Color = Color(r: 1, g: 1, b: 1, a: 1), brkFlags: Godot.TextServer.LineBreakFlag = TextServer.LineBreakFlag(rawValue: 3), justificationFlags: Godot.TextServer.JustificationFlag = TextServer.JustificationFlag(rawValue: 3), direction: Godot.TextServer.Direction = TextServer.Direction(rawValue: 0)!, orientation: Godot.TextServer.Orientation = TextServer.Orientation(rawValue: 0)!) {
        font.withUnsafeRawPointer { (__ptr_font) in
            withUnsafePointer(to: __ptr_font) { (_ptr___ptr_font) in
                withUnsafePointer(to: pos) { (__ptr_pos) in
                    text.withUnsafeRawPointer { (__ptr_text) in
                        withUnsafePointer(to: alignment) { (__ptr_alignment) in
                            withUnsafePointer(to: width) { (__ptr_width) in
                                withUnsafePointer(to: fontSize) { (__ptr_fontSize) in
                                    withUnsafePointer(to: maxLines) { (__ptr_maxLines) in
                                        withUnsafePointer(to: modulate) { (__ptr_modulate) in
                                            withUnsafePointer(to: brkFlags) { (__ptr_brkFlags) in
                                                withUnsafePointer(to: justificationFlags) { (__ptr_justificationFlags) in
                                                    withUnsafePointer(to: direction) { (__ptr_direction) in
                                                        withUnsafePointer(to: orientation) { (__ptr_orientation) in
                                                            withUnsafeArgumentPackPointer(_ptr___ptr_font, __ptr_pos, __ptr_text, __ptr_alignment, __ptr_width, __ptr_fontSize, __ptr_maxLines, __ptr_modulate, __ptr_brkFlags, __ptr_justificationFlags, __ptr_direction, __ptr_orientation) { (__accessPtr) in
                                                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                                                    gdextension_interface_object_method_bind_ptrcall(
                                                                        Self.__method_binding_draw_multiline_string,
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
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_draw_string_outline: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_string_outline").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 850005221)!
        }
        }
    }()
    public func drawStringOutline(font: Godot.Font?, pos: Godot.Vector2, text: Godot.GodotString, alignment: Godot.HorizontalAlignment = HorizontalAlignment(rawValue: 0)!, width: Double = -1, fontSize: Int32 = 16, size: Int32 = 1, modulate: Godot.Color = Color(r: 1, g: 1, b: 1, a: 1), justificationFlags: Godot.TextServer.JustificationFlag = TextServer.JustificationFlag(rawValue: 3), direction: Godot.TextServer.Direction = TextServer.Direction(rawValue: 0)!, orientation: Godot.TextServer.Orientation = TextServer.Orientation(rawValue: 0)!) {
        font.withUnsafeRawPointer { (__ptr_font) in
            withUnsafePointer(to: __ptr_font) { (_ptr___ptr_font) in
                withUnsafePointer(to: pos) { (__ptr_pos) in
                    text.withUnsafeRawPointer { (__ptr_text) in
                        withUnsafePointer(to: alignment) { (__ptr_alignment) in
                            withUnsafePointer(to: width) { (__ptr_width) in
                                withUnsafePointer(to: fontSize) { (__ptr_fontSize) in
                                    withUnsafePointer(to: size) { (__ptr_size) in
                                        withUnsafePointer(to: modulate) { (__ptr_modulate) in
                                            withUnsafePointer(to: justificationFlags) { (__ptr_justificationFlags) in
                                                withUnsafePointer(to: direction) { (__ptr_direction) in
                                                    withUnsafePointer(to: orientation) { (__ptr_orientation) in
                                                        withUnsafeArgumentPackPointer(_ptr___ptr_font, __ptr_pos, __ptr_text, __ptr_alignment, __ptr_width, __ptr_fontSize, __ptr_size, __ptr_modulate, __ptr_justificationFlags, __ptr_direction, __ptr_orientation) { (__accessPtr) in
                                                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                                                gdextension_interface_object_method_bind_ptrcall(
                                                                    Self.__method_binding_draw_string_outline,
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
                    }
                }
            }
        }
    }

    private static var __method_binding_draw_multiline_string_outline: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_multiline_string_outline").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3717870722)!
        }
        }
    }()
    public func drawMultilineStringOutline(font: Godot.Font?, pos: Godot.Vector2, text: Godot.GodotString, alignment: Godot.HorizontalAlignment = HorizontalAlignment(rawValue: 0)!, width: Double = -1, fontSize: Int32 = 16, maxLines: Int32 = -1, size: Int32 = 1, modulate: Godot.Color = Color(r: 1, g: 1, b: 1, a: 1), brkFlags: Godot.TextServer.LineBreakFlag = TextServer.LineBreakFlag(rawValue: 3), justificationFlags: Godot.TextServer.JustificationFlag = TextServer.JustificationFlag(rawValue: 3), direction: Godot.TextServer.Direction = TextServer.Direction(rawValue: 0)!, orientation: Godot.TextServer.Orientation = TextServer.Orientation(rawValue: 0)!) {
        font.withUnsafeRawPointer { (__ptr_font) in
            withUnsafePointer(to: __ptr_font) { (_ptr___ptr_font) in
                withUnsafePointer(to: pos) { (__ptr_pos) in
                    text.withUnsafeRawPointer { (__ptr_text) in
                        withUnsafePointer(to: alignment) { (__ptr_alignment) in
                            withUnsafePointer(to: width) { (__ptr_width) in
                                withUnsafePointer(to: fontSize) { (__ptr_fontSize) in
                                    withUnsafePointer(to: maxLines) { (__ptr_maxLines) in
                                        withUnsafePointer(to: size) { (__ptr_size) in
                                            withUnsafePointer(to: modulate) { (__ptr_modulate) in
                                                withUnsafePointer(to: brkFlags) { (__ptr_brkFlags) in
                                                    withUnsafePointer(to: justificationFlags) { (__ptr_justificationFlags) in
                                                        withUnsafePointer(to: direction) { (__ptr_direction) in
                                                            withUnsafePointer(to: orientation) { (__ptr_orientation) in
                                                                withUnsafeArgumentPackPointer(_ptr___ptr_font, __ptr_pos, __ptr_text, __ptr_alignment, __ptr_width, __ptr_fontSize, __ptr_maxLines, __ptr_size, __ptr_modulate, __ptr_brkFlags, __ptr_justificationFlags, __ptr_direction, __ptr_orientation) { (__accessPtr) in
                                                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                                                        gdextension_interface_object_method_bind_ptrcall(
                                                                            Self.__method_binding_draw_multiline_string_outline,
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
                            }
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_draw_char: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_char").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2329089032)!
        }
        }
    }()
    public func drawChar(font: Godot.Font?, pos: Godot.Vector2, char: Godot.GodotString, fontSize: Int32 = 16, modulate: Godot.Color = Color(r: 1, g: 1, b: 1, a: 1)) {
        font.withUnsafeRawPointer { (__ptr_font) in
            withUnsafePointer(to: __ptr_font) { (_ptr___ptr_font) in
                withUnsafePointer(to: pos) { (__ptr_pos) in
                    char.withUnsafeRawPointer { (__ptr_char) in
                        withUnsafePointer(to: fontSize) { (__ptr_fontSize) in
                            withUnsafePointer(to: modulate) { (__ptr_modulate) in
                                withUnsafeArgumentPackPointer(_ptr___ptr_font, __ptr_pos, __ptr_char, __ptr_fontSize, __ptr_modulate) { (__accessPtr) in
                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                        gdextension_interface_object_method_bind_ptrcall(
                                            Self.__method_binding_draw_char,
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

    private static var __method_binding_draw_char_outline: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_char_outline").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 419453826)!
        }
        }
    }()
    public func drawCharOutline(font: Godot.Font?, pos: Godot.Vector2, char: Godot.GodotString, fontSize: Int32 = 16, size: Int32 = -1, modulate: Godot.Color = Color(r: 1, g: 1, b: 1, a: 1)) {
        font.withUnsafeRawPointer { (__ptr_font) in
            withUnsafePointer(to: __ptr_font) { (_ptr___ptr_font) in
                withUnsafePointer(to: pos) { (__ptr_pos) in
                    char.withUnsafeRawPointer { (__ptr_char) in
                        withUnsafePointer(to: fontSize) { (__ptr_fontSize) in
                            withUnsafePointer(to: size) { (__ptr_size) in
                                withUnsafePointer(to: modulate) { (__ptr_modulate) in
                                    withUnsafeArgumentPackPointer(_ptr___ptr_font, __ptr_pos, __ptr_char, __ptr_fontSize, __ptr_size, __ptr_modulate) { (__accessPtr) in
                                        `self`.withUnsafeRawPointer { (__ptr_self) in
                                            gdextension_interface_object_method_bind_ptrcall(
                                                Self.__method_binding_draw_char_outline,
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

    private static var __method_binding_draw_mesh: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_mesh").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1634855856)!
        }
        }
    }()
    public func drawMesh(_ mesh: Godot.Mesh?, texture: Godot.Texture2D?, transform: Godot.Transform2D = Transform2D(xAxisX: 1, xAxisY: 0, yAxisX: 0, yAxisY: 1, originX: 0, originY: 0), modulate: Godot.Color = Color(r: 1, g: 1, b: 1, a: 1)) {
        mesh.withUnsafeRawPointer { (__ptr_mesh) in
            withUnsafePointer(to: __ptr_mesh) { (_ptr___ptr_mesh) in
                texture.withUnsafeRawPointer { (__ptr_texture) in
                    withUnsafePointer(to: __ptr_texture) { (_ptr___ptr_texture) in
                        withUnsafePointer(to: transform) { (__ptr_transform) in
                            withUnsafePointer(to: modulate) { (__ptr_modulate) in
                                withUnsafeArgumentPackPointer(_ptr___ptr_mesh, _ptr___ptr_texture, __ptr_transform, __ptr_modulate) { (__accessPtr) in
                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                        gdextension_interface_object_method_bind_ptrcall(
                                            Self.__method_binding_draw_mesh,
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

    private static var __method_binding_draw_multimesh: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_multimesh").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 937992368)!
        }
        }
    }()
    public func drawMultimesh(_ multimesh: Godot.MultiMesh?, texture: Godot.Texture2D?) {
        multimesh.withUnsafeRawPointer { (__ptr_multimesh) in
            withUnsafePointer(to: __ptr_multimesh) { (_ptr___ptr_multimesh) in
                texture.withUnsafeRawPointer { (__ptr_texture) in
                    withUnsafePointer(to: __ptr_texture) { (_ptr___ptr_texture) in
                        withUnsafeArgumentPackPointer(_ptr___ptr_multimesh, _ptr___ptr_texture) { (__accessPtr) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_draw_multimesh,
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

    private static var __method_binding_draw_set_transform: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_set_transform").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3283884939)!
        }
        }
    }()
    public func drawSetTransform(position: Godot.Vector2, rotation: Double = 0.0, scale: Godot.Vector2 = Vector2(x: 1, y: 1)) {
        withUnsafePointer(to: position) { (__ptr_position) in
            withUnsafePointer(to: rotation) { (__ptr_rotation) in
                withUnsafePointer(to: scale) { (__ptr_scale) in
                    withUnsafeArgumentPackPointer(__ptr_position, __ptr_rotation, __ptr_scale) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_draw_set_transform,
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

    private static var __method_binding_draw_set_transform_matrix: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_set_transform_matrix").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2761652528)!
        }
        }
    }()
    public func drawSetTransformMatrix(xform: Godot.Transform2D) {
        withUnsafePointer(to: xform) { (__ptr_xform) in
            withUnsafeArgumentPackPointer(__ptr_xform) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_draw_set_transform_matrix,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_draw_animation_slice: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_animation_slice").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2295343543)!
        }
        }
    }()
    public func drawAnimationSlice(animationLength: Double, sliceBegin: Double, sliceEnd: Double, offset: Double = 0.0) {
        withUnsafePointer(to: animationLength) { (__ptr_animationLength) in
            withUnsafePointer(to: sliceBegin) { (__ptr_sliceBegin) in
                withUnsafePointer(to: sliceEnd) { (__ptr_sliceEnd) in
                    withUnsafePointer(to: offset) { (__ptr_offset) in
                        withUnsafeArgumentPackPointer(__ptr_animationLength, __ptr_sliceBegin, __ptr_sliceEnd, __ptr_offset) { (__accessPtr) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_draw_animation_slice,
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

    private static var __method_binding_draw_end_animation: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_end_animation").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func drawEndAnimation() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_draw_end_animation,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_get_transform: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_transform").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3814499831)!
        }
        }
    }()
    public func transform() -> Godot.Transform2D {
        var __temporary = Godot.Transform2D()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_transform,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_global_transform: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_global_transform").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3814499831)!
        }
        }
    }()
    public func globalTransform() -> Godot.Transform2D {
        var __temporary = Godot.Transform2D()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_global_transform,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_global_transform_with_canvas: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_global_transform_with_canvas").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3814499831)!
        }
        }
    }()
    public func globalTransformWithCanvas() -> Godot.Transform2D {
        var __temporary = Godot.Transform2D()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_global_transform_with_canvas,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_viewport_transform: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_viewport_transform").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3814499831)!
        }
        }
    }()
    public func viewportTransform() -> Godot.Transform2D {
        var __temporary = Godot.Transform2D()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_viewport_transform,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_viewport_rect: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_viewport_rect").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1639390495)!
        }
        }
    }()
    public func viewportRect() -> Godot.Rect2 {
        var __temporary = Godot.Rect2()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_viewport_rect,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_canvas_transform: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_canvas_transform").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3814499831)!
        }
        }
    }()
    public func canvasTransform() -> Godot.Transform2D {
        var __temporary = Godot.Transform2D()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_canvas_transform,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_screen_transform: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_screen_transform").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3814499831)!
        }
        }
    }()
    public func screenTransform() -> Godot.Transform2D {
        var __temporary = Godot.Transform2D()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_screen_transform,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_local_mouse_position: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_local_mouse_position").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()
    public func localMousePosition() -> Godot.Vector2 {
        var __temporary = Godot.Vector2()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_local_mouse_position,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_global_mouse_position: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_global_mouse_position").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()
    public func globalMousePosition() -> Godot.Vector2 {
        var __temporary = Godot.Vector2()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_global_mouse_position,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_canvas: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_canvas").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2944877500)!
        }
        }
    }()
    public func canvas() -> Godot.RID {
        let __temporary = Godot.RID()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_canvas,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_world_2d: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_world_2d").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2339128592)!
        }
        }
    }()
    public func world2D() -> Godot.World2D? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_world_2d,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.World2D.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_set_material: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_material").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2757459619)!
        }
        }
    }()
    private func __setMaterial(_ material: Godot.Material?) {
        material.withUnsafeRawPointer { (__ptr_material) in
            withUnsafePointer(to: __ptr_material) { (_ptr___ptr_material) in
                withUnsafeArgumentPackPointer(_ptr___ptr_material) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_material,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_material: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_material").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 5934680)!
        }
        }
    }()
    private func __getMaterial() -> Godot.Material? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_material,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.Material.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_set_use_parent_material: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_use_parent_material").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setUseParentMaterial(enable: Bool) {
        withUnsafePointer(to: enable) { (__ptr_enable) in
            withUnsafeArgumentPackPointer(__ptr_enable) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_use_parent_material,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_use_parent_material: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_use_parent_material").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getUseParentMaterial() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_use_parent_material,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_notify_local_transform: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_notify_local_transform").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    public func setNotifyLocalTransform(enable: Bool) {
        withUnsafePointer(to: enable) { (__ptr_enable) in
            withUnsafeArgumentPackPointer(__ptr_enable) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_notify_local_transform,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_is_local_transform_notification_enabled: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_local_transform_notification_enabled").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func isLocalTransformNotificationEnabled() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_local_transform_notification_enabled,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_notify_transform: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_notify_transform").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    public func setNotifyTransform(enable: Bool) {
        withUnsafePointer(to: enable) { (__ptr_enable) in
            withUnsafeArgumentPackPointer(__ptr_enable) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_notify_transform,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_is_transform_notification_enabled: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_transform_notification_enabled").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func isTransformNotificationEnabled() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_transform_notification_enabled,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_force_update_transform: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "force_update_transform").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func forceUpdateTransform() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_force_update_transform,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_make_canvas_position_local: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "make_canvas_position_local").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2656412154)!
        }
        }
    }()
    public func makeCanvasPositionLocal(screenPoint: Godot.Vector2) -> Godot.Vector2 {
        var __temporary = Godot.Vector2()
        withUnsafePointer(to: screenPoint) { (__ptr_screenPoint) in
            withUnsafeArgumentPackPointer(__ptr_screenPoint) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_make_canvas_position_local,
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

    private static var __method_binding_make_input_local: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "make_input_local").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 811130057)!
        }
        }
    }()
    public func makeInputLocal(event: Godot.InputEvent?) -> Godot.InputEvent? {
        var __temporary: GDExtensionObjectPtr!
        event.withUnsafeRawPointer { (__ptr_event) in
            withUnsafePointer(to: __ptr_event) { (_ptr___ptr_event) in
                withUnsafeArgumentPackPointer(_ptr___ptr_event) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_make_input_local,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return Godot.InputEvent.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_set_visibility_layer: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_visibility_layer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setVisibilityLayer(_ layer: UInt32) {
        withUnsafePointer(to: layer) { (__ptr_layer) in
            withUnsafeArgumentPackPointer(__ptr_layer) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_visibility_layer,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_visibility_layer: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_visibility_layer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getVisibilityLayer() -> UInt32 {
        var __temporary = UInt32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_visibility_layer,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_visibility_layer_bit: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_visibility_layer_bit").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()
    public func setVisibilityLayerBit(layer: UInt32, enabled: Bool) {
        withUnsafePointer(to: layer) { (__ptr_layer) in
            withUnsafePointer(to: enabled) { (__ptr_enabled) in
                withUnsafeArgumentPackPointer(__ptr_layer, __ptr_enabled) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_visibility_layer_bit,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_visibility_layer_bit: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_visibility_layer_bit").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func visibilityLayerBit(layer: UInt32) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: layer) { (__ptr_layer) in
            withUnsafeArgumentPackPointer(__ptr_layer) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_visibility_layer_bit,
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

    private static var __method_binding_set_texture_filter: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_texture_filter").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1037999706)!
        }
        }
    }()
    private func __setTextureFilter(mode: Godot.CanvasItem.TextureFilter) {
        withUnsafePointer(to: mode) { (__ptr_mode) in
            withUnsafeArgumentPackPointer(__ptr_mode) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_texture_filter,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_texture_filter: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture_filter").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 121960042)!
        }
        }
    }()
    private func __getTextureFilter() -> Godot.CanvasItem.TextureFilter {
        var __temporary = Godot.CanvasItem.TextureFilter.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_texture_filter,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.CanvasItem.TextureFilter(rawValue: __temporary)!
    }

    private static var __method_binding_set_texture_repeat: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_texture_repeat").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1716472974)!
        }
        }
    }()
    private func __setTextureRepeat(mode: Godot.CanvasItem.TextureRepeat) {
        withUnsafePointer(to: mode) { (__ptr_mode) in
            withUnsafeArgumentPackPointer(__ptr_mode) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_texture_repeat,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_texture_repeat: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture_repeat").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2667158319)!
        }
        }
    }()
    private func __getTextureRepeat() -> Godot.CanvasItem.TextureRepeat {
        var __temporary = Godot.CanvasItem.TextureRepeat.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_texture_repeat,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.CanvasItem.TextureRepeat(rawValue: __temporary)!
    }

    private static var __method_binding_set_clip_children_mode: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_clip_children_mode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1319393776)!
        }
        }
    }()
    private func __setClipChildrenMode(_ mode: Godot.CanvasItem.ClipChildrenMode) {
        withUnsafePointer(to: mode) { (__ptr_mode) in
            withUnsafeArgumentPackPointer(__ptr_mode) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_clip_children_mode,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_clip_children_mode: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_clip_children_mode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3581808349)!
        }
        }
    }()
    private func __getClipChildrenMode() -> Godot.CanvasItem.ClipChildrenMode {
        var __temporary = Godot.CanvasItem.ClipChildrenMode.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_clip_children_mode,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.CanvasItem.ClipChildrenMode(rawValue: __temporary)!
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
            let instance = Unmanaged<CanvasItem> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
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