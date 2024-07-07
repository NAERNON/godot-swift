//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class PhysicalSkyMaterial: Material {
    internal static var __method_binding_set_rayleigh_coefficient: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_rayleigh_coefficient").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
            }
        }
    }()
    
    private func __setRayleighCoefficient(
        rayleigh: Double
    ) {
        withTransferrableUnsafeRawPointer(to: rayleigh) { __ptr_rayleigh in
            withUnsafeArgumentPackPointer(__ptr_rayleigh) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_rayleigh_coefficient,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_rayleigh_coefficient: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_rayleigh_coefficient").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
            }
        }
    }()
    
    private func __getRayleighCoefficient() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_rayleigh_coefficient,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_rayleigh_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_rayleigh_color").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2920490490)!
            }
        }
    }()
    
    private func __setRayleighColor(
        _ color: Godot.Color
    ) {
        withTransferrableUnsafeRawPointer(to: color) { __ptr_color in
            withUnsafeArgumentPackPointer(__ptr_color) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_rayleigh_color,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_rayleigh_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_rayleigh_color").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3444240500)!
            }
        }
    }()
    
    private func __getRayleighColor() -> Godot.Color {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_rayleigh_color,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_mie_coefficient: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_mie_coefficient").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
            }
        }
    }()
    
    private func __setMieCoefficient(
        mie: Double
    ) {
        withTransferrableUnsafeRawPointer(to: mie) { __ptr_mie in
            withUnsafeArgumentPackPointer(__ptr_mie) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_mie_coefficient,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_mie_coefficient: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_mie_coefficient").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
            }
        }
    }()
    
    private func __getMieCoefficient() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_mie_coefficient,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_mie_eccentricity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_mie_eccentricity").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
            }
        }
    }()
    
    private func __setMieEccentricity(
        _ eccentricity: Double
    ) {
        withTransferrableUnsafeRawPointer(to: eccentricity) { __ptr_eccentricity in
            withUnsafeArgumentPackPointer(__ptr_eccentricity) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_mie_eccentricity,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_mie_eccentricity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_mie_eccentricity").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
            }
        }
    }()
    
    private func __getMieEccentricity() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_mie_eccentricity,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_mie_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_mie_color").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2920490490)!
            }
        }
    }()
    
    private func __setMieColor(
        _ color: Godot.Color
    ) {
        withTransferrableUnsafeRawPointer(to: color) { __ptr_color in
            withUnsafeArgumentPackPointer(__ptr_color) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_mie_color,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_mie_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_mie_color").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3444240500)!
            }
        }
    }()
    
    private func __getMieColor() -> Godot.Color {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_mie_color,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_turbidity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_turbidity").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
            }
        }
    }()
    
    private func __setTurbidity(
        _ turbidity: Double
    ) {
        withTransferrableUnsafeRawPointer(to: turbidity) { __ptr_turbidity in
            withUnsafeArgumentPackPointer(__ptr_turbidity) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_turbidity,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_turbidity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_turbidity").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
            }
        }
    }()
    
    private func __getTurbidity() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_turbidity,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_sun_disk_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_sun_disk_scale").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
            }
        }
    }()
    
    private func __setSunDiskScale(
        _ scale: Double
    ) {
        withTransferrableUnsafeRawPointer(to: scale) { __ptr_scale in
            withUnsafeArgumentPackPointer(__ptr_scale) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_sun_disk_scale,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_sun_disk_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_sun_disk_scale").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
            }
        }
    }()
    
    private func __getSunDiskScale() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_sun_disk_scale,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_ground_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_ground_color").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2920490490)!
            }
        }
    }()
    
    private func __setGroundColor(
        _ color: Godot.Color
    ) {
        withTransferrableUnsafeRawPointer(to: color) { __ptr_color in
            withUnsafeArgumentPackPointer(__ptr_color) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_ground_color,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_ground_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_ground_color").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3444240500)!
            }
        }
    }()
    
    private func __getGroundColor() -> Godot.Color {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_ground_color,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_energy_multiplier: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_energy_multiplier").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
            }
        }
    }()
    
    private func __setEnergyMultiplier(
        _ multiplier: Double
    ) {
        withTransferrableUnsafeRawPointer(to: multiplier) { __ptr_multiplier in
            withUnsafeArgumentPackPointer(__ptr_multiplier) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_energy_multiplier,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_energy_multiplier: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_energy_multiplier").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
            }
        }
    }()
    
    private func __getEnergyMultiplier() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_energy_multiplier,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_use_debanding: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_use_debanding").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
            }
        }
    }()
    
    private func __setUseDebanding(
        _ useDebanding: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: useDebanding) { __ptr_useDebanding in
            withUnsafeArgumentPackPointer(__ptr_useDebanding) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_use_debanding,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_use_debanding: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_use_debanding").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
            }
        }
    }()
    
    private func __getUseDebanding() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_use_debanding,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_night_sky: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_night_sky").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4051416890)!
            }
        }
    }()
    
    private func __setNightSky(
        _ nightSky: Godot.Texture2D?
    ) {
        withTransferrableUnsafeRawPointer(to: nightSky) { __ptr_nightSky in
            withUnsafePointer(to: __ptr_nightSky) { _ptr___ptr_nightSky in
                withUnsafeArgumentPackPointer(_ptr___ptr_nightSky) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_night_sky,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_night_sky: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_night_sky").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3635182373)!
            }
        }
    }()
    
    private func __getNightSky() -> Godot.Texture2D? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_night_sky,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    public var rayleighCoefficient: Double {
        get {
            __getRayleighCoefficient()
        }
        set(newValue) {
            __setRayleighCoefficient(
                rayleigh: newValue
            )
        }
    }
    
    public var rayleighColor: Godot.Color {
        get {
            __getRayleighColor()
        }
        set(newValue) {
            __setRayleighColor(
                newValue
            )
        }
    }
    
    public var mieCoefficient: Double {
        get {
            __getMieCoefficient()
        }
        set(newValue) {
            __setMieCoefficient(
                mie: newValue
            )
        }
    }
    
    public var mieEccentricity: Double {
        get {
            __getMieEccentricity()
        }
        set(newValue) {
            __setMieEccentricity(
                newValue
            )
        }
    }
    
    public var mieColor: Godot.Color {
        get {
            __getMieColor()
        }
        set(newValue) {
            __setMieColor(
                newValue
            )
        }
    }
    
    public var turbidity: Double {
        get {
            __getTurbidity()
        }
        set(newValue) {
            __setTurbidity(
                newValue
            )
        }
    }
    
    public var sunDiskScale: Double {
        get {
            __getSunDiskScale()
        }
        set(newValue) {
            __setSunDiskScale(
                newValue
            )
        }
    }
    
    public var groundColor: Godot.Color {
        get {
            __getGroundColor()
        }
        set(newValue) {
            __setGroundColor(
                newValue
            )
        }
    }
    
    public var energyMultiplier: Double {
        get {
            __getEnergyMultiplier()
        }
        set(newValue) {
            __setEnergyMultiplier(
                newValue
            )
        }
    }
    
    public var useDebanding: Bool {
        get {
            __getUseDebanding()
        }
        set(newValue) {
            __setUseDebanding(
                newValue
            )
        }
    }
    
    public var nightSky: Godot.Texture2D? {
        get {
            __getNightSky()
        }
        set(newValue) {
            __setNightSky(
                newValue
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