//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class MainLoop: Object {
    public struct OnRequestPermissionsResultSignalInput: Godot.SignalInput {
        public let permission: Godot.GodotString
        public let granted: Bool
        fileprivate init(permission: Godot.GodotString, granted: Bool) {
            self.permission = permission
            self.granted = granted
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, permission, granted)
        }
    }
    public func onRequestPermissionsResult(permission: Godot.GodotString, granted: Bool) {
        _ = onRequestPermissionsResultSignal.emit(.init(permission: permission,
                granted: granted))
    }
    public lazy var onRequestPermissionsResultSignal: Godot.SignalEmitter<OnRequestPermissionsResultSignalInput> = {
        .init(object: self, signalName: "on_request_permissions_result") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<OnRequestPermissionsResultSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(permission: Godot.GodotString.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!)),
                    granted: Bool.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 1).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<OnRequestPermissionsResultSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<OnRequestPermissionsResultSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    open func _initialize() {
    }

    open func _physicsProcess(delta: Double) -> Bool {
        Bool()
    }

    open func _process(delta: Double) -> Bool {
        Bool()
    }

    open func _finalize() {
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _initialize_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<MainLoop>.fromOpaque(instancePtr).takeUnretainedValue()
        ._initialize()}
        let _physics_process_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<MainLoop>.fromOpaque(instancePtr).takeUnretainedValue()
        ._physicsProcess(
            delta: Double.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _process_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<MainLoop>.fromOpaque(instancePtr).takeUnretainedValue()
        ._process(
            delta: Double.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _finalize_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<MainLoop>.fromOpaque(instancePtr).takeUnretainedValue()
        ._finalize()}
        _virtualFunctions = [
            "_initialize" : ("_initialize", _initialize_call),
            "_physicsProcess" : ("_physics_process", _physics_process_call),
            "_process" : ("_process", _process_call),
            "_finalize" : ("_finalize", _finalize_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }