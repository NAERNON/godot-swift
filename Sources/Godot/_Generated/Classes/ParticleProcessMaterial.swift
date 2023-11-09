//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class ParticleProcessMaterial: Material {
    public enum Parameter: UInt32, GodotEnum {
        case initialLinearVelocity = 0
        case angularVelocity = 1
        case orbitVelocity = 2
        case linearAccel = 3
        case radialAccel = 4
        case tangentialAccel = 5
        case damping = 6
        case angle = 7
        case scale = 8
        case hueVariation = 9
        case animSpeed = 10
        case animOffset = 11
        case max = 15
        case turbVelInfluence = 13
        case turbInitDisplacement = 14
        case turbInfluenceOverLife = 12
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Initial Linear Velocity", 0),
            ("Angular Velocity", 1),
            ("Orbit Velocity", 2),
            ("Linear Accel", 3),
            ("Radial Accel", 4),
            ("Tangential Accel", 5),
            ("Damping", 6),
            ("Angle", 7),
            ("Scale", 8),
            ("Hue Variation", 9),
            ("Anim Speed", 10),
            ("Anim Offset", 11),
            ("Turb Influence Over Life", 12),
            ("Turb Vel Influence", 13),
            ("Turb Init Displacement", 14),
            ("Max", 15),]
        }
    }
    public enum ParticleFlags: UInt32, GodotEnum {
        case alignYToVelocity = 0
        case rotateY = 1
        case disableZ = 2
        case max = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Align Y To Velocity", 0),
            ("Rotate Y", 1),
            ("Disable Z", 2),
            ("Max", 3),]
        }
    }
    public enum EmissionShape: UInt32, GodotEnum {
        case point = 0
        case sphere = 1
        case sphereSurface = 2
        case box = 3
        case points = 4
        case directedPoints = 5
        case ring = 6
        case max = 7
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Point", 0),
            ("Sphere", 1),
            ("Sphere Surface", 2),
            ("Box", 3),
            ("Points", 4),
            ("Directed Points", 5),
            ("Ring", 6),
            ("Max", 7),]
        }
    }
    public enum SubEmitterMode: UInt32, GodotEnum {
        case disabled = 0
        case constant = 1
        case atEnd = 2
        case atCollision = 3
        case max = 4
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Disabled", 0),
            ("Constant", 1),
            ("At End", 2),
            ("At Collision", 3),
            ("Max", 4),]
        }
    }
    public enum CollisionMode: UInt32, GodotEnum {
        case disabled = 0
        case rigid = 1
        case hideOnContact = 2
        case max = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Disabled", 0),
            ("Rigid", 1),
            ("Hide On Contact", 2),
            ("Max", 3),]
        }
    }

    private static var __method_binding_set_direction: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_direction").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    private func __setDirection(degrees: Godot.Vector3) {
        withUnsafePointer(to: degrees) { (__ptr_degrees) in
            withUnsafeArgumentPackPointer(__ptr_degrees) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_direction,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_direction: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_direction").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    private func __getDirection() -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_direction,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_spread: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_spread").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setSpread(degrees: Double) {
        withUnsafePointer(to: degrees) { (__ptr_degrees) in
            withUnsafeArgumentPackPointer(__ptr_degrees) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_spread,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_spread: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_spread").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getSpread() -> Double {
        var __temporary = Double()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_spread,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_flatness: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_flatness").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setFlatness(amount: Double) {
        withUnsafePointer(to: amount) { (__ptr_amount) in
            withUnsafeArgumentPackPointer(__ptr_amount) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_flatness,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_flatness: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_flatness").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getFlatness() -> Double {
        var __temporary = Double()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_flatness,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_param_min: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_param_min").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2295964248)!
        }
        }
    }()
    public func setParamMin(param: Godot.ParticleProcessMaterial.Parameter, value: Double) {
        withUnsafePointer(to: param) { (__ptr_param) in
            withUnsafePointer(to: value) { (__ptr_value) in
                withUnsafeArgumentPackPointer(__ptr_param, __ptr_value) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_param_min,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_param_min: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_param_min").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3903786503)!
        }
        }
    }()
    private func __getParamMin(param: Godot.ParticleProcessMaterial.Parameter) -> Double {
        var __temporary = Double()
        withUnsafePointer(to: param) { (__ptr_param) in
            withUnsafeArgumentPackPointer(__ptr_param) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_param_min,
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

    private static var __method_binding_set_param_max: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_param_max").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2295964248)!
        }
        }
    }()
    public func setParamMax(param: Godot.ParticleProcessMaterial.Parameter, value: Double) {
        withUnsafePointer(to: param) { (__ptr_param) in
            withUnsafePointer(to: value) { (__ptr_value) in
                withUnsafeArgumentPackPointer(__ptr_param, __ptr_value) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_param_max,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_param_max: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_param_max").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3903786503)!
        }
        }
    }()
    private func __getParamMax(param: Godot.ParticleProcessMaterial.Parameter) -> Double {
        var __temporary = Double()
        withUnsafePointer(to: param) { (__ptr_param) in
            withUnsafeArgumentPackPointer(__ptr_param) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_param_max,
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

    private static var __method_binding_set_param_texture: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_param_texture").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 526976089)!
        }
        }
    }()
    public func setParamTexture(param: Godot.ParticleProcessMaterial.Parameter, texture: Godot.Texture2D?) {
        withUnsafePointer(to: param) { (__ptr_param) in
            texture.withUnsafeRawPointer { (__ptr_texture) in
                withUnsafePointer(to: __ptr_texture) { (_ptr___ptr_texture) in
                    withUnsafeArgumentPackPointer(__ptr_param, _ptr___ptr_texture) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_set_param_texture,
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

    private static var __method_binding_get_param_texture: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_param_texture").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3489372978)!
        }
        }
    }()
    private func __getParamTexture(param: Godot.ParticleProcessMaterial.Parameter) -> Godot.Texture2D? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafePointer(to: param) { (__ptr_param) in
            withUnsafeArgumentPackPointer(__ptr_param) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_param_texture,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.Texture2D.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_set_color: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_color").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2920490490)!
        }
        }
    }()
    private func __setColor(_ color: Godot.Color) {
        withUnsafePointer(to: color) { (__ptr_color) in
            withUnsafeArgumentPackPointer(__ptr_color) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_color,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_color: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_color").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3444240500)!
        }
        }
    }()
    private func __getColor() -> Godot.Color {
        var __temporary = Godot.Color()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_color,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_color_ramp: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_color_ramp").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4051416890)!
        }
        }
    }()
    private func __setColorRamp(_ ramp: Godot.Texture2D?) {
        ramp.withUnsafeRawPointer { (__ptr_ramp) in
            withUnsafePointer(to: __ptr_ramp) { (_ptr___ptr_ramp) in
                withUnsafeArgumentPackPointer(_ptr___ptr_ramp) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_color_ramp,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_color_ramp: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_color_ramp").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3635182373)!
        }
        }
    }()
    private func __getColorRamp() -> Godot.Texture2D? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_color_ramp,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.Texture2D.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_set_color_initial_ramp: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_color_initial_ramp").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4051416890)!
        }
        }
    }()
    private func __setColorInitialRamp(_ ramp: Godot.Texture2D?) {
        ramp.withUnsafeRawPointer { (__ptr_ramp) in
            withUnsafePointer(to: __ptr_ramp) { (_ptr___ptr_ramp) in
                withUnsafeArgumentPackPointer(_ptr___ptr_ramp) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_color_initial_ramp,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_color_initial_ramp: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_color_initial_ramp").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3635182373)!
        }
        }
    }()
    private func __getColorInitialRamp() -> Godot.Texture2D? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_color_initial_ramp,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.Texture2D.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_set_particle_flag: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_particle_flag").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1711815571)!
        }
        }
    }()
    public func setParticleFlag(_ particleFlag: Godot.ParticleProcessMaterial.ParticleFlags, enable: Bool) {
        withUnsafePointer(to: particleFlag) { (__ptr_particleFlag) in
            withUnsafePointer(to: enable) { (__ptr_enable) in
                withUnsafeArgumentPackPointer(__ptr_particleFlag, __ptr_enable) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_particle_flag,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_particle_flag: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_particle_flag").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3895316907)!
        }
        }
    }()
    private func __getParticleFlag(_ particleFlag: Godot.ParticleProcessMaterial.ParticleFlags) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: particleFlag) { (__ptr_particleFlag) in
            withUnsafeArgumentPackPointer(__ptr_particleFlag) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_particle_flag,
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

    private static var __method_binding_set_emission_shape: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_emission_shape").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 461501442)!
        }
        }
    }()
    private func __setEmissionShape(_ shape: Godot.ParticleProcessMaterial.EmissionShape) {
        withUnsafePointer(to: shape) { (__ptr_shape) in
            withUnsafeArgumentPackPointer(__ptr_shape) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_emission_shape,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_emission_shape: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_emission_shape").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3719733018)!
        }
        }
    }()
    private func __getEmissionShape() -> Godot.ParticleProcessMaterial.EmissionShape {
        var __temporary = Godot.ParticleProcessMaterial.EmissionShape.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_emission_shape,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.ParticleProcessMaterial.EmissionShape(rawValue: __temporary)!
    }

    private static var __method_binding_set_emission_sphere_radius: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_emission_sphere_radius").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setEmissionSphereRadius(_ radius: Double) {
        withUnsafePointer(to: radius) { (__ptr_radius) in
            withUnsafeArgumentPackPointer(__ptr_radius) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_emission_sphere_radius,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_emission_sphere_radius: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_emission_sphere_radius").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getEmissionSphereRadius() -> Double {
        var __temporary = Double()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_emission_sphere_radius,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_emission_box_extents: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_emission_box_extents").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    private func __setEmissionBoxExtents(_ extents: Godot.Vector3) {
        withUnsafePointer(to: extents) { (__ptr_extents) in
            withUnsafeArgumentPackPointer(__ptr_extents) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_emission_box_extents,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_emission_box_extents: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_emission_box_extents").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    private func __getEmissionBoxExtents() -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_emission_box_extents,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_emission_point_texture: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_emission_point_texture").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4051416890)!
        }
        }
    }()
    private func __setEmissionPointTexture(_ texture: Godot.Texture2D?) {
        texture.withUnsafeRawPointer { (__ptr_texture) in
            withUnsafePointer(to: __ptr_texture) { (_ptr___ptr_texture) in
                withUnsafeArgumentPackPointer(_ptr___ptr_texture) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_emission_point_texture,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_emission_point_texture: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_emission_point_texture").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3635182373)!
        }
        }
    }()
    private func __getEmissionPointTexture() -> Godot.Texture2D? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_emission_point_texture,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.Texture2D.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_set_emission_normal_texture: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_emission_normal_texture").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4051416890)!
        }
        }
    }()
    private func __setEmissionNormalTexture(_ texture: Godot.Texture2D?) {
        texture.withUnsafeRawPointer { (__ptr_texture) in
            withUnsafePointer(to: __ptr_texture) { (_ptr___ptr_texture) in
                withUnsafeArgumentPackPointer(_ptr___ptr_texture) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_emission_normal_texture,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_emission_normal_texture: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_emission_normal_texture").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3635182373)!
        }
        }
    }()
    private func __getEmissionNormalTexture() -> Godot.Texture2D? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_emission_normal_texture,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.Texture2D.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_set_emission_color_texture: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_emission_color_texture").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4051416890)!
        }
        }
    }()
    private func __setEmissionColorTexture(_ texture: Godot.Texture2D?) {
        texture.withUnsafeRawPointer { (__ptr_texture) in
            withUnsafePointer(to: __ptr_texture) { (_ptr___ptr_texture) in
                withUnsafeArgumentPackPointer(_ptr___ptr_texture) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_emission_color_texture,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_emission_color_texture: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_emission_color_texture").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3635182373)!
        }
        }
    }()
    private func __getEmissionColorTexture() -> Godot.Texture2D? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_emission_color_texture,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.Texture2D.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_set_emission_point_count: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_emission_point_count").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setEmissionPointCount(_ pointCount: Int32) {
        withUnsafePointer(to: pointCount) { (__ptr_pointCount) in
            withUnsafeArgumentPackPointer(__ptr_pointCount) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_emission_point_count,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_emission_point_count: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_emission_point_count").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getEmissionPointCount() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_emission_point_count,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_emission_ring_axis: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_emission_ring_axis").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    private func __setEmissionRingAxis(_ axis: Godot.Vector3) {
        withUnsafePointer(to: axis) { (__ptr_axis) in
            withUnsafeArgumentPackPointer(__ptr_axis) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_emission_ring_axis,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_emission_ring_axis: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_emission_ring_axis").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    private func __getEmissionRingAxis() -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_emission_ring_axis,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_emission_ring_height: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_emission_ring_height").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setEmissionRingHeight(_ height: Double) {
        withUnsafePointer(to: height) { (__ptr_height) in
            withUnsafeArgumentPackPointer(__ptr_height) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_emission_ring_height,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_emission_ring_height: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_emission_ring_height").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getEmissionRingHeight() -> Double {
        var __temporary = Double()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_emission_ring_height,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_emission_ring_radius: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_emission_ring_radius").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setEmissionRingRadius(_ radius: Double) {
        withUnsafePointer(to: radius) { (__ptr_radius) in
            withUnsafeArgumentPackPointer(__ptr_radius) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_emission_ring_radius,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_emission_ring_radius: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_emission_ring_radius").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getEmissionRingRadius() -> Double {
        var __temporary = Double()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_emission_ring_radius,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_emission_ring_inner_radius: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_emission_ring_inner_radius").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setEmissionRingInnerRadius(_ innerRadius: Double) {
        withUnsafePointer(to: innerRadius) { (__ptr_innerRadius) in
            withUnsafeArgumentPackPointer(__ptr_innerRadius) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_emission_ring_inner_radius,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_emission_ring_inner_radius: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_emission_ring_inner_radius").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getEmissionRingInnerRadius() -> Double {
        var __temporary = Double()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_emission_ring_inner_radius,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_turbulence_enabled: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_turbulence_enabled").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getTurbulenceEnabled() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_turbulence_enabled,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_turbulence_enabled: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_turbulence_enabled").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setTurbulenceEnabled(_ turbulenceEnabled: Bool) {
        withUnsafePointer(to: turbulenceEnabled) { (__ptr_turbulenceEnabled) in
            withUnsafeArgumentPackPointer(__ptr_turbulenceEnabled) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_turbulence_enabled,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_turbulence_noise_strength: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_turbulence_noise_strength").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getTurbulenceNoiseStrength() -> Double {
        var __temporary = Double()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_turbulence_noise_strength,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_turbulence_noise_strength: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_turbulence_noise_strength").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setTurbulenceNoiseStrength(_ turbulenceNoiseStrength: Double) {
        withUnsafePointer(to: turbulenceNoiseStrength) { (__ptr_turbulenceNoiseStrength) in
            withUnsafeArgumentPackPointer(__ptr_turbulenceNoiseStrength) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_turbulence_noise_strength,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_turbulence_noise_scale: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_turbulence_noise_scale").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getTurbulenceNoiseScale() -> Double {
        var __temporary = Double()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_turbulence_noise_scale,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_turbulence_noise_scale: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_turbulence_noise_scale").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setTurbulenceNoiseScale(_ turbulenceNoiseScale: Double) {
        withUnsafePointer(to: turbulenceNoiseScale) { (__ptr_turbulenceNoiseScale) in
            withUnsafeArgumentPackPointer(__ptr_turbulenceNoiseScale) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_turbulence_noise_scale,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_turbulence_noise_speed_random: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_turbulence_noise_speed_random").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getTurbulenceNoiseSpeedRandom() -> Double {
        var __temporary = Double()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_turbulence_noise_speed_random,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_turbulence_noise_speed_random: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_turbulence_noise_speed_random").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setTurbulenceNoiseSpeedRandom(_ turbulenceNoiseSpeedRandom: Double) {
        withUnsafePointer(to: turbulenceNoiseSpeedRandom) { (__ptr_turbulenceNoiseSpeedRandom) in
            withUnsafeArgumentPackPointer(__ptr_turbulenceNoiseSpeedRandom) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_turbulence_noise_speed_random,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_turbulence_noise_speed: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_turbulence_noise_speed").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    private func __getTurbulenceNoiseSpeed() -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_turbulence_noise_speed,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_turbulence_noise_speed: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_turbulence_noise_speed").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    private func __setTurbulenceNoiseSpeed(_ turbulenceNoiseSpeed: Godot.Vector3) {
        withUnsafePointer(to: turbulenceNoiseSpeed) { (__ptr_turbulenceNoiseSpeed) in
            withUnsafeArgumentPackPointer(__ptr_turbulenceNoiseSpeed) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_turbulence_noise_speed,
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
    private func __getGravity() -> Godot.Vector3 {
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

    private static var __method_binding_set_gravity: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_gravity").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    private func __setGravity(accelVec: Godot.Vector3) {
        withUnsafePointer(to: accelVec) { (__ptr_accelVec) in
            withUnsafeArgumentPackPointer(__ptr_accelVec) { (__accessPtr) in
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

    private static var __method_binding_set_lifetime_randomness: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_lifetime_randomness").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setLifetimeRandomness(_ randomness: Double) {
        withUnsafePointer(to: randomness) { (__ptr_randomness) in
            withUnsafeArgumentPackPointer(__ptr_randomness) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_lifetime_randomness,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_lifetime_randomness: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_lifetime_randomness").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getLifetimeRandomness() -> Double {
        var __temporary = Double()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_lifetime_randomness,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_sub_emitter_mode: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_sub_emitter_mode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2399052877)!
        }
        }
    }()
    private func __getSubEmitterMode() -> Godot.ParticleProcessMaterial.SubEmitterMode {
        var __temporary = Godot.ParticleProcessMaterial.SubEmitterMode.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_sub_emitter_mode,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.ParticleProcessMaterial.SubEmitterMode(rawValue: __temporary)!
    }

    private static var __method_binding_set_sub_emitter_mode: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_sub_emitter_mode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2161806672)!
        }
        }
    }()
    private func __setSubEmitterMode(_ mode: Godot.ParticleProcessMaterial.SubEmitterMode) {
        withUnsafePointer(to: mode) { (__ptr_mode) in
            withUnsafeArgumentPackPointer(__ptr_mode) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_sub_emitter_mode,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_sub_emitter_frequency: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_sub_emitter_frequency").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getSubEmitterFrequency() -> Double {
        var __temporary = Double()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_sub_emitter_frequency,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_sub_emitter_frequency: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_sub_emitter_frequency").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setSubEmitterFrequency(hz: Double) {
        withUnsafePointer(to: hz) { (__ptr_hz) in
            withUnsafeArgumentPackPointer(__ptr_hz) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_sub_emitter_frequency,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_sub_emitter_amount_at_end: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_sub_emitter_amount_at_end").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getSubEmitterAmountAtEnd() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_sub_emitter_amount_at_end,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_sub_emitter_amount_at_end: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_sub_emitter_amount_at_end").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setSubEmitterAmountAtEnd(amount: Int32) {
        withUnsafePointer(to: amount) { (__ptr_amount) in
            withUnsafeArgumentPackPointer(__ptr_amount) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_sub_emitter_amount_at_end,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_sub_emitter_amount_at_collision: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_sub_emitter_amount_at_collision").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getSubEmitterAmountAtCollision() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_sub_emitter_amount_at_collision,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_sub_emitter_amount_at_collision: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_sub_emitter_amount_at_collision").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setSubEmitterAmountAtCollision(amount: Int32) {
        withUnsafePointer(to: amount) { (__ptr_amount) in
            withUnsafeArgumentPackPointer(__ptr_amount) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_sub_emitter_amount_at_collision,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_sub_emitter_keep_velocity: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_sub_emitter_keep_velocity").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getSubEmitterKeepVelocity() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_sub_emitter_keep_velocity,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_sub_emitter_keep_velocity: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_sub_emitter_keep_velocity").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setSubEmitterKeepVelocity(enable: Bool) {
        withUnsafePointer(to: enable) { (__ptr_enable) in
            withUnsafeArgumentPackPointer(__ptr_enable) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_sub_emitter_keep_velocity,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_set_attractor_interaction_enabled: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_attractor_interaction_enabled").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setAttractorInteractionEnabled(_ enabled: Bool) {
        withUnsafePointer(to: enabled) { (__ptr_enabled) in
            withUnsafeArgumentPackPointer(__ptr_enabled) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_attractor_interaction_enabled,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_is_attractor_interaction_enabled: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_attractor_interaction_enabled").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isAttractorInteractionEnabled() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_attractor_interaction_enabled,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_collision_mode: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_collision_mode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 653804659)!
        }
        }
    }()
    private func __setCollisionMode(_ mode: Godot.ParticleProcessMaterial.CollisionMode) {
        withUnsafePointer(to: mode) { (__ptr_mode) in
            withUnsafeArgumentPackPointer(__ptr_mode) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_collision_mode,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_collision_mode: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_collision_mode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 139371864)!
        }
        }
    }()
    private func __getCollisionMode() -> Godot.ParticleProcessMaterial.CollisionMode {
        var __temporary = Godot.ParticleProcessMaterial.CollisionMode.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_collision_mode,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.ParticleProcessMaterial.CollisionMode(rawValue: __temporary)!
    }

    private static var __method_binding_set_collision_use_scale: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_collision_use_scale").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setCollisionUseScale(radius: Bool) {
        withUnsafePointer(to: radius) { (__ptr_radius) in
            withUnsafeArgumentPackPointer(__ptr_radius) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_collision_use_scale,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_is_collision_using_scale: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_collision_using_scale").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isCollisionUsingScale() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_collision_using_scale,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_collision_friction: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_collision_friction").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setCollisionFriction(_ friction: Double) {
        withUnsafePointer(to: friction) { (__ptr_friction) in
            withUnsafeArgumentPackPointer(__ptr_friction) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_collision_friction,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_collision_friction: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_collision_friction").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getCollisionFriction() -> Double {
        var __temporary = Double()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_collision_friction,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_collision_bounce: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_collision_bounce").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setCollisionBounce(_ bounce: Double) {
        withUnsafePointer(to: bounce) { (__ptr_bounce) in
            withUnsafeArgumentPackPointer(__ptr_bounce) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_collision_bounce,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_collision_bounce: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_collision_bounce").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getCollisionBounce() -> Double {
        var __temporary = Double()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_collision_bounce,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    public var lifetimeRandomness: Double {
        get {
            __getLifetimeRandomness()
        }
        set {
            __setLifetimeRandomness(
                newValue
            )
        }
    }

    public var emissionShape: Godot.ParticleProcessMaterial.EmissionShape {
        get {
            __getEmissionShape()
        }
        set {
            __setEmissionShape(
                newValue
            )
        }
    }

    public var emissionSphereRadius: Double {
        get {
            __getEmissionSphereRadius()
        }
        set {
            __setEmissionSphereRadius(
                newValue
            )
        }
    }

    public var emissionBoxExtents: Godot.Vector3 {
        get {
            __getEmissionBoxExtents()
        }
        set {
            __setEmissionBoxExtents(
                newValue
            )
        }
    }

    public var emissionPointTexture: Godot.Texture2D? {
        get {
            __getEmissionPointTexture()
        }
        set {
            __setEmissionPointTexture(
                newValue
            )
        }
    }

    public var emissionNormalTexture: Godot.Texture2D? {
        get {
            __getEmissionNormalTexture()
        }
        set {
            __setEmissionNormalTexture(
                newValue
            )
        }
    }

    public var emissionColorTexture: Godot.Texture2D? {
        get {
            __getEmissionColorTexture()
        }
        set {
            __setEmissionColorTexture(
                newValue
            )
        }
    }

    public var emissionPointCount: Int32 {
        get {
            __getEmissionPointCount()
        }
        set {
            __setEmissionPointCount(
                newValue
            )
        }
    }

    public var emissionRingAxis: Godot.Vector3 {
        get {
            __getEmissionRingAxis()
        }
        set {
            __setEmissionRingAxis(
                newValue
            )
        }
    }

    public var emissionRingHeight: Double {
        get {
            __getEmissionRingHeight()
        }
        set {
            __setEmissionRingHeight(
                newValue
            )
        }
    }

    public var emissionRingRadius: Double {
        get {
            __getEmissionRingRadius()
        }
        set {
            __setEmissionRingRadius(
                newValue
            )
        }
    }

    public var emissionRingInnerRadius: Double {
        get {
            __getEmissionRingInnerRadius()
        }
        set {
            __setEmissionRingInnerRadius(
                newValue
            )
        }
    }

    public var particleFlagAlignY: Bool {
        get {
            __getParticleFlag(
                .init(rawValue: 0)!
            )
        }
    }

    public var particleFlagRotateY: Bool {
        get {
            __getParticleFlag(
                .init(rawValue: 1)!
            )
        }
    }

    public var particleFlagDisableZ: Bool {
        get {
            __getParticleFlag(
                .init(rawValue: 2)!
            )
        }
    }

    public var direction: Godot.Vector3 {
        get {
            __getDirection()
        }
        set {
            __setDirection(
                degrees: newValue
            )
        }
    }

    public var spread: Double {
        get {
            __getSpread()
        }
        set {
            __setSpread(
                degrees: newValue
            )
        }
    }

    public var flatness: Double {
        get {
            __getFlatness()
        }
        set {
            __setFlatness(
                amount: newValue
            )
        }
    }

    public var gravity: Godot.Vector3 {
        get {
            __getGravity()
        }
        set {
            __setGravity(
                accelVec: newValue
            )
        }
    }

    public var initialVelocityMin: Double {
        get {
            __getParamMin(
                param: .init(rawValue: 0)!
            )
        }
    }

    public var initialVelocityMax: Double {
        get {
            __getParamMax(
                param: .init(rawValue: 0)!
            )
        }
    }

    public var angularVelocityMin: Double {
        get {
            __getParamMin(
                param: .init(rawValue: 1)!
            )
        }
    }

    public var angularVelocityMax: Double {
        get {
            __getParamMax(
                param: .init(rawValue: 1)!
            )
        }
    }

    public var angularVelocityCurve: Godot.Texture2D? {
        get {
            __getParamTexture(
                param: .init(rawValue: 1)!
            )
        }
    }

    public var orbitVelocityMin: Double {
        get {
            __getParamMin(
                param: .init(rawValue: 2)!
            )
        }
    }

    public var orbitVelocityMax: Double {
        get {
            __getParamMax(
                param: .init(rawValue: 2)!
            )
        }
    }

    public var orbitVelocityCurve: Godot.Texture2D? {
        get {
            __getParamTexture(
                param: .init(rawValue: 2)!
            )
        }
    }

    public var linearAccelMin: Double {
        get {
            __getParamMin(
                param: .init(rawValue: 3)!
            )
        }
    }

    public var linearAccelMax: Double {
        get {
            __getParamMax(
                param: .init(rawValue: 3)!
            )
        }
    }

    public var linearAccelCurve: Godot.Texture2D? {
        get {
            __getParamTexture(
                param: .init(rawValue: 3)!
            )
        }
    }

    public var radialAccelMin: Double {
        get {
            __getParamMin(
                param: .init(rawValue: 4)!
            )
        }
    }

    public var radialAccelMax: Double {
        get {
            __getParamMax(
                param: .init(rawValue: 4)!
            )
        }
    }

    public var radialAccelCurve: Godot.Texture2D? {
        get {
            __getParamTexture(
                param: .init(rawValue: 4)!
            )
        }
    }

    public var tangentialAccelMin: Double {
        get {
            __getParamMin(
                param: .init(rawValue: 5)!
            )
        }
    }

    public var tangentialAccelMax: Double {
        get {
            __getParamMax(
                param: .init(rawValue: 5)!
            )
        }
    }

    public var tangentialAccelCurve: Godot.Texture2D? {
        get {
            __getParamTexture(
                param: .init(rawValue: 5)!
            )
        }
    }

    public var dampingMin: Double {
        get {
            __getParamMin(
                param: .init(rawValue: 6)!
            )
        }
    }

    public var dampingMax: Double {
        get {
            __getParamMax(
                param: .init(rawValue: 6)!
            )
        }
    }

    public var dampingCurve: Godot.Texture2D? {
        get {
            __getParamTexture(
                param: .init(rawValue: 6)!
            )
        }
    }

    public var angleMin: Double {
        get {
            __getParamMin(
                param: .init(rawValue: 7)!
            )
        }
    }

    public var angleMax: Double {
        get {
            __getParamMax(
                param: .init(rawValue: 7)!
            )
        }
    }

    public var angleCurve: Godot.Texture2D? {
        get {
            __getParamTexture(
                param: .init(rawValue: 7)!
            )
        }
    }

    public var scaleMin: Double {
        get {
            __getParamMin(
                param: .init(rawValue: 8)!
            )
        }
    }

    public var scaleMax: Double {
        get {
            __getParamMax(
                param: .init(rawValue: 8)!
            )
        }
    }

    public var scaleCurve: Godot.Texture2D? {
        get {
            __getParamTexture(
                param: .init(rawValue: 8)!
            )
        }
    }

    public var color: Godot.Color {
        get {
            __getColor()
        }
        set {
            __setColor(
                newValue
            )
        }
    }

    public var colorRamp: Godot.Texture2D? {
        get {
            __getColorRamp()
        }
        set {
            __setColorRamp(
                newValue
            )
        }
    }

    public var colorInitialRamp: Godot.Texture2D? {
        get {
            __getColorInitialRamp()
        }
        set {
            __setColorInitialRamp(
                newValue
            )
        }
    }

    public var hueVariationMin: Double {
        get {
            __getParamMin(
                param: .init(rawValue: 9)!
            )
        }
    }

    public var hueVariationMax: Double {
        get {
            __getParamMax(
                param: .init(rawValue: 9)!
            )
        }
    }

    public var hueVariationCurve: Godot.Texture2D? {
        get {
            __getParamTexture(
                param: .init(rawValue: 9)!
            )
        }
    }

    public var turbulenceEnabled: Bool {
        get {
            __getTurbulenceEnabled()
        }
        set {
            __setTurbulenceEnabled(
                newValue
            )
        }
    }

    public var turbulenceNoiseStrength: Double {
        get {
            __getTurbulenceNoiseStrength()
        }
        set {
            __setTurbulenceNoiseStrength(
                newValue
            )
        }
    }

    public var turbulenceNoiseScale: Double {
        get {
            __getTurbulenceNoiseScale()
        }
        set {
            __setTurbulenceNoiseScale(
                newValue
            )
        }
    }

    public var turbulenceNoiseSpeed: Godot.Vector3 {
        get {
            __getTurbulenceNoiseSpeed()
        }
        set {
            __setTurbulenceNoiseSpeed(
                newValue
            )
        }
    }

    public var turbulenceNoiseSpeedRandom: Double {
        get {
            __getTurbulenceNoiseSpeedRandom()
        }
        set {
            __setTurbulenceNoiseSpeedRandom(
                newValue
            )
        }
    }

    public var turbulenceInfluenceMin: Double {
        get {
            __getParamMin(
                param: .init(rawValue: 13)!
            )
        }
    }

    public var turbulenceInfluenceMax: Double {
        get {
            __getParamMax(
                param: .init(rawValue: 13)!
            )
        }
    }

    public var turbulenceInitialDisplacementMin: Double {
        get {
            __getParamMin(
                param: .init(rawValue: 14)!
            )
        }
    }

    public var turbulenceInitialDisplacementMax: Double {
        get {
            __getParamMax(
                param: .init(rawValue: 14)!
            )
        }
    }

    public var turbulenceInfluenceOverLife: Godot.Texture2D? {
        get {
            __getParamTexture(
                param: .init(rawValue: 12)!
            )
        }
    }

    public var animSpeedMin: Double {
        get {
            __getParamMin(
                param: .init(rawValue: 10)!
            )
        }
    }

    public var animSpeedMax: Double {
        get {
            __getParamMax(
                param: .init(rawValue: 10)!
            )
        }
    }

    public var animSpeedCurve: Godot.Texture2D? {
        get {
            __getParamTexture(
                param: .init(rawValue: 10)!
            )
        }
    }

    public var animOffsetMin: Double {
        get {
            __getParamMin(
                param: .init(rawValue: 11)!
            )
        }
    }

    public var animOffsetMax: Double {
        get {
            __getParamMax(
                param: .init(rawValue: 11)!
            )
        }
    }

    public var animOffsetCurve: Godot.Texture2D? {
        get {
            __getParamTexture(
                param: .init(rawValue: 11)!
            )
        }
    }

    public var subEmitterMode: Godot.ParticleProcessMaterial.SubEmitterMode {
        get {
            __getSubEmitterMode()
        }
        set {
            __setSubEmitterMode(
                newValue
            )
        }
    }

    public var subEmitterFrequency: Double {
        get {
            __getSubEmitterFrequency()
        }
        set {
            __setSubEmitterFrequency(
                hz: newValue
            )
        }
    }

    public var subEmitterAmountAtEnd: Int32 {
        get {
            __getSubEmitterAmountAtEnd()
        }
        set {
            __setSubEmitterAmountAtEnd(
                amount: newValue
            )
        }
    }

    public var subEmitterAmountAtCollision: Int32 {
        get {
            __getSubEmitterAmountAtCollision()
        }
        set {
            __setSubEmitterAmountAtCollision(
                amount: newValue
            )
        }
    }

    public var subEmitterKeepVelocity: Bool {
        get {
            __getSubEmitterKeepVelocity()
        }
        set {
            __setSubEmitterKeepVelocity(
                enable: newValue
            )
        }
    }

    public var isAttractorInteractionEnabled: Bool {
        get {
            __isAttractorInteractionEnabled()
        }
        set {
            __setAttractorInteractionEnabled(
                newValue
            )
        }
    }

    public var collisionMode: Godot.ParticleProcessMaterial.CollisionMode {
        get {
            __getCollisionMode()
        }
        set {
            __setCollisionMode(
                newValue
            )
        }
    }

    public var collisionFriction: Double {
        get {
            __getCollisionFriction()
        }
        set {
            __setCollisionFriction(
                newValue
            )
        }
    }

    public var collisionBounce: Double {
        get {
            __getCollisionBounce()
        }
        set {
            __setCollisionBounce(
                newValue
            )
        }
    }

    public var isCollisionUsingScale: Bool {
        get {
            __isCollisionUsingScale()
        }
        set {
            __setCollisionUseScale(
                radius: newValue
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