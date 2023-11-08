//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class Input: Object {
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

    @Emitter(signal: "joy_connection_changed", args: ("device", Int), ("connected", Bool))
    public struct JoyConnectionChanged {
    }

    private static var __method_binding_is_anything_pressed: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_anything_pressed").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func isAnythingPressed() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_anything_pressed,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_is_key_pressed: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_key_pressed").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1938909964)!
        }
        }
    }()
    public func isKeyPressed(keycode: Godot.Key) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: keycode) { (__ptr_keycode) in
            withUnsafeArgumentPackPointer(__ptr_keycode) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_is_key_pressed,
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

    private static var __method_binding_is_physical_key_pressed: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_physical_key_pressed").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1938909964)!
        }
        }
    }()
    public func isPhysicalKeyPressed(keycode: Godot.Key) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: keycode) { (__ptr_keycode) in
            withUnsafeArgumentPackPointer(__ptr_keycode) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_is_physical_key_pressed,
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

    private static var __method_binding_is_key_label_pressed: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_key_label_pressed").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1938909964)!
        }
        }
    }()
    public func isKeyLabelPressed(keycode: Godot.Key) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: keycode) { (__ptr_keycode) in
            withUnsafeArgumentPackPointer(__ptr_keycode) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_is_key_label_pressed,
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

    private static var __method_binding_is_mouse_button_pressed: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_mouse_button_pressed").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1821097125)!
        }
        }
    }()
    public func isMouseButtonPressed(button: Godot.MouseButton) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: button) { (__ptr_button) in
            withUnsafeArgumentPackPointer(__ptr_button) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_is_mouse_button_pressed,
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

    private static var __method_binding_is_joy_button_pressed: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_joy_button_pressed").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 787208542)!
        }
        }
    }()
    public func isJoyButtonPressed(device: Int32, button: Godot.JoyButton) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: device) { (__ptr_device) in
            withUnsafePointer(to: button) { (__ptr_button) in
                withUnsafeArgumentPackPointer(__ptr_device, __ptr_button) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_is_joy_button_pressed,
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

    private static var __method_binding_is_action_pressed: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_action_pressed").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1558498928)!
        }
        }
    }()
    public func isActionPressed(action: Godot.GodotStringName, exactMatch: Bool = false) -> Bool {
        var __temporary = Bool()
        action.withUnsafeRawPointer { (__ptr_action) in
            withUnsafePointer(to: exactMatch) { (__ptr_exactMatch) in
                withUnsafeArgumentPackPointer(__ptr_action, __ptr_exactMatch) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_is_action_pressed,
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

    private static var __method_binding_is_action_just_pressed: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_action_just_pressed").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1558498928)!
        }
        }
    }()
    public func isActionJustPressed(action: Godot.GodotStringName, exactMatch: Bool = false) -> Bool {
        var __temporary = Bool()
        action.withUnsafeRawPointer { (__ptr_action) in
            withUnsafePointer(to: exactMatch) { (__ptr_exactMatch) in
                withUnsafeArgumentPackPointer(__ptr_action, __ptr_exactMatch) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_is_action_just_pressed,
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

    private static var __method_binding_is_action_just_released: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_action_just_released").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1558498928)!
        }
        }
    }()
    public func isActionJustReleased(action: Godot.GodotStringName, exactMatch: Bool = false) -> Bool {
        var __temporary = Bool()
        action.withUnsafeRawPointer { (__ptr_action) in
            withUnsafePointer(to: exactMatch) { (__ptr_exactMatch) in
                withUnsafeArgumentPackPointer(__ptr_action, __ptr_exactMatch) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_is_action_just_released,
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

    private static var __method_binding_get_action_strength: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_action_strength").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 801543509)!
        }
        }
    }()
    public func actionStrength(action: Godot.GodotStringName, exactMatch: Bool = false) -> Double {
        var __temporary = Double()
        action.withUnsafeRawPointer { (__ptr_action) in
            withUnsafePointer(to: exactMatch) { (__ptr_exactMatch) in
                withUnsafeArgumentPackPointer(__ptr_action, __ptr_exactMatch) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_get_action_strength,
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

    private static var __method_binding_get_action_raw_strength: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_action_raw_strength").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 801543509)!
        }
        }
    }()
    public func actionRawStrength(action: Godot.GodotStringName, exactMatch: Bool = false) -> Double {
        var __temporary = Double()
        action.withUnsafeRawPointer { (__ptr_action) in
            withUnsafePointer(to: exactMatch) { (__ptr_exactMatch) in
                withUnsafeArgumentPackPointer(__ptr_action, __ptr_exactMatch) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_get_action_raw_strength,
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

    private static var __method_binding_get_axis: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_axis").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1958752504)!
        }
        }
    }()
    public func axis(negativeAction: Godot.GodotStringName, positiveAction: Godot.GodotStringName) -> Double {
        var __temporary = Double()
        negativeAction.withUnsafeRawPointer { (__ptr_negativeAction) in
            positiveAction.withUnsafeRawPointer { (__ptr_positiveAction) in
                withUnsafeArgumentPackPointer(__ptr_negativeAction, __ptr_positiveAction) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_get_axis,
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

    private static var __method_binding_get_vector: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_vector").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1517139831)!
        }
        }
    }()
    public func vector(negativeX: Godot.GodotStringName, positiveX: Godot.GodotStringName, negativeY: Godot.GodotStringName, positiveY: Godot.GodotStringName, deadzone: Double = -1.0) -> Godot.Vector2 {
        var __temporary = Godot.Vector2()
        negativeX.withUnsafeRawPointer { (__ptr_negativeX) in
            positiveX.withUnsafeRawPointer { (__ptr_positiveX) in
                negativeY.withUnsafeRawPointer { (__ptr_negativeY) in
                    positiveY.withUnsafeRawPointer { (__ptr_positiveY) in
                        withUnsafePointer(to: deadzone) { (__ptr_deadzone) in
                            withUnsafeArgumentPackPointer(__ptr_negativeX, __ptr_positiveX, __ptr_negativeY, __ptr_positiveY, __ptr_deadzone) { (__accessPtr) in
                                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                        gdextension_interface_object_method_bind_ptrcall(
                                            Self.__method_binding_get_vector,
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
        return __temporary
    }

    private static var __method_binding_add_joy_mapping: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_joy_mapping").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1168363258)!
        }
        }
    }()
    public func addJoyMapping(_ mapping: Godot.GodotString, updateExisting: Bool = false) {
        mapping.withUnsafeRawPointer { (__ptr_mapping) in
            withUnsafePointer(to: updateExisting) { (__ptr_updateExisting) in
                withUnsafeArgumentPackPointer(__ptr_mapping, __ptr_updateExisting) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_add_joy_mapping,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_remove_joy_mapping: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_joy_mapping").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func removeJoyMapping(guid: Godot.GodotString) {
        guid.withUnsafeRawPointer { (__ptr_guid) in
            withUnsafeArgumentPackPointer(__ptr_guid) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_remove_joy_mapping,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_is_joy_known: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_joy_known").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3067735520)!
        }
        }
    }()
    public func isJoyKnown(device: Int32) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: device) { (__ptr_device) in
            withUnsafeArgumentPackPointer(__ptr_device) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_is_joy_known,
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

    private static var __method_binding_get_joy_axis: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_joy_axis").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4063175957)!
        }
        }
    }()
    public func joyAxis(device: Int32, axis: Godot.JoyAxis) -> Double {
        var __temporary = Double()
        withUnsafePointer(to: device) { (__ptr_device) in
            withUnsafePointer(to: axis) { (__ptr_axis) in
                withUnsafeArgumentPackPointer(__ptr_device, __ptr_axis) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_get_joy_axis,
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

    private static var __method_binding_get_joy_name: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_joy_name").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 990163283)!
        }
        }
    }()
    public func joyName(device: Int32) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        withUnsafePointer(to: device) { (__ptr_device) in
            withUnsafeArgumentPackPointer(__ptr_device) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_joy_name,
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

    private static var __method_binding_get_joy_guid: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_joy_guid").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 844755477)!
        }
        }
    }()
    public func joyGuid(device: Int32) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        withUnsafePointer(to: device) { (__ptr_device) in
            withUnsafeArgumentPackPointer(__ptr_device) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_joy_guid,
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

    private static var __method_binding_should_ignore_device: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "should_ignore_device").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2522259332)!
        }
        }
    }()
    public func shouldIgnoreDevice(vendorId: Int32, productId: Int32) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: vendorId) { (__ptr_vendorId) in
            withUnsafePointer(to: productId) { (__ptr_productId) in
                withUnsafeArgumentPackPointer(__ptr_vendorId, __ptr_productId) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_should_ignore_device,
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

    private static var __method_binding_get_connected_joypads: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_connected_joypads").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()
    public func connectedJoypads() -> Godot.GodotTypedArray<Int> {
        let __temporary = Godot.GodotTypedArray<Int>()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_connected_joypads,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_joy_vibration_strength: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_joy_vibration_strength").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3114997196)!
        }
        }
    }()
    public func joyVibrationStrength(device: Int32) -> Godot.Vector2 {
        var __temporary = Godot.Vector2()
        withUnsafePointer(to: device) { (__ptr_device) in
            withUnsafeArgumentPackPointer(__ptr_device) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_joy_vibration_strength,
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

    private static var __method_binding_get_joy_vibration_duration: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_joy_vibration_duration").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4025615559)!
        }
        }
    }()
    public func joyVibrationDuration(device: Int32) -> Double {
        var __temporary = Double()
        withUnsafePointer(to: device) { (__ptr_device) in
            withUnsafeArgumentPackPointer(__ptr_device) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_joy_vibration_duration,
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

    private static var __method_binding_start_joy_vibration: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "start_joy_vibration").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1890603622)!
        }
        }
    }()
    public func startJoyVibration(device: Int32, weakMagnitude: Double, strongMagnitude: Double, duration: Double = 0) {
        withUnsafePointer(to: device) { (__ptr_device) in
            withUnsafePointer(to: weakMagnitude) { (__ptr_weakMagnitude) in
                withUnsafePointer(to: strongMagnitude) { (__ptr_strongMagnitude) in
                    withUnsafePointer(to: duration) { (__ptr_duration) in
                        withUnsafeArgumentPackPointer(__ptr_device, __ptr_weakMagnitude, __ptr_strongMagnitude, __ptr_duration) { (__accessPtr) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_start_joy_vibration,
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

    private static var __method_binding_stop_joy_vibration: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "stop_joy_vibration").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func stopJoyVibration(device: Int32) {
        withUnsafePointer(to: device) { (__ptr_device) in
            withUnsafeArgumentPackPointer(__ptr_device) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_stop_joy_vibration,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_vibrate_handheld: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "vibrate_handheld").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 955504365)!
        }
        }
    }()
    public func vibrateHandheld(durationMs: Int32 = 500) {
        withUnsafePointer(to: durationMs) { (__ptr_durationMs) in
            withUnsafeArgumentPackPointer(__ptr_durationMs) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_vibrate_handheld,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_gravity: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_gravity").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    public func gravity() -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_gravity,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_accelerometer: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_accelerometer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    public func accelerometer() -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_accelerometer,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_magnetometer: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_magnetometer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    public func magnetometer() -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_magnetometer,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_gyroscope: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_gyroscope").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    public func gyroscope() -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_gyroscope,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_gravity: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_gravity").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    public func setGravity(value: Godot.Vector3) {
        withUnsafePointer(to: value) { (__ptr_value) in
            withUnsafeArgumentPackPointer(__ptr_value) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_gravity,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_set_accelerometer: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_accelerometer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    public func setAccelerometer(value: Godot.Vector3) {
        withUnsafePointer(to: value) { (__ptr_value) in
            withUnsafeArgumentPackPointer(__ptr_value) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_accelerometer,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_set_magnetometer: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_magnetometer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    public func setMagnetometer(value: Godot.Vector3) {
        withUnsafePointer(to: value) { (__ptr_value) in
            withUnsafeArgumentPackPointer(__ptr_value) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_magnetometer,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_set_gyroscope: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_gyroscope").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    public func setGyroscope(value: Godot.Vector3) {
        withUnsafePointer(to: value) { (__ptr_value) in
            withUnsafeArgumentPackPointer(__ptr_value) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_gyroscope,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_last_mouse_velocity: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_last_mouse_velocity").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1497962370)!
        }
        }
    }()
    public func lastMouseVelocity() -> Godot.Vector2 {
        var __temporary = Godot.Vector2()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_last_mouse_velocity,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_mouse_button_mask: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_mouse_button_mask").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2512161324)!
        }
        }
    }()
    public func mouseButtonMask() -> Godot.MouseButtonMask {
        var __temporary = Godot.MouseButtonMask()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_mouse_button_mask,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_mouse_mode: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_mouse_mode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2228490894)!
        }
        }
    }()
    private func __setMouseMode(_ mode: Godot.Input.MouseMode) {
        withUnsafePointer(to: mode) { (__ptr_mode) in
            withUnsafeArgumentPackPointer(__ptr_mode) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_mouse_mode,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_mouse_mode: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_mouse_mode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 965286182)!
        }
        }
    }()
    private func __getMouseMode() -> Godot.Input.MouseMode {
        var __temporary = Godot.Input.MouseMode.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_mouse_mode,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.Input.MouseMode(rawValue: __temporary)!
    }

    private static var __method_binding_warp_mouse: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "warp_mouse").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 743155724)!
        }
        }
    }()
    public func warpMouse(position: Godot.Vector2) {
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

    private static var __method_binding_action_press: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "action_press").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 573731101)!
        }
        }
    }()
    public func actionPress(action: Godot.GodotStringName, strength: Double = 1.0) {
        action.withUnsafeRawPointer { (__ptr_action) in
            withUnsafePointer(to: strength) { (__ptr_strength) in
                withUnsafeArgumentPackPointer(__ptr_action, __ptr_strength) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_action_press,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_action_release: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "action_release").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3304788590)!
        }
        }
    }()
    public func actionRelease(action: Godot.GodotStringName) {
        action.withUnsafeRawPointer { (__ptr_action) in
            withUnsafeArgumentPackPointer(__ptr_action) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_action_release,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_set_default_cursor_shape: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_default_cursor_shape").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2124816902)!
        }
        }
    }()
    public func setDefaultCursorShape(_ shape: Godot.Input.CursorShape = Input.CursorShape(rawValue: 0)!) {
        withUnsafePointer(to: shape) { (__ptr_shape) in
            withUnsafeArgumentPackPointer(__ptr_shape) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_default_cursor_shape,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_current_cursor_shape: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_current_cursor_shape").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3455658929)!
        }
        }
    }()
    public func currentCursorShape() -> Godot.Input.CursorShape {
        var __temporary = Godot.Input.CursorShape.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_current_cursor_shape,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.Input.CursorShape(rawValue: __temporary)!
    }

    private static var __method_binding_set_custom_mouse_cursor: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_custom_mouse_cursor").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3489634142)!
        }
        }
    }()
    public func setCustomMouseCursor(image: Godot.Resource?, shape: Godot.Input.CursorShape = Input.CursorShape(rawValue: 0)!, hotspot: Godot.Vector2 = Vector2(x: 0, y: 0)) {
        image.withUnsafeRawPointer { (__ptr_image) in
            withUnsafePointer(to: __ptr_image) { (_ptr___ptr_image) in
                withUnsafePointer(to: shape) { (__ptr_shape) in
                    withUnsafePointer(to: hotspot) { (__ptr_hotspot) in
                        withUnsafeArgumentPackPointer(_ptr___ptr_image, __ptr_shape, __ptr_hotspot) { (__accessPtr) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_set_custom_mouse_cursor,
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

    private static var __method_binding_parse_input_event: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "parse_input_event").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3754044979)!
        }
        }
    }()
    public func parseInputEvent(_ event: Godot.InputEvent?) {
        event.withUnsafeRawPointer { (__ptr_event) in
            withUnsafePointer(to: __ptr_event) { (_ptr___ptr_event) in
                withUnsafeArgumentPackPointer(_ptr___ptr_event) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_parse_input_event,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_set_use_accumulated_input: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_use_accumulated_input").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setUseAccumulatedInput(enable: Bool) {
        withUnsafePointer(to: enable) { (__ptr_enable) in
            withUnsafeArgumentPackPointer(__ptr_enable) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_use_accumulated_input,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_is_using_accumulated_input: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_using_accumulated_input").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()
    private func __isUsingAccumulatedInput() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_using_accumulated_input,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_flush_buffered_events: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "flush_buffered_events").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func flushBufferedEvents() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_flush_buffered_events,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    public var mouseMode: Godot.Input.MouseMode {
        get {
            __getMouseMode()
        }
        set {
            __setMouseMode(
                newValue
            )
        }
    }

    public var isUsingAccumulatedInput: Bool {
        get {
            __isUsingAccumulatedInput()
        }
        set {
            __setUseAccumulatedInput(
                enable: newValue
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