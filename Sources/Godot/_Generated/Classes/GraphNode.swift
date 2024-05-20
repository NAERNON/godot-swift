//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotClass
open class GraphNode: GraphElement {
    public struct SlotUpdatedSignalInput: Godot.SignalInput {
        public let slotIndex: Int

        fileprivate init(
            slotIndex: Int
        ) {
            self.slotIndex = slotIndex
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.slotIndex)]
        }
    }

    public func slotUpdated(
        slotIndex: Int
    ) {
        _ = slotUpdatedSignal.emit(.init(slotIndex: slotIndex))
    }

    public lazy var slotUpdatedSignal: Godot.SignalEmitter<SlotUpdatedSignalInput> = {
        .init(object: self, signalName: "slot_updated") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<SlotUpdatedSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(slotIndex: Int.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<SlotUpdatedSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<SlotUpdatedSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    open func _drawPort(
        slotIndex: Int32,
        position: Godot.Vector2I,
        left: Bool,
        color: Godot.Color
    ) {
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

    internal static var __method_binding_get_titlebar_hbox: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_titlebar_hbox").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3590609951)!
        }
        }
    }()

    public func titlebarHbox() -> Godot.HBoxContainer? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_titlebar_hbox,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_slot: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_slot").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2873310869)!
        }
        }
    }()

    public func setSlot(
        slotIndex: Int32,
        enableLeftPort: Bool,
        typeLeft: Int32,
        colorLeft: Godot.Color,
        enableRightPort: Bool,
        typeRight: Int32,
        colorRight: Godot.Color,
        customIconLeft: Godot.Texture2D? = nil,
        customIconRight: Godot.Texture2D? = nil,
        drawStylebox: Bool = true
    ) {
        withTransferrableUnsafeRawPointer(to: slotIndex) { __ptr_slotIndex in
            withTransferrableUnsafeRawPointer(to: enableLeftPort) { __ptr_enableLeftPort in
                withTransferrableUnsafeRawPointer(to: typeLeft) { __ptr_typeLeft in
                    withTransferrableUnsafeRawPointer(to: colorLeft) { __ptr_colorLeft in
                        withTransferrableUnsafeRawPointer(to: enableRightPort) { __ptr_enableRightPort in
                            withTransferrableUnsafeRawPointer(to: typeRight) { __ptr_typeRight in
                                withTransferrableUnsafeRawPointer(to: colorRight) { __ptr_colorRight in
                                    withTransferrableUnsafeRawPointer(to: customIconLeft) { __ptr_customIconLeft in
                                        withUnsafePointer(to: __ptr_customIconLeft) { _ptr___ptr_customIconLeft in
                                            withTransferrableUnsafeRawPointer(to: customIconRight) { __ptr_customIconRight in
                                                withUnsafePointer(to: __ptr_customIconRight) { _ptr___ptr_customIconRight in
                                                    withTransferrableUnsafeRawPointer(to: drawStylebox) { __ptr_drawStylebox in
                                                        withUnsafeArgumentPackPointer(__ptr_slotIndex, __ptr_enableLeftPort, __ptr_typeLeft, __ptr_colorLeft, __ptr_enableRightPort, __ptr_typeRight, __ptr_colorRight, _ptr___ptr_customIconLeft, _ptr___ptr_customIconRight, __ptr_drawStylebox) { __accessPtr in
                                                            self.withUnsafeMutableRawPointer { __ptr_self in
                                                                GodotExtension.Interface.objectMethodBindPtrcall(
                                                                    Self.__method_binding_set_slot,
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

    internal static var __method_binding_clear_slot: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_slot").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    public func clearSlot(
        slotIndex: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: slotIndex) { __ptr_slotIndex in
            withUnsafeArgumentPackPointer(__ptr_slotIndex) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_clear_slot,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_clear_all_slots: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_all_slots").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func clearAllSlots() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_clear_all_slots,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    internal static var __method_binding_is_slot_enabled_left: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_slot_enabled_left").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()

    public func isSlotEnabledLeft(
        slotIndex: Int32
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: slotIndex) { __ptr_slotIndex in
                withUnsafeArgumentPackPointer(__ptr_slotIndex) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_is_slot_enabled_left,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_slot_enabled_left: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_slot_enabled_left").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()

    public func setSlotEnabledLeft(
        slotIndex: Int32,
        enable: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: slotIndex) { __ptr_slotIndex in
            withTransferrableUnsafeRawPointer(to: enable) { __ptr_enable in
                withUnsafeArgumentPackPointer(__ptr_slotIndex, __ptr_enable) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_slot_enabled_left,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_slot_type_left: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_slot_type_left").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()

    public func setSlotTypeLeft(
        slotIndex: Int32,
        type: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: slotIndex) { __ptr_slotIndex in
            withTransferrableUnsafeRawPointer(to: type) { __ptr_type in
                withUnsafeArgumentPackPointer(__ptr_slotIndex, __ptr_type) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_slot_type_left,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_slot_type_left: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_slot_type_left").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()

    public func slotTypeLeft(
        slotIndex: Int32
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: slotIndex) { __ptr_slotIndex in
                withUnsafeArgumentPackPointer(__ptr_slotIndex) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_slot_type_left,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_slot_color_left: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_slot_color_left").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2878471219)!
        }
        }
    }()

    public func setSlotColorLeft(
        slotIndex: Int32,
        color: Godot.Color
    ) {
        withTransferrableUnsafeRawPointer(to: slotIndex) { __ptr_slotIndex in
            withTransferrableUnsafeRawPointer(to: color) { __ptr_color in
                withUnsafeArgumentPackPointer(__ptr_slotIndex, __ptr_color) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_slot_color_left,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_slot_color_left: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_slot_color_left").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3457211756)!
        }
        }
    }()

    public func slotColorLeft(
        slotIndex: Int32
    ) -> Godot.Color {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: slotIndex) { __ptr_slotIndex in
                withUnsafeArgumentPackPointer(__ptr_slotIndex) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_slot_color_left,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_is_slot_enabled_right: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_slot_enabled_right").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()

    public func isSlotEnabledRight(
        slotIndex: Int32
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: slotIndex) { __ptr_slotIndex in
                withUnsafeArgumentPackPointer(__ptr_slotIndex) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_is_slot_enabled_right,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_slot_enabled_right: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_slot_enabled_right").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()

    public func setSlotEnabledRight(
        slotIndex: Int32,
        enable: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: slotIndex) { __ptr_slotIndex in
            withTransferrableUnsafeRawPointer(to: enable) { __ptr_enable in
                withUnsafeArgumentPackPointer(__ptr_slotIndex, __ptr_enable) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_slot_enabled_right,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_slot_type_right: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_slot_type_right").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()

    public func setSlotTypeRight(
        slotIndex: Int32,
        type: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: slotIndex) { __ptr_slotIndex in
            withTransferrableUnsafeRawPointer(to: type) { __ptr_type in
                withUnsafeArgumentPackPointer(__ptr_slotIndex, __ptr_type) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_slot_type_right,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_slot_type_right: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_slot_type_right").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()

    public func slotTypeRight(
        slotIndex: Int32
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: slotIndex) { __ptr_slotIndex in
                withUnsafeArgumentPackPointer(__ptr_slotIndex) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_slot_type_right,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_slot_color_right: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_slot_color_right").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2878471219)!
        }
        }
    }()

    public func setSlotColorRight(
        slotIndex: Int32,
        color: Godot.Color
    ) {
        withTransferrableUnsafeRawPointer(to: slotIndex) { __ptr_slotIndex in
            withTransferrableUnsafeRawPointer(to: color) { __ptr_color in
                withUnsafeArgumentPackPointer(__ptr_slotIndex, __ptr_color) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_slot_color_right,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_slot_color_right: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_slot_color_right").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3457211756)!
        }
        }
    }()

    public func slotColorRight(
        slotIndex: Int32
    ) -> Godot.Color {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: slotIndex) { __ptr_slotIndex in
                withUnsafeArgumentPackPointer(__ptr_slotIndex) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_slot_color_right,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_is_slot_draw_stylebox: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_slot_draw_stylebox").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()

    public func isSlotDrawStylebox(
        slotIndex: Int32
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: slotIndex) { __ptr_slotIndex in
                withUnsafeArgumentPackPointer(__ptr_slotIndex) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_is_slot_draw_stylebox,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_slot_draw_stylebox: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_slot_draw_stylebox").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()

    public func setSlotDrawStylebox(
        slotIndex: Int32,
        enable: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: slotIndex) { __ptr_slotIndex in
            withTransferrableUnsafeRawPointer(to: enable) { __ptr_enable in
                withUnsafeArgumentPackPointer(__ptr_slotIndex, __ptr_enable) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_slot_draw_stylebox,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_input_port_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_input_port_count").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2455072627)!
        }
        }
    }()

    public func inputPortCount() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_input_port_count,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_input_port_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_input_port_position").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3114997196)!
        }
        }
    }()

    public func inputPortPosition(
        portIdx: Int32
    ) -> Godot.Vector2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: portIdx) { __ptr_portIdx in
                withUnsafeArgumentPackPointer(__ptr_portIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_input_port_position,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_input_port_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_input_port_type").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3744713108)!
        }
        }
    }()

    public func inputPortType(
        portIdx: Int32
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: portIdx) { __ptr_portIdx in
                withUnsafeArgumentPackPointer(__ptr_portIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_input_port_type,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_input_port_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_input_port_color").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2624840992)!
        }
        }
    }()

    public func inputPortColor(
        portIdx: Int32
    ) -> Godot.Color {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: portIdx) { __ptr_portIdx in
                withUnsafeArgumentPackPointer(__ptr_portIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_input_port_color,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_input_port_slot: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_input_port_slot").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3744713108)!
        }
        }
    }()

    public func inputPortSlot(
        portIdx: Int32
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: portIdx) { __ptr_portIdx in
                withUnsafeArgumentPackPointer(__ptr_portIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_input_port_slot,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_output_port_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_output_port_count").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2455072627)!
        }
        }
    }()

    public func outputPortCount() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_output_port_count,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_output_port_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_output_port_position").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3114997196)!
        }
        }
    }()

    public func outputPortPosition(
        portIdx: Int32
    ) -> Godot.Vector2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: portIdx) { __ptr_portIdx in
                withUnsafeArgumentPackPointer(__ptr_portIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_output_port_position,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_output_port_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_output_port_type").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3744713108)!
        }
        }
    }()

    public func outputPortType(
        portIdx: Int32
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: portIdx) { __ptr_portIdx in
                withUnsafeArgumentPackPointer(__ptr_portIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_output_port_type,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_output_port_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_output_port_color").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2624840992)!
        }
        }
    }()

    public func outputPortColor(
        portIdx: Int32
    ) -> Godot.Color {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: portIdx) { __ptr_portIdx in
                withUnsafeArgumentPackPointer(__ptr_portIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_output_port_color,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_output_port_slot: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_output_port_slot").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3744713108)!
        }
        }
    }()

    public func outputPortSlot(
        portIdx: Int32
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: portIdx) { __ptr_portIdx in
                withUnsafeArgumentPackPointer(__ptr_portIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_output_port_slot,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
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
            Unmanaged<GraphNode> .fromOpaque(instancePtr).takeUnretainedValue()
        ._drawPort(
            slotIndex: Int32.transferFromGodot(unsafePointer: args[0]!),
            position: Godot.Vector2I.transferFromGodot(unsafePointer: args[1]!),
            left: Bool.transferFromGodot(unsafePointer: args[2]!),
            color: Godot.Color.transferFromGodot(unsafePointer: args[3]!)
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