//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class TileData: Object {
    public func changed() {
        changedConnector.emit()
    }

    public private (set) lazy var changedConnector: Godot.SignalConnector
    <> = {
        .init(self, "changed")
    }()


    private static var __method_binding_set_flip_h: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_flip_h").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setFlipH(_ flipH: Bool) {
        flipH.withGodotUnsafeRawPointer { __ptr_flipH in
        withUnsafeArgumentPackPointer(__ptr_flipH) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_flip_h,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_flip_h: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_flip_h").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getFlipH() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_flip_h,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_flip_v: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_flip_v").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setFlipV(_ flipV: Bool) {
        flipV.withGodotUnsafeRawPointer { __ptr_flipV in
        withUnsafeArgumentPackPointer(__ptr_flipV) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_flip_v,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_flip_v: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_flip_v").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getFlipV() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_flip_v,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_transpose: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_transpose").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setTranspose(_ transpose: Bool) {
        transpose.withGodotUnsafeRawPointer { __ptr_transpose in
        withUnsafeArgumentPackPointer(__ptr_transpose) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_transpose,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_transpose: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_transpose").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getTranspose() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_transpose,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_material: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_material").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2757459619)!
        }
        }
    }()
    private func __setMaterial(_ material: Godot.Material?) {
        material.withGodotUnsafeRawPointer { __ptr_material in
        withUnsafePointer(to: __ptr_material) { _ptr___ptr_material in
        withUnsafeArgumentPackPointer(_ptr___ptr_material) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_material,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_material: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_material").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 5934680)!
        }
        }
    }()
    private func __getMaterial() -> Godot.Material? {
        Godot.Material?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_material,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_texture_origin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_texture_origin").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1130785943)!
        }
        }
    }()
    private func __setTextureOrigin(_ textureOrigin: Godot.Vector2i) {
        textureOrigin.withGodotUnsafeRawPointer { __ptr_textureOrigin in
        withUnsafeArgumentPackPointer(__ptr_textureOrigin) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_texture_origin,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_texture_origin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture_origin").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3690982128)!
        }
        }
    }()
    private func __getTextureOrigin() -> Godot.Vector2i {
        Godot.Vector2i.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_texture_origin,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_modulate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_modulate").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2920490490)!
        }
        }
    }()
    private func __setModulate(_ modulate: Godot.Color) {
        modulate.withGodotUnsafeRawPointer { __ptr_modulate in
        withUnsafeArgumentPackPointer(__ptr_modulate) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_modulate,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_modulate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_modulate").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3444240500)!
        }
        }
    }()
    private func __getModulate() -> Godot.Color {
        Godot.Color.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_modulate,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_z_index: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_z_index").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setZIndex(_ zIndex: Int32) {
        zIndex.withGodotUnsafeRawPointer { __ptr_zIndex in
        withUnsafeArgumentPackPointer(__ptr_zIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_z_index,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_z_index: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_z_index").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getZIndex() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_z_index,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_y_sort_origin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_y_sort_origin").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setYSortOrigin(_ ySortOrigin: Int32) {
        ySortOrigin.withGodotUnsafeRawPointer { __ptr_ySortOrigin in
        withUnsafeArgumentPackPointer(__ptr_ySortOrigin) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_y_sort_origin,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_y_sort_origin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_y_sort_origin").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getYSortOrigin() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_y_sort_origin,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_occluder: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_occluder").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 914399637)!
        }
        }
    }()
    public func setOccluder(layerId: Int32, occluderPolygon: Godot.OccluderPolygon2D?) {
        layerId.withGodotUnsafeRawPointer { __ptr_layerId in
        occluderPolygon.withGodotUnsafeRawPointer { __ptr_occluderPolygon in
        withUnsafePointer(to: __ptr_occluderPolygon) { _ptr___ptr_occluderPolygon in
        withUnsafeArgumentPackPointer(__ptr_layerId, _ptr___ptr_occluderPolygon) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_occluder,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_get_occluder: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_occluder").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2458574231)!
        }
        }
    }()
    public func occluder(layerId: Int32) -> Godot.OccluderPolygon2D? {
        Godot.OccluderPolygon2D?.fromMutatingGodotUnsafePointer { __temporary in
        layerId.withGodotUnsafeRawPointer { __ptr_layerId in
        withUnsafeArgumentPackPointer(__ptr_layerId) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_occluder,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_constant_linear_velocity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_constant_linear_velocity").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 163021252)!
        }
        }
    }()
    public func setConstantLinearVelocity(layerId: Int32, velocity: Godot.Vector2) {
        layerId.withGodotUnsafeRawPointer { __ptr_layerId in
        velocity.withGodotUnsafeRawPointer { __ptr_velocity in
        withUnsafeArgumentPackPointer(__ptr_layerId, __ptr_velocity) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_constant_linear_velocity,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_constant_linear_velocity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_constant_linear_velocity").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2299179447)!
        }
        }
    }()
    public func constantLinearVelocity(layerId: Int32) -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        layerId.withGodotUnsafeRawPointer { __ptr_layerId in
        withUnsafeArgumentPackPointer(__ptr_layerId) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_constant_linear_velocity,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_constant_angular_velocity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_constant_angular_velocity").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1602489585)!
        }
        }
    }()
    public func setConstantAngularVelocity(layerId: Int32, velocity: Double) {
        layerId.withGodotUnsafeRawPointer { __ptr_layerId in
        velocity.withGodotUnsafeRawPointer { __ptr_velocity in
        withUnsafeArgumentPackPointer(__ptr_layerId, __ptr_velocity) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_constant_angular_velocity,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_constant_angular_velocity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_constant_angular_velocity").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2339986948)!
        }
        }
    }()
    public func constantAngularVelocity(layerId: Int32) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        layerId.withGodotUnsafeRawPointer { __ptr_layerId in
        withUnsafeArgumentPackPointer(__ptr_layerId) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_constant_angular_velocity,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_collision_polygons_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_collision_polygons_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func setCollisionPolygonsCount(layerId: Int32, polygonsCount: Int32) {
        layerId.withGodotUnsafeRawPointer { __ptr_layerId in
        polygonsCount.withGodotUnsafeRawPointer { __ptr_polygonsCount in
        withUnsafeArgumentPackPointer(__ptr_layerId, __ptr_polygonsCount) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_collision_polygons_count,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_collision_polygons_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_collision_polygons_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()
    public func collisionPolygonsCount(layerId: Int32) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        layerId.withGodotUnsafeRawPointer { __ptr_layerId in
        withUnsafeArgumentPackPointer(__ptr_layerId) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_collision_polygons_count,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_add_collision_polygon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_collision_polygon").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func addCollisionPolygon(layerId: Int32) {
        layerId.withGodotUnsafeRawPointer { __ptr_layerId in
        withUnsafeArgumentPackPointer(__ptr_layerId) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_collision_polygon,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_remove_collision_polygon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_collision_polygon").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func removeCollisionPolygon(layerId: Int32, polygonIndex: Int32) {
        layerId.withGodotUnsafeRawPointer { __ptr_layerId in
        polygonIndex.withGodotUnsafeRawPointer { __ptr_polygonIndex in
        withUnsafeArgumentPackPointer(__ptr_layerId, __ptr_polygonIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_collision_polygon,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_set_collision_polygon_points: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_collision_polygon_points").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3230546541)!
        }
        }
    }()
    public func setCollisionPolygonPoints(layerId: Int32, polygonIndex: Int32, polygon: Godot.PackedVector2Array) {
        layerId.withGodotUnsafeRawPointer { __ptr_layerId in
        polygonIndex.withGodotUnsafeRawPointer { __ptr_polygonIndex in
        polygon.withGodotUnsafeRawPointer { __ptr_polygon in
        withUnsafeArgumentPackPointer(__ptr_layerId, __ptr_polygonIndex, __ptr_polygon) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_collision_polygon_points,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_get_collision_polygon_points: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_collision_polygon_points").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 103942801)!
        }
        }
    }()
    public func collisionPolygonPoints(layerId: Int32, polygonIndex: Int32) -> Godot.PackedVector2Array {
        Godot.PackedVector2Array.fromMutatingGodotUnsafePointer { __temporary in
        layerId.withGodotUnsafeRawPointer { __ptr_layerId in
        polygonIndex.withGodotUnsafeRawPointer { __ptr_polygonIndex in
        withUnsafeArgumentPackPointer(__ptr_layerId, __ptr_polygonIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_collision_polygon_points,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_set_collision_polygon_one_way: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_collision_polygon_one_way").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1383440665)!
        }
        }
    }()
    public func setCollisionPolygonOneWay(layerId: Int32, polygonIndex: Int32, oneWay: Bool) {
        layerId.withGodotUnsafeRawPointer { __ptr_layerId in
        polygonIndex.withGodotUnsafeRawPointer { __ptr_polygonIndex in
        oneWay.withGodotUnsafeRawPointer { __ptr_oneWay in
        withUnsafeArgumentPackPointer(__ptr_layerId, __ptr_polygonIndex, __ptr_oneWay) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_collision_polygon_one_way,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_is_collision_polygon_one_way: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_collision_polygon_one_way").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2522259332)!
        }
        }
    }()
    public func isCollisionPolygonOneWay(layerId: Int32, polygonIndex: Int32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        layerId.withGodotUnsafeRawPointer { __ptr_layerId in
        polygonIndex.withGodotUnsafeRawPointer { __ptr_polygonIndex in
        withUnsafeArgumentPackPointer(__ptr_layerId, __ptr_polygonIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_collision_polygon_one_way,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_set_collision_polygon_one_way_margin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_collision_polygon_one_way_margin").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3506521499)!
        }
        }
    }()
    public func setCollisionPolygonOneWayMargin(layerId: Int32, polygonIndex: Int32, oneWayMargin: Double) {
        layerId.withGodotUnsafeRawPointer { __ptr_layerId in
        polygonIndex.withGodotUnsafeRawPointer { __ptr_polygonIndex in
        oneWayMargin.withGodotUnsafeRawPointer { __ptr_oneWayMargin in
        withUnsafeArgumentPackPointer(__ptr_layerId, __ptr_polygonIndex, __ptr_oneWayMargin) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_collision_polygon_one_way_margin,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_get_collision_polygon_one_way_margin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_collision_polygon_one_way_margin").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3085491603)!
        }
        }
    }()
    public func collisionPolygonOneWayMargin(layerId: Int32, polygonIndex: Int32) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        layerId.withGodotUnsafeRawPointer { __ptr_layerId in
        polygonIndex.withGodotUnsafeRawPointer { __ptr_polygonIndex in
        withUnsafeArgumentPackPointer(__ptr_layerId, __ptr_polygonIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_collision_polygon_one_way_margin,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_set_terrain_set: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_terrain_set").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setTerrainSet(_ terrainSet: Int32) {
        terrainSet.withGodotUnsafeRawPointer { __ptr_terrainSet in
        withUnsafeArgumentPackPointer(__ptr_terrainSet) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_terrain_set,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_terrain_set: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_terrain_set").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getTerrainSet() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_terrain_set,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_terrain: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_terrain").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setTerrain(_ terrain: Int32) {
        terrain.withGodotUnsafeRawPointer { __ptr_terrain in
        withUnsafeArgumentPackPointer(__ptr_terrain) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_terrain,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_terrain: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_terrain").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getTerrain() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_terrain,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_terrain_peering_bit: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_terrain_peering_bit").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1084452308)!
        }
        }
    }()
    public func setTerrainPeeringBit(_ peeringBit: Godot.TileSet.CellNeighbor, terrain: Int32) {
        peeringBit.withGodotUnsafeRawPointer { __ptr_peeringBit in
        terrain.withGodotUnsafeRawPointer { __ptr_terrain in
        withUnsafeArgumentPackPointer(__ptr_peeringBit, __ptr_terrain) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_terrain_peering_bit,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_terrain_peering_bit: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_terrain_peering_bit").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3831796792)!
        }
        }
    }()
    public func terrainPeeringBit(_ peeringBit: Godot.TileSet.CellNeighbor) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        peeringBit.withGodotUnsafeRawPointer { __ptr_peeringBit in
        withUnsafeArgumentPackPointer(__ptr_peeringBit) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_terrain_peering_bit,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_navigation_polygon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_navigation_polygon").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2224691167)!
        }
        }
    }()
    public func setNavigationPolygon(layerId: Int32, navigationPolygon: Godot.NavigationPolygon?) {
        layerId.withGodotUnsafeRawPointer { __ptr_layerId in
        navigationPolygon.withGodotUnsafeRawPointer { __ptr_navigationPolygon in
        withUnsafePointer(to: __ptr_navigationPolygon) { _ptr___ptr_navigationPolygon in
        withUnsafeArgumentPackPointer(__ptr_layerId, _ptr___ptr_navigationPolygon) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_navigation_polygon,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_get_navigation_polygon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_navigation_polygon").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3991786031)!
        }
        }
    }()
    public func navigationPolygon(layerId: Int32) -> Godot.NavigationPolygon? {
        Godot.NavigationPolygon?.fromMutatingGodotUnsafePointer { __temporary in
        layerId.withGodotUnsafeRawPointer { __ptr_layerId in
        withUnsafeArgumentPackPointer(__ptr_layerId) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_navigation_polygon,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_probability: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_probability").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setProbability(_ probability: Double) {
        probability.withGodotUnsafeRawPointer { __ptr_probability in
        withUnsafeArgumentPackPointer(__ptr_probability) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_probability,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_probability: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_probability").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getProbability() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_probability,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_custom_data: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_custom_data").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 402577236)!
        }
        }
    }()
    public func setCustomData<Value: VariantStorableIn>(layerName: Godot.GodotString, value: Value) {
        layerName.withGodotUnsafeRawPointer { __ptr_layerName in
        Godot.Variant.withStorageUnsafeRawPointer(to: value) { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_layerName, __ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_custom_data,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_custom_data: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_custom_data").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1868160156)!
        }
        }
    }()
    public func customData(layerName: Godot.GodotString) -> Godot.Variant {
        Godot.Variant.fromMutatingGodotUnsafePointer { __temporary in
        layerName.withGodotUnsafeRawPointer { __ptr_layerName in
        withUnsafeArgumentPackPointer(__ptr_layerName) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_custom_data,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_custom_data_by_layer_id: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_custom_data_by_layer_id").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2152698145)!
        }
        }
    }()
    public func setCustomDataByLayerId<Value: VariantStorableIn>(_ layerId: Int32, value: Value) {
        layerId.withGodotUnsafeRawPointer { __ptr_layerId in
        Godot.Variant.withStorageUnsafeRawPointer(to: value) { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_layerId, __ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_custom_data_by_layer_id,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_custom_data_by_layer_id: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_custom_data_by_layer_id").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4227898402)!
        }
        }
    }()
    public func customDataByLayerId(_ layerId: Int32) -> Godot.Variant {
        Godot.Variant.fromMutatingGodotUnsafePointer { __temporary in
        layerId.withGodotUnsafeRawPointer { __ptr_layerId in
        withUnsafeArgumentPackPointer(__ptr_layerId) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_custom_data_by_layer_id,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    public var flipH: Bool {
        get {
            __getFlipH()
        }
        set {
            __setFlipH(
                newValue
            )
        }
    }

    public var flipV: Bool {
        get {
            __getFlipV()
        }
        set {
            __setFlipV(
                newValue
            )
        }
    }

    public var transpose: Bool {
        get {
            __getTranspose()
        }
        set {
            __setTranspose(
                newValue
            )
        }
    }

    public var textureOrigin: Godot.Vector2i {
        get {
            __getTextureOrigin()
        }
        set {
            __setTextureOrigin(
                newValue
            )
        }
    }

    public var modulate: Godot.Color {
        get {
            __getModulate()
        }
        set {
            __setModulate(
                newValue
            )
        }
    }

    public var material: Godot.Material? {
        get {
            __getMaterial()
        }
        set {
            __setMaterial(
                newValue
            )
        }
    }

    public var zIndex: Int32 {
        get {
            __getZIndex()
        }
        set {
            __setZIndex(
                newValue
            )
        }
    }

    public var ySortOrigin: Int32 {
        get {
            __getYSortOrigin()
        }
        set {
            __setYSortOrigin(
                newValue
            )
        }
    }

    public var terrainSet: Int32 {
        get {
            __getTerrainSet()
        }
        set {
            __setTerrainSet(
                newValue
            )
        }
    }

    public var terrain: Int32 {
        get {
            __getTerrain()
        }
        set {
            __setTerrain(
                newValue
            )
        }
    }

    public var probability: Double {
        get {
            __getProbability()
        }
        set {
            __setProbability(
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