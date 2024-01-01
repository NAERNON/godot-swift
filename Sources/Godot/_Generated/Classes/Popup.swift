//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class Popup: Window {
    public struct PopupHideSignalInput: Godot.SignalInput {
        fileprivate init() {

        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName)
        }
    }
    public func popupHide() {
        _ = popupHideSignal.emit(.init())
    }
    public lazy var popupHideSignal: Godot.SignalEmitter<PopupHideSignalInput> = {
        .init(object: self, signalName: "popup_hide") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<PopupHideSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<PopupHideSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<PopupHideSignalInput>>.fromOpaque(callablePtr!)
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