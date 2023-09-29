//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class TileSet: Resource {
    public enum TileShape: UInt32 {
        case square = 0
        case isometric = 1
        case halfOffsetSquare = 2
        case hexagon = 3
    }
    public enum TileLayout: UInt32 {
        case stacked = 0
        case stackedOffset = 1
        case stairsRight = 2
        case stairsDown = 3
        case diamondRight = 4
        case diamondDown = 5
    }
    public enum TileOffsetAxis: UInt32 {
        case horizontal = 0
        case vertical = 1
    }
    public enum CellNeighbor: UInt32 {
        case rightSide = 0
        case rightCorner = 1
        case bottomRightSide = 2
        case bottomRightCorner = 3
        case bottomSide = 4
        case bottomCorner = 5
        case bottomLeftSide = 6
        case bottomLeftCorner = 7
        case leftSide = 8
        case leftCorner = 9
        case topLeftSide = 10
        case topLeftCorner = 11
        case topSide = 12
        case topCorner = 13
        case topRightSide = 14
        case topRightCorner = 15
    }
    public enum TerrainMode: UInt32 {
        case cornersAndSides = 0
        case corners = 1
        case sides = 2
    }

    private static var __method_binding_get_next_source_id: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_next_source_id").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func nextSourceId() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_next_source_id,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_add_source: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_source").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 276991387)!
        }
        }
    }()
    public func addSource(_ source: Godot.TileSetSource?, atlasSourceIdOverride: Int32 = -1) -> Int32 {
        var __temporary = Int32()
        source.withUnsafeRawPointer { (__ptr_source) in
            withUnsafePointer(to: __ptr_source) { (_ptr___ptr_source) in
                withUnsafePointer(to: atlasSourceIdOverride) { (__ptr_atlasSourceIdOverride) in
                    withUnsafeArgumentPackPointer(_ptr___ptr_source, __ptr_atlasSourceIdOverride) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_add_source,
                                    __ptr_self,
                                    __accessPtr,
                                    __ptr___temporary
                                )
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_remove_source: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_source").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func removeSource(sourceId: Int32) {
        withUnsafePointer(to: sourceId) { (__ptr_sourceId) in
            withUnsafeArgumentPackPointer(__ptr_sourceId) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_remove_source,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_set_source_id: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_source_id").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func setSourceId(_ sourceId: Int32, newSourceId: Int32) {
        withUnsafePointer(to: sourceId) { (__ptr_sourceId) in
            withUnsafePointer(to: newSourceId) { (__ptr_newSourceId) in
                withUnsafeArgumentPackPointer(__ptr_sourceId, __ptr_newSourceId) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_source_id,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_source_count: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_source_count").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func sourceCount() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_source_count,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_source_id: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_source_id").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()
    public func sourceId(index: Int32) -> Int32 {
        var __temporary = Int32()
        withUnsafePointer(to: index) { (__ptr_index) in
            withUnsafeArgumentPackPointer(__ptr_index) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_source_id,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_has_source: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_source").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func hasSource(sourceId: Int32) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: sourceId) { (__ptr_sourceId) in
            withUnsafeArgumentPackPointer(__ptr_sourceId) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_has_source,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_source: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_source").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1763540252)!
        }
        }
    }()
    public func source(sourceId: Int32) -> Godot.TileSetSource? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafePointer(to: sourceId) { (__ptr_sourceId) in
            withUnsafeArgumentPackPointer(__ptr_sourceId) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_source,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.TileSetSource.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_set_tile_shape: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tile_shape").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2131427112)!
        }
        }
    }()
    private func __setTileShape(_ shape: Godot.TileSet.TileShape) {
        withUnsafePointer(to: shape) { (__ptr_shape) in
            withUnsafeArgumentPackPointer(__ptr_shape) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_tile_shape,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_tile_shape: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tile_shape").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 716918169)!
        }
        }
    }()
    private func __getTileShape() -> Godot.TileSet.TileShape {
        var __temporary = Godot.TileSet.TileShape.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_tile_shape,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.TileSet.TileShape(rawValue: __temporary)!
    }

    private static var __method_binding_set_tile_layout: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tile_layout").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1071216679)!
        }
        }
    }()
    private func __setTileLayout(_ layout: Godot.TileSet.TileLayout) {
        withUnsafePointer(to: layout) { (__ptr_layout) in
            withUnsafeArgumentPackPointer(__ptr_layout) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_tile_layout,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_tile_layout: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tile_layout").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 194628839)!
        }
        }
    }()
    private func __getTileLayout() -> Godot.TileSet.TileLayout {
        var __temporary = Godot.TileSet.TileLayout.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_tile_layout,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.TileSet.TileLayout(rawValue: __temporary)!
    }

    private static var __method_binding_set_tile_offset_axis: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tile_offset_axis").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3300198521)!
        }
        }
    }()
    private func __setTileOffsetAxis(alignment: Godot.TileSet.TileOffsetAxis) {
        withUnsafePointer(to: alignment) { (__ptr_alignment) in
            withUnsafeArgumentPackPointer(__ptr_alignment) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_tile_offset_axis,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_tile_offset_axis: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tile_offset_axis").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 762494114)!
        }
        }
    }()
    private func __getTileOffsetAxis() -> Godot.TileSet.TileOffsetAxis {
        var __temporary = Godot.TileSet.TileOffsetAxis.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_tile_offset_axis,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.TileSet.TileOffsetAxis(rawValue: __temporary)!
    }

    private static var __method_binding_set_tile_size: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tile_size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1130785943)!
        }
        }
    }()
    private func __setTileSize(_ size: Godot.Vector2i) {
        withUnsafePointer(to: size) { (__ptr_size) in
            withUnsafeArgumentPackPointer(__ptr_size) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_tile_size,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_tile_size: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tile_size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3690982128)!
        }
        }
    }()
    private func __getTileSize() -> Godot.Vector2i {
        var __temporary = Godot.Vector2i()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_tile_size,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_uv_clipping: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_uv_clipping").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setUvClipping(_ uvClipping: Bool) {
        withUnsafePointer(to: uvClipping) { (__ptr_uvClipping) in
            withUnsafeArgumentPackPointer(__ptr_uvClipping) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_uv_clipping,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_is_uv_clipping: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_uv_clipping").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isUvClipping() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_uv_clipping,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_occlusion_layers_count: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_occlusion_layers_count").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func occlusionLayersCount() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_occlusion_layers_count,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_add_occlusion_layer: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_occlusion_layer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1025054187)!
        }
        }
    }()
    public func addOcclusionLayer(toPosition position: Int32 = -1) {
        withUnsafePointer(to: position) { (__ptr_position) in
            withUnsafeArgumentPackPointer(__ptr_position) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_add_occlusion_layer,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_move_occlusion_layer: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "move_occlusion_layer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func moveOcclusionLayer(layerIndex: Int32, toPosition position: Int32) {
        withUnsafePointer(to: layerIndex) { (__ptr_layerIndex) in
            withUnsafePointer(to: position) { (__ptr_position) in
                withUnsafeArgumentPackPointer(__ptr_layerIndex, __ptr_position) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_move_occlusion_layer,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_remove_occlusion_layer: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_occlusion_layer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func removeOcclusionLayer(layerIndex: Int32) {
        withUnsafePointer(to: layerIndex) { (__ptr_layerIndex) in
            withUnsafeArgumentPackPointer(__ptr_layerIndex) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_remove_occlusion_layer,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_set_occlusion_layer_light_mask: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_occlusion_layer_light_mask").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func setOcclusionLayerLightMask(layerIndex: Int32, lightMask: Int32) {
        withUnsafePointer(to: layerIndex) { (__ptr_layerIndex) in
            withUnsafePointer(to: lightMask) { (__ptr_lightMask) in
                withUnsafeArgumentPackPointer(__ptr_layerIndex, __ptr_lightMask) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_occlusion_layer_light_mask,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_occlusion_layer_light_mask: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_occlusion_layer_light_mask").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()
    public func occlusionLayerLightMask(layerIndex: Int32) -> Int32 {
        var __temporary = Int32()
        withUnsafePointer(to: layerIndex) { (__ptr_layerIndex) in
            withUnsafeArgumentPackPointer(__ptr_layerIndex) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_occlusion_layer_light_mask,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_set_occlusion_layer_sdf_collision: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_occlusion_layer_sdf_collision").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()
    public func setOcclusionLayerSdfCollision(layerIndex: Int32, sdfCollision: Bool) {
        withUnsafePointer(to: layerIndex) { (__ptr_layerIndex) in
            withUnsafePointer(to: sdfCollision) { (__ptr_sdfCollision) in
                withUnsafeArgumentPackPointer(__ptr_layerIndex, __ptr_sdfCollision) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_occlusion_layer_sdf_collision,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_occlusion_layer_sdf_collision: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_occlusion_layer_sdf_collision").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func occlusionLayerSdfCollision(layerIndex: Int32) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: layerIndex) { (__ptr_layerIndex) in
            withUnsafeArgumentPackPointer(__ptr_layerIndex) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_occlusion_layer_sdf_collision,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_physics_layers_count: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_physics_layers_count").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func physicsLayersCount() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_physics_layers_count,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_add_physics_layer: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_physics_layer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1025054187)!
        }
        }
    }()
    public func addPhysicsLayer(toPosition position: Int32 = -1) {
        withUnsafePointer(to: position) { (__ptr_position) in
            withUnsafeArgumentPackPointer(__ptr_position) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_add_physics_layer,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_move_physics_layer: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "move_physics_layer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func movePhysicsLayer(layerIndex: Int32, toPosition position: Int32) {
        withUnsafePointer(to: layerIndex) { (__ptr_layerIndex) in
            withUnsafePointer(to: position) { (__ptr_position) in
                withUnsafeArgumentPackPointer(__ptr_layerIndex, __ptr_position) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_move_physics_layer,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_remove_physics_layer: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_physics_layer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func removePhysicsLayer(layerIndex: Int32) {
        withUnsafePointer(to: layerIndex) { (__ptr_layerIndex) in
            withUnsafeArgumentPackPointer(__ptr_layerIndex) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_remove_physics_layer,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_set_physics_layer_collision_layer: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_physics_layer_collision_layer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func setPhysicsLayerCollisionLayer(layerIndex: Int32, layer: UInt32) {
        withUnsafePointer(to: layerIndex) { (__ptr_layerIndex) in
            withUnsafePointer(to: layer) { (__ptr_layer) in
                withUnsafeArgumentPackPointer(__ptr_layerIndex, __ptr_layer) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_physics_layer_collision_layer,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_physics_layer_collision_layer: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_physics_layer_collision_layer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()
    public func physicsLayerCollisionLayer(layerIndex: Int32) -> UInt32 {
        var __temporary = UInt32()
        withUnsafePointer(to: layerIndex) { (__ptr_layerIndex) in
            withUnsafeArgumentPackPointer(__ptr_layerIndex) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_physics_layer_collision_layer,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_set_physics_layer_collision_mask: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_physics_layer_collision_mask").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func setPhysicsLayerCollisionMask(layerIndex: Int32, mask: UInt32) {
        withUnsafePointer(to: layerIndex) { (__ptr_layerIndex) in
            withUnsafePointer(to: mask) { (__ptr_mask) in
                withUnsafeArgumentPackPointer(__ptr_layerIndex, __ptr_mask) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_physics_layer_collision_mask,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_physics_layer_collision_mask: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_physics_layer_collision_mask").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()
    public func physicsLayerCollisionMask(layerIndex: Int32) -> UInt32 {
        var __temporary = UInt32()
        withUnsafePointer(to: layerIndex) { (__ptr_layerIndex) in
            withUnsafeArgumentPackPointer(__ptr_layerIndex) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_physics_layer_collision_mask,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_set_physics_layer_physics_material: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_physics_layer_physics_material").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1018687357)!
        }
        }
    }()
    public func setPhysicsLayerPhysicsMaterial(layerIndex: Int32, physicsMaterial: Godot.PhysicsMaterial?) {
        withUnsafePointer(to: layerIndex) { (__ptr_layerIndex) in
            physicsMaterial.withUnsafeRawPointer { (__ptr_physicsMaterial) in
                withUnsafePointer(to: __ptr_physicsMaterial) { (_ptr___ptr_physicsMaterial) in
                    withUnsafeArgumentPackPointer(__ptr_layerIndex, _ptr___ptr_physicsMaterial) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_set_physics_layer_physics_material,
                                __ptr_self,
                                __accessPtr,
                                nil
                            )
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_get_physics_layer_physics_material: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_physics_layer_physics_material").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 788318639)!
        }
        }
    }()
    public func physicsLayerPhysicsMaterial(layerIndex: Int32) -> Godot.PhysicsMaterial? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafePointer(to: layerIndex) { (__ptr_layerIndex) in
            withUnsafeArgumentPackPointer(__ptr_layerIndex) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_physics_layer_physics_material,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.PhysicsMaterial.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_get_terrain_sets_count: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_terrain_sets_count").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func terrainSetsCount() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_terrain_sets_count,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_add_terrain_set: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_terrain_set").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1025054187)!
        }
        }
    }()
    public func addTerrainSet(toPosition position: Int32 = -1) {
        withUnsafePointer(to: position) { (__ptr_position) in
            withUnsafeArgumentPackPointer(__ptr_position) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_add_terrain_set,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_move_terrain_set: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "move_terrain_set").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func moveTerrainSet(_ terrainSet: Int32, toPosition position: Int32) {
        withUnsafePointer(to: terrainSet) { (__ptr_terrainSet) in
            withUnsafePointer(to: position) { (__ptr_position) in
                withUnsafeArgumentPackPointer(__ptr_terrainSet, __ptr_position) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_move_terrain_set,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_remove_terrain_set: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_terrain_set").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func removeTerrainSet(_ terrainSet: Int32) {
        withUnsafePointer(to: terrainSet) { (__ptr_terrainSet) in
            withUnsafeArgumentPackPointer(__ptr_terrainSet) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_remove_terrain_set,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_set_terrain_set_mode: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_terrain_set_mode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3943003916)!
        }
        }
    }()
    public func setTerrainSetMode(terrainSet: Int32, mode: Godot.TileSet.TerrainMode) {
        withUnsafePointer(to: terrainSet) { (__ptr_terrainSet) in
            withUnsafePointer(to: mode) { (__ptr_mode) in
                withUnsafeArgumentPackPointer(__ptr_terrainSet, __ptr_mode) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_terrain_set_mode,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_terrain_set_mode: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_terrain_set_mode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2084469411)!
        }
        }
    }()
    public func terrainSetMode(terrainSet: Int32) -> Godot.TileSet.TerrainMode {
        var __temporary = Godot.TileSet.TerrainMode.RawValue(0)
        withUnsafePointer(to: terrainSet) { (__ptr_terrainSet) in
            withUnsafeArgumentPackPointer(__ptr_terrainSet) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_terrain_set_mode,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.TileSet.TerrainMode(rawValue: __temporary)!
    }

    private static var __method_binding_get_terrains_count: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_terrains_count").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()
    public func terrainsCount(terrainSet: Int32) -> Int32 {
        var __temporary = Int32()
        withUnsafePointer(to: terrainSet) { (__ptr_terrainSet) in
            withUnsafeArgumentPackPointer(__ptr_terrainSet) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_terrains_count,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_add_terrain: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_terrain").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3023605688)!
        }
        }
    }()
    public func addTerrain(terrainSet: Int32, toPosition position: Int32 = -1) {
        withUnsafePointer(to: terrainSet) { (__ptr_terrainSet) in
            withUnsafePointer(to: position) { (__ptr_position) in
                withUnsafeArgumentPackPointer(__ptr_terrainSet, __ptr_position) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_add_terrain,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_move_terrain: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "move_terrain").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1649997291)!
        }
        }
    }()
    public func moveTerrain(terrainSet: Int32, terrainIndex: Int32, toPosition position: Int32) {
        withUnsafePointer(to: terrainSet) { (__ptr_terrainSet) in
            withUnsafePointer(to: terrainIndex) { (__ptr_terrainIndex) in
                withUnsafePointer(to: position) { (__ptr_position) in
                    withUnsafeArgumentPackPointer(__ptr_terrainSet, __ptr_terrainIndex, __ptr_position) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_move_terrain,
                                __ptr_self,
                                __accessPtr,
                                nil
                            )
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_remove_terrain: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_terrain").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func removeTerrain(terrainSet: Int32, terrainIndex: Int32) {
        withUnsafePointer(to: terrainSet) { (__ptr_terrainSet) in
            withUnsafePointer(to: terrainIndex) { (__ptr_terrainIndex) in
                withUnsafeArgumentPackPointer(__ptr_terrainSet, __ptr_terrainIndex) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_remove_terrain,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_set_terrain_name: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_terrain_name").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2285447957)!
        }
        }
    }()
    public func setTerrainName(terrainSet: Int32, terrainIndex: Int32, name: Godot.GodotString) {
        withUnsafePointer(to: terrainSet) { (__ptr_terrainSet) in
            withUnsafePointer(to: terrainIndex) { (__ptr_terrainIndex) in
                name.withUnsafeRawPointer { (__ptr_name) in
                    withUnsafeArgumentPackPointer(__ptr_terrainSet, __ptr_terrainIndex, __ptr_name) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_set_terrain_name,
                                __ptr_self,
                                __accessPtr,
                                nil
                            )
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_get_terrain_name: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_terrain_name").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1391810591)!
        }
        }
    }()
    public func terrainName(terrainSet: Int32, terrainIndex: Int32) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        withUnsafePointer(to: terrainSet) { (__ptr_terrainSet) in
            withUnsafePointer(to: terrainIndex) { (__ptr_terrainIndex) in
                withUnsafeArgumentPackPointer(__ptr_terrainSet, __ptr_terrainIndex) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_get_terrain_name,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_set_terrain_color: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_terrain_color").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3733378741)!
        }
        }
    }()
    public func setTerrainColor(terrainSet: Int32, terrainIndex: Int32, color: Godot.Color) {
        withUnsafePointer(to: terrainSet) { (__ptr_terrainSet) in
            withUnsafePointer(to: terrainIndex) { (__ptr_terrainIndex) in
                withUnsafePointer(to: color) { (__ptr_color) in
                    withUnsafeArgumentPackPointer(__ptr_terrainSet, __ptr_terrainIndex, __ptr_color) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_set_terrain_color,
                                __ptr_self,
                                __accessPtr,
                                nil
                            )
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_get_terrain_color: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_terrain_color").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2165839948)!
        }
        }
    }()
    public func terrainColor(terrainSet: Int32, terrainIndex: Int32) -> Godot.Color {
        var __temporary = Godot.Color()
        withUnsafePointer(to: terrainSet) { (__ptr_terrainSet) in
            withUnsafePointer(to: terrainIndex) { (__ptr_terrainIndex) in
                withUnsafeArgumentPackPointer(__ptr_terrainSet, __ptr_terrainIndex) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_get_terrain_color,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_navigation_layers_count: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_navigation_layers_count").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func navigationLayersCount() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_navigation_layers_count,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_add_navigation_layer: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_navigation_layer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1025054187)!
        }
        }
    }()
    public func addNavigationLayer(toPosition position: Int32 = -1) {
        withUnsafePointer(to: position) { (__ptr_position) in
            withUnsafeArgumentPackPointer(__ptr_position) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_add_navigation_layer,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_move_navigation_layer: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "move_navigation_layer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func moveNavigationLayer(layerIndex: Int32, toPosition position: Int32) {
        withUnsafePointer(to: layerIndex) { (__ptr_layerIndex) in
            withUnsafePointer(to: position) { (__ptr_position) in
                withUnsafeArgumentPackPointer(__ptr_layerIndex, __ptr_position) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_move_navigation_layer,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_remove_navigation_layer: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_navigation_layer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func removeNavigationLayer(layerIndex: Int32) {
        withUnsafePointer(to: layerIndex) { (__ptr_layerIndex) in
            withUnsafeArgumentPackPointer(__ptr_layerIndex) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_remove_navigation_layer,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_set_navigation_layer_layers: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_navigation_layer_layers").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func setNavigationLayerLayers(layerIndex: Int32, layers: UInt32) {
        withUnsafePointer(to: layerIndex) { (__ptr_layerIndex) in
            withUnsafePointer(to: layers) { (__ptr_layers) in
                withUnsafeArgumentPackPointer(__ptr_layerIndex, __ptr_layers) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_navigation_layer_layers,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_navigation_layer_layers: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_navigation_layer_layers").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()
    public func navigationLayerLayers(layerIndex: Int32) -> UInt32 {
        var __temporary = UInt32()
        withUnsafePointer(to: layerIndex) { (__ptr_layerIndex) in
            withUnsafeArgumentPackPointer(__ptr_layerIndex) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_navigation_layer_layers,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_set_navigation_layer_layer_value: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_navigation_layer_layer_value").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1383440665)!
        }
        }
    }()
    public func setNavigationLayerLayerValue(layerIndex: Int32, layerNumber: Int32, value: Bool) {
        withUnsafePointer(to: layerIndex) { (__ptr_layerIndex) in
            withUnsafePointer(to: layerNumber) { (__ptr_layerNumber) in
                withUnsafePointer(to: value) { (__ptr_value) in
                    withUnsafeArgumentPackPointer(__ptr_layerIndex, __ptr_layerNumber, __ptr_value) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_set_navigation_layer_layer_value,
                                __ptr_self,
                                __accessPtr,
                                nil
                            )
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_get_navigation_layer_layer_value: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_navigation_layer_layer_value").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2522259332)!
        }
        }
    }()
    public func navigationLayerLayerValue(layerIndex: Int32, layerNumber: Int32) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: layerIndex) { (__ptr_layerIndex) in
            withUnsafePointer(to: layerNumber) { (__ptr_layerNumber) in
                withUnsafeArgumentPackPointer(__ptr_layerIndex, __ptr_layerNumber) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_get_navigation_layer_layer_value,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_custom_data_layers_count: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_custom_data_layers_count").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func customDataLayersCount() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_custom_data_layers_count,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_add_custom_data_layer: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_custom_data_layer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1025054187)!
        }
        }
    }()
    public func addCustomDataLayer(toPosition position: Int32 = -1) {
        withUnsafePointer(to: position) { (__ptr_position) in
            withUnsafeArgumentPackPointer(__ptr_position) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_add_custom_data_layer,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_move_custom_data_layer: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "move_custom_data_layer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func moveCustomDataLayer(layerIndex: Int32, toPosition position: Int32) {
        withUnsafePointer(to: layerIndex) { (__ptr_layerIndex) in
            withUnsafePointer(to: position) { (__ptr_position) in
                withUnsafeArgumentPackPointer(__ptr_layerIndex, __ptr_position) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_move_custom_data_layer,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_remove_custom_data_layer: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_custom_data_layer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func removeCustomDataLayer(layerIndex: Int32) {
        withUnsafePointer(to: layerIndex) { (__ptr_layerIndex) in
            withUnsafeArgumentPackPointer(__ptr_layerIndex) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_remove_custom_data_layer,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_custom_data_layer_by_name: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_custom_data_layer_by_name").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1321353865)!
        }
        }
    }()
    public func customDataLayerByName(layerName: Godot.GodotString) -> Int32 {
        var __temporary = Int32()
        layerName.withUnsafeRawPointer { (__ptr_layerName) in
            withUnsafeArgumentPackPointer(__ptr_layerName) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_custom_data_layer_by_name,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_set_custom_data_layer_name: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_custom_data_layer_name").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 501894301)!
        }
        }
    }()
    public func setCustomDataLayerName(layerIndex: Int32, layerName: Godot.GodotString) {
        withUnsafePointer(to: layerIndex) { (__ptr_layerIndex) in
            layerName.withUnsafeRawPointer { (__ptr_layerName) in
                withUnsafeArgumentPackPointer(__ptr_layerIndex, __ptr_layerName) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_custom_data_layer_name,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_custom_data_layer_name: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_custom_data_layer_name").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 844755477)!
        }
        }
    }()
    public func customDataLayerName(layerIndex: Int32) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        withUnsafePointer(to: layerIndex) { (__ptr_layerIndex) in
            withUnsafeArgumentPackPointer(__ptr_layerIndex) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_custom_data_layer_name,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_set_custom_data_layer_type: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_custom_data_layer_type").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3492912874)!
        }
        }
    }()
    public func setCustomDataLayerType(layerIndex: Int32, layerType: Godot.Variant.GodotType) {
        withUnsafePointer(to: layerIndex) { (__ptr_layerIndex) in
            withUnsafePointer(to: layerType) { (__ptr_layerType) in
                withUnsafeArgumentPackPointer(__ptr_layerIndex, __ptr_layerType) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_custom_data_layer_type,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_custom_data_layer_type: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_custom_data_layer_type").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2990820875)!
        }
        }
    }()
    public func customDataLayerType(layerIndex: Int32) -> Godot.Variant.GodotType {
        var __temporary = Godot.Variant.GodotType.RawValue(0)
        withUnsafePointer(to: layerIndex) { (__ptr_layerIndex) in
            withUnsafeArgumentPackPointer(__ptr_layerIndex) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_custom_data_layer_type,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.Variant.GodotType(rawValue: __temporary)!
    }

    private static var __method_binding_set_source_level_tile_proxy: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_source_level_tile_proxy").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func setSourceLevelTileProxy(sourceFrom: Int32, sourceTo: Int32) {
        withUnsafePointer(to: sourceFrom) { (__ptr_sourceFrom) in
            withUnsafePointer(to: sourceTo) { (__ptr_sourceTo) in
                withUnsafeArgumentPackPointer(__ptr_sourceFrom, __ptr_sourceTo) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_source_level_tile_proxy,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_source_level_tile_proxy: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_source_level_tile_proxy").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3744713108)!
        }
        }
    }()
    public func sourceLevelTileProxy(sourceFrom: Int32) -> Int32 {
        var __temporary = Int32()
        withUnsafePointer(to: sourceFrom) { (__ptr_sourceFrom) in
            withUnsafeArgumentPackPointer(__ptr_sourceFrom) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_source_level_tile_proxy,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_has_source_level_tile_proxy: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_source_level_tile_proxy").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3067735520)!
        }
        }
    }()
    public func hasSourceLevelTileProxy(sourceFrom: Int32) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: sourceFrom) { (__ptr_sourceFrom) in
            withUnsafeArgumentPackPointer(__ptr_sourceFrom) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_has_source_level_tile_proxy,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_remove_source_level_tile_proxy: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_source_level_tile_proxy").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func removeSourceLevelTileProxy(sourceFrom: Int32) {
        withUnsafePointer(to: sourceFrom) { (__ptr_sourceFrom) in
            withUnsafeArgumentPackPointer(__ptr_sourceFrom) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_remove_source_level_tile_proxy,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_set_coords_level_tile_proxy: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_coords_level_tile_proxy").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1769939278)!
        }
        }
    }()
    public func setCoordsLevelTileProxy(pSourceFrom: Int32, coordsFrom: Godot.Vector2i, sourceTo: Int32, coordsTo: Godot.Vector2i) {
        withUnsafePointer(to: pSourceFrom) { (__ptr_pSourceFrom) in
            withUnsafePointer(to: coordsFrom) { (__ptr_coordsFrom) in
                withUnsafePointer(to: sourceTo) { (__ptr_sourceTo) in
                    withUnsafePointer(to: coordsTo) { (__ptr_coordsTo) in
                        withUnsafeArgumentPackPointer(__ptr_pSourceFrom, __ptr_coordsFrom, __ptr_sourceTo, __ptr_coordsTo) { (__accessPtr) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_set_coords_level_tile_proxy,
                                    __ptr_self,
                                    __accessPtr,
                                    nil
                                )
                            }
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_get_coords_level_tile_proxy: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_coords_level_tile_proxy").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2856536371)!
        }
        }
    }()
    public func coordsLevelTileProxy(sourceFrom: Int32, coordsFrom: Godot.Vector2i) -> Godot.GodotArray {
        let __temporary = Godot.GodotArray()
        withUnsafePointer(to: sourceFrom) { (__ptr_sourceFrom) in
            withUnsafePointer(to: coordsFrom) { (__ptr_coordsFrom) in
                withUnsafeArgumentPackPointer(__ptr_sourceFrom, __ptr_coordsFrom) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_get_coords_level_tile_proxy,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_has_coords_level_tile_proxy: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_coords_level_tile_proxy").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3957903770)!
        }
        }
    }()
    public func hasCoordsLevelTileProxy(sourceFrom: Int32, coordsFrom: Godot.Vector2i) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: sourceFrom) { (__ptr_sourceFrom) in
            withUnsafePointer(to: coordsFrom) { (__ptr_coordsFrom) in
                withUnsafeArgumentPackPointer(__ptr_sourceFrom, __ptr_coordsFrom) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_has_coords_level_tile_proxy,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_remove_coords_level_tile_proxy: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_coords_level_tile_proxy").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2311374912)!
        }
        }
    }()
    public func removeCoordsLevelTileProxy(sourceFrom: Int32, coordsFrom: Godot.Vector2i) {
        withUnsafePointer(to: sourceFrom) { (__ptr_sourceFrom) in
            withUnsafePointer(to: coordsFrom) { (__ptr_coordsFrom) in
                withUnsafeArgumentPackPointer(__ptr_sourceFrom, __ptr_coordsFrom) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_remove_coords_level_tile_proxy,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_set_alternative_level_tile_proxy: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_alternative_level_tile_proxy").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3862385460)!
        }
        }
    }()
    public func setAlternativeLevelTileProxy(sourceFrom: Int32, coordsFrom: Godot.Vector2i, alternativeFrom: Int32, sourceTo: Int32, coordsTo: Godot.Vector2i, alternativeTo: Int32) {
        withUnsafePointer(to: sourceFrom) { (__ptr_sourceFrom) in
            withUnsafePointer(to: coordsFrom) { (__ptr_coordsFrom) in
                withUnsafePointer(to: alternativeFrom) { (__ptr_alternativeFrom) in
                    withUnsafePointer(to: sourceTo) { (__ptr_sourceTo) in
                        withUnsafePointer(to: coordsTo) { (__ptr_coordsTo) in
                            withUnsafePointer(to: alternativeTo) { (__ptr_alternativeTo) in
                                withUnsafeArgumentPackPointer(__ptr_sourceFrom, __ptr_coordsFrom, __ptr_alternativeFrom, __ptr_sourceTo, __ptr_coordsTo, __ptr_alternativeTo) { (__accessPtr) in
                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                        gdextension_interface_object_method_bind_ptrcall(
                                            Self.__method_binding_set_alternative_level_tile_proxy,
                                            __ptr_self,
                                            __accessPtr,
                                            nil
                                        )
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_get_alternative_level_tile_proxy: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_alternative_level_tile_proxy").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2303761075)!
        }
        }
    }()
    public func alternativeLevelTileProxy(sourceFrom: Int32, coordsFrom: Godot.Vector2i, alternativeFrom: Int32) -> Godot.GodotArray {
        let __temporary = Godot.GodotArray()
        withUnsafePointer(to: sourceFrom) { (__ptr_sourceFrom) in
            withUnsafePointer(to: coordsFrom) { (__ptr_coordsFrom) in
                withUnsafePointer(to: alternativeFrom) { (__ptr_alternativeFrom) in
                    withUnsafeArgumentPackPointer(__ptr_sourceFrom, __ptr_coordsFrom, __ptr_alternativeFrom) { (__accessPtr) in
                        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_get_alternative_level_tile_proxy,
                                    __ptr_self,
                                    __accessPtr,
                                    __ptr___temporary
                                )
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_has_alternative_level_tile_proxy: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_alternative_level_tile_proxy").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 180086755)!
        }
        }
    }()
    public func hasAlternativeLevelTileProxy(sourceFrom: Int32, coordsFrom: Godot.Vector2i, alternativeFrom: Int32) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: sourceFrom) { (__ptr_sourceFrom) in
            withUnsafePointer(to: coordsFrom) { (__ptr_coordsFrom) in
                withUnsafePointer(to: alternativeFrom) { (__ptr_alternativeFrom) in
                    withUnsafeArgumentPackPointer(__ptr_sourceFrom, __ptr_coordsFrom, __ptr_alternativeFrom) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_has_alternative_level_tile_proxy,
                                    __ptr_self,
                                    __accessPtr,
                                    __ptr___temporary
                                )
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_remove_alternative_level_tile_proxy: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_alternative_level_tile_proxy").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2328951467)!
        }
        }
    }()
    public func removeAlternativeLevelTileProxy(sourceFrom: Int32, coordsFrom: Godot.Vector2i, alternativeFrom: Int32) {
        withUnsafePointer(to: sourceFrom) { (__ptr_sourceFrom) in
            withUnsafePointer(to: coordsFrom) { (__ptr_coordsFrom) in
                withUnsafePointer(to: alternativeFrom) { (__ptr_alternativeFrom) in
                    withUnsafeArgumentPackPointer(__ptr_sourceFrom, __ptr_coordsFrom, __ptr_alternativeFrom) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_remove_alternative_level_tile_proxy,
                                __ptr_self,
                                __accessPtr,
                                nil
                            )
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_map_tile_proxy: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_tile_proxy").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4267935328)!
        }
        }
    }()
    public func mapTileProxy(sourceFrom: Int32, coordsFrom: Godot.Vector2i, alternativeFrom: Int32) -> Godot.GodotArray {
        let __temporary = Godot.GodotArray()
        withUnsafePointer(to: sourceFrom) { (__ptr_sourceFrom) in
            withUnsafePointer(to: coordsFrom) { (__ptr_coordsFrom) in
                withUnsafePointer(to: alternativeFrom) { (__ptr_alternativeFrom) in
                    withUnsafeArgumentPackPointer(__ptr_sourceFrom, __ptr_coordsFrom, __ptr_alternativeFrom) { (__accessPtr) in
                        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_map_tile_proxy,
                                    __ptr_self,
                                    __accessPtr,
                                    __ptr___temporary
                                )
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_cleanup_invalid_tile_proxies: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "cleanup_invalid_tile_proxies").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func cleanupInvalidTileProxies() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_cleanup_invalid_tile_proxies,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_clear_tile_proxies: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_tile_proxies").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func clearTileProxies() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_clear_tile_proxies,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_add_pattern: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_pattern").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3009264082)!
        }
        }
    }()
    public func addPattern(_ pattern: Godot.TileMapPattern?, index: Int32 = -1) -> Int32 {
        var __temporary = Int32()
        pattern.withUnsafeRawPointer { (__ptr_pattern) in
            withUnsafePointer(to: __ptr_pattern) { (_ptr___ptr_pattern) in
                withUnsafePointer(to: index) { (__ptr_index) in
                    withUnsafeArgumentPackPointer(_ptr___ptr_pattern, __ptr_index) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_add_pattern,
                                    __ptr_self,
                                    __accessPtr,
                                    __ptr___temporary
                                )
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_pattern: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_pattern").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4207737510)!
        }
        }
    }()
    public func pattern(index: Int32 = -1) -> Godot.TileMapPattern? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafePointer(to: index) { (__ptr_index) in
            withUnsafeArgumentPackPointer(__ptr_index) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_pattern,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.TileMapPattern.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_remove_pattern: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_pattern").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func removePattern(index: Int32) {
        withUnsafePointer(to: index) { (__ptr_index) in
            withUnsafeArgumentPackPointer(__ptr_index) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_remove_pattern,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_patterns_count: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_patterns_count").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2455072627)!
        }
        }
    }()
    public func patternsCount() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_patterns_count,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    public var tileShape: Godot.TileSet.TileShape {
        get {
            __getTileShape()
        }
        set {
            __setTileShape(
                newValue
            )
        }
    }

    public var tileLayout: Godot.TileSet.TileLayout {
        get {
            __getTileLayout()
        }
        set {
            __setTileLayout(
                newValue
            )
        }
    }

    public var tileOffsetAxis: Godot.TileSet.TileOffsetAxis {
        get {
            __getTileOffsetAxis()
        }
        set {
            __setTileOffsetAxis(
                alignment: newValue
            )
        }
    }

    public var tileSize: Godot.Vector2i {
        get {
            __getTileSize()
        }
        set {
            __setTileSize(
                newValue
            )
        }
    }

    public var isUvClipping: Bool {
        get {
            __isUvClipping()
        }
        set {
            __setUvClipping(
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