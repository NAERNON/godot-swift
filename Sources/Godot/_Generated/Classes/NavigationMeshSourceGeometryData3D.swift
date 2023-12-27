//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class NavigationMeshSourceGeometryData3D: Resource {
    private static var __method_binding_set_vertices: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_vertices").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2899603908)!
        }
        }
    }()
    private func __setVertices(_ vertices: Godot.PackedFloat32Array) {
        vertices.withGodotUnsafeRawPointer { __ptr_vertices in
        withUnsafeArgumentPackPointer(__ptr_vertices) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_vertices,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_vertices: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_vertices").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 675695659)!
        }
        }
    }()
    private func __getVertices() -> Godot.PackedFloat32Array {
        Godot.PackedFloat32Array.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_vertices,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_indices: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_indices").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3614634198)!
        }
        }
    }()
    private func __setIndices(_ indices: Godot.PackedInt32Array) {
        indices.withGodotUnsafeRawPointer { __ptr_indices in
        withUnsafeArgumentPackPointer(__ptr_indices) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_indices,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_indices: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_indices").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1930428628)!
        }
        }
    }()
    private func __getIndices() -> Godot.PackedInt32Array {
        Godot.PackedInt32Array.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_indices,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_clear: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func clear() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_clear,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_has_data: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_data").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()
    public func hasData() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_data,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_add_mesh: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_mesh").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 975462459)!
        }
        }
    }()
    public func addMesh(_ mesh: Godot.Mesh?, xform: Godot.Transform3D) {
        mesh.withGodotUnsafeRawPointer { __ptr_mesh in
        withUnsafePointer(to: __ptr_mesh) { _ptr___ptr_mesh in
        xform.withGodotUnsafeRawPointer { __ptr_xform in
        withUnsafeArgumentPackPointer(_ptr___ptr_mesh, __ptr_xform) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_mesh,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_add_mesh_array: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_mesh_array").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4235710913)!
        }
        }
    }()
    public func addMeshArray<Value: VariantStorable>(_ meshArray: Godot.GodotArray<Value>, xform: Godot.Transform3D) {
        meshArray.withGodotUnsafeRawPointer { __ptr_meshArray in
        xform.withGodotUnsafeRawPointer { __ptr_xform in
        withUnsafeArgumentPackPointer(__ptr_meshArray, __ptr_xform) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_mesh_array,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_add_faces: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_faces").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1440358797)!
        }
        }
    }()
    public func addFaces(_ faces: Godot.PackedVector3Array, xform: Godot.Transform3D) {
        faces.withGodotUnsafeRawPointer { __ptr_faces in
        xform.withGodotUnsafeRawPointer { __ptr_xform in
        withUnsafeArgumentPackPointer(__ptr_faces, __ptr_xform) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_faces,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    public var vertices: Godot.PackedFloat32Array {
        get {
            __getVertices()
        }
        set {
            __setVertices(
                newValue
            )
        }
    }

    public var indices: Godot.PackedInt32Array {
        get {
            __getIndices()
        }
        set {
            __setIndices(
                newValue
            )
        }
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