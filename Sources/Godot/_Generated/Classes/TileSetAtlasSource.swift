//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class TileSetAtlasSource: TileSetSource {
    private static var __method_binding_set_texture: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_texture").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4051416890)!
        }
        }
    }()
    private func __setTexture(_ texture: Godot.Texture2D?) {
        texture.withUnsafeRawPointer { (__ptr_texture) in
            withUnsafePointer(to: __ptr_texture) { (_ptr___ptr_texture) in
                withUnsafeArgumentPackPointer(_ptr___ptr_texture) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_texture,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_texture: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_texture").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3635182373)!
        }
        }
    }()
    private func __getTexture() -> Godot.Texture2D? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_texture,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.Texture2D.retreivedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_set_margins: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_margins").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1130785943)!
        }
        }
    }()
    private func __setMargins(_ margins: Godot.Vector2i) {
        withUnsafePointer(to: margins) { (__ptr_margins) in
            withUnsafeArgumentPackPointer(__ptr_margins) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_margins,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_margins: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_margins").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3690982128)!
        }
        }
    }()
    private func __getMargins() -> Godot.Vector2i {
        var __temporary = Godot.Vector2i()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_margins,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_separation: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_separation").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1130785943)!
        }
        }
    }()
    private func __setSeparation(_ separation: Godot.Vector2i) {
        withUnsafePointer(to: separation) { (__ptr_separation) in
            withUnsafeArgumentPackPointer(__ptr_separation) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_separation,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_separation: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_separation").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3690982128)!
        }
        }
    }()
    private func __getSeparation() -> Godot.Vector2i {
        var __temporary = Godot.Vector2i()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_separation,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_texture_region_size: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_texture_region_size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1130785943)!
        }
        }
    }()
    private func __setTextureRegionSize(_ textureRegionSize: Godot.Vector2i) {
        withUnsafePointer(to: textureRegionSize) { (__ptr_textureRegionSize) in
            withUnsafeArgumentPackPointer(__ptr_textureRegionSize) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_texture_region_size,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_texture_region_size: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_texture_region_size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3690982128)!
        }
        }
    }()
    private func __getTextureRegionSize() -> Godot.Vector2i {
        var __temporary = Godot.Vector2i()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_texture_region_size,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_use_texture_padding: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_use_texture_padding").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setUseTexturePadding(_ useTexturePadding: Bool) {
        withUnsafePointer(to: useTexturePadding) { (__ptr_useTexturePadding) in
            withUnsafeArgumentPackPointer(__ptr_useTexturePadding) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_use_texture_padding,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_use_texture_padding: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_use_texture_padding").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getUseTexturePadding() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_use_texture_padding,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_create_tile: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "create_tile").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1583819816)!
        }
        }
    }()
    public func createTile(atlasCoords: Godot.Vector2i, size: Godot.Vector2i = Vector2i(x: 1, y: 1)) {
        withUnsafePointer(to: atlasCoords) { (__ptr_atlasCoords) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafeArgumentPackPointer(__ptr_atlasCoords, __ptr_size) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_create_tile,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_remove_tile: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "remove_tile").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1130785943)!
        }
        }
    }()
    public func removeTile(atlasCoords: Godot.Vector2i) {
        withUnsafePointer(to: atlasCoords) { (__ptr_atlasCoords) in
            withUnsafeArgumentPackPointer(__ptr_atlasCoords) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_remove_tile,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_move_tile_in_atlas: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "move_tile_in_atlas").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1375626516)!
        }
        }
    }()
    public func moveTileInAtlas(atlasCoords: Godot.Vector2i, newAtlasCoords: Godot.Vector2i = Vector2i(x: -1, y: -1), newSize: Godot.Vector2i = Vector2i(x: -1, y: -1)) {
        withUnsafePointer(to: atlasCoords) { (__ptr_atlasCoords) in
            withUnsafePointer(to: newAtlasCoords) { (__ptr_newAtlasCoords) in
                withUnsafePointer(to: newSize) { (__ptr_newSize) in
                    withUnsafeArgumentPackPointer(__ptr_atlasCoords, __ptr_newAtlasCoords, __ptr_newSize) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_move_tile_in_atlas,
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

    private static var __method_binding_get_tile_size_in_atlas: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_tile_size_in_atlas").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3050897911)!
        }
        }
    }()
    public func tileSizeInAtlas(atlasCoords: Godot.Vector2i) -> Godot.Vector2i {
        var __temporary = Godot.Vector2i()
        withUnsafePointer(to: atlasCoords) { (__ptr_atlasCoords) in
            withUnsafeArgumentPackPointer(__ptr_atlasCoords) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_tile_size_in_atlas,
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

    private static var __method_binding_has_room_for_tile: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "has_room_for_tile").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4182444377)!
        }
        }
    }()
    public func hasRoomForTile(atlasCoords: Godot.Vector2i, size: Godot.Vector2i, animationColumns: Int32, animationSeparation: Godot.Vector2i, framesCount: Int32, ignoredTile: Godot.Vector2i = Vector2i(x: -1, y: -1)) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: atlasCoords) { (__ptr_atlasCoords) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafePointer(to: animationColumns) { (__ptr_animationColumns) in
                    withUnsafePointer(to: animationSeparation) { (__ptr_animationSeparation) in
                        withUnsafePointer(to: framesCount) { (__ptr_framesCount) in
                            withUnsafePointer(to: ignoredTile) { (__ptr_ignoredTile) in
                                withUnsafeArgumentPackPointer(__ptr_atlasCoords, __ptr_size, __ptr_animationColumns, __ptr_animationSeparation, __ptr_framesCount, __ptr_ignoredTile) { (__accessPtr) in
                                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                        `self`.withUnsafeRawPointer { (__ptr_self) in
                                            gdextension_interface_object_method_bind_ptrcall(
                                                Self.__method_binding_has_room_for_tile,
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
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_tiles_to_be_removed_on_change: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_tiles_to_be_removed_on_change").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1240378054)!
        }
        }
    }()
    public func tilesToBeRemovedOnChange(texture: Godot.Texture2D?, margins: Godot.Vector2i, separation: Godot.Vector2i, textureRegionSize: Godot.Vector2i) -> Godot.PackedVector2Array {
        let __temporary = Godot.PackedVector2Array()
        texture.withUnsafeRawPointer { (__ptr_texture) in
            withUnsafePointer(to: __ptr_texture) { (_ptr___ptr_texture) in
                withUnsafePointer(to: margins) { (__ptr_margins) in
                    withUnsafePointer(to: separation) { (__ptr_separation) in
                        withUnsafePointer(to: textureRegionSize) { (__ptr_textureRegionSize) in
                            withUnsafeArgumentPackPointer(_ptr___ptr_texture, __ptr_margins, __ptr_separation, __ptr_textureRegionSize) { (__accessPtr) in
                                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                        gdextension_interface_object_method_bind_ptrcall(
                                            Self.__method_binding_get_tiles_to_be_removed_on_change,
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
            }
        }
        return __temporary
    }

    private static var __method_binding_get_tile_at_coords: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_tile_at_coords").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3050897911)!
        }
        }
    }()
    public func tileAtCoords(atlasCoords: Godot.Vector2i) -> Godot.Vector2i {
        var __temporary = Godot.Vector2i()
        withUnsafePointer(to: atlasCoords) { (__ptr_atlasCoords) in
            withUnsafeArgumentPackPointer(__ptr_atlasCoords) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_tile_at_coords,
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

    private static var __method_binding_set_tile_animation_columns: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_tile_animation_columns").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3200960707)!
        }
        }
    }()
    public func setTileAnimationColumns(atlasCoords: Godot.Vector2i, frameColumns: Int32) {
        withUnsafePointer(to: atlasCoords) { (__ptr_atlasCoords) in
            withUnsafePointer(to: frameColumns) { (__ptr_frameColumns) in
                withUnsafeArgumentPackPointer(__ptr_atlasCoords, __ptr_frameColumns) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_tile_animation_columns,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_tile_animation_columns: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_tile_animation_columns").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2485466453)!
        }
        }
    }()
    public func tileAnimationColumns(atlasCoords: Godot.Vector2i) -> Int32 {
        var __temporary = Int32()
        withUnsafePointer(to: atlasCoords) { (__ptr_atlasCoords) in
            withUnsafeArgumentPackPointer(__ptr_atlasCoords) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_tile_animation_columns,
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

    private static var __method_binding_set_tile_animation_separation: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_tile_animation_separation").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1941061099)!
        }
        }
    }()
    public func setTileAnimationSeparation(atlasCoords: Godot.Vector2i, separation: Godot.Vector2i) {
        withUnsafePointer(to: atlasCoords) { (__ptr_atlasCoords) in
            withUnsafePointer(to: separation) { (__ptr_separation) in
                withUnsafeArgumentPackPointer(__ptr_atlasCoords, __ptr_separation) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_tile_animation_separation,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_tile_animation_separation: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_tile_animation_separation").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3050897911)!
        }
        }
    }()
    public func tileAnimationSeparation(atlasCoords: Godot.Vector2i) -> Godot.Vector2i {
        var __temporary = Godot.Vector2i()
        withUnsafePointer(to: atlasCoords) { (__ptr_atlasCoords) in
            withUnsafeArgumentPackPointer(__ptr_atlasCoords) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_tile_animation_separation,
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

    private static var __method_binding_set_tile_animation_speed: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_tile_animation_speed").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2262553149)!
        }
        }
    }()
    public func setTileAnimationSpeed(atlasCoords: Godot.Vector2i, speed: Double) {
        withUnsafePointer(to: atlasCoords) { (__ptr_atlasCoords) in
            withUnsafePointer(to: speed) { (__ptr_speed) in
                withUnsafeArgumentPackPointer(__ptr_atlasCoords, __ptr_speed) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_tile_animation_speed,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_tile_animation_speed: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_tile_animation_speed").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 719993801)!
        }
        }
    }()
    public func tileAnimationSpeed(atlasCoords: Godot.Vector2i) -> Double {
        var __temporary = Double()
        withUnsafePointer(to: atlasCoords) { (__ptr_atlasCoords) in
            withUnsafeArgumentPackPointer(__ptr_atlasCoords) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_tile_animation_speed,
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

    private static var __method_binding_set_tile_animation_frames_count: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_tile_animation_frames_count").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3200960707)!
        }
        }
    }()
    public func setTileAnimationFramesCount(atlasCoords: Godot.Vector2i, framesCount: Int32) {
        withUnsafePointer(to: atlasCoords) { (__ptr_atlasCoords) in
            withUnsafePointer(to: framesCount) { (__ptr_framesCount) in
                withUnsafeArgumentPackPointer(__ptr_atlasCoords, __ptr_framesCount) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_tile_animation_frames_count,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_tile_animation_frames_count: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_tile_animation_frames_count").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2485466453)!
        }
        }
    }()
    public func tileAnimationFramesCount(atlasCoords: Godot.Vector2i) -> Int32 {
        var __temporary = Int32()
        withUnsafePointer(to: atlasCoords) { (__ptr_atlasCoords) in
            withUnsafeArgumentPackPointer(__ptr_atlasCoords) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_tile_animation_frames_count,
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

    private static var __method_binding_set_tile_animation_frame_duration: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_tile_animation_frame_duration").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2843487787)!
        }
        }
    }()
    public func setTileAnimationFrameDuration(atlasCoords: Godot.Vector2i, frameIndex: Int32, duration: Double) {
        withUnsafePointer(to: atlasCoords) { (__ptr_atlasCoords) in
            withUnsafePointer(to: frameIndex) { (__ptr_frameIndex) in
                withUnsafePointer(to: duration) { (__ptr_duration) in
                    withUnsafeArgumentPackPointer(__ptr_atlasCoords, __ptr_frameIndex, __ptr_duration) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_set_tile_animation_frame_duration,
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

    private static var __method_binding_get_tile_animation_frame_duration: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_tile_animation_frame_duration").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1802448425)!
        }
        }
    }()
    public func tileAnimationFrameDuration(atlasCoords: Godot.Vector2i, frameIndex: Int32) -> Double {
        var __temporary = Double()
        withUnsafePointer(to: atlasCoords) { (__ptr_atlasCoords) in
            withUnsafePointer(to: frameIndex) { (__ptr_frameIndex) in
                withUnsafeArgumentPackPointer(__ptr_atlasCoords, __ptr_frameIndex) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_get_tile_animation_frame_duration,
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

    private static var __method_binding_get_tile_animation_total_duration: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_tile_animation_total_duration").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 719993801)!
        }
        }
    }()
    public func tileAnimationTotalDuration(atlasCoords: Godot.Vector2i) -> Double {
        var __temporary = Double()
        withUnsafePointer(to: atlasCoords) { (__ptr_atlasCoords) in
            withUnsafeArgumentPackPointer(__ptr_atlasCoords) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_tile_animation_total_duration,
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

    private static var __method_binding_create_alternative_tile: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "create_alternative_tile").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3531100812)!
        }
        }
    }()
    public func createAlternativeTile(atlasCoords: Godot.Vector2i, alternativeIdOverride: Int32 = -1) -> Int32 {
        var __temporary = Int32()
        withUnsafePointer(to: atlasCoords) { (__ptr_atlasCoords) in
            withUnsafePointer(to: alternativeIdOverride) { (__ptr_alternativeIdOverride) in
                withUnsafeArgumentPackPointer(__ptr_atlasCoords, __ptr_alternativeIdOverride) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_create_alternative_tile,
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

    private static var __method_binding_remove_alternative_tile: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "remove_alternative_tile").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3200960707)!
        }
        }
    }()
    public func removeAlternativeTile(atlasCoords: Godot.Vector2i, alternativeTile: Int32) {
        withUnsafePointer(to: atlasCoords) { (__ptr_atlasCoords) in
            withUnsafePointer(to: alternativeTile) { (__ptr_alternativeTile) in
                withUnsafeArgumentPackPointer(__ptr_atlasCoords, __ptr_alternativeTile) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_remove_alternative_tile,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_set_alternative_tile_id: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_alternative_tile_id").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1499785778)!
        }
        }
    }()
    public func setAlternativeTileId(atlasCoords: Godot.Vector2i, alternativeTile: Int32, newId: Int32) {
        withUnsafePointer(to: atlasCoords) { (__ptr_atlasCoords) in
            withUnsafePointer(to: alternativeTile) { (__ptr_alternativeTile) in
                withUnsafePointer(to: newId) { (__ptr_newId) in
                    withUnsafeArgumentPackPointer(__ptr_atlasCoords, __ptr_alternativeTile, __ptr_newId) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_set_alternative_tile_id,
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

    private static var __method_binding_get_next_alternative_tile_id: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_next_alternative_tile_id").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2485466453)!
        }
        }
    }()
    public func nextAlternativeTileId(atlasCoords: Godot.Vector2i) -> Int32 {
        var __temporary = Int32()
        withUnsafePointer(to: atlasCoords) { (__ptr_atlasCoords) in
            withUnsafeArgumentPackPointer(__ptr_atlasCoords) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_next_alternative_tile_id,
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

    private static var __method_binding_get_tile_data: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_tile_data").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3534028207)!
        }
        }
    }()
    public func tileData(atlasCoords: Godot.Vector2i, alternativeTile: Int32) -> Godot.TileData? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafePointer(to: atlasCoords) { (__ptr_atlasCoords) in
            withUnsafePointer(to: alternativeTile) { (__ptr_alternativeTile) in
                withUnsafeArgumentPackPointer(__ptr_atlasCoords, __ptr_alternativeTile) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_get_tile_data,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return Godot.TileData.retreivedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_get_atlas_grid_size: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_atlas_grid_size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3690982128)!
        }
        }
    }()
    public func atlasGridSize() -> Godot.Vector2i {
        var __temporary = Godot.Vector2i()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_atlas_grid_size,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_tile_texture_region: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_tile_texture_region").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1321423751)!
        }
        }
    }()
    public func tileTextureRegion(atlasCoords: Godot.Vector2i, frame: Int32 = 0) -> Godot.Rect2i {
        var __temporary = Godot.Rect2i()
        withUnsafePointer(to: atlasCoords) { (__ptr_atlasCoords) in
            withUnsafePointer(to: frame) { (__ptr_frame) in
                withUnsafeArgumentPackPointer(__ptr_atlasCoords, __ptr_frame) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_get_tile_texture_region,
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

    private static var __method_binding_get_runtime_texture: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_runtime_texture").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3635182373)!
        }
        }
    }()
    public func runtimeTexture() -> Godot.Texture2D? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_runtime_texture,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.Texture2D.retreivedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_get_runtime_tile_texture_region: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_runtime_tile_texture_region").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 104874263)!
        }
        }
    }()
    public func runtimeTileTextureRegion(atlasCoords: Godot.Vector2i, frame: Int32) -> Godot.Rect2i {
        var __temporary = Godot.Rect2i()
        withUnsafePointer(to: atlasCoords) { (__ptr_atlasCoords) in
            withUnsafePointer(to: frame) { (__ptr_frame) in
                withUnsafeArgumentPackPointer(__ptr_atlasCoords, __ptr_frame) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_get_runtime_tile_texture_region,
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

    public var margins: Godot.Vector2i {
        get {
            __getMargins()
        }
        set {
            __setMargins(
                newValue
            )
        }
    }

    public var separation: Godot.Vector2i {
        get {
            __getSeparation()
        }
        set {
            __setSeparation(
                newValue
            )
        }
    }

    public var textureRegionSize: Godot.Vector2i {
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