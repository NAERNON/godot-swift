//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class EditorSpinSlider: Range {
    public func grabbed() {
        grabbedConnector.emit()
    }

    public private (set) lazy var grabbedConnector: Godot.SignalConnector
    <> = {
        .init(self, "grabbed")
    }()


    public func ungrabbed() {
        ungrabbedConnector.emit()
    }

    public private (set) lazy var ungrabbedConnector: Godot.SignalConnector
    <> = {
        .init(self, "ungrabbed")
    }()


    public func valueFocusEntered() {
        valueFocusEnteredConnector.emit()
    }

    public private (set) lazy var valueFocusEnteredConnector: Godot.SignalConnector
    <> = {
        .init(self, "value_focus_entered")
    }()


    public func valueFocusExited() {
        valueFocusExitedConnector.emit()
    }

    public private (set) lazy var valueFocusExitedConnector: Godot.SignalConnector
    <> = {
        .init(self, "value_focus_exited")
    }()


    private static var __method_binding_set_label: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_label").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    private func __setLabel(_ label: Godot.GodotString) {
        label.withGodotUnsafeRawPointer { __ptr_label in
        withUnsafeArgumentPackPointer(__ptr_label) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_label,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_label: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_label").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    private func __getLabel() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_label,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_suffix: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_suffix").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    private func __setSuffix(_ suffix: Godot.GodotString) {
        suffix.withGodotUnsafeRawPointer { __ptr_suffix in
        withUnsafeArgumentPackPointer(__ptr_suffix) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_suffix,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_suffix: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_suffix").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    private func __getSuffix() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_suffix,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_read_only: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_read_only").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setReadOnly(_ readOnly: Bool) {
        readOnly.withGodotUnsafeRawPointer { __ptr_readOnly in
        withUnsafeArgumentPackPointer(__ptr_readOnly) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_read_only,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_read_only: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_read_only").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isReadOnly() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_read_only,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_flat: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_flat").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setFlat(_ flat: Bool) {
        flat.withGodotUnsafeRawPointer { __ptr_flat in
        withUnsafeArgumentPackPointer(__ptr_flat) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_flat,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_flat: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_flat").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isFlat() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_flat,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_hide_slider: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_hide_slider").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setHideSlider(_ hideSlider: Bool) {
        hideSlider.withGodotUnsafeRawPointer { __ptr_hideSlider in
        withUnsafeArgumentPackPointer(__ptr_hideSlider) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_hide_slider,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_hiding_slider: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_hiding_slider").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isHidingSlider() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_hiding_slider,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var label: Godot.GodotString {
        get {
            __getLabel()
        }
        set {
            __setLabel(
                newValue
            )
        }
    }

    public var suffix: Godot.GodotString {
        get {
            __getSuffix()
        }
        set {
            __setSuffix(
                newValue
            )
        }
    }

    public var isReadOnly: Bool {
        get {
            __isReadOnly()
        }
        set {
            __setReadOnly(
                newValue
            )
        }
    }

    public var isFlat: Bool {
        get {
            __isFlat()
        }
        set {
            __setFlat(
                newValue
            )
        }
    }

    public var isHidingSlider: Bool {
        get {
            __isHidingSlider()
        }
        set {
            __setHideSlider(
                newValue
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