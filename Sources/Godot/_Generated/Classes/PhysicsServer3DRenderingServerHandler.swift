//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class PhysicsServer3DRenderingServerHandler: Object {
    open func _setVertex(vertexID: Int32, vertex: Godot.Vector3) {
    }

    open func _setNormal(vertexID: Int32, normal: Godot.Vector3) {
    }

    open func _setAabb(_ aabb: Godot.AABB) {
    }

    internal static var __method_binding_set_vertex: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_vertex").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1530502735)!
        }
        }
    }()
    public func setVertex(vertexID: Int32, vertex: Godot.Vector3) {
        vertexID.withGodotUnsafeRawPointer { __ptr_vertexID in
        vertex.withGodotUnsafeRawPointer { __ptr_vertex in
        withUnsafeArgumentPackPointer(__ptr_vertexID, __ptr_vertex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_vertex,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_set_normal: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_normal").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1530502735)!
        }
        }
    }()
    public func setNormal(vertexID: Int32, normal: Godot.Vector3) {
        vertexID.withGodotUnsafeRawPointer { __ptr_vertexID in
        normal.withGodotUnsafeRawPointer { __ptr_normal in
        withUnsafeArgumentPackPointer(__ptr_vertexID, __ptr_normal) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_normal,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_set_aabb: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_aabb").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 259215842)!
        }
        }
    }()
    public func setAabb(_ aabb: Godot.AABB) {
        aabb.withGodotUnsafeRawPointer { __ptr_aabb in
        withUnsafeArgumentPackPointer(__ptr_aabb) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_aabb,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
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
            Unmanaged<PhysicsServer3DRenderingServerHandler>.fromOpaque(instancePtr).takeUnretainedValue()
        ._setVertex(
            vertexID: Int32.fromGodotUnsafePointer(args[0]!),
            vertex: Godot.Vector3.fromGodotUnsafePointer(args[1]!)
        )}
        let _set_normal_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer3DRenderingServerHandler>.fromOpaque(instancePtr).takeUnretainedValue()
        ._setNormal(
            vertexID: Int32.fromGodotUnsafePointer(args[0]!),
            normal: Godot.Vector3.fromGodotUnsafePointer(args[1]!)
        )}
        let _set_aabb_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer3DRenderingServerHandler>.fromOpaque(instancePtr).takeUnretainedValue()
        ._setAabb(
            Godot.AABB.fromGodotUnsafePointer(args[0]!)
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