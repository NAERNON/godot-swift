//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class Tweener: RefCounted {
    public func finished() {
        _ = finishedSignal.emit()
    }
    public lazy var finishedSignal: Godot.EmptySignalEmitter = {
        .init(object: self, signalName: "finished") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.EmptySignalReceiver>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call()
        } freeFunc: { callablePtr in
            Unmanaged<Godot.EmptySignalReceiver>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.EmptySignalReceiver>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

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