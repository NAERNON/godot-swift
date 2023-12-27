//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class Polygon2D: Node2D {
    private static var __method_binding_set_polygon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_polygon").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1509147220)!
        }
        }
    }()
    private func __setPolygon(_ polygon: Godot.PackedVector2Array) {
        polygon.withGodotUnsafeRawPointer { __ptr_polygon in
        withUnsafeArgumentPackPointer(__ptr_polygon) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_polygon,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_polygon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_polygon").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2961356807)!
        }
        }
    }()
    private func __getPolygon() -> Godot.PackedVector2Array {
        Godot.PackedVector2Array.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_polygon,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_uv: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_uv").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1509147220)!
        }
        }
    }()
    private func __setUv(_ uv: Godot.PackedVector2Array) {
        uv.withGodotUnsafeRawPointer { __ptr_uv in
        withUnsafeArgumentPackPointer(__ptr_uv) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_uv,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_uv: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_uv").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2961356807)!
        }
        }
    }()
    private func __getUv() -> Godot.PackedVector2Array {
        Godot.PackedVector2Array.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_uv,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2920490490)!
        }
        }
    }()
    private func __setColor(_ color: Godot.Color) {
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_color,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3444240500)!
        }
        }
    }()
    private func __getColor() -> Godot.Color {
        Godot.Color.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_color,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_polygons: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_polygons").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()
    private func __setPolygons<Value: VariantStorable>(_ polygons: Godot.GodotArray<Value>) {
        polygons.withGodotUnsafeRawPointer { __ptr_polygons in
        withUnsafeArgumentPackPointer(__ptr_polygons) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_polygons,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_polygons: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_polygons").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()
    private func __getPolygons() -> Godot.AnyGodotArray {
        Godot.AnyGodotArray.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_polygons,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_vertex_colors: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_vertex_colors").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3546319833)!
        }
        }
    }()
    private func __setVertexColors(_ vertexColors: Godot.PackedColorArray) {
        vertexColors.withGodotUnsafeRawPointer { __ptr_vertexColors in
        withUnsafeArgumentPackPointer(__ptr_vertexColors) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_vertex_colors,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_vertex_colors: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_vertex_colors").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1392750486)!
        }
        }
    }()
    private func __getVertexColors() -> Godot.PackedColorArray {
        Godot.PackedColorArray.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_vertex_colors,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_texture").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4051416890)!
        }
        }
    }()
    private func __setTexture(_ texture: Godot.Texture2D?) {
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafePointer(to: __ptr_texture) { _ptr___ptr_texture in
        withUnsafeArgumentPackPointer(_ptr___ptr_texture) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_texture,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3635182373)!
        }
        }
    }()
    private func __getTexture() -> Godot.Texture2D? {
        Godot.Texture2D?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_texture,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_texture_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_texture_offset").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 743155724)!
        }
        }
    }()
    private func __setTextureOffset(_ textureOffset: Godot.Vector2) {
        textureOffset.withGodotUnsafeRawPointer { __ptr_textureOffset in
        withUnsafeArgumentPackPointer(__ptr_textureOffset) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_texture_offset,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_texture_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture_offset").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()
    private func __getTextureOffset() -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_texture_offset,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_texture_rotation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_texture_rotation").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setTextureRotation(_ textureRotation: Double) {
        textureRotation.withGodotUnsafeRawPointer { __ptr_textureRotation in
        withUnsafeArgumentPackPointer(__ptr_textureRotation) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_texture_rotation,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_texture_rotation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture_rotation").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getTextureRotation() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_texture_rotation,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_texture_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_texture_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 743155724)!
        }
        }
    }()
    private func __setTextureScale(_ textureScale: Godot.Vector2) {
        textureScale.withGodotUnsafeRawPointer { __ptr_textureScale in
        withUnsafeArgumentPackPointer(__ptr_textureScale) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_texture_scale,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_texture_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()
    private func __getTextureScale() -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_texture_scale,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_invert_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_invert_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setInvertEnabled(invert: Bool) {
        invert.withGodotUnsafeRawPointer { __ptr_invert in
        withUnsafeArgumentPackPointer(__ptr_invert) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_invert_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_invert_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_invert_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getInvertEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_invert_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_antialiased: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_antialiased").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setAntialiased(_ antialiased: Bool) {
        antialiased.withGodotUnsafeRawPointer { __ptr_antialiased in
        withUnsafeArgumentPackPointer(__ptr_antialiased) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_antialiased,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_antialiased: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_antialiased").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getAntialiased() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_antialiased,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_invert_border: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_invert_border").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setInvertBorder(_ invertBorder: Double) {
        invertBorder.withGodotUnsafeRawPointer { __ptr_invertBorder in
        withUnsafeArgumentPackPointer(__ptr_invertBorder) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_invert_border,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_invert_border: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_invert_border").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getInvertBorder() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_invert_border,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_offset").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 743155724)!
        }
        }
    }()
    private func __setOffset(_ offset: Godot.Vector2) {
        offset.withGodotUnsafeRawPointer { __ptr_offset in
        withUnsafeArgumentPackPointer(__ptr_offset) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_offset,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_offset").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()
    private func __getOffset() -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_offset,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_add_bone: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_bone").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 703042815)!
        }
        }
    }()
    public func addBone(path: Godot.NodePath, weights: Godot.PackedFloat32Array) {
        path.withGodotUnsafeRawPointer { __ptr_path in
        weights.withGodotUnsafeRawPointer { __ptr_weights in
        withUnsafeArgumentPackPointer(__ptr_path, __ptr_weights) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_bone,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_bone_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_bone_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func boneCount() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_bone_count,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_bone_path: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_bone_path").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 408788394)!
        }
        }
    }()
    public func bonePath(index: Int32) -> Godot.NodePath {
        Godot.NodePath.fromMutatingGodotUnsafePointer { __temporary in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_bone_path,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_bone_weights: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_bone_weights").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1542882410)!
        }
        }
    }()
    public func boneWeights(index: Int32) -> Godot.PackedFloat32Array {
        Godot.PackedFloat32Array.fromMutatingGodotUnsafePointer { __temporary in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_bone_weights,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_erase_bone: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "erase_bone").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func eraseBone(index: Int32) {
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_erase_bone,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_clear_bones: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_bones").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func clearBones() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_clear_bones,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_set_bone_path: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_bone_path").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2761262315)!
        }
        }
    }()
    public func setBonePath(index: Int32, path: Godot.NodePath) {
        index.withGodotUnsafeRawPointer { __ptr_index in
        path.withGodotUnsafeRawPointer { __ptr_path in
        withUnsafeArgumentPackPointer(__ptr_index, __ptr_path) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_bone_path,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_set_bone_weights: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_bone_weights").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1345852415)!
        }
        }
    }()
    public func setBoneWeights(index: Int32, weights: Godot.PackedFloat32Array) {
        index.withGodotUnsafeRawPointer { __ptr_index in
        weights.withGodotUnsafeRawPointer { __ptr_weights in
        withUnsafeArgumentPackPointer(__ptr_index, __ptr_weights) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_bone_weights,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_set_skeleton: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_skeleton").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1348162250)!
        }
        }
    }()
    private func __setSkeleton(_ skeleton: Godot.NodePath) {
        skeleton.withGodotUnsafeRawPointer { __ptr_skeleton in
        withUnsafeArgumentPackPointer(__ptr_skeleton) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_skeleton,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_skeleton: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_skeleton").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4075236667)!
        }
        }
    }()
    private func __getSkeleton() -> Godot.NodePath {
        Godot.NodePath.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_skeleton,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_internal_vertex_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_internal_vertex_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setInternalVertexCount(_ internalVertexCount: Int32) {
        internalVertexCount.withGodotUnsafeRawPointer { __ptr_internalVertexCount in
        withUnsafeArgumentPackPointer(__ptr_internalVertexCount) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_internal_vertex_count,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_internal_vertex_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_internal_vertex_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getInternalVertexCount() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_internal_vertex_count,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var color: Godot.Color {
        get {
            __getColor()
        }
        set {
            __setColor(
                newValue
            )
        }
    }

    public var offset: Godot.Vector2 {
        get {
            __getOffset()
        }
        set {
            __setOffset(
                newValue
            )
        }
    }

    public var antialiased: Bool {
        get {
            __getAntialiased()
        }
        set {
            __setAntialiased(
                newValue
            )
        }
    }

    public var texture: Godot.Texture2D? {
        get {
            __getTexture()
        }
        set {
            __setTexture(
                newValue
            )
        }
    }

    public var textureOffset: Godot.Vector2 {
        get {
            __getTextureOffset()
        }
        set {
            __setTextureOffset(
                newValue
            )
        }
    }

    public var textureScale: Godot.Vector2 {
        get {
            __getTextureScale()
        }
        set {
            __setTextureScale(
                newValue
            )
        }
    }

    public var textureRotation: Double {
        get {
            __getTextureRotation()
        }
        set {
            __setTextureRotation(
                newValue
            )
        }
    }

    public var skeleton: Godot.NodePath {
        get {
            __getSkeleton()
        }
        set {
            __setSkeleton(
                newValue
            )
        }
    }

    public var invertEnabled: Bool {
        get {
            __getInvertEnabled()
        }
        set {
            __setInvertEnabled(
                invert: newValue
            )
        }
    }

    public var invertBorder: Double {
        get {
            __getInvertBorder()
        }
        set {
            __setInvertBorder(
                newValue
            )
        }
    }

    public var polygon: Godot.PackedVector2Array {
        get {
            __getPolygon()
        }
        set {
            __setPolygon(
                newValue
            )
        }
    }

    public var uv: Godot.PackedVector2Array {
        get {
            __getUv()
        }
        set {
            __setUv(
                newValue
            )
        }
    }

    public var vertexColors: Godot.PackedColorArray {
        get {
            __getVertexColors()
        }
        set {
            __setVertexColors(
                newValue
            )
        }
    }

    public var polygons: Godot.AnyGodotArray {
        get {
            __getPolygons()
        }
        set {
            __setPolygons(
                newValue
            )
        }
    }

    public var internalVertexCount: Int32 {
        get {
            __getInternalVertexCount()
        }
        set {
            __setInternalVertexCount(
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