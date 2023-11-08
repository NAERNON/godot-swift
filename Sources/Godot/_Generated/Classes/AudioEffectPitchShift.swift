//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class AudioEffectPitchShift: AudioEffect {
    public enum FFTSize: UInt32, GodotEnum {
        case fftSize256 = 0
        case fftSize512 = 1
        case fftSize1024 = 2
        case fftSize2048 = 3
        case fftSize4096 = 4
        case max = 5
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Fft Size256", 0),
            ("Fft Size512", 1),
            ("Fft Size1024", 2),
            ("Fft Size2048", 3),
            ("Fft Size4096", 4),
            ("Max", 5),]
        }
    }

    private static var __method_binding_set_pitch_scale: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_pitch_scale").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setPitchScale(rate: Double) {
        withUnsafePointer(to: rate) { (__ptr_rate) in
            withUnsafeArgumentPackPointer(__ptr_rate) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_pitch_scale,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_pitch_scale: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_pitch_scale").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getPitchScale() -> Double {
        var __temporary = Double()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_pitch_scale,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_oversampling: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_oversampling").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setOversampling(amount: Int32) {
        withUnsafePointer(to: amount) { (__ptr_amount) in
            withUnsafeArgumentPackPointer(__ptr_amount) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_oversampling,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_oversampling: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_oversampling").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getOversampling() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_oversampling,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_fft_size: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_fft_size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2323518741)!
        }
        }
    }()
    private func __setFftSize(_ size: Godot.AudioEffectPitchShift.FFTSize) {
        withUnsafePointer(to: size) { (__ptr_size) in
            withUnsafeArgumentPackPointer(__ptr_size) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_fft_size,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_fft_size: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_fft_size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2361246789)!
        }
        }
    }()
    private func __getFftSize() -> Godot.AudioEffectPitchShift.FFTSize {
        var __temporary = Godot.AudioEffectPitchShift.FFTSize.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_fft_size,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.AudioEffectPitchShift.FFTSize(rawValue: __temporary)!
    }

    public var pitchScale: Double {
        get {
            __getPitchScale()
        }
        set {
            __setPitchScale(
                rate: newValue
            )
        }
    }

    public var oversampling: Int32 {
        get {
            __getOversampling()
        }
        set {
            __setOversampling(
                amount: newValue
            )
        }
    }

    public var fftSize: Godot.AudioEffectPitchShift.FFTSize {
        get {
            __getFftSize()
        }
        set {
            __setFftSize(
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