//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotClass
open class PhysicsServer3DRenderingServerHandler: Object {
    open func _setVertex(
        vertexID: Int32,
        vertex: Godot.Vector3
    ) {
        
    }
    
    open func _setNormal(
        vertexID: Int32,
        normal: Godot.Vector3
    ) {
        
    }
    
    open func _setAABB(
        _ aabb: Godot.AABB
    ) {
        
    }
    
    internal static var __method_binding_set_vertex: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_vertex").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1530502735)!
            }
        }
    }()
    
    public func setVertex(
        vertexID: Int32,
        vertex: Godot.Vector3
    ) {
        withTransferrableUnsafeRawPointer(to: vertexID) { __ptr_vertexID in
            withTransferrableUnsafeRawPointer(to: vertex) { __ptr_vertex in
                withUnsafeArgumentPackPointer(__ptr_vertexID, __ptr_vertex) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_vertex,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_set_normal: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_normal").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1530502735)!
            }
        }
    }()
    
    public func setNormal(
        vertexID: Int32,
        normal: Godot.Vector3
    ) {
        withTransferrableUnsafeRawPointer(to: vertexID) { __ptr_vertexID in
            withTransferrableUnsafeRawPointer(to: normal) { __ptr_normal in
                withUnsafeArgumentPackPointer(__ptr_vertexID, __ptr_normal) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_normal,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_set_aabb: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_aabb").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 259215842)!
            }
        }
    }()
    
    public func setAABB(
        _ aabb: Godot.AABB
    ) {
        withTransferrableUnsafeRawPointer(to: aabb) { __ptr_aabb in
            withUnsafeArgumentPackPointer(__ptr_aabb) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_aabb,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _set_vertex_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else { return }
            Unmanaged<PhysicsServer3DRenderingServerHandler>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._setVertex(
                    vertexID: Int32.transferFromGodot(unsafePointer: args[0]!),
                    vertex: Godot.Vector3.transferFromGodot(unsafePointer: args[1]!)
                )
        }
        let _set_normal_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else { return }
            Unmanaged<PhysicsServer3DRenderingServerHandler>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._setNormal(
                    vertexID: Int32.transferFromGodot(unsafePointer: args[0]!),
                    normal: Godot.Vector3.transferFromGodot(unsafePointer: args[1]!)
                )
        }
        let _set_aabb_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else { return }
            Unmanaged<PhysicsServer3DRenderingServerHandler>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._setAABB(
                    Godot.AABB.transferFromGodot(unsafePointer: args[0]!)
                )
        }
        _virtualFunctions = [
            "_setVertex" : ("_set_vertex", _set_vertex_call),
            "_setNormal" : ("_set_normal", _set_normal_call),
            "_setAABB" : ("_set_aabb", _set_aabb_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions![key] = value
        }
        return _virtualFunctions!
    }
}