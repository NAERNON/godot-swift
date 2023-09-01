//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class MainLoop: Object {
    @Emitter(signal: "on_request_permissions_result", args: ("permission", Godot.GodotString), ("granted", Bool))
    public struct OnRequestPermissionsResult {
    }

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
            let instance = Unmanaged<MainLoop> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._initialize()}
        let _physics_process_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<MainLoop> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._physicsProcess(
            delta: args[0]!.load(as: Double.self)
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _process_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<MainLoop> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._process(
            delta: args[0]!.load(as: Double.self)
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _finalize_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<MainLoop> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
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