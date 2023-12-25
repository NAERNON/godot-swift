//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class ColorPickerButton: Button {
    public func colorChanged(color: Godot.Color) {
        colorChangedConnector.emit(color)
    }

    public private (set) lazy var colorChangedConnector: Godot.SignalConnector<Godot.Color> = {
        .init(self, "color_changed")
    }()

    public func popupClosed() {
        popupClosedConnector.emit()
    }

    public private (set) lazy var popupClosedConnector: Godot.SignalConnector
    <> = {
        .init(self, "popup_closed")
    }()


    public func pickerCreated() {
        pickerCreatedConnector.emit()
    }

    public private (set) lazy var pickerCreatedConnector: Godot.SignalConnector
    <> = {
        .init(self, "picker_created")
    }()


    private static var __method_binding_set_pick_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_pick_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2920490490)!
        }
        }
    }()
    private func __setPickColor(_ color: Godot.Color) {
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_pick_color,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_pick_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_pick_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3444240500)!
        }
        }
    }()
    private func __getPickColor() -> Godot.Color {
        Godot.Color.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_pick_color,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_picker: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_picker").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 331835996)!
        }
        }
    }()
    public func picker() -> Godot.ColorPicker? {
        Godot.ColorPicker?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_picker,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_popup: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_popup").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1322440207)!
        }
        }
    }()
    public func popup() -> Godot.PopupPanel? {
        Godot.PopupPanel?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_popup,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_edit_alpha: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_edit_alpha").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setEditAlpha(show: Bool) {
        show.withGodotUnsafeRawPointer { __ptr_show in
        withUnsafeArgumentPackPointer(__ptr_show) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_edit_alpha,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_editing_alpha: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_editing_alpha").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isEditingAlpha() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_editing_alpha,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var pickColor: Godot.Color {
        get {
            __getPickColor()
        }
        set {
            __setPickColor(
                newValue
            )
        }
    }

    public var isEditingAlpha: Bool {
        get {
            __isEditingAlpha()
        }
        set {
            __setEditAlpha(
                show: newValue
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