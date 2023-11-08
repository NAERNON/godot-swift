//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class AudioEffectSpectrumAnalyzer: AudioEffect {
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

    private static var __method_binding_set_buffer_length: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_buffer_length").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setBufferLength(seconds: Double) {
        withUnsafePointer(to: seconds) { (__ptr_seconds) in
            withUnsafeArgumentPackPointer(__ptr_seconds) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_buffer_length,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_buffer_length: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_buffer_length").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getBufferLength() -> Double {
        var __temporary = Double()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_buffer_length,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_tap_back_pos: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tap_back_pos").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setTapBackPos(seconds: Double) {
        withUnsafePointer(to: seconds) { (__ptr_seconds) in
            withUnsafeArgumentPackPointer(__ptr_seconds) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_tap_back_pos,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_tap_back_pos: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tap_back_pos").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getTapBackPos() -> Double {
        var __temporary = Double()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_tap_back_pos,
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
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1202879215)!
        }
        }
    }()
    private func __setFftSize(_ size: Godot.AudioEffectSpectrumAnalyzer.FFTSize) {
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
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3925405343)!
        }
        }
    }()
    private func __getFftSize() -> Godot.AudioEffectSpectrumAnalyzer.FFTSize {
        var __temporary = Godot.AudioEffectSpectrumAnalyzer.FFTSize.RawValue(0)
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
        return Godot.AudioEffectSpectrumAnalyzer.FFTSize(rawValue: __temporary)!
    }

    public var bufferLength: Double {
        get {
            __getBufferLength()
        }
        set {
            __setBufferLength(
                seconds: newValue
            )
        }
    }

    public var tapBackPos: Double {
        get {
            __getTapBackPos()
        }
        set {
            __setTapBackPos(
                seconds: newValue
            )
        }
    }

    public var fftSize: Godot.AudioEffectSpectrumAnalyzer.FFTSize {
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