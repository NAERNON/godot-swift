//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotClass
open class SpinBox: Range {
    internal static var __method_binding_set_horizontal_alignment: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_horizontal_alignment").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2312603777)!
            }
        }
    }()
    
    private func __setHorizontalAlignment(
        _ alignment: Godot.HorizontalAlignment
    ) {
        withTransferrableUnsafeRawPointer(to: alignment) { __ptr_alignment in
            withUnsafeArgumentPackPointer(__ptr_alignment) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_horizontal_alignment,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_horizontal_alignment: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_horizontal_alignment").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 341400642)!
            }
        }
    }()
    
    private func __getHorizontalAlignment() -> Godot.HorizontalAlignment {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_horizontal_alignment,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_suffix: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_suffix").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
            }
        }
    }()
    
    private func __setSuffix(
        _ suffix: Godot.GodotString
    ) {
        withTransferrableUnsafeRawPointer(to: suffix) { __ptr_suffix in
            withUnsafeArgumentPackPointer(__ptr_suffix) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_suffix,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_suffix: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_suffix").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
            }
        }
    }()
    
    private func __getSuffix() -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_suffix,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_prefix: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_prefix").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
            }
        }
    }()
    
    private func __setPrefix(
        _ prefix: Godot.GodotString
    ) {
        withTransferrableUnsafeRawPointer(to: prefix) { __ptr_prefix in
            withUnsafeArgumentPackPointer(__ptr_prefix) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_prefix,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_prefix: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_prefix").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
            }
        }
    }()
    
    private func __getPrefix() -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_prefix,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_editable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_editable").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
            }
        }
    }()
    
    private func __setEditable(
        enabled: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: enabled) { __ptr_enabled in
            withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_editable,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_set_custom_arrow_step: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_custom_arrow_step").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
            }
        }
    }()
    
    private func __setCustomArrowStep(
        _ arrowStep: Double
    ) {
        withTransferrableUnsafeRawPointer(to: arrowStep) { __ptr_arrowStep in
            withUnsafeArgumentPackPointer(__ptr_arrowStep) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_custom_arrow_step,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_custom_arrow_step: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_custom_arrow_step").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
            }
        }
    }()
    
    private func __getCustomArrowStep() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_custom_arrow_step,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_is_editable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "is_editable").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
            }
        }
    }()
    
    private func __isEditable() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_editable,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_update_on_text_changed: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_update_on_text_changed").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
            }
        }
    }()
    
    private func __setUpdateOnTextChanged(
        enabled: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: enabled) { __ptr_enabled in
            withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_update_on_text_changed,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_update_on_text_changed: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_update_on_text_changed").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
            }
        }
    }()
    
    private func __getUpdateOnTextChanged() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_update_on_text_changed,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_select_all_on_focus: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_select_all_on_focus").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
            }
        }
    }()
    
    private func __setSelectAllOnFocus(
        enabled: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: enabled) { __ptr_enabled in
            withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_select_all_on_focus,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_is_select_all_on_focus: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "is_select_all_on_focus").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
            }
        }
    }()
    
    private func __isSelectAllOnFocus() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_select_all_on_focus,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_apply: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "apply").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
            }
        }
    }()
    
    public func apply() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_apply,
                __ptr_self,
                nil,
                nil
            )
        }
    }
    
    internal static var __method_binding_get_line_edit: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_line_edit").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4071694264)!
            }
        }
    }()
    
    public func lineEdit() -> Godot.LineEdit? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_line_edit,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    public var horizontalAlignment: Godot.HorizontalAlignment {
        get {
            __getHorizontalAlignment()
        }
        set(newValue) {
            __setHorizontalAlignment(
                newValue
            )
        }
    }
    
    public var isEditable: Bool {
        get {
            __isEditable()
        }
        set(newValue) {
            __setEditable(
                enabled: newValue
            )
        }
    }
    
    public var updateOnTextChanged: Bool {
        get {
            __getUpdateOnTextChanged()
        }
        set(newValue) {
            __setUpdateOnTextChanged(
                enabled: newValue
            )
        }
    }
    
    public var prefix: Godot.GodotString {
        get {
            __getPrefix()
        }
        set(newValue) {
            __setPrefix(
                newValue
            )
        }
    }
    
    public var suffix: Godot.GodotString {
        get {
            __getSuffix()
        }
        set(newValue) {
            __setSuffix(
                newValue
            )
        }
    }
    
    public var customArrowStep: Double {
        get {
            __getCustomArrowStep()
        }
        set(newValue) {
            __setCustomArrowStep(
                newValue
            )
        }
    }
    
    public var isSelectAllOnFocus: Bool {
        get {
            __isSelectAllOnFocus()
        }
        set(newValue) {
            __setSelectAllOnFocus(
                enabled: newValue
            )
        }
    }
    
    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        _virtualFunctions = [:]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions![key] = value
        }
        return _virtualFunctions!
    }
}