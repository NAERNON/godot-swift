//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class GraphNode: GraphElement {
    @Emitter(signal: "slot_updated", args: ("slotIndex", Int))
    public struct SlotUpdated {
    }

    open func _drawPort(slotIndex: Int32, position: Godot.Vector2i, left: Bool, color: Godot.Color) {
    }

    private static var __method_binding_set_title: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_title").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    private func __setTitle(_ title: Godot.GodotString) {
        title.withGodotUnsafeRawPointer { __ptr_title in
        withUnsafeArgumentPackPointer(__ptr_title) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_title,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_title: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_title").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    private func __getTitle() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_title,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_titlebar_hbox: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_titlebar_hbox").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3590609951)!
        }
        }
    }()
    public func titlebarHbox() -> Godot.HBoxContainer? {
        Godot.HBoxContainer?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_titlebar_hbox,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_slot: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_slot").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2873310869)!
        }
        }
    }()
    public func setSlot(slotIndex: Int32, enableLeftPort: Bool, typeLeft: Int32, colorLeft: Godot.Color, enableRightPort: Bool, typeRight: Int32, colorRight: Godot.Color, customIconLeft: Godot.Texture2D? = nil, customIconRight: Godot.Texture2D? = nil, drawStylebox: Bool = true) {
        slotIndex.withGodotUnsafeRawPointer { __ptr_slotIndex in
        enableLeftPort.withGodotUnsafeRawPointer { __ptr_enableLeftPort in
        typeLeft.withGodotUnsafeRawPointer { __ptr_typeLeft in
        colorLeft.withGodotUnsafeRawPointer { __ptr_colorLeft in
        enableRightPort.withGodotUnsafeRawPointer { __ptr_enableRightPort in
        typeRight.withGodotUnsafeRawPointer { __ptr_typeRight in
        colorRight.withGodotUnsafeRawPointer { __ptr_colorRight in
        customIconLeft.withGodotUnsafeRawPointer { __ptr_customIconLeft in
        withUnsafePointer(to: __ptr_customIconLeft) { _ptr___ptr_customIconLeft in
        customIconRight.withGodotUnsafeRawPointer { __ptr_customIconRight in
        withUnsafePointer(to: __ptr_customIconRight) { _ptr___ptr_customIconRight in
        drawStylebox.withGodotUnsafeRawPointer { __ptr_drawStylebox in
        withUnsafeArgumentPackPointer(__ptr_slotIndex, __ptr_enableLeftPort, __ptr_typeLeft, __ptr_colorLeft, __ptr_enableRightPort, __ptr_typeRight, __ptr_colorRight, _ptr___ptr_customIconLeft, _ptr___ptr_customIconRight, __ptr_drawStylebox) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_slot,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}}}}}}}
    }

    private static var __method_binding_clear_slot: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_slot").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func clearSlot(slotIndex: Int32) {
        slotIndex.withGodotUnsafeRawPointer { __ptr_slotIndex in
        withUnsafeArgumentPackPointer(__ptr_slotIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_clear_slot,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_clear_all_slots: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_all_slots").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func clearAllSlots() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_clear_all_slots,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_is_slot_enabled_left: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_slot_enabled_left").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func isSlotEnabledLeft(slotIndex: Int32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        slotIndex.withGodotUnsafeRawPointer { __ptr_slotIndex in
        withUnsafeArgumentPackPointer(__ptr_slotIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_slot_enabled_left,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_slot_enabled_left: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_slot_enabled_left").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()
    public func setSlotEnabledLeft(slotIndex: Int32, enable: Bool) {
        slotIndex.withGodotUnsafeRawPointer { __ptr_slotIndex in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_slotIndex, __ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_slot_enabled_left,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_set_slot_type_left: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_slot_type_left").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func setSlotTypeLeft(slotIndex: Int32, type: Int32) {
        slotIndex.withGodotUnsafeRawPointer { __ptr_slotIndex in
        type.withGodotUnsafeRawPointer { __ptr_type in
        withUnsafeArgumentPackPointer(__ptr_slotIndex, __ptr_type) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_slot_type_left,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_slot_type_left: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_slot_type_left").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()
    public func slotTypeLeft(slotIndex: Int32) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        slotIndex.withGodotUnsafeRawPointer { __ptr_slotIndex in
        withUnsafeArgumentPackPointer(__ptr_slotIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_slot_type_left,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_slot_color_left: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_slot_color_left").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2878471219)!
        }
        }
    }()
    public func setSlotColorLeft(slotIndex: Int32, color: Godot.Color) {
        slotIndex.withGodotUnsafeRawPointer { __ptr_slotIndex in
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_slotIndex, __ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_slot_color_left,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_slot_color_left: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_slot_color_left").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3457211756)!
        }
        }
    }()
    public func slotColorLeft(slotIndex: Int32) -> Godot.Color {
        Godot.Color.fromMutatingGodotUnsafePointer { __temporary in
        slotIndex.withGodotUnsafeRawPointer { __ptr_slotIndex in
        withUnsafeArgumentPackPointer(__ptr_slotIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_slot_color_left,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_is_slot_enabled_right: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_slot_enabled_right").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func isSlotEnabledRight(slotIndex: Int32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        slotIndex.withGodotUnsafeRawPointer { __ptr_slotIndex in
        withUnsafeArgumentPackPointer(__ptr_slotIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_slot_enabled_right,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_slot_enabled_right: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_slot_enabled_right").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()
    public func setSlotEnabledRight(slotIndex: Int32, enable: Bool) {
        slotIndex.withGodotUnsafeRawPointer { __ptr_slotIndex in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_slotIndex, __ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_slot_enabled_right,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_set_slot_type_right: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_slot_type_right").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func setSlotTypeRight(slotIndex: Int32, type: Int32) {
        slotIndex.withGodotUnsafeRawPointer { __ptr_slotIndex in
        type.withGodotUnsafeRawPointer { __ptr_type in
        withUnsafeArgumentPackPointer(__ptr_slotIndex, __ptr_type) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_slot_type_right,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_slot_type_right: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_slot_type_right").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()
    public func slotTypeRight(slotIndex: Int32) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        slotIndex.withGodotUnsafeRawPointer { __ptr_slotIndex in
        withUnsafeArgumentPackPointer(__ptr_slotIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_slot_type_right,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_slot_color_right: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_slot_color_right").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2878471219)!
        }
        }
    }()
    public func setSlotColorRight(slotIndex: Int32, color: Godot.Color) {
        slotIndex.withGodotUnsafeRawPointer { __ptr_slotIndex in
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_slotIndex, __ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_slot_color_right,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_slot_color_right: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_slot_color_right").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3457211756)!
        }
        }
    }()
    public func slotColorRight(slotIndex: Int32) -> Godot.Color {
        Godot.Color.fromMutatingGodotUnsafePointer { __temporary in
        slotIndex.withGodotUnsafeRawPointer { __ptr_slotIndex in
        withUnsafeArgumentPackPointer(__ptr_slotIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_slot_color_right,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_is_slot_draw_stylebox: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_slot_draw_stylebox").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func isSlotDrawStylebox(slotIndex: Int32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        slotIndex.withGodotUnsafeRawPointer { __ptr_slotIndex in
        withUnsafeArgumentPackPointer(__ptr_slotIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_slot_draw_stylebox,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_slot_draw_stylebox: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_slot_draw_stylebox").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()
    public func setSlotDrawStylebox(slotIndex: Int32, enable: Bool) {
        slotIndex.withGodotUnsafeRawPointer { __ptr_slotIndex in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_slotIndex, __ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_slot_draw_stylebox,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_input_port_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_input_port_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2455072627)!
        }
        }
    }()
    public func inputPortCount() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_input_port_count,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_input_port_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_input_port_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3114997196)!
        }
        }
    }()
    public func inputPortPosition(portIdx: Int32) -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        portIdx.withGodotUnsafeRawPointer { __ptr_portIdx in
        withUnsafeArgumentPackPointer(__ptr_portIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_input_port_position,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_input_port_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_input_port_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3744713108)!
        }
        }
    }()
    public func inputPortType(portIdx: Int32) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        portIdx.withGodotUnsafeRawPointer { __ptr_portIdx in
        withUnsafeArgumentPackPointer(__ptr_portIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_input_port_type,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_input_port_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_input_port_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2624840992)!
        }
        }
    }()
    public func inputPortColor(portIdx: Int32) -> Godot.Color {
        Godot.Color.fromMutatingGodotUnsafePointer { __temporary in
        portIdx.withGodotUnsafeRawPointer { __ptr_portIdx in
        withUnsafeArgumentPackPointer(__ptr_portIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_input_port_color,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_input_port_slot: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_input_port_slot").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3744713108)!
        }
        }
    }()
    public func inputPortSlot(portIdx: Int32) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        portIdx.withGodotUnsafeRawPointer { __ptr_portIdx in
        withUnsafeArgumentPackPointer(__ptr_portIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_input_port_slot,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_output_port_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_output_port_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2455072627)!
        }
        }
    }()
    public func outputPortCount() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_output_port_count,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_output_port_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_output_port_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3114997196)!
        }
        }
    }()
    public func outputPortPosition(portIdx: Int32) -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        portIdx.withGodotUnsafeRawPointer { __ptr_portIdx in
        withUnsafeArgumentPackPointer(__ptr_portIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_output_port_position,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_output_port_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_output_port_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3744713108)!
        }
        }
    }()
    public func outputPortType(portIdx: Int32) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        portIdx.withGodotUnsafeRawPointer { __ptr_portIdx in
        withUnsafeArgumentPackPointer(__ptr_portIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_output_port_type,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_output_port_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_output_port_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2624840992)!
        }
        }
    }()
    public func outputPortColor(portIdx: Int32) -> Godot.Color {
        Godot.Color.fromMutatingGodotUnsafePointer { __temporary in
        portIdx.withGodotUnsafeRawPointer { __ptr_portIdx in
        withUnsafeArgumentPackPointer(__ptr_portIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_output_port_color,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_output_port_slot: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_output_port_slot").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3744713108)!
        }
        }
    }()
    public func outputPortSlot(portIdx: Int32) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        portIdx.withGodotUnsafeRawPointer { __ptr_portIdx in
        withUnsafeArgumentPackPointer(__ptr_portIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_output_port_slot,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    public var title: Godot.GodotString {
        get {
            __getTitle()
        }
        set {
            __setTitle(
                newValue
            )
        }
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _draw_port_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<GraphNode>.fromOpaque(instancePtr).takeUnretainedValue()
        ._drawPort(
            slotIndex: Int32.fromGodotUnsafePointer(args[0]!),
            position: Godot.Vector2i.fromGodotUnsafePointer(args[1]!),
            left: Bool.fromGodotUnsafePointer(args[2]!),
            color: Godot.Color.fromGodotUnsafePointer(args[3]!)
        )}
        _virtualFunctions = [
            "_drawPort" : ("_draw_port", _draw_port_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }