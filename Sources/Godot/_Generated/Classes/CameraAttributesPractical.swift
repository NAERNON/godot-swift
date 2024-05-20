//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class CameraAttributesPractical: CameraAttributes {
    internal static var __method_binding_set_dof_blur_far_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_dof_blur_far_enabled").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setDofBlurFarEnabled(
        _ enabled: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: enabled) { __ptr_enabled in
            withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_dof_blur_far_enabled,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_is_dof_blur_far_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_dof_blur_far_enabled").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isDofBlurFarEnabled() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_dof_blur_far_enabled,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_dof_blur_far_distance: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_dof_blur_far_distance").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setDofBlurFarDistance(
        _ distance: Double
    ) {
        withTransferrableUnsafeRawPointer(to: distance) { __ptr_distance in
            withUnsafeArgumentPackPointer(__ptr_distance) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_dof_blur_far_distance,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_dof_blur_far_distance: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_dof_blur_far_distance").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getDofBlurFarDistance() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_dof_blur_far_distance,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_dof_blur_far_transition: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_dof_blur_far_transition").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setDofBlurFarTransition(
        distance: Double
    ) {
        withTransferrableUnsafeRawPointer(to: distance) { __ptr_distance in
            withUnsafeArgumentPackPointer(__ptr_distance) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_dof_blur_far_transition,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_dof_blur_far_transition: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_dof_blur_far_transition").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getDofBlurFarTransition() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_dof_blur_far_transition,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_dof_blur_near_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_dof_blur_near_enabled").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setDofBlurNearEnabled(
        _ enabled: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: enabled) { __ptr_enabled in
            withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_dof_blur_near_enabled,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_is_dof_blur_near_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_dof_blur_near_enabled").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isDofBlurNearEnabled() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_dof_blur_near_enabled,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_dof_blur_near_distance: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_dof_blur_near_distance").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setDofBlurNearDistance(
        _ distance: Double
    ) {
        withTransferrableUnsafeRawPointer(to: distance) { __ptr_distance in
            withUnsafeArgumentPackPointer(__ptr_distance) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_dof_blur_near_distance,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_dof_blur_near_distance: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_dof_blur_near_distance").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getDofBlurNearDistance() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_dof_blur_near_distance,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_dof_blur_near_transition: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_dof_blur_near_transition").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setDofBlurNearTransition(
        distance: Double
    ) {
        withTransferrableUnsafeRawPointer(to: distance) { __ptr_distance in
            withUnsafeArgumentPackPointer(__ptr_distance) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_dof_blur_near_transition,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_dof_blur_near_transition: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_dof_blur_near_transition").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getDofBlurNearTransition() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_dof_blur_near_transition,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_dof_blur_amount: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_dof_blur_amount").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setDofBlurAmount(
        _ amount: Double
    ) {
        withTransferrableUnsafeRawPointer(to: amount) { __ptr_amount in
            withUnsafeArgumentPackPointer(__ptr_amount) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_dof_blur_amount,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_dof_blur_amount: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_dof_blur_amount").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getDofBlurAmount() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_dof_blur_amount,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_auto_exposure_max_sensitivity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_auto_exposure_max_sensitivity").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setAutoExposureMaxSensitivity(
        _ maxSensitivity: Double
    ) {
        withTransferrableUnsafeRawPointer(to: maxSensitivity) { __ptr_maxSensitivity in
            withUnsafeArgumentPackPointer(__ptr_maxSensitivity) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_auto_exposure_max_sensitivity,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_auto_exposure_max_sensitivity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_auto_exposure_max_sensitivity").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getAutoExposureMaxSensitivity() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_auto_exposure_max_sensitivity,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_auto_exposure_min_sensitivity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_auto_exposure_min_sensitivity").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setAutoExposureMinSensitivity(
        _ minSensitivity: Double
    ) {
        withTransferrableUnsafeRawPointer(to: minSensitivity) { __ptr_minSensitivity in
            withUnsafeArgumentPackPointer(__ptr_minSensitivity) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_auto_exposure_min_sensitivity,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_auto_exposure_min_sensitivity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_auto_exposure_min_sensitivity").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getAutoExposureMinSensitivity() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_auto_exposure_min_sensitivity,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    public var isDofBlurFarEnabled: Bool {
        get {
            __isDofBlurFarEnabled()
        }
        set {
            __setDofBlurFarEnabled(
                newValue
            )
        }
    }

    public var dofBlurFarDistance: Double {
        get {
            __getDofBlurFarDistance()
        }
        set {
            __setDofBlurFarDistance(
                newValue
            )
        }
    }

    public var dofBlurFarTransition: Double {
        get {
            __getDofBlurFarTransition()
        }
        set {
            __setDofBlurFarTransition(
                distance: newValue
            )
        }
    }

    public var isDofBlurNearEnabled: Bool {
        get {
            __isDofBlurNearEnabled()
        }
        set {
            __setDofBlurNearEnabled(
                newValue
            )
        }
    }

    public var dofBlurNearDistance: Double {
        get {
            __getDofBlurNearDistance()
        }
        set {
            __setDofBlurNearDistance(
                newValue
            )
        }
    }

    public var dofBlurNearTransition: Double {
        get {
            __getDofBlurNearTransition()
        }
        set {
            __setDofBlurNearTransition(
                distance: newValue
            )
        }
    }

    public var dofBlurAmount: Double {
        get {
            __getDofBlurAmount()
        }
        set {
            __setDofBlurAmount(
                newValue
            )
        }
    }

    public var autoExposureMinSensitivity: Double {
        get {
            __getAutoExposureMinSensitivity()
        }
        set {
            __setAutoExposureMinSensitivity(
                newValue
            )
        }
    }

    public var autoExposureMaxSensitivity: Double {
        get {
            __getAutoExposureMaxSensitivity()
        }
        set {
            __setAutoExposureMaxSensitivity(
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