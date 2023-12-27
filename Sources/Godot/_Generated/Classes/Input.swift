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

    public func joyConnectionChanged(device: Int, connected: Bool) {
        joyConnectionChangedConnector.emit(device, connected)
    }

    public private (set) lazy var joyConnectionChangedConnector: Godot.SignalConnector<Int, Bool> = {
        .init(self, "joy_connection_changed")
    }()

    private static var __method_binding_is_anything_pressed: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_anything_pressed").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func isAnythingPressed() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_anything_pressed,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_is_key_pressed: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_key_pressed").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1938909964)!
        }
        }
    }()
    public func isKeyPressed(keycode: Godot.Key) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        keycode.withGodotUnsafeRawPointer { __ptr_keycode in
        withUnsafeArgumentPackPointer(__ptr_keycode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_key_pressed,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_is_physical_key_pressed: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_physical_key_pressed").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1938909964)!
        }
        }
    }()
    public func isPhysicalKeyPressed(keycode: Godot.Key) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        keycode.withGodotUnsafeRawPointer { __ptr_keycode in
        withUnsafeArgumentPackPointer(__ptr_keycode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_physical_key_pressed,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_is_key_label_pressed: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_key_label_pressed").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1938909964)!
        }
        }
    }()
    public func isKeyLabelPressed(keycode: Godot.Key) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        keycode.withGodotUnsafeRawPointer { __ptr_keycode in
        withUnsafeArgumentPackPointer(__ptr_keycode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_key_label_pressed,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_is_mouse_button_pressed: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_mouse_button_pressed").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1821097125)!
        }
        }
    }()
    public func isMouseButtonPressed(button: Godot.MouseButton) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        button.withGodotUnsafeRawPointer { __ptr_button in
        withUnsafeArgumentPackPointer(__ptr_button) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_mouse_button_pressed,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_is_joy_button_pressed: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_joy_button_pressed").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 787208542)!
        }
        }
    }()
    public func isJoyButtonPressed(device: Int32, button: Godot.JoyButton) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        device.withGodotUnsafeRawPointer { __ptr_device in
        button.withGodotUnsafeRawPointer { __ptr_button in
        withUnsafeArgumentPackPointer(__ptr_device, __ptr_button) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_joy_button_pressed,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_is_action_pressed: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_action_pressed").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1558498928)!
        }
        }
    }()
    public func isActionPressed(action: Godot.GodotStringName, exactMatch: Bool = false) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        action.withGodotUnsafeRawPointer { __ptr_action in
        exactMatch.withGodotUnsafeRawPointer { __ptr_exactMatch in
        withUnsafeArgumentPackPointer(__ptr_action, __ptr_exactMatch) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_action_pressed,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_is_action_just_pressed: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_action_just_pressed").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1558498928)!
        }
        }
    }()
    public func isActionJustPressed(action: Godot.GodotStringName, exactMatch: Bool = false) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        action.withGodotUnsafeRawPointer { __ptr_action in
        exactMatch.withGodotUnsafeRawPointer { __ptr_exactMatch in
        withUnsafeArgumentPackPointer(__ptr_action, __ptr_exactMatch) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_action_just_pressed,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_is_action_just_released: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_action_just_released").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1558498928)!
        }
        }
    }()
    public func isActionJustReleased(action: Godot.GodotStringName, exactMatch: Bool = false) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        action.withGodotUnsafeRawPointer { __ptr_action in
        exactMatch.withGodotUnsafeRawPointer { __ptr_exactMatch in
        withUnsafeArgumentPackPointer(__ptr_action, __ptr_exactMatch) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_action_just_released,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_get_action_strength: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_action_strength").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 801543509)!
        }
        }
    }()
    public func actionStrength(action: Godot.GodotStringName, exactMatch: Bool = false) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        action.withGodotUnsafeRawPointer { __ptr_action in
        exactMatch.withGodotUnsafeRawPointer { __ptr_exactMatch in
        withUnsafeArgumentPackPointer(__ptr_action, __ptr_exactMatch) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_action_strength,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_get_action_raw_strength: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_action_raw_strength").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 801543509)!
        }
        }
    }()
    public func actionRawStrength(action: Godot.GodotStringName, exactMatch: Bool = false) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        action.withGodotUnsafeRawPointer { __ptr_action in
        exactMatch.withGodotUnsafeRawPointer { __ptr_exactMatch in
        withUnsafeArgumentPackPointer(__ptr_action, __ptr_exactMatch) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_action_raw_strength,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_get_axis: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_axis").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1958752504)!
        }
        }
    }()
    public func axis(negativeAction: Godot.GodotStringName, positiveAction: Godot.GodotStringName) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        negativeAction.withGodotUnsafeRawPointer { __ptr_negativeAction in
        positiveAction.withGodotUnsafeRawPointer { __ptr_positiveAction in
        withUnsafeArgumentPackPointer(__ptr_negativeAction, __ptr_positiveAction) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_axis,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_get_vector: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_vector").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2479607902)!
        }
        }
    }()
    public func vector(negativeX: Godot.GodotStringName, positiveX: Godot.GodotStringName, negativeY: Godot.GodotStringName, positiveY: Godot.GodotStringName, deadzone: Double = -1.0) -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        negativeX.withGodotUnsafeRawPointer { __ptr_negativeX in
        positiveX.withGodotUnsafeRawPointer { __ptr_positiveX in
        negativeY.withGodotUnsafeRawPointer { __ptr_negativeY in
        positiveY.withGodotUnsafeRawPointer { __ptr_positiveY in
        deadzone.withGodotUnsafeRawPointer { __ptr_deadzone in
        withUnsafeArgumentPackPointer(__ptr_negativeX, __ptr_positiveX, __ptr_negativeY, __ptr_positiveY, __ptr_deadzone) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_vector,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}
    }

    private static var __method_binding_add_joy_mapping: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_joy_mapping").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1168363258)!
        }
        }
    }()
    public func addJoyMapping(_ mapping: Godot.GodotString, updateExisting: Bool = false) {
        mapping.withGodotUnsafeRawPointer { __ptr_mapping in
        updateExisting.withGodotUnsafeRawPointer { __ptr_updateExisting in
        withUnsafeArgumentPackPointer(__ptr_mapping, __ptr_updateExisting) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_joy_mapping,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_remove_joy_mapping: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_joy_mapping").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func removeJoyMapping(guid: Godot.GodotString) {
        guid.withGodotUnsafeRawPointer { __ptr_guid in
        withUnsafeArgumentPackPointer(__ptr_guid) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_joy_mapping,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_joy_known: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_joy_known").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3067735520)!
        }
        }
    }()
    public func isJoyKnown(device: Int32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        device.withGodotUnsafeRawPointer { __ptr_device in
        withUnsafeArgumentPackPointer(__ptr_device) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_joy_known,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_joy_axis: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_joy_axis").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4063175957)!
        }
        }
    }()
    public func joyAxis(device: Int32, axis: Godot.JoyAxis) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        device.withGodotUnsafeRawPointer { __ptr_device in
        axis.withGodotUnsafeRawPointer { __ptr_axis in
        withUnsafeArgumentPackPointer(__ptr_device, __ptr_axis) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_joy_axis,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_get_joy_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_joy_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 990163283)!
        }
        }
    }()
    public func joyName(device: Int32) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        device.withGodotUnsafeRawPointer { __ptr_device in
        withUnsafeArgumentPackPointer(__ptr_device) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_joy_name,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_joy_guid: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_joy_guid").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 844755477)!
        }
        }
    }()
    public func joyGuid(device: Int32) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        device.withGodotUnsafeRawPointer { __ptr_device in
        withUnsafeArgumentPackPointer(__ptr_device) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_joy_guid,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_joy_info: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_joy_info").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3485342025)!
        }
        }
    }()
    public func joyInfo(device: Int32) -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary.fromMutatingGodotUnsafePointer { __temporary in
        device.withGodotUnsafeRawPointer { __ptr_device in
        withUnsafeArgumentPackPointer(__ptr_device) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_joy_info,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_should_ignore_device: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "should_ignore_device").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2522259332)!
        }
        }
    }()
    public func shouldIgnoreDevice(vendorId: Int32, productId: Int32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        vendorId.withGodotUnsafeRawPointer { __ptr_vendorId in
        productId.withGodotUnsafeRawPointer { __ptr_productId in
        withUnsafeArgumentPackPointer(__ptr_vendorId, __ptr_productId) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_should_ignore_device,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_get_connected_joypads: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_connected_joypads").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()
    public func connectedJoypads() -> Godot.GodotArray<Int> {
        Godot.GodotArray<Int>.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_connected_joypads,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_joy_vibration_strength: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_joy_vibration_strength").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3114997196)!
        }
        }
    }()
    public func joyVibrationStrength(device: Int32) -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        device.withGodotUnsafeRawPointer { __ptr_device in
        withUnsafeArgumentPackPointer(__ptr_device) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_joy_vibration_strength,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_joy_vibration_duration: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_joy_vibration_duration").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4025615559)!
        }
        }
    }()
    public func joyVibrationDuration(device: Int32) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        device.withGodotUnsafeRawPointer { __ptr_device in
        withUnsafeArgumentPackPointer(__ptr_device) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_joy_vibration_duration,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_start_joy_vibration: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "start_joy_vibration").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2576575033)!
        }
        }
    }()
    public func startJoyVibration(device: Int32, weakMagnitude: Double, strongMagnitude: Double, duration: Double = 0) {
        device.withGodotUnsafeRawPointer { __ptr_device in
        weakMagnitude.withGodotUnsafeRawPointer { __ptr_weakMagnitude in
        strongMagnitude.withGodotUnsafeRawPointer { __ptr_strongMagnitude in
        duration.withGodotUnsafeRawPointer { __ptr_duration in
        withUnsafeArgumentPackPointer(__ptr_device, __ptr_weakMagnitude, __ptr_strongMagnitude, __ptr_duration) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_start_joy_vibration,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_stop_joy_vibration: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "stop_joy_vibration").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func stopJoyVibration(device: Int32) {
        device.withGodotUnsafeRawPointer { __ptr_device in
        withUnsafeArgumentPackPointer(__ptr_device) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_stop_joy_vibration,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_vibrate_handheld: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "vibrate_handheld").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 955504365)!
        }
        }
    }()
    public func vibrateHandheld(durationMs: Int32 = 500) {
        durationMs.withGodotUnsafeRawPointer { __ptr_durationMs in
        withUnsafeArgumentPackPointer(__ptr_durationMs) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_vibrate_handheld,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_gravity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_gravity").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    public func gravity() -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_gravity,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_accelerometer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_accelerometer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    public func accelerometer() -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_accelerometer,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_magnetometer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_magnetometer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    public func magnetometer() -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_magnetometer,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_gyroscope: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_gyroscope").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    public func gyroscope() -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_gyroscope,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_gravity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_gravity").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    public func setGravity(value: Godot.Vector3) {
        value.withGodotUnsafeRawPointer { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_gravity,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_accelerometer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_accelerometer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    public func setAccelerometer(value: Godot.Vector3) {
        value.withGodotUnsafeRawPointer { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_accelerometer,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_magnetometer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_magnetometer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    public func setMagnetometer(value: Godot.Vector3) {
        value.withGodotUnsafeRawPointer { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_magnetometer,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_gyroscope: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_gyroscope").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    public func setGyroscope(value: Godot.Vector3) {
        value.withGodotUnsafeRawPointer { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_gyroscope,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_last_mouse_velocity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_last_mouse_velocity").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1497962370)!
        }
        }
    }()
    public func lastMouseVelocity() -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_last_mouse_velocity,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_mouse_button_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_mouse_button_mask").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2512161324)!
        }
        }
    }()
    public func mouseButtonMask() -> Godot.MouseButtonMask {
        Godot.MouseButtonMask.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_mouse_button_mask,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_mouse_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_mouse_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2228490894)!
        }
        }
    }()
    private func __setMouseMode(_ mode: Godot.Input.MouseMode) {
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_mouse_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_mouse_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_mouse_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 965286182)!
        }
        }
    }()
    private func __getMouseMode() -> Godot.Input.MouseMode {
        Godot.Input.MouseMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_mouse_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_warp_mouse: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "warp_mouse").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 743155724)!
        }
        }
    }()
    public func warpMouse(position: Godot.Vector2) {
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

    private static var __method_binding_action_press: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "action_press").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1713091165)!
        }
        }
    }()
    public func actionPress(action: Godot.GodotStringName, strength: Double = 1.0) {
        action.withGodotUnsafeRawPointer { __ptr_action in
        strength.withGodotUnsafeRawPointer { __ptr_strength in
        withUnsafeArgumentPackPointer(__ptr_action, __ptr_strength) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_action_press,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_action_release: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "action_release").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3304788590)!
        }
        }
    }()
    public func actionRelease(action: Godot.GodotStringName) {
        action.withGodotUnsafeRawPointer { __ptr_action in
        withUnsafeArgumentPackPointer(__ptr_action) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_action_release,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_default_cursor_shape: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_default_cursor_shape").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2124816902)!
        }
        }
    }()
    public func setDefaultCursorShape(_ shape: Godot.Input.CursorShape = Input.CursorShape(rawValue: 0)!) {
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

    private static var __method_binding_get_current_cursor_shape: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_current_cursor_shape").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3455658929)!
        }
        }
    }()
    public func currentCursorShape() -> Godot.Input.CursorShape {
        Godot.Input.CursorShape.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_current_cursor_shape,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_custom_mouse_cursor: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_custom_mouse_cursor").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 703945977)!
        }
        }
    }()
    public func setCustomMouseCursor(image: Godot.Resource?, shape: Godot.Input.CursorShape = Input.CursorShape(rawValue: 0)!, hotspot: Godot.Vector2 = Vector2(x: 0, y: 0)) {
        image.withGodotUnsafeRawPointer { __ptr_image in
        withUnsafePointer(to: __ptr_image) { _ptr___ptr_image in
        shape.withGodotUnsafeRawPointer { __ptr_shape in
        hotspot.withGodotUnsafeRawPointer { __ptr_hotspot in
        withUnsafeArgumentPackPointer(_ptr___ptr_image, __ptr_shape, __ptr_hotspot) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_custom_mouse_cursor,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_parse_input_event: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "parse_input_event").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3754044979)!
        }
        }
    }()
    public func parseInputEvent(_ event: Godot.InputEvent?) {
        event.withGodotUnsafeRawPointer { __ptr_event in
        withUnsafePointer(to: __ptr_event) { _ptr___ptr_event in
        withUnsafeArgumentPackPointer(_ptr___ptr_event) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_parse_input_event,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_set_use_accumulated_input: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_use_accumulated_input").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setUseAccumulatedInput(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_use_accumulated_input,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_using_accumulated_input: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_using_accumulated_input").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()
    private func __isUsingAccumulatedInput() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_using_accumulated_input,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_flush_buffered_events: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "flush_buffered_events").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func flushBufferedEvents() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_flush_buffered_events,
            __ptr_self,
            nil,
            nil
        )}
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