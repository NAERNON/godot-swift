//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class TileSetAtlasSource: TileSetSource {
    public enum TileAnimationMode: UInt32, GodotEnum {
        case `default` = 0
        case randomStartTimes = 1
        case max = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Default", 0),
            ("Random Start Times", 1),
            ("Max", 2),]
        }
    }

    public static let transformFlipH: Int = 4096
    public static let transformFlipV: Int = 8192
    public static let transformTranspose: Int = 16384

    internal static var __method_binding_set_texture: GDExtensionMethodBindPtr = {
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

    internal static var __method_binding_get_texture: GDExtensionMethodBindPtr = {
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

    internal static var __method_binding_set_margins: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_margins").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1130785943)!
        }
        }
    }()
    private func __setMargins(_ margins: Godot.Vector2I) {
        margins.withGodotUnsafeRawPointer { __ptr_margins in
        withUnsafeArgumentPackPointer(__ptr_margins) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_margins,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_margins: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_margins").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3690982128)!
        }
        }
    }()
    private func __getMargins() -> Godot.Vector2I {
        Godot.Vector2I.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_margins,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_separation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_separation").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1130785943)!
        }
        }
    }()
    private func __setSeparation(_ separation: Godot.Vector2I) {
        separation.withGodotUnsafeRawPointer { __ptr_separation in
        withUnsafeArgumentPackPointer(__ptr_separation) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_separation,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_separation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_separation").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3690982128)!
        }
        }
    }()
    private func __getSeparation() -> Godot.Vector2I {
        Godot.Vector2I.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_separation,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_texture_region_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_texture_region_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1130785943)!
        }
        }
    }()
    private func __setTextureRegionSize(_ textureRegionSize: Godot.Vector2I) {
        textureRegionSize.withGodotUnsafeRawPointer { __ptr_textureRegionSize in
        withUnsafeArgumentPackPointer(__ptr_textureRegionSize) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_texture_region_size,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_texture_region_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture_region_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3690982128)!
        }
        }
    }()
    private func __getTextureRegionSize() -> Godot.Vector2I {
        Godot.Vector2I.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_texture_region_size,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_use_texture_padding: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_use_texture_padding").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setUseTexturePadding(_ useTexturePadding: Bool) {
        useTexturePadding.withGodotUnsafeRawPointer { __ptr_useTexturePadding in
        withUnsafeArgumentPackPointer(__ptr_useTexturePadding) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_use_texture_padding,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_use_texture_padding: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_use_texture_padding").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getUseTexturePadding() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_use_texture_padding,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_create_tile: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_tile").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 190528769)!
        }
        }
    }()
    public func createTile(atlasCoords: Godot.Vector2I, size: Godot.Vector2I = Vector2i(x: 1, y: 1)) {
        atlasCoords.withGodotUnsafeRawPointer { __ptr_atlasCoords in
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_atlasCoords, __ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_create_tile,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_remove_tile: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_tile").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1130785943)!
        }
        }
    }()
    public func removeTile(atlasCoords: Godot.Vector2I) {
        atlasCoords.withGodotUnsafeRawPointer { __ptr_atlasCoords in
        withUnsafeArgumentPackPointer(__ptr_atlasCoords) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_tile,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_move_tile_in_atlas: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "move_tile_in_atlas").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3870111920)!
        }
        }
    }()
    public func moveTileInAtlas(atlasCoords: Godot.Vector2I, newAtlasCoords: Godot.Vector2I = Vector2i(x: -1, y: -1), newSize: Godot.Vector2I = Vector2i(x: -1, y: -1)) {
        atlasCoords.withGodotUnsafeRawPointer { __ptr_atlasCoords in
        newAtlasCoords.withGodotUnsafeRawPointer { __ptr_newAtlasCoords in
        newSize.withGodotUnsafeRawPointer { __ptr_newSize in
        withUnsafeArgumentPackPointer(__ptr_atlasCoords, __ptr_newAtlasCoords, __ptr_newSize) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_move_tile_in_atlas,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_get_tile_size_in_atlas: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tile_size_in_atlas").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3050897911)!
        }
        }
    }()
    public func tileSizeInAtlas(atlasCoords: Godot.Vector2I) -> Godot.Vector2I {
        Godot.Vector2I.fromMutatingGodotUnsafePointer { __temporary in
        atlasCoords.withGodotUnsafeRawPointer { __ptr_atlasCoords in
        withUnsafeArgumentPackPointer(__ptr_atlasCoords) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_tile_size_in_atlas,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_has_room_for_tile: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_room_for_tile").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3018597268)!
        }
        }
    }()
    public func hasRoomForTile(atlasCoords: Godot.Vector2I, size: Godot.Vector2I, animationColumns: Int32, animationSeparation: Godot.Vector2I, framesCount: Int32, ignoredTile: Godot.Vector2I = Vector2i(x: -1, y: -1)) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        atlasCoords.withGodotUnsafeRawPointer { __ptr_atlasCoords in
        size.withGodotUnsafeRawPointer { __ptr_size in
        animationColumns.withGodotUnsafeRawPointer { __ptr_animationColumns in
        animationSeparation.withGodotUnsafeRawPointer { __ptr_animationSeparation in
        framesCount.withGodotUnsafeRawPointer { __ptr_framesCount in
        ignoredTile.withGodotUnsafeRawPointer { __ptr_ignoredTile in
        withUnsafeArgumentPackPointer(__ptr_atlasCoords, __ptr_size, __ptr_animationColumns, __ptr_animationSeparation, __ptr_framesCount, __ptr_ignoredTile) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_room_for_tile,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}}
    }

    internal static var __method_binding_get_tiles_to_be_removed_on_change: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tiles_to_be_removed_on_change").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1240378054)!
        }
        }
    }()
    public func tilesToBeRemovedOnChange(texture: Godot.Texture2D?, margins: Godot.Vector2I, separation: Godot.Vector2I, textureRegionSize: Godot.Vector2I) -> Godot.PackedVector2Array {
        Godot.PackedVector2Array.fromMutatingGodotUnsafePointer { __temporary in
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafePointer(to: __ptr_texture) { _ptr___ptr_texture in
        margins.withGodotUnsafeRawPointer { __ptr_margins in
        separation.withGodotUnsafeRawPointer { __ptr_separation in
        textureRegionSize.withGodotUnsafeRawPointer { __ptr_textureRegionSize in
        withUnsafeArgumentPackPointer(_ptr___ptr_texture, __ptr_margins, __ptr_separation, __ptr_textureRegionSize) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_tiles_to_be_removed_on_change,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}
    }

    internal static var __method_binding_get_tile_at_coords: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tile_at_coords").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3050897911)!
        }
        }
    }()
    public func tileAtCoords(atlasCoords: Godot.Vector2I) -> Godot.Vector2I {
        Godot.Vector2I.fromMutatingGodotUnsafePointer { __temporary in
        atlasCoords.withGodotUnsafeRawPointer { __ptr_atlasCoords in
        withUnsafeArgumentPackPointer(__ptr_atlasCoords) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_tile_at_coords,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_has_tiles_outside_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_tiles_outside_texture").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func hasTilesOutsideTexture() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_tiles_outside_texture,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_clear_tiles_outside_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_tiles_outside_texture").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func clearTilesOutsideTexture() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_clear_tiles_outside_texture,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_set_tile_animation_columns: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tile_animation_columns").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3200960707)!
        }
        }
    }()
    public func setTileAnimationColumns(atlasCoords: Godot.Vector2I, frameColumns: Int32) {
        atlasCoords.withGodotUnsafeRawPointer { __ptr_atlasCoords in
        frameColumns.withGodotUnsafeRawPointer { __ptr_frameColumns in
        withUnsafeArgumentPackPointer(__ptr_atlasCoords, __ptr_frameColumns) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_tile_animation_columns,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_tile_animation_columns: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tile_animation_columns").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2485466453)!
        }
        }
    }()
    public func tileAnimationColumns(atlasCoords: Godot.Vector2I) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        atlasCoords.withGodotUnsafeRawPointer { __ptr_atlasCoords in
        withUnsafeArgumentPackPointer(__ptr_atlasCoords) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_tile_animation_columns,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_tile_animation_separation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tile_animation_separation").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1941061099)!
        }
        }
    }()
    public func setTileAnimationSeparation(atlasCoords: Godot.Vector2I, separation: Godot.Vector2I) {
        atlasCoords.withGodotUnsafeRawPointer { __ptr_atlasCoords in
        separation.withGodotUnsafeRawPointer { __ptr_separation in
        withUnsafeArgumentPackPointer(__ptr_atlasCoords, __ptr_separation) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_tile_animation_separation,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_tile_animation_separation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tile_animation_separation").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3050897911)!
        }
        }
    }()
    public func tileAnimationSeparation(atlasCoords: Godot.Vector2I) -> Godot.Vector2I {
        Godot.Vector2I.fromMutatingGodotUnsafePointer { __temporary in
        atlasCoords.withGodotUnsafeRawPointer { __ptr_atlasCoords in
        withUnsafeArgumentPackPointer(__ptr_atlasCoords) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_tile_animation_separation,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_tile_animation_speed: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tile_animation_speed").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2262553149)!
        }
        }
    }()
    public func setTileAnimationSpeed(atlasCoords: Godot.Vector2I, speed: Double) {
        atlasCoords.withGodotUnsafeRawPointer { __ptr_atlasCoords in
        speed.withGodotUnsafeRawPointer { __ptr_speed in
        withUnsafeArgumentPackPointer(__ptr_atlasCoords, __ptr_speed) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_tile_animation_speed,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_tile_animation_speed: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tile_animation_speed").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 719993801)!
        }
        }
    }()
    public func tileAnimationSpeed(atlasCoords: Godot.Vector2I) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        atlasCoords.withGodotUnsafeRawPointer { __ptr_atlasCoords in
        withUnsafeArgumentPackPointer(__ptr_atlasCoords) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_tile_animation_speed,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_tile_animation_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tile_animation_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3192753483)!
        }
        }
    }()
    public func setTileAnimationMode(atlasCoords: Godot.Vector2I, mode: Godot.TileSetAtlasSource.TileAnimationMode) {
        atlasCoords.withGodotUnsafeRawPointer { __ptr_atlasCoords in
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_atlasCoords, __ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_tile_animation_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_tile_animation_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tile_animation_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4025349959)!
        }
        }
    }()
    public func tileAnimationMode(atlasCoords: Godot.Vector2I) -> Godot.TileSetAtlasSource.TileAnimationMode {
        Godot.TileSetAtlasSource.TileAnimationMode.fromMutatingGodotUnsafePointer { __temporary in
        atlasCoords.withGodotUnsafeRawPointer { __ptr_atlasCoords in
        withUnsafeArgumentPackPointer(__ptr_atlasCoords) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_tile_animation_mode,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_tile_animation_frames_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tile_animation_frames_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3200960707)!
        }
        }
    }()
    public func setTileAnimationFramesCount(atlasCoords: Godot.Vector2I, framesCount: Int32) {
        atlasCoords.withGodotUnsafeRawPointer { __ptr_atlasCoords in
        framesCount.withGodotUnsafeRawPointer { __ptr_framesCount in
        withUnsafeArgumentPackPointer(__ptr_atlasCoords, __ptr_framesCount) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_tile_animation_frames_count,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_tile_animation_frames_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tile_animation_frames_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2485466453)!
        }
        }
    }()
    public func tileAnimationFramesCount(atlasCoords: Godot.Vector2I) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        atlasCoords.withGodotUnsafeRawPointer { __ptr_atlasCoords in
        withUnsafeArgumentPackPointer(__ptr_atlasCoords) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_tile_animation_frames_count,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_tile_animation_frame_duration: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tile_animation_frame_duration").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2843487787)!
        }
        }
    }()
    public func setTileAnimationFrameDuration(atlasCoords: Godot.Vector2I, frameIndex: Int32, duration: Double) {
        atlasCoords.withGodotUnsafeRawPointer { __ptr_atlasCoords in
        frameIndex.withGodotUnsafeRawPointer { __ptr_frameIndex in
        duration.withGodotUnsafeRawPointer { __ptr_duration in
        withUnsafeArgumentPackPointer(__ptr_atlasCoords, __ptr_frameIndex, __ptr_duration) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_tile_animation_frame_duration,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_get_tile_animation_frame_duration: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tile_animation_frame_duration").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1802448425)!
        }
        }
    }()
    public func tileAnimationFrameDuration(atlasCoords: Godot.Vector2I, frameIndex: Int32) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        atlasCoords.withGodotUnsafeRawPointer { __ptr_atlasCoords in
        frameIndex.withGodotUnsafeRawPointer { __ptr_frameIndex in
        withUnsafeArgumentPackPointer(__ptr_atlasCoords, __ptr_frameIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_tile_animation_frame_duration,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_get_tile_animation_total_duration: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tile_animation_total_duration").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 719993801)!
        }
        }
    }()
    public func tileAnimationTotalDuration(atlasCoords: Godot.Vector2I) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        atlasCoords.withGodotUnsafeRawPointer { __ptr_atlasCoords in
        withUnsafeArgumentPackPointer(__ptr_atlasCoords) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_tile_animation_total_duration,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_create_alternative_tile: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_alternative_tile").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2226298068)!
        }
        }
    }()
    public func createAlternativeTile(atlasCoords: Godot.Vector2I, alternativeIDOverride: Int32 = -1) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        atlasCoords.withGodotUnsafeRawPointer { __ptr_atlasCoords in
        alternativeIDOverride.withGodotUnsafeRawPointer { __ptr_alternativeIDOverride in
        withUnsafeArgumentPackPointer(__ptr_atlasCoords, __ptr_alternativeIDOverride) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_create_alternative_tile,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_remove_alternative_tile: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_alternative_tile").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3200960707)!
        }
        }
    }()
    public func removeAlternativeTile(atlasCoords: Godot.Vector2I, alternativeTile: Int32) {
        atlasCoords.withGodotUnsafeRawPointer { __ptr_atlasCoords in
        alternativeTile.withGodotUnsafeRawPointer { __ptr_alternativeTile in
        withUnsafeArgumentPackPointer(__ptr_atlasCoords, __ptr_alternativeTile) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_alternative_tile,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_set_alternative_tile_id: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_alternative_tile_id").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1499785778)!
        }
        }
    }()
    public func setAlternativeTileID(atlasCoords: Godot.Vector2I, alternativeTile: Int32, newID: Int32) {
        atlasCoords.withGodotUnsafeRawPointer { __ptr_atlasCoords in
        alternativeTile.withGodotUnsafeRawPointer { __ptr_alternativeTile in
        newID.withGodotUnsafeRawPointer { __ptr_newID in
        withUnsafeArgumentPackPointer(__ptr_atlasCoords, __ptr_alternativeTile, __ptr_newID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_alternative_tile_id,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_get_next_alternative_tile_id: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_next_alternative_tile_id").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2485466453)!
        }
        }
    }()
    public func nextAlternativeTileID(atlasCoords: Godot.Vector2I) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        atlasCoords.withGodotUnsafeRawPointer { __ptr_atlasCoords in
        withUnsafeArgumentPackPointer(__ptr_atlasCoords) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_next_alternative_tile_id,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_tile_data: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tile_data").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3534028207)!
        }
        }
    }()
    public func tileData(atlasCoords: Godot.Vector2I, alternativeTile: Int32) -> Godot.TileData? {
        Godot.TileData?.fromMutatingGodotUnsafePointer { __temporary in
        atlasCoords.withGodotUnsafeRawPointer { __ptr_atlasCoords in
        alternativeTile.withGodotUnsafeRawPointer { __ptr_alternativeTile in
        withUnsafeArgumentPackPointer(__ptr_atlasCoords, __ptr_alternativeTile) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_tile_data,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_get_atlas_grid_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_atlas_grid_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3690982128)!
        }
        }
    }()
    public func atlasGridSize() -> Godot.Vector2I {
        Godot.Vector2I.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_atlas_grid_size,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_tile_texture_region: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tile_texture_region").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 241857547)!
        }
        }
    }()
    public func tileTextureRegion(atlasCoords: Godot.Vector2I, frame: Int32 = 0) -> Godot.Rect2I {
        Godot.Rect2I.fromMutatingGodotUnsafePointer { __temporary in
        atlasCoords.withGodotUnsafeRawPointer { __ptr_atlasCoords in
        frame.withGodotUnsafeRawPointer { __ptr_frame in
        withUnsafeArgumentPackPointer(__ptr_atlasCoords, __ptr_frame) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_tile_texture_region,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_get_runtime_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_runtime_texture").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3635182373)!
        }
        }
    }()
    public func runtimeTexture() -> Godot.Texture2D? {
        Godot.Texture2D?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_runtime_texture,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_runtime_tile_texture_region: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_runtime_tile_texture_region").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 104874263)!
        }
        }
    }()
    public func runtimeTileTextureRegion(atlasCoords: Godot.Vector2I, frame: Int32) -> Godot.Rect2I {
        Godot.Rect2I.fromMutatingGodotUnsafePointer { __temporary in
        atlasCoords.withGodotUnsafeRawPointer { __ptr_atlasCoords in
        frame.withGodotUnsafeRawPointer { __ptr_frame in
        withUnsafeArgumentPackPointer(__ptr_atlasCoords, __ptr_frame) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_runtime_tile_texture_region,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
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

    public var margins: Godot.Vector2I {
        get {
            __getMargins()
        }
        set {
            __setMargins(
                newValue
            )
        }
    }

    public var separation: Godot.Vector2I {
        get {
            __getSeparation()
        }
        set {
            __setSeparation(
                newValue
            )
        }
    }

    public var textureRegionSize: Godot.Vector2I {
        get {
            __getTextureRegionSize()
        }
        set {
            __setTextureRegionSize(
                newValue
            )
        }
    }

    public var useTexturePadding: Bool {
        get {
            __getUseTexturePadding()
        }
        set {
            __setUseTexturePadding(
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