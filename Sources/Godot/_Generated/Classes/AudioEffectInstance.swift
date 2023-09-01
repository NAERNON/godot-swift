//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class AudioEffectInstance: RefCounted {
    open func _process(srcBuffer: UnsafeRawPointer, dstBuffer: UnsafeMutablePointer<AudioFrame>, frameCount: Int32) {
    }

    open func _processSilence() -> Bool {
        Bool()
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _process_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<AudioEffectInstance> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._process(
            srcBuffer: args[0]!.load(as: UnsafeRawPointer.self),
            dstBuffer: args[1]!.load(as: UnsafeMutablePointer<AudioFrame> .self),
            frameCount: args[2]!.load(as: Int32.self)
        )}
        let _process_silence_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<AudioEffectInstance> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._processSilence()
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        _virtualFunctions = [
            "_process" : ("_process", _process_call),
            "_processSilence" : ("_process_silence", _process_silence_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }