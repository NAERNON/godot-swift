//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class AudioEffectInstance: RefCounted {
    open func _process(
        srcBuffer: UnsafeRawPointer,
        dstBuffer: UnsafeMutablePointer<AudioFrame>,
        frameCount: Int32
    ) {
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
            Unmanaged<AudioEffectInstance>.fromOpaque(instancePtr).takeUnretainedValue()
        ._process(
            srcBuffer: UnsafeRawPointer.fromGodotUnsafePointer(args[0]!),
            dstBuffer: UnsafeMutablePointer<AudioFrame>.fromGodotUnsafePointer(args[1]!),
            frameCount: Int32.fromGodotUnsafePointer(args[2]!)
        )}
        let _process_silence_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<AudioEffectInstance>.fromOpaque(instancePtr).takeUnretainedValue()
        ._processSilence()
        .copyToGodot(unsafePointer: returnPtr!)}
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