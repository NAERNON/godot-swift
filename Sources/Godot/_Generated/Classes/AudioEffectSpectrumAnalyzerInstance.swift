//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class AudioEffectSpectrumAnalyzerInstance: AudioEffectInstance {
    public enum MagnitudeMode: UInt32, GodotEnum {
        case average = 0
        case max = 1
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Average", 0),
            ("Max", 1),]
        }
    }

    private static var __method_binding_get_magnitude_for_frequency_range: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_magnitude_for_frequency_range").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2693213071)!
        }
        }
    }()
    public func magnitudeForFrequencyRange(fromHz: Double, toHz: Double, mode: Godot.AudioEffectSpectrumAnalyzerInstance.MagnitudeMode = AudioEffectSpectrumAnalyzerInstance.MagnitudeMode(rawValue: 1)!) -> Godot.Vector2 {
        var __temporary = Godot.Vector2()
        withUnsafePointer(to: fromHz) { (__ptr_fromHz) in
            withUnsafePointer(to: toHz) { (__ptr_toHz) in
                withUnsafePointer(to: mode) { (__ptr_mode) in
                    withUnsafeArgumentPackPointer(__ptr_fromHz, __ptr_toHz, __ptr_mode) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_get_magnitude_for_frequency_range,
                                    __ptr_self,
                                    __accessPtr,
                                    __ptr___temporary
                                )
                            }
                        }
                    }
                }
            }
        }
        return __temporary
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