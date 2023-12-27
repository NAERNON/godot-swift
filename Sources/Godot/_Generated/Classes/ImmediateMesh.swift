//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class ImmediateMesh: Mesh {
    private static var __method_binding_surface_begin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "surface_begin").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2794442543)!
        }
        }
    }()
    public func surfaceBegin(primitive: Godot.Mesh.PrimitiveType, material: Godot.Material? = nil) {
        primitive.withGodotUnsafeRawPointer { __ptr_primitive in
        material.withGodotUnsafeRawPointer { __ptr_material in
        withUnsafePointer(to: __ptr_material) { _ptr___ptr_material in
        withUnsafeArgumentPackPointer(__ptr_primitive, _ptr___ptr_material) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_surface_begin,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_surface_set_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "surface_set_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2920490490)!
        }
        }
    }()
    public func surfaceSetColor(_ color: Godot.Color) {
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_surface_set_color,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_surface_set_normal: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "surface_set_normal").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    public func surfaceSetNormal(_ normal: Godot.Vector3) {
        normal.withGodotUnsafeRawPointer { __ptr_normal in
        withUnsafeArgumentPackPointer(__ptr_normal) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_surface_set_normal,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_surface_set_tangent: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "surface_set_tangent").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3505987427)!
        }
        }
    }()
    public func surfaceSetTangent(_ tangent: Godot.Plane) {
        tangent.withGodotUnsafeRawPointer { __ptr_tangent in
        withUnsafeArgumentPackPointer(__ptr_tangent) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_surface_set_tangent,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_surface_set_uv: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "surface_set_uv").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 743155724)!
        }
        }
    }()
    public func surfaceSetUv(_ uv: Godot.Vector2) {
        uv.withGodotUnsafeRawPointer { __ptr_uv in
        withUnsafeArgumentPackPointer(__ptr_uv) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_surface_set_uv,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_surface_set_uv2: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "surface_set_uv2").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 743155724)!
        }
        }
    }()
    public func surfaceSetUv2(_ uv2: Godot.Vector2) {
        uv2.withGodotUnsafeRawPointer { __ptr_uv2 in
        withUnsafeArgumentPackPointer(__ptr_uv2) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_surface_set_uv2,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_surface_add_vertex: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "surface_add_vertex").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    public func surfaceAddVertex(_ vertex: Godot.Vector3) {
        vertex.withGodotUnsafeRawPointer { __ptr_vertex in
        withUnsafeArgumentPackPointer(__ptr_vertex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_surface_add_vertex,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_surface_add_vertex_2d: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "surface_add_vertex_2d").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 743155724)!
        }
        }
    }()
    public func surfaceAddVertex2D(vertex: Godot.Vector2) {
        vertex.withGodotUnsafeRawPointer { __ptr_vertex in
        withUnsafeArgumentPackPointer(__ptr_vertex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_surface_add_vertex_2d,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_surface_end: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "surface_end").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func surfaceEnd() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_surface_end,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_clear_surfaces: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_surfaces").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func clearSurfaces() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_clear_surfaces,
            __ptr_self,
            nil,
            nil
        )}
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