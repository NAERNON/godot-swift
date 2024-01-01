//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class ScriptCreateDialog: ConfirmationDialog {
    public struct ScriptCreatedSignalInput: Godot.SignalInput {
        public let script: Godot.Script?
        fileprivate init(script: Godot.Script?) {
            self.script = script
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, script)
        }
    }
    public func scriptCreated(script: Godot.Script?) {
        _ = scriptCreatedSignal.emit(.init(script: script))
    }
    public lazy var scriptCreatedSignal: Godot.SignalEmitter<ScriptCreatedSignalInput> = {
        .init(object: self, signalName: "script_created") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<ScriptCreatedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(script: Godot.Script?.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<ScriptCreatedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<ScriptCreatedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    private static var __method_binding_config: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "config").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 869314288)!
        }
        }
    }()
    public func config(inherits: Godot.GodotString, path: Godot.GodotString, builtInEnabled: Bool = true, loadEnabled: Bool = true) {
        inherits.withGodotUnsafeRawPointer { __ptr_inherits in
        path.withGodotUnsafeRawPointer { __ptr_path in
        builtInEnabled.withGodotUnsafeRawPointer { __ptr_builtInEnabled in
        loadEnabled.withGodotUnsafeRawPointer { __ptr_loadEnabled in
        withUnsafeArgumentPackPointer(__ptr_inherits, __ptr_path, __ptr_builtInEnabled, __ptr_loadEnabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_config,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
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