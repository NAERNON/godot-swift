//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class PhysicsServer3DRenderingServerHandler: Object {
    open func _setVertex(vertexId: Int32, vertices: UnsafeRawPointer) {
    }

    open func _setNormal(vertexId: Int32, normals: UnsafeRawPointer) {
    }

    open func _setAabb(_ aabb: Godot.AABB) {
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _set_vertex_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DRenderingServerHandler> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._setVertex(
            vertexId: args[0]!.load(as: Int32.self),
            vertices: args[1]!.load(as: UnsafeRawPointer.self)
        )}
        let _set_normal_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DRenderingServerHandler> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._setNormal(
            vertexId: args[0]!.load(as: Int32.self),
            normals: args[1]!.load(as: UnsafeRawPointer.self)
        )}
        let _set_aabb_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DRenderingServerHandler> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._setAabb(
            args[0]!.load(as: Godot.AABB.self)
        )}
        _virtualFunctions = [
            "_setVertex" : ("_set_vertex", _set_vertex_call),
            "_setNormal" : ("_set_normal", _set_normal_call),
            "_setAabb" : ("_set_aabb", _set_aabb_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }