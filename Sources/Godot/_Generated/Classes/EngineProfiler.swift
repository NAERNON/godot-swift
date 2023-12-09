//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class EngineProfiler: RefCounted {
    open func _toggle(enable: Bool, options: Godot.AnyGodotArray) {
    }

    open func _addFrame(data: Godot.AnyGodotArray) {
    }

    open func _tick(frameTime: Double, processTime: Double, physicsTime: Double, physicsFrameTime: Double) {
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _toggle_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EngineProfiler> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._toggle(
            enable: args[0]!.load(as: Bool.self),
            options: Godot.AnyGodotArray(godotExtensionPointer: args[1]!)
        )}
        let _add_frame_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EngineProfiler> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._addFrame(
            data: Godot.AnyGodotArray(godotExtensionPointer: args[0]!)
        )}
        let _tick_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EngineProfiler> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._tick(
            frameTime: args[0]!.load(as: Double.self),
            processTime: args[1]!.load(as: Double.self),
            physicsTime: args[2]!.load(as: Double.self),
            physicsFrameTime: args[3]!.load(as: Double.self)
        )}
        _virtualFunctions = [
            "_toggle" : ("_toggle", _toggle_call),
            "_addFrame" : ("_add_frame", _add_frame_call),
            "_tick" : ("_tick", _tick_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }