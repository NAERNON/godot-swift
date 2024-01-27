//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class TileSet: Resource {
    public enum TileShape: UInt32, GodotEnum {
        case square = 0
        case isometric = 1
        case halfOffsetSquare = 2
        case hexagon = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Square", 0),
            ("Isometric", 1),
            ("Half Offset Square", 2),
            ("Hexagon", 3),]
        }
    }
    public enum TileLayout: UInt32, GodotEnum {
        case stacked = 0
        case stackedOffset = 1
        case stairsRight = 2
        case stairsDown = 3
        case diamondRight = 4
        case diamondDown = 5
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Stacked", 0),
            ("Stacked Offset", 1),
            ("Stairs Right", 2),
            ("Stairs Down", 3),
            ("Diamond Right", 4),
            ("Diamond Down", 5),]
        }
    }
    public enum TileOffsetAxis: UInt32, GodotEnum {
        case horizontal = 0
        case vertical = 1
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Horizontal", 0),
            ("Vertical", 1),]
        }
    }
    public enum CellNeighbor: UInt32, GodotEnum {
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
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Right Side", 0),
            ("Right Corner", 1),
            ("Bottom Right Side", 2),
            ("Bottom Right Corner", 3),
            ("Bottom Side", 4),
            ("Bottom Corner", 5),
            ("Bottom Left Side", 6),
            ("Bottom Left Corner", 7),
            ("Left Side", 8),
            ("Left Corner", 9),
            ("Top Left Side", 10),
            ("Top Left Corner", 11),
            ("Top Side", 12),
            ("Top Corner", 13),
            ("Top Right Side", 14),
            ("Top Right Corner", 15),]
        }
    }
    public enum TerrainMode: UInt32, GodotEnum {
        case cornersAndSides = 0
        case corners = 1
        case sides = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Corners And Sides", 0),
            ("Corners", 1),
            ("Sides", 2),]
        }
    }

    internal static var __method_binding_get_next_source_id: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_next_source_id").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func nextSourceID() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_next_source_id,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_add_source: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_source").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1059186179)!
        }
        }
    }()
    public func addSource(_ source: Godot.TileSetSource?, atlasSourceIDOverride: Int32 = -1) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        source.withGodotUnsafeRawPointer { __ptr_source in
        withUnsafePointer(to: __ptr_source) { _ptr___ptr_source in
        atlasSourceIDOverride.withGodotUnsafeRawPointer { __ptr_atlasSourceIDOverride in
        withUnsafeArgumentPackPointer(_ptr___ptr_source, __ptr_atlasSourceIDOverride) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_source,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    internal static var __method_binding_remove_source: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_source").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func removeSource(sourceID: Int32) {
        sourceID.withGodotUnsafeRawPointer { __ptr_sourceID in
        withUnsafeArgumentPackPointer(__ptr_sourceID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_source,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_set_source_id: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_source_id").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func setSourceID(_ sourceID: Int32, newSourceID: Int32) {
        sourceID.withGodotUnsafeRawPointer { __ptr_sourceID in
        newSourceID.withGodotUnsafeRawPointer { __ptr_newSourceID in
        withUnsafeArgumentPackPointer(__ptr_sourceID, __ptr_newSourceID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_source_id,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_source_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_source_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func sourceCount() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_source_count,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_source_id: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_source_id").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()
    public func sourceID(index: Int32) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_source_id,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_has_source: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_source").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func hasSource(sourceID: Int32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        sourceID.withGodotUnsafeRawPointer { __ptr_sourceID in
        withUnsafeArgumentPackPointer(__ptr_sourceID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_source,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_source: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_source").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1763540252)!
        }
        }
    }()
    public func source(sourceID: Int32) -> Godot.TileSetSource? {
        Godot.TileSetSource?.fromMutatingGodotUnsafePointer { __temporary in
        sourceID.withGodotUnsafeRawPointer { __ptr_sourceID in
        withUnsafeArgumentPackPointer(__ptr_sourceID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_source,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_tile_shape: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tile_shape").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2131427112)!
        }
        }
    }()
    private func __setTileShape(_ shape: Godot.TileSet.TileShape) {
        shape.withGodotUnsafeRawPointer { __ptr_shape in
        withUnsafeArgumentPackPointer(__ptr_shape) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_tile_shape,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_tile_shape: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tile_shape").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 716918169)!
        }
        }
    }()
    private func __getTileShape() -> Godot.TileSet.TileShape {
        Godot.TileSet.TileShape.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_tile_shape,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_tile_layout: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tile_layout").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1071216679)!
        }
        }
    }()
    private func __setTileLayout(_ layout: Godot.TileSet.TileLayout) {
        layout.withGodotUnsafeRawPointer { __ptr_layout in
        withUnsafeArgumentPackPointer(__ptr_layout) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_tile_layout,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_tile_layout: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tile_layout").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 194628839)!
        }
        }
    }()
    private func __getTileLayout() -> Godot.TileSet.TileLayout {
        Godot.TileSet.TileLayout.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_tile_layout,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_tile_offset_axis: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tile_offset_axis").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3300198521)!
        }
        }
    }()
    private func __setTileOffsetAxis(alignment: Godot.TileSet.TileOffsetAxis) {
        alignment.withGodotUnsafeRawPointer { __ptr_alignment in
        withUnsafeArgumentPackPointer(__ptr_alignment) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_tile_offset_axis,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_tile_offset_axis: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tile_offset_axis").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 762494114)!
        }
        }
    }()
    private func __getTileOffsetAxis() -> Godot.TileSet.TileOffsetAxis {
        Godot.TileSet.TileOffsetAxis.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_tile_offset_axis,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_tile_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tile_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1130785943)!
        }
        }
    }()
    private func __setTileSize(_ size: Godot.Vector2I) {
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_tile_size,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_tile_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tile_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3690982128)!
        }
        }
    }()
    private func __getTileSize() -> Godot.Vector2I {
        Godot.Vector2I.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_tile_size,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_uv_clipping: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_uv_clipping").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setUvClipping(_ uvClipping: Bool) {
        uvClipping.withGodotUnsafeRawPointer { __ptr_uvClipping in
        withUnsafeArgumentPackPointer(__ptr_uvClipping) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_uv_clipping,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_uv_clipping: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_uv_clipping").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isUvClipping() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_uv_clipping,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_occlusion_layers_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_occlusion_layers_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func occlusionLayersCount() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_occlusion_layers_count,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_add_occlusion_layer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_occlusion_layer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1025054187)!
        }
        }
    }()
    public func addOcclusionLayer(toPosition position: Int32 = -1) {
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_occlusion_layer,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_move_occlusion_layer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "move_occlusion_layer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func moveOcclusionLayer(layerIndex: Int32, toPosition position: Int32) {
        layerIndex.withGodotUnsafeRawPointer { __ptr_layerIndex in
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_layerIndex, __ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_move_occlusion_layer,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_remove_occlusion_layer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_occlusion_layer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func removeOcclusionLayer(layerIndex: Int32) {
        layerIndex.withGodotUnsafeRawPointer { __ptr_layerIndex in
        withUnsafeArgumentPackPointer(__ptr_layerIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_occlusion_layer,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_set_occlusion_layer_light_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_occlusion_layer_light_mask").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func setOcclusionLayerLightMask(layerIndex: Int32, lightMask: Int32) {
        layerIndex.withGodotUnsafeRawPointer { __ptr_layerIndex in
        lightMask.withGodotUnsafeRawPointer { __ptr_lightMask in
        withUnsafeArgumentPackPointer(__ptr_layerIndex, __ptr_lightMask) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_occlusion_layer_light_mask,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_occlusion_layer_light_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_occlusion_layer_light_mask").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()
    public func occlusionLayerLightMask(layerIndex: Int32) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        layerIndex.withGodotUnsafeRawPointer { __ptr_layerIndex in
        withUnsafeArgumentPackPointer(__ptr_layerIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_occlusion_layer_light_mask,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_occlusion_layer_sdf_collision: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_occlusion_layer_sdf_collision").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()
    public func setOcclusionLayerSdfCollision(layerIndex: Int32, sdfCollision: Bool) {
        layerIndex.withGodotUnsafeRawPointer { __ptr_layerIndex in
        sdfCollision.withGodotUnsafeRawPointer { __ptr_sdfCollision in
        withUnsafeArgumentPackPointer(__ptr_layerIndex, __ptr_sdfCollision) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_occlusion_layer_sdf_collision,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_occlusion_layer_sdf_collision: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_occlusion_layer_sdf_collision").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func occlusionLayerSdfCollision(layerIndex: Int32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        layerIndex.withGodotUnsafeRawPointer { __ptr_layerIndex in
        withUnsafeArgumentPackPointer(__ptr_layerIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_occlusion_layer_sdf_collision,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_physics_layers_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_physics_layers_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func physicsLayersCount() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_physics_layers_count,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_add_physics_layer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_physics_layer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1025054187)!
        }
        }
    }()
    public func addPhysicsLayer(toPosition position: Int32 = -1) {
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_physics_layer,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_move_physics_layer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "move_physics_layer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func movePhysicsLayer(layerIndex: Int32, toPosition position: Int32) {
        layerIndex.withGodotUnsafeRawPointer { __ptr_layerIndex in
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_layerIndex, __ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_move_physics_layer,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_remove_physics_layer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_physics_layer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func removePhysicsLayer(layerIndex: Int32) {
        layerIndex.withGodotUnsafeRawPointer { __ptr_layerIndex in
        withUnsafeArgumentPackPointer(__ptr_layerIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_physics_layer,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_set_physics_layer_collision_layer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_physics_layer_collision_layer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func setPhysicsLayerCollisionLayer(layerIndex: Int32, layer: UInt32) {
        layerIndex.withGodotUnsafeRawPointer { __ptr_layerIndex in
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        withUnsafeArgumentPackPointer(__ptr_layerIndex, __ptr_layer) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_physics_layer_collision_layer,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_physics_layer_collision_layer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_physics_layer_collision_layer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()
    public func physicsLayerCollisionLayer(layerIndex: Int32) -> UInt32 {
        UInt32.fromMutatingGodotUnsafePointer { __temporary in
        layerIndex.withGodotUnsafeRawPointer { __ptr_layerIndex in
        withUnsafeArgumentPackPointer(__ptr_layerIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_physics_layer_collision_layer,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_physics_layer_collision_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_physics_layer_collision_mask").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func setPhysicsLayerCollisionMask(layerIndex: Int32, mask: UInt32) {
        layerIndex.withGodotUnsafeRawPointer { __ptr_layerIndex in
        mask.withGodotUnsafeRawPointer { __ptr_mask in
        withUnsafeArgumentPackPointer(__ptr_layerIndex, __ptr_mask) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_physics_layer_collision_mask,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_physics_layer_collision_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_physics_layer_collision_mask").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()
    public func physicsLayerCollisionMask(layerIndex: Int32) -> UInt32 {
        UInt32.fromMutatingGodotUnsafePointer { __temporary in
        layerIndex.withGodotUnsafeRawPointer { __ptr_layerIndex in
        withUnsafeArgumentPackPointer(__ptr_layerIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_physics_layer_collision_mask,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_physics_layer_physics_material: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_physics_layer_physics_material").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1018687357)!
        }
        }
    }()
    public func setPhysicsLayerPhysicsMaterial(layerIndex: Int32, physicsMaterial: Godot.PhysicsMaterial?) {
        layerIndex.withGodotUnsafeRawPointer { __ptr_layerIndex in
        physicsMaterial.withGodotUnsafeRawPointer { __ptr_physicsMaterial in
        withUnsafePointer(to: __ptr_physicsMaterial) { _ptr___ptr_physicsMaterial in
        withUnsafeArgumentPackPointer(__ptr_layerIndex, _ptr___ptr_physicsMaterial) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_physics_layer_physics_material,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_get_physics_layer_physics_material: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_physics_layer_physics_material").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 788318639)!
        }
        }
    }()
    public func physicsLayerPhysicsMaterial(layerIndex: Int32) -> Godot.PhysicsMaterial? {
        Godot.PhysicsMaterial?.fromMutatingGodotUnsafePointer { __temporary in
        layerIndex.withGodotUnsafeRawPointer { __ptr_layerIndex in
        withUnsafeArgumentPackPointer(__ptr_layerIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_physics_layer_physics_material,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_terrain_sets_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_terrain_sets_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func terrainSetsCount() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_terrain_sets_count,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_add_terrain_set: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_terrain_set").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1025054187)!
        }
        }
    }()
    public func addTerrainSet(toPosition position: Int32 = -1) {
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_terrain_set,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_move_terrain_set: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "move_terrain_set").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func moveTerrainSet(_ terrainSet: Int32, toPosition position: Int32) {
        terrainSet.withGodotUnsafeRawPointer { __ptr_terrainSet in
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_terrainSet, __ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_move_terrain_set,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_remove_terrain_set: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_terrain_set").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func removeTerrainSet(_ terrainSet: Int32) {
        terrainSet.withGodotUnsafeRawPointer { __ptr_terrainSet in
        withUnsafeArgumentPackPointer(__ptr_terrainSet) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_terrain_set,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_set_terrain_set_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_terrain_set_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3943003916)!
        }
        }
    }()
    public func setTerrainSetMode(terrainSet: Int32, mode: Godot.TileSet.TerrainMode) {
        terrainSet.withGodotUnsafeRawPointer { __ptr_terrainSet in
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_terrainSet, __ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_terrain_set_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_terrain_set_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_terrain_set_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2084469411)!
        }
        }
    }()
    public func terrainSetMode(terrainSet: Int32) -> Godot.TileSet.TerrainMode {
        Godot.TileSet.TerrainMode.fromMutatingGodotUnsafePointer { __temporary in
        terrainSet.withGodotUnsafeRawPointer { __ptr_terrainSet in
        withUnsafeArgumentPackPointer(__ptr_terrainSet) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_terrain_set_mode,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_terrains_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_terrains_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()
    public func terrainsCount(terrainSet: Int32) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        terrainSet.withGodotUnsafeRawPointer { __ptr_terrainSet in
        withUnsafeArgumentPackPointer(__ptr_terrainSet) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_terrains_count,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_add_terrain: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_terrain").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1230568737)!
        }
        }
    }()
    public func addTerrain(terrainSet: Int32, toPosition position: Int32 = -1) {
        terrainSet.withGodotUnsafeRawPointer { __ptr_terrainSet in
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_terrainSet, __ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_terrain,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_move_terrain: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "move_terrain").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1649997291)!
        }
        }
    }()
    public func moveTerrain(terrainSet: Int32, terrainIndex: Int32, toPosition position: Int32) {
        terrainSet.withGodotUnsafeRawPointer { __ptr_terrainSet in
        terrainIndex.withGodotUnsafeRawPointer { __ptr_terrainIndex in
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_terrainSet, __ptr_terrainIndex, __ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_move_terrain,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_remove_terrain: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_terrain").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func removeTerrain(terrainSet: Int32, terrainIndex: Int32) {
        terrainSet.withGodotUnsafeRawPointer { __ptr_terrainSet in
        terrainIndex.withGodotUnsafeRawPointer { __ptr_terrainIndex in
        withUnsafeArgumentPackPointer(__ptr_terrainSet, __ptr_terrainIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_terrain,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_set_terrain_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_terrain_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2285447957)!
        }
        }
    }()
    public func setTerrainName(terrainSet: Int32, terrainIndex: Int32, name: Godot.GodotString) {
        terrainSet.withGodotUnsafeRawPointer { __ptr_terrainSet in
        terrainIndex.withGodotUnsafeRawPointer { __ptr_terrainIndex in
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_terrainSet, __ptr_terrainIndex, __ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_terrain_name,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_get_terrain_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_terrain_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1391810591)!
        }
        }
    }()
    public func terrainName(terrainSet: Int32, terrainIndex: Int32) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        terrainSet.withGodotUnsafeRawPointer { __ptr_terrainSet in
        terrainIndex.withGodotUnsafeRawPointer { __ptr_terrainIndex in
        withUnsafeArgumentPackPointer(__ptr_terrainSet, __ptr_terrainIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_terrain_name,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_set_terrain_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_terrain_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3733378741)!
        }
        }
    }()
    public func setTerrainColor(terrainSet: Int32, terrainIndex: Int32, color: Godot.Color) {
        terrainSet.withGodotUnsafeRawPointer { __ptr_terrainSet in
        terrainIndex.withGodotUnsafeRawPointer { __ptr_terrainIndex in
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_terrainSet, __ptr_terrainIndex, __ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_terrain_color,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_get_terrain_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_terrain_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2165839948)!
        }
        }
    }()
    public func terrainColor(terrainSet: Int32, terrainIndex: Int32) -> Godot.Color {
        Godot.Color.fromMutatingGodotUnsafePointer { __temporary in
        terrainSet.withGodotUnsafeRawPointer { __ptr_terrainSet in
        terrainIndex.withGodotUnsafeRawPointer { __ptr_terrainIndex in
        withUnsafeArgumentPackPointer(__ptr_terrainSet, __ptr_terrainIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_terrain_color,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_get_navigation_layers_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_navigation_layers_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func navigationLayersCount() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_navigation_layers_count,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_add_navigation_layer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_navigation_layer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1025054187)!
        }
        }
    }()
    public func addNavigationLayer(toPosition position: Int32 = -1) {
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_navigation_layer,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_move_navigation_layer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "move_navigation_layer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func moveNavigationLayer(layerIndex: Int32, toPosition position: Int32) {
        layerIndex.withGodotUnsafeRawPointer { __ptr_layerIndex in
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_layerIndex, __ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_move_navigation_layer,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_remove_navigation_layer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_navigation_layer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func removeNavigationLayer(layerIndex: Int32) {
        layerIndex.withGodotUnsafeRawPointer { __ptr_layerIndex in
        withUnsafeArgumentPackPointer(__ptr_layerIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_navigation_layer,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_set_navigation_layer_layers: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_navigation_layer_layers").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func setNavigationLayerLayers(layerIndex: Int32, layers: UInt32) {
        layerIndex.withGodotUnsafeRawPointer { __ptr_layerIndex in
        layers.withGodotUnsafeRawPointer { __ptr_layers in
        withUnsafeArgumentPackPointer(__ptr_layerIndex, __ptr_layers) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_navigation_layer_layers,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_navigation_layer_layers: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_navigation_layer_layers").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()
    public func navigationLayerLayers(layerIndex: Int32) -> UInt32 {
        UInt32.fromMutatingGodotUnsafePointer { __temporary in
        layerIndex.withGodotUnsafeRawPointer { __ptr_layerIndex in
        withUnsafeArgumentPackPointer(__ptr_layerIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_navigation_layer_layers,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_navigation_layer_layer_value: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_navigation_layer_layer_value").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1383440665)!
        }
        }
    }()
    public func setNavigationLayerLayerValue(layerIndex: Int32, layerNumber: Int32, value: Bool) {
        layerIndex.withGodotUnsafeRawPointer { __ptr_layerIndex in
        layerNumber.withGodotUnsafeRawPointer { __ptr_layerNumber in
        value.withGodotUnsafeRawPointer { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_layerIndex, __ptr_layerNumber, __ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_navigation_layer_layer_value,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_get_navigation_layer_layer_value: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_navigation_layer_layer_value").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2522259332)!
        }
        }
    }()
    public func navigationLayerLayerValue(layerIndex: Int32, layerNumber: Int32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        layerIndex.withGodotUnsafeRawPointer { __ptr_layerIndex in
        layerNumber.withGodotUnsafeRawPointer { __ptr_layerNumber in
        withUnsafeArgumentPackPointer(__ptr_layerIndex, __ptr_layerNumber) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_navigation_layer_layer_value,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_get_custom_data_layers_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_custom_data_layers_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func customDataLayersCount() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_custom_data_layers_count,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_add_custom_data_layer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_custom_data_layer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1025054187)!
        }
        }
    }()
    public func addCustomDataLayer(toPosition position: Int32 = -1) {
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_custom_data_layer,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_move_custom_data_layer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "move_custom_data_layer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func moveCustomDataLayer(layerIndex: Int32, toPosition position: Int32) {
        layerIndex.withGodotUnsafeRawPointer { __ptr_layerIndex in
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_layerIndex, __ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_move_custom_data_layer,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_remove_custom_data_layer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_custom_data_layer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func removeCustomDataLayer(layerIndex: Int32) {
        layerIndex.withGodotUnsafeRawPointer { __ptr_layerIndex in
        withUnsafeArgumentPackPointer(__ptr_layerIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_custom_data_layer,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_custom_data_layer_by_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_custom_data_layer_by_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1321353865)!
        }
        }
    }()
    public func customDataLayerByName(layerName: Godot.GodotString) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        layerName.withGodotUnsafeRawPointer { __ptr_layerName in
        withUnsafeArgumentPackPointer(__ptr_layerName) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_custom_data_layer_by_name,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_custom_data_layer_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_custom_data_layer_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 501894301)!
        }
        }
    }()
    public func setCustomDataLayerName(layerIndex: Int32, layerName: Godot.GodotString) {
        layerIndex.withGodotUnsafeRawPointer { __ptr_layerIndex in
        layerName.withGodotUnsafeRawPointer { __ptr_layerName in
        withUnsafeArgumentPackPointer(__ptr_layerIndex, __ptr_layerName) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_custom_data_layer_name,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_custom_data_layer_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_custom_data_layer_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 844755477)!
        }
        }
    }()
    public func customDataLayerName(layerIndex: Int32) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        layerIndex.withGodotUnsafeRawPointer { __ptr_layerIndex in
        withUnsafeArgumentPackPointer(__ptr_layerIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_custom_data_layer_name,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_custom_data_layer_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_custom_data_layer_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3492912874)!
        }
        }
    }()
    public func setCustomDataLayerType(layerIndex: Int32, layerType: Godot.Variant.StorageType) {
        layerIndex.withGodotUnsafeRawPointer { __ptr_layerIndex in
        layerType.withGodotUnsafeRawPointer { __ptr_layerType in
        withUnsafeArgumentPackPointer(__ptr_layerIndex, __ptr_layerType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_custom_data_layer_type,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_custom_data_layer_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_custom_data_layer_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2990820875)!
        }
        }
    }()
    public func customDataLayerType(layerIndex: Int32) -> Godot.Variant.StorageType {
        Godot.Variant.StorageType.fromMutatingGodotUnsafePointer { __temporary in
        layerIndex.withGodotUnsafeRawPointer { __ptr_layerIndex in
        withUnsafeArgumentPackPointer(__ptr_layerIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_custom_data_layer_type,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_source_level_tile_proxy: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_source_level_tile_proxy").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func setSourceLevelTileProxy(sourceFrom: Int32, sourceTo: Int32) {
        sourceFrom.withGodotUnsafeRawPointer { __ptr_sourceFrom in
        sourceTo.withGodotUnsafeRawPointer { __ptr_sourceTo in
        withUnsafeArgumentPackPointer(__ptr_sourceFrom, __ptr_sourceTo) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_source_level_tile_proxy,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_source_level_tile_proxy: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_source_level_tile_proxy").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3744713108)!
        }
        }
    }()
    public func sourceLevelTileProxy(sourceFrom: Int32) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        sourceFrom.withGodotUnsafeRawPointer { __ptr_sourceFrom in
        withUnsafeArgumentPackPointer(__ptr_sourceFrom) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_source_level_tile_proxy,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_has_source_level_tile_proxy: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_source_level_tile_proxy").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3067735520)!
        }
        }
    }()
    public func hasSourceLevelTileProxy(sourceFrom: Int32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        sourceFrom.withGodotUnsafeRawPointer { __ptr_sourceFrom in
        withUnsafeArgumentPackPointer(__ptr_sourceFrom) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_source_level_tile_proxy,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_remove_source_level_tile_proxy: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_source_level_tile_proxy").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func removeSourceLevelTileProxy(sourceFrom: Int32) {
        sourceFrom.withGodotUnsafeRawPointer { __ptr_sourceFrom in
        withUnsafeArgumentPackPointer(__ptr_sourceFrom) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_source_level_tile_proxy,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_set_coords_level_tile_proxy: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_coords_level_tile_proxy").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1769939278)!
        }
        }
    }()
    public func setCoordsLevelTileProxy(pSourceFrom: Int32, coordsFrom: Godot.Vector2I, sourceTo: Int32, coordsTo: Godot.Vector2I) {
        pSourceFrom.withGodotUnsafeRawPointer { __ptr_pSourceFrom in
        coordsFrom.withGodotUnsafeRawPointer { __ptr_coordsFrom in
        sourceTo.withGodotUnsafeRawPointer { __ptr_sourceTo in
        coordsTo.withGodotUnsafeRawPointer { __ptr_coordsTo in
        withUnsafeArgumentPackPointer(__ptr_pSourceFrom, __ptr_coordsFrom, __ptr_sourceTo, __ptr_coordsTo) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_coords_level_tile_proxy,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    internal static var __method_binding_get_coords_level_tile_proxy: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_coords_level_tile_proxy").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2856536371)!
        }
        }
    }()
    public func coordsLevelTileProxy(sourceFrom: Int32, coordsFrom: Godot.Vector2I) -> Godot.AnyGodotArray {
        Godot.AnyGodotArray.fromMutatingGodotUnsafePointer { __temporary in
        sourceFrom.withGodotUnsafeRawPointer { __ptr_sourceFrom in
        coordsFrom.withGodotUnsafeRawPointer { __ptr_coordsFrom in
        withUnsafeArgumentPackPointer(__ptr_sourceFrom, __ptr_coordsFrom) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_coords_level_tile_proxy,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_has_coords_level_tile_proxy: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_coords_level_tile_proxy").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3957903770)!
        }
        }
    }()
    public func hasCoordsLevelTileProxy(sourceFrom: Int32, coordsFrom: Godot.Vector2I) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        sourceFrom.withGodotUnsafeRawPointer { __ptr_sourceFrom in
        coordsFrom.withGodotUnsafeRawPointer { __ptr_coordsFrom in
        withUnsafeArgumentPackPointer(__ptr_sourceFrom, __ptr_coordsFrom) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_coords_level_tile_proxy,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_remove_coords_level_tile_proxy: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_coords_level_tile_proxy").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2311374912)!
        }
        }
    }()
    public func removeCoordsLevelTileProxy(sourceFrom: Int32, coordsFrom: Godot.Vector2I) {
        sourceFrom.withGodotUnsafeRawPointer { __ptr_sourceFrom in
        coordsFrom.withGodotUnsafeRawPointer { __ptr_coordsFrom in
        withUnsafeArgumentPackPointer(__ptr_sourceFrom, __ptr_coordsFrom) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_coords_level_tile_proxy,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_set_alternative_level_tile_proxy: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_alternative_level_tile_proxy").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3862385460)!
        }
        }
    }()
    public func setAlternativeLevelTileProxy(sourceFrom: Int32, coordsFrom: Godot.Vector2I, alternativeFrom: Int32, sourceTo: Int32, coordsTo: Godot.Vector2I, alternativeTo: Int32) {
        sourceFrom.withGodotUnsafeRawPointer { __ptr_sourceFrom in
        coordsFrom.withGodotUnsafeRawPointer { __ptr_coordsFrom in
        alternativeFrom.withGodotUnsafeRawPointer { __ptr_alternativeFrom in
        sourceTo.withGodotUnsafeRawPointer { __ptr_sourceTo in
        coordsTo.withGodotUnsafeRawPointer { __ptr_coordsTo in
        alternativeTo.withGodotUnsafeRawPointer { __ptr_alternativeTo in
        withUnsafeArgumentPackPointer(__ptr_sourceFrom, __ptr_coordsFrom, __ptr_alternativeFrom, __ptr_sourceTo, __ptr_coordsTo, __ptr_alternativeTo) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_alternative_level_tile_proxy,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}
    }

    internal static var __method_binding_get_alternative_level_tile_proxy: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_alternative_level_tile_proxy").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2303761075)!
        }
        }
    }()
    public func alternativeLevelTileProxy(sourceFrom: Int32, coordsFrom: Godot.Vector2I, alternativeFrom: Int32) -> Godot.AnyGodotArray {
        Godot.AnyGodotArray.fromMutatingGodotUnsafePointer { __temporary in
        sourceFrom.withGodotUnsafeRawPointer { __ptr_sourceFrom in
        coordsFrom.withGodotUnsafeRawPointer { __ptr_coordsFrom in
        alternativeFrom.withGodotUnsafeRawPointer { __ptr_alternativeFrom in
        withUnsafeArgumentPackPointer(__ptr_sourceFrom, __ptr_coordsFrom, __ptr_alternativeFrom) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_alternative_level_tile_proxy,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    internal static var __method_binding_has_alternative_level_tile_proxy: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_alternative_level_tile_proxy").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 180086755)!
        }
        }
    }()
    public func hasAlternativeLevelTileProxy(sourceFrom: Int32, coordsFrom: Godot.Vector2I, alternativeFrom: Int32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        sourceFrom.withGodotUnsafeRawPointer { __ptr_sourceFrom in
        coordsFrom.withGodotUnsafeRawPointer { __ptr_coordsFrom in
        alternativeFrom.withGodotUnsafeRawPointer { __ptr_alternativeFrom in
        withUnsafeArgumentPackPointer(__ptr_sourceFrom, __ptr_coordsFrom, __ptr_alternativeFrom) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_alternative_level_tile_proxy,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    internal static var __method_binding_remove_alternative_level_tile_proxy: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_alternative_level_tile_proxy").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2328951467)!
        }
        }
    }()
    public func removeAlternativeLevelTileProxy(sourceFrom: Int32, coordsFrom: Godot.Vector2I, alternativeFrom: Int32) {
        sourceFrom.withGodotUnsafeRawPointer { __ptr_sourceFrom in
        coordsFrom.withGodotUnsafeRawPointer { __ptr_coordsFrom in
        alternativeFrom.withGodotUnsafeRawPointer { __ptr_alternativeFrom in
        withUnsafeArgumentPackPointer(__ptr_sourceFrom, __ptr_coordsFrom, __ptr_alternativeFrom) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_alternative_level_tile_proxy,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_map_tile_proxy: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_tile_proxy").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4267935328)!
        }
        }
    }()
    public func mapTileProxy(sourceFrom: Int32, coordsFrom: Godot.Vector2I, alternativeFrom: Int32) -> Godot.AnyGodotArray {
        Godot.AnyGodotArray.fromMutatingGodotUnsafePointer { __temporary in
        sourceFrom.withGodotUnsafeRawPointer { __ptr_sourceFrom in
        coordsFrom.withGodotUnsafeRawPointer { __ptr_coordsFrom in
        alternativeFrom.withGodotUnsafeRawPointer { __ptr_alternativeFrom in
        withUnsafeArgumentPackPointer(__ptr_sourceFrom, __ptr_coordsFrom, __ptr_alternativeFrom) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_map_tile_proxy,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    internal static var __method_binding_cleanup_invalid_tile_proxies: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "cleanup_invalid_tile_proxies").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func cleanupInvalidTileProxies() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_cleanup_invalid_tile_proxies,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_clear_tile_proxies: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_tile_proxies").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func clearTileProxies() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_clear_tile_proxies,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_add_pattern: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_pattern").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 763712015)!
        }
        }
    }()
    public func addPattern(_ pattern: Godot.TileMapPattern?, index: Int32 = -1) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        pattern.withGodotUnsafeRawPointer { __ptr_pattern in
        withUnsafePointer(to: __ptr_pattern) { _ptr___ptr_pattern in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(_ptr___ptr_pattern, __ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_pattern,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    internal static var __method_binding_get_pattern: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_pattern").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4207737510)!
        }
        }
    }()
    public func pattern(index: Int32 = -1) -> Godot.TileMapPattern? {
        Godot.TileMapPattern?.fromMutatingGodotUnsafePointer { __temporary in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_pattern,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_remove_pattern: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_pattern").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func removePattern(index: Int32) {
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_pattern,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_patterns_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_patterns_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2455072627)!
        }
        }
    }()
    public func patternsCount() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_patterns_count,
            __ptr_self,
            nil,
            __temporary
        )}}
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

    public var tileSize: Godot.Vector2I {
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