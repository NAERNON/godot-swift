//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class CanvasItemMaterial: Material {
    public enum BlendMode: UInt32, GodotEnum {
        case mix = 0
        case add = 1
        case sub = 2
        case mul = 3
        case premultAlpha = 4
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Mix", 0),
            ("Add", 1),
            ("Sub", 2),
            ("Mul", 3),
            ("Premult Alpha", 4),]
        }
    }
    public enum LightMode: UInt32, GodotEnum {
        case normal = 0
        case unshaded = 1
        case lightOnly = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Normal", 0),
            ("Unshaded", 1),
            ("Light Only", 2),]
        }
    }

    private static var __method_binding_set_blend_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_blend_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1786054936)!
        }
        }
    }()
    private func __setBlendMode(_ blendMode: Godot.CanvasItemMaterial.BlendMode) {
        blendMode.withGodotUnsafeRawPointer { __ptr_blendMode in
        withUnsafeArgumentPackPointer(__ptr_blendMode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_blend_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_blend_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_blend_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3318684035)!
        }
        }
    }()
    private func __getBlendMode() -> Godot.CanvasItemMaterial.BlendMode {
        Godot.CanvasItemMaterial.BlendMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_blend_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_light_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_light_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 628074070)!
        }
        }
    }()
    private func __setLightMode(_ lightMode: Godot.CanvasItemMaterial.LightMode) {
        lightMode.withGodotUnsafeRawPointer { __ptr_lightMode in
        withUnsafeArgumentPackPointer(__ptr_lightMode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_light_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_light_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_light_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3863292382)!
        }
        }
    }()
    private func __getLightMode() -> Godot.CanvasItemMaterial.LightMode {
        Godot.CanvasItemMaterial.LightMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_light_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_particles_animation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_particles_animation").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setParticlesAnimation(particlesAnim: Bool) {
        particlesAnim.withGodotUnsafeRawPointer { __ptr_particlesAnim in
        withUnsafeArgumentPackPointer(__ptr_particlesAnim) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_particles_animation,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_particles_animation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_particles_animation").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getParticlesAnimation() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_particles_animation,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_particles_anim_h_frames: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_particles_anim_h_frames").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setParticlesAnimHFrames(_ frames: Int32) {
        frames.withGodotUnsafeRawPointer { __ptr_frames in
        withUnsafeArgumentPackPointer(__ptr_frames) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_particles_anim_h_frames,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_particles_anim_h_frames: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_particles_anim_h_frames").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getParticlesAnimHFrames() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_particles_anim_h_frames,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_particles_anim_v_frames: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_particles_anim_v_frames").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setParticlesAnimVFrames(_ frames: Int32) {
        frames.withGodotUnsafeRawPointer { __ptr_frames in
        withUnsafeArgumentPackPointer(__ptr_frames) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_particles_anim_v_frames,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_particles_anim_v_frames: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_particles_anim_v_frames").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getParticlesAnimVFrames() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_particles_anim_v_frames,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_particles_anim_loop: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_particles_anim_loop").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setParticlesAnimLoop(_ loop: Bool) {
        loop.withGodotUnsafeRawPointer { __ptr_loop in
        withUnsafeArgumentPackPointer(__ptr_loop) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_particles_anim_loop,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_particles_anim_loop: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_particles_anim_loop").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getParticlesAnimLoop() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_particles_anim_loop,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var blendMode: Godot.CanvasItemMaterial.BlendMode {
        get {
            __getBlendMode()
        }
        set {
            __setBlendMode(
                newValue
            )
        }
    }

    public var lightMode: Godot.CanvasItemMaterial.LightMode {
        get {
            __getLightMode()
        }
        set {
            __setLightMode(
                newValue
            )
        }
    }

    public var particlesAnimation: Bool {
        get {
            __getParticlesAnimation()
        }
        set {
            __setParticlesAnimation(
                particlesAnim: newValue
            )
        }
    }

    public var particlesAnimHFrames: Int32 {
        get {
            __getParticlesAnimHFrames()
        }
        set {
            __setParticlesAnimHFrames(
                newValue
            )
        }
    }

    public var particlesAnimVFrames: Int32 {
        get {
            __getParticlesAnimVFrames()
        }
        set {
            __setParticlesAnimVFrames(
                newValue
            )
        }
    }

    public var particlesAnimLoop: Bool {
        get {
            __getParticlesAnimLoop()
        }
        set {
            __setParticlesAnimLoop(
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