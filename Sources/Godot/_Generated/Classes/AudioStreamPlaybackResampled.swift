//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class AudioStreamPlaybackResampled: AudioStreamPlayback {
    open func _mixResampled(dstBuffer: UnsafeMutablePointer<AudioFrame>, frameCount: Int32) -> Int32 {
        Int32()
    }

    open func _getStreamSamplingRate() -> Double {
        Double()
    }

    private static var __method_binding_begin_resample: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "begin_resample").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func beginResample() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_begin_resample,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _mix_resampled_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<AudioStreamPlaybackResampled>.fromOpaque(instancePtr).takeUnretainedValue()
        ._mixResampled(
            dstBuffer: UnsafeMutablePointer<AudioFrame>.fromGodotUnsafePointer(args[0]!),
            frameCount: Int32.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_stream_sampling_rate_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<AudioStreamPlaybackResampled>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getStreamSamplingRate()
        .copyToGodot(unsafePointer: returnPtr!)}
        _virtualFunctions = [
            "_mixResampled" : ("_mix_resampled", _mix_resampled_call),
            "_getStreamSamplingRate" : ("_get_stream_sampling_rate", _get_stream_sampling_rate_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }