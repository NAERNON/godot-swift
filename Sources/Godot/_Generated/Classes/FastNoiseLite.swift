//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class FastNoiseLite: Noise {
    public enum NoiseType: UInt32, GodotEnum {
        case value = 5
        case valueCubic = 4
        case perlin = 3
        case cellular = 2
        case simplex = 0
        case simplexSmooth = 1
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Simplex", 0),
            ("Simplex Smooth", 1),
            ("Cellular", 2),
            ("Perlin", 3),
            ("Value Cubic", 4),
            ("Value", 5),]
        }
    }
    public enum FractalType: UInt32, GodotEnum {
        case none = 0
        case fbm = 1
        case ridged = 2
        case pingPong = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("None", 0),
            ("Fbm", 1),
            ("Ridged", 2),
            ("Ping Pong", 3),]
        }
    }
    public enum CellularDistanceFunction: UInt32, GodotEnum {
        case euclidean = 0
        case euclideanSquared = 1
        case manhattan = 2
        case hybrid = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Euclidean", 0),
            ("Euclidean Squared", 1),
            ("Manhattan", 2),
            ("Hybrid", 3),]
        }
    }
    public enum CellularReturnType: UInt32, GodotEnum {
        case cellValue = 0
        case distance = 1
        case distance2 = 2
        case distance2Add = 3
        case distance2Sub = 4
        case distance2Mul = 5
        case distance2Div = 6
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Cell Value", 0),
            ("Distance", 1),
            ("Distance2", 2),
            ("Distance2 Add", 3),
            ("Distance2 Sub", 4),
            ("Distance2 Mul", 5),
            ("Distance2 Div", 6),]
        }
    }
    public enum DomainWarpType: UInt32, GodotEnum {
        case simplex = 0
        case simplexReduced = 1
        case basicGrid = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Simplex", 0),
            ("Simplex Reduced", 1),
            ("Basic Grid", 2),]
        }
    }
    public enum DomainWarpFractalType: UInt32, GodotEnum {
        case none = 0
        case progressive = 1
        case independent = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("None", 0),
            ("Progressive", 1),
            ("Independent", 2),]
        }
    }

    private static var __method_binding_set_noise_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_noise_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2624461392)!
        }
        }
    }()
    private func __setNoiseType(_ type: Godot.FastNoiseLite.NoiseType) {
        type.withGodotUnsafeRawPointer { __ptr_type in
        withUnsafeArgumentPackPointer(__ptr_type) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_noise_type,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_noise_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_noise_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1458108610)!
        }
        }
    }()
    private func __getNoiseType() -> Godot.FastNoiseLite.NoiseType {
        Godot.FastNoiseLite.NoiseType.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_noise_type,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_seed: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_seed").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setSeed(_ seed: Int32) {
        seed.withGodotUnsafeRawPointer { __ptr_seed in
        withUnsafeArgumentPackPointer(__ptr_seed) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_seed,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_seed: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_seed").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getSeed() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_seed,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_frequency: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_frequency").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setFrequency(freq: Double) {
        freq.withGodotUnsafeRawPointer { __ptr_freq in
        withUnsafeArgumentPackPointer(__ptr_freq) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_frequency,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_frequency: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_frequency").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getFrequency() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_frequency,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_offset").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    private func __setOffset(_ offset: Godot.Vector3) {
        offset.withGodotUnsafeRawPointer { __ptr_offset in
        withUnsafeArgumentPackPointer(__ptr_offset) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_offset,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_offset").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    private func __getOffset() -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_offset,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_fractal_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_fractal_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4132731174)!
        }
        }
    }()
    private func __setFractalType(_ type: Godot.FastNoiseLite.FractalType) {
        type.withGodotUnsafeRawPointer { __ptr_type in
        withUnsafeArgumentPackPointer(__ptr_type) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_fractal_type,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_fractal_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_fractal_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1036889279)!
        }
        }
    }()
    private func __getFractalType() -> Godot.FastNoiseLite.FractalType {
        Godot.FastNoiseLite.FractalType.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_fractal_type,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_fractal_octaves: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_fractal_octaves").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setFractalOctaves(octaveCount: Int32) {
        octaveCount.withGodotUnsafeRawPointer { __ptr_octaveCount in
        withUnsafeArgumentPackPointer(__ptr_octaveCount) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_fractal_octaves,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_fractal_octaves: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_fractal_octaves").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getFractalOctaves() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_fractal_octaves,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_fractal_lacunarity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_fractal_lacunarity").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setFractalLacunarity(_ lacunarity: Double) {
        lacunarity.withGodotUnsafeRawPointer { __ptr_lacunarity in
        withUnsafeArgumentPackPointer(__ptr_lacunarity) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_fractal_lacunarity,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_fractal_lacunarity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_fractal_lacunarity").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getFractalLacunarity() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_fractal_lacunarity,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_fractal_gain: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_fractal_gain").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setFractalGain(_ gain: Double) {
        gain.withGodotUnsafeRawPointer { __ptr_gain in
        withUnsafeArgumentPackPointer(__ptr_gain) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_fractal_gain,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_fractal_gain: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_fractal_gain").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getFractalGain() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_fractal_gain,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_fractal_weighted_strength: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_fractal_weighted_strength").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setFractalWeightedStrength(_ weightedStrength: Double) {
        weightedStrength.withGodotUnsafeRawPointer { __ptr_weightedStrength in
        withUnsafeArgumentPackPointer(__ptr_weightedStrength) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_fractal_weighted_strength,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_fractal_weighted_strength: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_fractal_weighted_strength").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getFractalWeightedStrength() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_fractal_weighted_strength,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_fractal_ping_pong_strength: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_fractal_ping_pong_strength").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setFractalPingPongStrength(_ pingPongStrength: Double) {
        pingPongStrength.withGodotUnsafeRawPointer { __ptr_pingPongStrength in
        withUnsafeArgumentPackPointer(__ptr_pingPongStrength) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_fractal_ping_pong_strength,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_fractal_ping_pong_strength: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_fractal_ping_pong_strength").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getFractalPingPongStrength() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_fractal_ping_pong_strength,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_cellular_distance_function: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_cellular_distance_function").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1006013267)!
        }
        }
    }()
    private func __setCellularDistanceFunction(`func`: Godot.FastNoiseLite.CellularDistanceFunction) {
        `func`.withGodotUnsafeRawPointer { __ptr_func in
        withUnsafeArgumentPackPointer(__ptr_func) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_cellular_distance_function,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_cellular_distance_function: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_cellular_distance_function").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2021274088)!
        }
        }
    }()
    private func __getCellularDistanceFunction() -> Godot.FastNoiseLite.CellularDistanceFunction {
        Godot.FastNoiseLite.CellularDistanceFunction.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_cellular_distance_function,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_cellular_jitter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_cellular_jitter").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setCellularJitter(_ jitter: Double) {
        jitter.withGodotUnsafeRawPointer { __ptr_jitter in
        withUnsafeArgumentPackPointer(__ptr_jitter) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_cellular_jitter,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_cellular_jitter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_cellular_jitter").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getCellularJitter() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_cellular_jitter,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_cellular_return_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_cellular_return_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2654169698)!
        }
        }
    }()
    private func __setCellularReturnType(ret: Godot.FastNoiseLite.CellularReturnType) {
        ret.withGodotUnsafeRawPointer { __ptr_ret in
        withUnsafeArgumentPackPointer(__ptr_ret) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_cellular_return_type,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_cellular_return_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_cellular_return_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3699796343)!
        }
        }
    }()
    private func __getCellularReturnType() -> Godot.FastNoiseLite.CellularReturnType {
        Godot.FastNoiseLite.CellularReturnType.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_cellular_return_type,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_domain_warp_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_domain_warp_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setDomainWarpEnabled(_ domainWarpEnabled: Bool) {
        domainWarpEnabled.withGodotUnsafeRawPointer { __ptr_domainWarpEnabled in
        withUnsafeArgumentPackPointer(__ptr_domainWarpEnabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_domain_warp_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_domain_warp_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_domain_warp_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isDomainWarpEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_domain_warp_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_domain_warp_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_domain_warp_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3629692980)!
        }
        }
    }()
    private func __setDomainWarpType(_ domainWarpType: Godot.FastNoiseLite.DomainWarpType) {
        domainWarpType.withGodotUnsafeRawPointer { __ptr_domainWarpType in
        withUnsafeArgumentPackPointer(__ptr_domainWarpType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_domain_warp_type,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_domain_warp_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_domain_warp_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2980162020)!
        }
        }
    }()
    private func __getDomainWarpType() -> Godot.FastNoiseLite.DomainWarpType {
        Godot.FastNoiseLite.DomainWarpType.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_domain_warp_type,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_domain_warp_amplitude: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_domain_warp_amplitude").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setDomainWarpAmplitude(_ domainWarpAmplitude: Double) {
        domainWarpAmplitude.withGodotUnsafeRawPointer { __ptr_domainWarpAmplitude in
        withUnsafeArgumentPackPointer(__ptr_domainWarpAmplitude) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_domain_warp_amplitude,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_domain_warp_amplitude: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_domain_warp_amplitude").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getDomainWarpAmplitude() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_domain_warp_amplitude,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_domain_warp_frequency: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_domain_warp_frequency").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setDomainWarpFrequency(_ domainWarpFrequency: Double) {
        domainWarpFrequency.withGodotUnsafeRawPointer { __ptr_domainWarpFrequency in
        withUnsafeArgumentPackPointer(__ptr_domainWarpFrequency) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_domain_warp_frequency,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_domain_warp_frequency: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_domain_warp_frequency").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getDomainWarpFrequency() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_domain_warp_frequency,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_domain_warp_fractal_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_domain_warp_fractal_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3999408287)!
        }
        }
    }()
    private func __setDomainWarpFractalType(_ domainWarpFractalType: Godot.FastNoiseLite.DomainWarpFractalType) {
        domainWarpFractalType.withGodotUnsafeRawPointer { __ptr_domainWarpFractalType in
        withUnsafeArgumentPackPointer(__ptr_domainWarpFractalType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_domain_warp_fractal_type,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_domain_warp_fractal_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_domain_warp_fractal_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 407716934)!
        }
        }
    }()
    private func __getDomainWarpFractalType() -> Godot.FastNoiseLite.DomainWarpFractalType {
        Godot.FastNoiseLite.DomainWarpFractalType.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_domain_warp_fractal_type,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_domain_warp_fractal_octaves: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_domain_warp_fractal_octaves").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setDomainWarpFractalOctaves(domainWarpOctaveCount: Int32) {
        domainWarpOctaveCount.withGodotUnsafeRawPointer { __ptr_domainWarpOctaveCount in
        withUnsafeArgumentPackPointer(__ptr_domainWarpOctaveCount) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_domain_warp_fractal_octaves,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_domain_warp_fractal_octaves: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_domain_warp_fractal_octaves").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getDomainWarpFractalOctaves() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_domain_warp_fractal_octaves,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_domain_warp_fractal_lacunarity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_domain_warp_fractal_lacunarity").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setDomainWarpFractalLacunarity(domainWarpLacunarity: Double) {
        domainWarpLacunarity.withGodotUnsafeRawPointer { __ptr_domainWarpLacunarity in
        withUnsafeArgumentPackPointer(__ptr_domainWarpLacunarity) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_domain_warp_fractal_lacunarity,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_domain_warp_fractal_lacunarity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_domain_warp_fractal_lacunarity").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getDomainWarpFractalLacunarity() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_domain_warp_fractal_lacunarity,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_domain_warp_fractal_gain: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_domain_warp_fractal_gain").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setDomainWarpFractalGain(domainWarpGain: Double) {
        domainWarpGain.withGodotUnsafeRawPointer { __ptr_domainWarpGain in
        withUnsafeArgumentPackPointer(__ptr_domainWarpGain) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_domain_warp_fractal_gain,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_domain_warp_fractal_gain: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_domain_warp_fractal_gain").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getDomainWarpFractalGain() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_domain_warp_fractal_gain,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var noiseType: Godot.FastNoiseLite.NoiseType {
        get {
            __getNoiseType()
        }
        set {
            __setNoiseType(
                newValue
            )
        }
    }

    public var seed: Int32 {
        get {
            __getSeed()
        }
        set {
            __setSeed(
                newValue
            )
        }
    }

    public var frequency: Double {
        get {
            __getFrequency()
        }
        set {
            __setFrequency(
                freq: newValue
            )
        }
    }

    public var offset: Godot.Vector3 {
        get {
            __getOffset()
        }
        set {
            __setOffset(
                newValue
            )
        }
    }

    public var fractalType: Godot.FastNoiseLite.FractalType {
        get {
            __getFractalType()
        }
        set {
            __setFractalType(
                newValue
            )
        }
    }

    public var fractalOctaves: Int32 {
        get {
            __getFractalOctaves()
        }
        set {
            __setFractalOctaves(
                octaveCount: newValue
            )
        }
    }

    public var fractalLacunarity: Double {
        get {
            __getFractalLacunarity()
        }
        set {
            __setFractalLacunarity(
                newValue
            )
        }
    }

    public var fractalGain: Double {
        get {
            __getFractalGain()
        }
        set {
            __setFractalGain(
                newValue
            )
        }
    }

    public var fractalWeightedStrength: Double {
        get {
            __getFractalWeightedStrength()
        }
        set {
            __setFractalWeightedStrength(
                newValue
            )
        }
    }

    public var fractalPingPongStrength: Double {
        get {
            __getFractalPingPongStrength()
        }
        set {
            __setFractalPingPongStrength(
                newValue
            )
        }
    }

    public var cellularDistanceFunction: Godot.FastNoiseLite.CellularDistanceFunction {
        get {
            __getCellularDistanceFunction()
        }
        set {
            __setCellularDistanceFunction(
                func: newValue
            )
        }
    }

    public var cellularJitter: Double {
        get {
            __getCellularJitter()
        }
        set {
            __setCellularJitter(
                newValue
            )
        }
    }

    public var cellularReturnType: Godot.FastNoiseLite.CellularReturnType {
        get {
            __getCellularReturnType()
        }
        set {
            __setCellularReturnType(
                ret: newValue
            )
        }
    }

    public var isDomainWarpEnabled: Bool {
        get {
            __isDomainWarpEnabled()
        }
        set {
            __setDomainWarpEnabled(
                newValue
            )
        }
    }

    public var domainWarpType: Godot.FastNoiseLite.DomainWarpType {
        get {
            __getDomainWarpType()
        }
        set {
            __setDomainWarpType(
                newValue
            )
        }
    }

    public var domainWarpAmplitude: Double {
        get {
            __getDomainWarpAmplitude()
        }
        set {
            __setDomainWarpAmplitude(
                newValue
            )
        }
    }

    public var domainWarpFrequency: Double {
        get {
            __getDomainWarpFrequency()
        }
        set {
            __setDomainWarpFrequency(
                newValue
            )
        }
    }

    public var domainWarpFractalType: Godot.FastNoiseLite.DomainWarpFractalType {
        get {
            __getDomainWarpFractalType()
        }
        set {
            __setDomainWarpFractalType(
                newValue
            )
        }
    }

    public var domainWarpFractalOctaves: Int32 {
        get {
            __getDomainWarpFractalOctaves()
        }
        set {
            __setDomainWarpFractalOctaves(
                domainWarpOctaveCount: newValue
            )
        }
    }

    public var domainWarpFractalLacunarity: Double {
        get {
            __getDomainWarpFractalLacunarity()
        }
        set {
            __setDomainWarpFractalLacunarity(
                domainWarpLacunarity: newValue
            )
        }
    }

    public var domainWarpFractalGain: Double {
        get {
            __getDomainWarpFractalGain()
        }
        set {
            __setDomainWarpFractalGain(
                domainWarpGain: newValue
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