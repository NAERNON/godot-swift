//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class TileMap: Node2D {
    public enum VisibilityMode: UInt32 {
        case `default` = 0
        case forceHide = 2
        case forceShow = 1
    }

    @Emitter(signal: "changed")
    public struct Changed {
    }

    open func _useTileDataRuntimeUpdate(layer: Int32, coords: Godot.Vector2i) -> Bool {
        Bool()
    }

    open func _tileDataRuntimeUpdate(layer: Int32, coords: Godot.Vector2i, tileData: Godot.TileData?) {
    }

    private static var __method_binding_set_tileset: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tileset").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 774531446)!
        }
        }
    }()
    private func __setTileset(_ tileset: Godot.TileSet?) {
        tileset.withUnsafeRawPointer { (__ptr_tileset) in
            withUnsafePointer(to: __ptr_tileset) { (_ptr___ptr_tileset) in
                withUnsafeArgumentPackPointer(_ptr___ptr_tileset) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_tileset,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_tileset: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tileset").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2678226422)!
        }
        }
    }()
    private func __getTileset() -> Godot.TileSet? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_tileset,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.TileSet.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_set_quadrant_size: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_quadrant_size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setQuadrantSize(_ size: Int32) {
        withUnsafePointer(to: size) { (__ptr_size) in
            withUnsafeArgumentPackPointer(__ptr_size) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_quadrant_size,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_quadrant_size: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_quadrant_size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getQuadrantSize() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_quadrant_size,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_layers_count: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_layers_count").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func layersCount() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_layers_count,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_add_layer: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_layer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func addLayer(toPosition position: Int32) {
        withUnsafePointer(to: position) { (__ptr_position) in
            withUnsafeArgumentPackPointer(__ptr_position) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_add_layer,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_move_layer: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "move_layer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func moveLayer(_ layer: Int32, toPosition position: Int32) {
        withUnsafePointer(to: layer) { (__ptr_layer) in
            withUnsafePointer(to: position) { (__ptr_position) in
                withUnsafeArgumentPackPointer(__ptr_layer, __ptr_position) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_move_layer,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_remove_layer: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_layer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func removeLayer(_ layer: Int32) {
        withUnsafePointer(to: layer) { (__ptr_layer) in
            withUnsafeArgumentPackPointer(__ptr_layer) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_remove_layer,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_set_layer_name: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_layer_name").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 501894301)!
        }
        }
    }()
    public func setLayerName(layer: Int32, name: Godot.GodotString) {
        withUnsafePointer(to: layer) { (__ptr_layer) in
            name.withUnsafeRawPointer { (__ptr_name) in
                withUnsafeArgumentPackPointer(__ptr_layer, __ptr_name) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_layer_name,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_layer_name: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_layer_name").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 844755477)!
        }
        }
    }()
    public func layerName(layer: Int32) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        withUnsafePointer(to: layer) { (__ptr_layer) in
            withUnsafeArgumentPackPointer(__ptr_layer) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_layer_name,
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

    private static var __method_binding_set_layer_enabled: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_layer_enabled").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()
    public func setLayerEnabled(layer: Int32, enabled: Bool) {
        withUnsafePointer(to: layer) { (__ptr_layer) in
            withUnsafePointer(to: enabled) { (__ptr_enabled) in
                withUnsafeArgumentPackPointer(__ptr_layer, __ptr_enabled) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_layer_enabled,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_is_layer_enabled: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_layer_enabled").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func isLayerEnabled(layer: Int32) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: layer) { (__ptr_layer) in
            withUnsafeArgumentPackPointer(__ptr_layer) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_is_layer_enabled,
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

    private static var __method_binding_set_layer_modulate: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_layer_modulate").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2878471219)!
        }
        }
    }()
    public func setLayerModulate(layer: Int32, modulate: Godot.Color) {
        withUnsafePointer(to: layer) { (__ptr_layer) in
            withUnsafePointer(to: modulate) { (__ptr_modulate) in
                withUnsafeArgumentPackPointer(__ptr_layer, __ptr_modulate) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_layer_modulate,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_layer_modulate: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_layer_modulate").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3457211756)!
        }
        }
    }()
    public func layerModulate(layer: Int32) -> Godot.Color {
        var __temporary = Godot.Color()
        withUnsafePointer(to: layer) { (__ptr_layer) in
            withUnsafeArgumentPackPointer(__ptr_layer) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_layer_modulate,
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

    private static var __method_binding_set_layer_y_sort_enabled: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_layer_y_sort_enabled").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()
    public func setLayerYSortEnabled(layer: Int32, ySortEnabled: Bool) {
        withUnsafePointer(to: layer) { (__ptr_layer) in
            withUnsafePointer(to: ySortEnabled) { (__ptr_ySortEnabled) in
                withUnsafeArgumentPackPointer(__ptr_layer, __ptr_ySortEnabled) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_layer_y_sort_enabled,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_is_layer_y_sort_enabled: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_layer_y_sort_enabled").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func isLayerYSortEnabled(layer: Int32) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: layer) { (__ptr_layer) in
            withUnsafeArgumentPackPointer(__ptr_layer) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_is_layer_y_sort_enabled,
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

    private static var __method_binding_set_layer_y_sort_origin: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_layer_y_sort_origin").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func setLayerYSortOrigin(layer: Int32, ySortOrigin: Int32) {
        withUnsafePointer(to: layer) { (__ptr_layer) in
            withUnsafePointer(to: ySortOrigin) { (__ptr_ySortOrigin) in
                withUnsafeArgumentPackPointer(__ptr_layer, __ptr_ySortOrigin) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_layer_y_sort_origin,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_layer_y_sort_origin: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_layer_y_sort_origin").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()
    public func layerYSortOrigin(layer: Int32) -> Int32 {
        var __temporary = Int32()
        withUnsafePointer(to: layer) { (__ptr_layer) in
            withUnsafeArgumentPackPointer(__ptr_layer) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_layer_y_sort_origin,
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

    private static var __method_binding_set_layer_z_index: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_layer_z_index").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func setLayerZIndex(layer: Int32, zIndex: Int32) {
        withUnsafePointer(to: layer) { (__ptr_layer) in
            withUnsafePointer(to: zIndex) { (__ptr_zIndex) in
                withUnsafeArgumentPackPointer(__ptr_layer, __ptr_zIndex) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_layer_z_index,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_layer_z_index: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_layer_z_index").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()
    public func layerZIndex(layer: Int32) -> Int32 {
        var __temporary = Int32()
        withUnsafePointer(to: layer) { (__ptr_layer) in
            withUnsafeArgumentPackPointer(__ptr_layer) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_layer_z_index,
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

    private static var __method_binding_set_collision_animatable: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_collision_animatable").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setCollisionAnimatable(enabled: Bool) {
        withUnsafePointer(to: enabled) { (__ptr_enabled) in
            withUnsafeArgumentPackPointer(__ptr_enabled) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_collision_animatable,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_is_collision_animatable: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_collision_animatable").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isCollisionAnimatable() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_collision_animatable,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_collision_visibility_mode: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_collision_visibility_mode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3193440636)!
        }
        }
    }()
    private func __setCollisionVisibilityMode(_ collisionVisibilityMode: Godot.TileMap.VisibilityMode) {
        withUnsafePointer(to: collisionVisibilityMode) { (__ptr_collisionVisibilityMode) in
            withUnsafeArgumentPackPointer(__ptr_collisionVisibilityMode) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_collision_visibility_mode,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_collision_visibility_mode: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_collision_visibility_mode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2026313073)!
        }
        }
    }()
    private func __getCollisionVisibilityMode() -> Godot.TileMap.VisibilityMode {
        var __temporary = Godot.TileMap.VisibilityMode.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_collision_visibility_mode,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.TileMap.VisibilityMode(rawValue: __temporary)!
    }

    private static var __method_binding_set_navigation_visibility_mode: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_navigation_visibility_mode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3193440636)!
        }
        }
    }()
    private func __setNavigationVisibilityMode(_ navigationVisibilityMode: Godot.TileMap.VisibilityMode) {
        withUnsafePointer(to: navigationVisibilityMode) { (__ptr_navigationVisibilityMode) in
            withUnsafeArgumentPackPointer(__ptr_navigationVisibilityMode) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_navigation_visibility_mode,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_navigation_visibility_mode: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_navigation_visibility_mode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2026313073)!
        }
        }
    }()
    private func __getNavigationVisibilityMode() -> Godot.TileMap.VisibilityMode {
        var __temporary = Godot.TileMap.VisibilityMode.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_navigation_visibility_mode,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.TileMap.VisibilityMode(rawValue: __temporary)!
    }

    private static var __method_binding_set_navigation_map: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_navigation_map").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4040184819)!
        }
        }
    }()
    public func setNavigationMap(layer: Int32, map: Godot.RID) {
        withUnsafePointer(to: layer) { (__ptr_layer) in
            map.withUnsafeRawPointer { (__ptr_map) in
                withUnsafeArgumentPackPointer(__ptr_layer, __ptr_map) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_navigation_map,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_navigation_map: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_navigation_map").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 495598643)!
        }
        }
    }()
    public func navigationMap(layer: Int32) -> Godot.RID {
        let __temporary = Godot.RID()
        withUnsafePointer(to: layer) { (__ptr_layer) in
            withUnsafeArgumentPackPointer(__ptr_layer) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_navigation_map,
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

    private static var __method_binding_set_cell: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_cell").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1732664643)!
        }
        }
    }()
    public func setCell(layer: Int32, coords: Godot.Vector2i, sourceId: Int32 = -1, atlasCoords: Godot.Vector2i = Vector2i(x: -1, y: -1), alternativeTile: Int32 = 0) {
        withUnsafePointer(to: layer) { (__ptr_layer) in
            withUnsafePointer(to: coords) { (__ptr_coords) in
                withUnsafePointer(to: sourceId) { (__ptr_sourceId) in
                    withUnsafePointer(to: atlasCoords) { (__ptr_atlasCoords) in
                        withUnsafePointer(to: alternativeTile) { (__ptr_alternativeTile) in
                            withUnsafeArgumentPackPointer(__ptr_layer, __ptr_coords, __ptr_sourceId, __ptr_atlasCoords, __ptr_alternativeTile) { (__accessPtr) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_set_cell,
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

    private static var __method_binding_erase_cell: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "erase_cell").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2311374912)!
        }
        }
    }()
    public func eraseCell(layer: Int32, coords: Godot.Vector2i) {
        withUnsafePointer(to: layer) { (__ptr_layer) in
            withUnsafePointer(to: coords) { (__ptr_coords) in
                withUnsafeArgumentPackPointer(__ptr_layer, __ptr_coords) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_erase_cell,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_cell_source_id: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_cell_source_id").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 551761942)!
        }
        }
    }()
    public func cellSourceId(layer: Int32, coords: Godot.Vector2i, useProxies: Bool = false) -> Int32 {
        var __temporary = Int32()
        withUnsafePointer(to: layer) { (__ptr_layer) in
            withUnsafePointer(to: coords) { (__ptr_coords) in
                withUnsafePointer(to: useProxies) { (__ptr_useProxies) in
                    withUnsafeArgumentPackPointer(__ptr_layer, __ptr_coords, __ptr_useProxies) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_get_cell_source_id,
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

    private static var __method_binding_get_cell_atlas_coords: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_cell_atlas_coords").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1869815066)!
        }
        }
    }()
    public func cellAtlasCoords(layer: Int32, coords: Godot.Vector2i, useProxies: Bool = false) -> Godot.Vector2i {
        var __temporary = Godot.Vector2i()
        withUnsafePointer(to: layer) { (__ptr_layer) in
            withUnsafePointer(to: coords) { (__ptr_coords) in
                withUnsafePointer(to: useProxies) { (__ptr_useProxies) in
                    withUnsafeArgumentPackPointer(__ptr_layer, __ptr_coords, __ptr_useProxies) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_get_cell_atlas_coords,
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

    private static var __method_binding_get_cell_alternative_tile: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_cell_alternative_tile").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 551761942)!
        }
        }
    }()
    public func cellAlternativeTile(layer: Int32, coords: Godot.Vector2i, useProxies: Bool = false) -> Int32 {
        var __temporary = Int32()
        withUnsafePointer(to: layer) { (__ptr_layer) in
            withUnsafePointer(to: coords) { (__ptr_coords) in
                withUnsafePointer(to: useProxies) { (__ptr_useProxies) in
                    withUnsafeArgumentPackPointer(__ptr_layer, __ptr_coords, __ptr_useProxies) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_get_cell_alternative_tile,
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

    private static var __method_binding_get_cell_tile_data: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_cell_tile_data").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2849631287)!
        }
        }
    }()
    public func cellTileData(layer: Int32, coords: Godot.Vector2i, useProxies: Bool = false) -> Godot.TileData? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafePointer(to: layer) { (__ptr_layer) in
            withUnsafePointer(to: coords) { (__ptr_coords) in
                withUnsafePointer(to: useProxies) { (__ptr_useProxies) in
                    withUnsafeArgumentPackPointer(__ptr_layer, __ptr_coords, __ptr_useProxies) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_get_cell_tile_data,
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
        return Godot.TileData.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_get_coords_for_body_rid: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_coords_for_body_rid").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 291584212)!
        }
        }
    }()
    public func coordsForBodyRid(body: Godot.RID) -> Godot.Vector2i {
        var __temporary = Godot.Vector2i()
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafeArgumentPackPointer(__ptr_body) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_coords_for_body_rid,
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

    private static var __method_binding_get_layer_for_body_rid: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_layer_for_body_rid").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3917799429)!
        }
        }
    }()
    public func layerForBodyRid(body: Godot.RID) -> Int32 {
        var __temporary = Int32()
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafeArgumentPackPointer(__ptr_body) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_layer_for_body_rid,
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

    private static var __method_binding_get_pattern: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_pattern").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2833570986)!
        }
        }
    }()
    public func pattern(layer: Int32, coordsArray: Godot.GodotTypedArray<Godot.Vector2i>) -> Godot.TileMapPattern? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafePointer(to: layer) { (__ptr_layer) in
            coordsArray.withUnsafeRawPointer { (__ptr_coordsArray) in
                withUnsafeArgumentPackPointer(__ptr_layer, __ptr_coordsArray) { (__accessPtr) in
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
        }
        return Godot.TileMapPattern.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_map_pattern: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_pattern").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1864516957)!
        }
        }
    }()
    public func mapPattern(positionInTilemap: Godot.Vector2i, coordsInPattern: Godot.Vector2i, pattern: Godot.TileMapPattern?) -> Godot.Vector2i {
        var __temporary = Godot.Vector2i()
        withUnsafePointer(to: positionInTilemap) { (__ptr_positionInTilemap) in
            withUnsafePointer(to: coordsInPattern) { (__ptr_coordsInPattern) in
                pattern.withUnsafeRawPointer { (__ptr_pattern) in
                    withUnsafePointer(to: __ptr_pattern) { (_ptr___ptr_pattern) in
                        withUnsafeArgumentPackPointer(__ptr_positionInTilemap, __ptr_coordsInPattern, _ptr___ptr_pattern) { (__accessPtr) in
                            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_map_pattern,
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
        return __temporary
    }

    private static var __method_binding_set_pattern: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_pattern").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1195853946)!
        }
        }
    }()
    public func setPattern(layer: Int32, position: Godot.Vector2i, pattern: Godot.TileMapPattern?) {
        withUnsafePointer(to: layer) { (__ptr_layer) in
            withUnsafePointer(to: position) { (__ptr_position) in
                pattern.withUnsafeRawPointer { (__ptr_pattern) in
                    withUnsafePointer(to: __ptr_pattern) { (_ptr___ptr_pattern) in
                        withUnsafeArgumentPackPointer(__ptr_layer, __ptr_position, _ptr___ptr_pattern) { (__accessPtr) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_set_pattern,
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

    private static var __method_binding_set_cells_terrain_connect: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_cells_terrain_connect").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3072115677)!
        }
        }
    }()
    public func setCellsTerrainConnect(layer: Int32, cells: Godot.GodotTypedArray<Godot.Vector2i>, terrainSet: Int32, terrain: Int32, ignoreEmptyTerrains: Bool = true) {
        withUnsafePointer(to: layer) { (__ptr_layer) in
            cells.withUnsafeRawPointer { (__ptr_cells) in
                withUnsafePointer(to: terrainSet) { (__ptr_terrainSet) in
                    withUnsafePointer(to: terrain) { (__ptr_terrain) in
                        withUnsafePointer(to: ignoreEmptyTerrains) { (__ptr_ignoreEmptyTerrains) in
                            withUnsafeArgumentPackPointer(__ptr_layer, __ptr_cells, __ptr_terrainSet, __ptr_terrain, __ptr_ignoreEmptyTerrains) { (__accessPtr) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_set_cells_terrain_connect,
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

    private static var __method_binding_set_cells_terrain_path: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_cells_terrain_path").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3072115677)!
        }
        }
    }()
    public func setCellsTerrainPath(layer: Int32, path: Godot.GodotTypedArray<Godot.Vector2i>, terrainSet: Int32, terrain: Int32, ignoreEmptyTerrains: Bool = true) {
        withUnsafePointer(to: layer) { (__ptr_layer) in
            path.withUnsafeRawPointer { (__ptr_path) in
                withUnsafePointer(to: terrainSet) { (__ptr_terrainSet) in
                    withUnsafePointer(to: terrain) { (__ptr_terrain) in
                        withUnsafePointer(to: ignoreEmptyTerrains) { (__ptr_ignoreEmptyTerrains) in
                            withUnsafeArgumentPackPointer(__ptr_layer, __ptr_path, __ptr_terrainSet, __ptr_terrain, __ptr_ignoreEmptyTerrains) { (__accessPtr) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_set_cells_terrain_path,
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

    private static var __method_binding_fix_invalid_tiles: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "fix_invalid_tiles").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func fixInvalidTiles() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_fix_invalid_tiles,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_clear_layer: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_layer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func clearLayer(_ layer: Int32) {
        withUnsafePointer(to: layer) { (__ptr_layer) in
            withUnsafeArgumentPackPointer(__ptr_layer) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_clear_layer,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_clear: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func clear() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_clear,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_force_update: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "force_update").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1025054187)!
        }
        }
    }()
    public func forceUpdate(layer: Int32 = -1) {
        withUnsafePointer(to: layer) { (__ptr_layer) in
            withUnsafeArgumentPackPointer(__ptr_layer) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_force_update,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_surrounding_cells: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_surrounding_cells").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2673526557)!
        }
        }
    }()
    public func surroundingCells(coords: Godot.Vector2i) -> Godot.GodotTypedArray<Godot.Vector2i> {
        let __temporary = Godot.GodotTypedArray<Godot.Vector2i>()
        withUnsafePointer(to: coords) { (__ptr_coords) in
            withUnsafeArgumentPackPointer(__ptr_coords) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_surrounding_cells,
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

    private static var __method_binding_get_used_cells: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_used_cells").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 663333327)!
        }
        }
    }()
    public func usedCells(layer: Int32) -> Godot.GodotTypedArray<Godot.Vector2i> {
        let __temporary = Godot.GodotTypedArray<Godot.Vector2i>()
        withUnsafePointer(to: layer) { (__ptr_layer) in
            withUnsafeArgumentPackPointer(__ptr_layer) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_used_cells,
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

    private static var __method_binding_get_used_cells_by_id: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_used_cells_by_id").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4152068407)!
        }
        }
    }()
    public func usedCellsById(layer: Int32, sourceId: Int32 = -1, atlasCoords: Godot.Vector2i = Vector2i(x: -1, y: -1), alternativeTile: Int32 = -1) -> Godot.GodotTypedArray<Godot.Vector2i> {
        let __temporary = Godot.GodotTypedArray<Godot.Vector2i>()
        withUnsafePointer(to: layer) { (__ptr_layer) in
            withUnsafePointer(to: sourceId) { (__ptr_sourceId) in
                withUnsafePointer(to: atlasCoords) { (__ptr_atlasCoords) in
                    withUnsafePointer(to: alternativeTile) { (__ptr_alternativeTile) in
                        withUnsafeArgumentPackPointer(__ptr_layer, __ptr_sourceId, __ptr_atlasCoords, __ptr_alternativeTile) { (__accessPtr) in
                            __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_get_used_cells_by_id,
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
        return __temporary
    }

    private static var __method_binding_get_used_rect: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_used_rect").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2024035737)!
        }
        }
    }()
    public func usedRect() -> Godot.Rect2i {
        var __temporary = Godot.Rect2i()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_used_rect,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_map_to_local: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_to_local").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 108438297)!
        }
        }
    }()
    public func mapToLocal(mapPosition: Godot.Vector2i) -> Godot.Vector2 {
        var __temporary = Godot.Vector2()
        withUnsafePointer(to: mapPosition) { (__ptr_mapPosition) in
            withUnsafeArgumentPackPointer(__ptr_mapPosition) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_map_to_local,
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

    private static var __method_binding_local_to_map: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "local_to_map").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 837806996)!
        }
        }
    }()
    public func localToMap(localPosition: Godot.Vector2) -> Godot.Vector2i {
        var __temporary = Godot.Vector2i()
        withUnsafePointer(to: localPosition) { (__ptr_localPosition) in
            withUnsafeArgumentPackPointer(__ptr_localPosition) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_local_to_map,
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

    private static var __method_binding_get_neighbor_cell: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_neighbor_cell").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 986575103)!
        }
        }
    }()
    public func neighborCell(coords: Godot.Vector2i, neighbor: Godot.TileSet.CellNeighbor) -> Godot.Vector2i {
        var __temporary = Godot.Vector2i()
        withUnsafePointer(to: coords) { (__ptr_coords) in
            withUnsafePointer(to: neighbor) { (__ptr_neighbor) in
                withUnsafeArgumentPackPointer(__ptr_coords, __ptr_neighbor) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_get_neighbor_cell,
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

    public var tileset: Godot.TileSet? {
        get {
            __getTileset()
        }
        set {
            __setTileset(
                newValue
            )
        }
    }

    public var quadrantSize: Int32 {
        get {
            __getQuadrantSize()
        }
        set {
            __setQuadrantSize(
                newValue
            )
        }
    }

    public var isCollisionAnimatable: Bool {
        get {
            __isCollisionAnimatable()
        }
        set {
            __setCollisionAnimatable(
                enabled: newValue
            )
        }
    }

    public var collisionVisibilityMode: Godot.TileMap.VisibilityMode {
        get {
            __getCollisionVisibilityMode()
        }
        set {
            __setCollisionVisibilityMode(
                newValue
            )
        }
    }

    public var navigationVisibilityMode: Godot.TileMap.VisibilityMode {
        get {
            __getNavigationVisibilityMode()
        }
        set {
            __setNavigationVisibilityMode(
                newValue
            )
        }
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _use_tile_data_runtime_update_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<TileMap> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._useTileDataRuntimeUpdate(
            layer: args[0]!.load(as: Int32.self),
            coords: args[1]!.load(as: Godot.Vector2i.self)
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _tile_data_runtime_update_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<TileMap> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._tileDataRuntimeUpdate(
            layer: args[0]!.load(as: Int32.self),
            coords: args[1]!.load(as: Godot.Vector2i.self),
            tileData: Godot.TileData.retrievedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[2]!))
        )}
        _virtualFunctions = [
            "_useTileDataRuntimeUpdate" : ("_use_tile_data_runtime_update", _use_tile_data_runtime_update_call),
            "_tileDataRuntimeUpdate" : ("_tile_data_runtime_update", _tile_data_runtime_update_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }