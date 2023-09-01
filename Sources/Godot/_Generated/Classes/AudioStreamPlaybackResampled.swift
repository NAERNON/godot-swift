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
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "begin_resample").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func beginResample() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_begin_resample,
                __ptr_self,
                nil,
                nil
            )
        }
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
            let instance = Unmanaged<AudioStreamPlaybackResampled> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._mixResampled(
            dstBuffer: args[0]!.load(as: UnsafeMutablePointer<AudioFrame> .self),
            frameCount: args[1]!.load(as: Int32.self)
        )
        returnPtr!.assumingMemoryBound(to: Int32.self).pointee = returnValue}
        let _get_stream_sampling_rate_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<AudioStreamPlaybackResampled> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getStreamSamplingRate()
        returnPtr!.assumingMemoryBound(to: Double.self).pointee = returnValue}
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