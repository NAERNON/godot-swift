//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotClass
open class TileMap: Node2D {
    public enum VisibilityMode: UInt32, GodotEnum {
        case `default` = 0
        case forceHide = 2
        case forceShow = 1

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Default", 0),
            ("Force Show", 1),
            ("Force Hide", 2),]
        }
    }

    public func changed() {
        _ = changedSignal.emit()
    }

    public lazy var changedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "changed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    open func _useTileDataRuntimeUpdate(
        layer: Int32,
        coords: Godot.Vector2I
    ) -> Bool {
        Bool()
    }

    open func _tileDataRuntimeUpdate(
        layer: Int32,
        coords: Godot.Vector2I,
        tileData: Godot.TileData?
    ) {
    }

    internal static var __method_binding_set_navigation_map: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_navigation_map").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4040184819)!
        }
        }
    }()

    public func setNavigationMap(
        layer: Int32,
        map: Godot.RID
    ) {
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        map.withGodotUnsafeRawPointer { __ptr_map in
        withUnsafeArgumentPackPointer(__ptr_layer, __ptr_map) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_navigation_map,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_navigation_map: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_navigation_map").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 495598643)!
        }
        }
    }()

    public func navigationMap(
        layer: Int32
    ) -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        withUnsafeArgumentPackPointer(__ptr_layer) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_navigation_map,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_force_update: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "force_update").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1025054187)!
        }
        }
    }()

    public func forceUpdate(
        layer: Int32 = -1
    ) {
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        withUnsafeArgumentPackPointer(__ptr_layer) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_force_update,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_set_tileset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tileset").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 774531446)!
        }
        }
    }()

    private func __setTileset(
        _ tileset: Godot.TileSet?
    ) {
        tileset.withGodotUnsafeRawPointer { __ptr_tileset in
        withUnsafePointer(to: __ptr_tileset) { _ptr___ptr_tileset in
        withUnsafeArgumentPackPointer(_ptr___ptr_tileset) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_tileset,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_tileset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tileset").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2678226422)!
        }
        }
    }()

    private func __getTileset() -> Godot.TileSet? {
        Godot.TileSet?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_tileset,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_rendering_quadrant_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_rendering_quadrant_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    private func __setRenderingQuadrantSize(
        _ size: Int32
    ) {
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_rendering_quadrant_size,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_rendering_quadrant_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_rendering_quadrant_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    private func __getRenderingQuadrantSize() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_rendering_quadrant_size,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_layers_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_layers_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    public func layersCount() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_layers_count,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_add_layer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_layer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    public func addLayer(
        toPosition position: Int32
    ) {
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_layer,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_move_layer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "move_layer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()

    public func moveLayer(
        _ layer: Int32,
        toPosition position: Int32
    ) {
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_layer, __ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_move_layer,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_remove_layer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_layer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    public func removeLayer(
        _ layer: Int32
    ) {
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        withUnsafeArgumentPackPointer(__ptr_layer) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_layer,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_set_layer_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_layer_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 501894301)!
        }
        }
    }()

    public func setLayerName(
        layer: Int32,
        name: Godot.GodotString
    ) {
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_layer, __ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_layer_name,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_layer_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_layer_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 844755477)!
        }
        }
    }()

    public func layerName(
        layer: Int32
    ) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        withUnsafeArgumentPackPointer(__ptr_layer) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_layer_name,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_layer_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_layer_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()

    public func setLayerEnabled(
        layer: Int32,
        enabled: Bool
    ) {
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_layer, __ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_layer_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_is_layer_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_layer_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()

    public func isLayerEnabled(
        layer: Int32
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        withUnsafeArgumentPackPointer(__ptr_layer) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_layer_enabled,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_layer_modulate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_layer_modulate").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2878471219)!
        }
        }
    }()

    public func setLayerModulate(
        layer: Int32,
        modulate: Godot.Color
    ) {
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        modulate.withGodotUnsafeRawPointer { __ptr_modulate in
        withUnsafeArgumentPackPointer(__ptr_layer, __ptr_modulate) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_layer_modulate,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_layer_modulate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_layer_modulate").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3457211756)!
        }
        }
    }()

    public func layerModulate(
        layer: Int32
    ) -> Godot.Color {
        Godot.Color.fromMutatingGodotUnsafePointer { __temporary in
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        withUnsafeArgumentPackPointer(__ptr_layer) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_layer_modulate,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_layer_y_sort_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_layer_y_sort_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()

    public func setLayerYSortEnabled(
        layer: Int32,
        ySortEnabled: Bool
    ) {
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        ySortEnabled.withGodotUnsafeRawPointer { __ptr_ySortEnabled in
        withUnsafeArgumentPackPointer(__ptr_layer, __ptr_ySortEnabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_layer_y_sort_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_is_layer_y_sort_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_layer_y_sort_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()

    public func isLayerYSortEnabled(
        layer: Int32
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        withUnsafeArgumentPackPointer(__ptr_layer) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_layer_y_sort_enabled,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_layer_y_sort_origin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_layer_y_sort_origin").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()

    public func setLayerYSortOrigin(
        layer: Int32,
        ySortOrigin: Int32
    ) {
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        ySortOrigin.withGodotUnsafeRawPointer { __ptr_ySortOrigin in
        withUnsafeArgumentPackPointer(__ptr_layer, __ptr_ySortOrigin) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_layer_y_sort_origin,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_layer_y_sort_origin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_layer_y_sort_origin").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()

    public func layerYSortOrigin(
        layer: Int32
    ) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        withUnsafeArgumentPackPointer(__ptr_layer) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_layer_y_sort_origin,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_layer_z_index: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_layer_z_index").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()

    public func setLayerZIndex(
        layer: Int32,
        zIndex: Int32
    ) {
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        zIndex.withGodotUnsafeRawPointer { __ptr_zIndex in
        withUnsafeArgumentPackPointer(__ptr_layer, __ptr_zIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_layer_z_index,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_layer_z_index: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_layer_z_index").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()

    public func layerZIndex(
        layer: Int32
    ) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        withUnsafeArgumentPackPointer(__ptr_layer) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_layer_z_index,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_layer_navigation_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_layer_navigation_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()

    public func setLayerNavigationEnabled(
        layer: Int32,
        enabled: Bool
    ) {
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_layer, __ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_layer_navigation_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_is_layer_navigation_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_layer_navigation_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()

    public func isLayerNavigationEnabled(
        layer: Int32
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        withUnsafeArgumentPackPointer(__ptr_layer) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_layer_navigation_enabled,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_layer_navigation_map: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_layer_navigation_map").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4040184819)!
        }
        }
    }()

    public func setLayerNavigationMap(
        layer: Int32,
        map: Godot.RID
    ) {
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        map.withGodotUnsafeRawPointer { __ptr_map in
        withUnsafeArgumentPackPointer(__ptr_layer, __ptr_map) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_layer_navigation_map,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_layer_navigation_map: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_layer_navigation_map").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 495598643)!
        }
        }
    }()

    public func layerNavigationMap(
        layer: Int32
    ) -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        withUnsafeArgumentPackPointer(__ptr_layer) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_layer_navigation_map,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_collision_animatable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_collision_animatable").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setCollisionAnimatable(
        enabled: Bool
    ) {
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_collision_animatable,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_collision_animatable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_collision_animatable").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isCollisionAnimatable() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_collision_animatable,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_collision_visibility_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_collision_visibility_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3193440636)!
        }
        }
    }()

    private func __setCollisionVisibilityMode(
        _ collisionVisibilityMode: Godot.TileMap.VisibilityMode
    ) {
        collisionVisibilityMode.withGodotUnsafeRawPointer { __ptr_collisionVisibilityMode in
        withUnsafeArgumentPackPointer(__ptr_collisionVisibilityMode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_collision_visibility_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_collision_visibility_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_collision_visibility_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2026313073)!
        }
        }
    }()

    private func __getCollisionVisibilityMode() -> Godot.TileMap.VisibilityMode {
        Godot.TileMap.VisibilityMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_collision_visibility_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_navigation_visibility_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_navigation_visibility_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3193440636)!
        }
        }
    }()

    private func __setNavigationVisibilityMode(
        _ navigationVisibilityMode: Godot.TileMap.VisibilityMode
    ) {
        navigationVisibilityMode.withGodotUnsafeRawPointer { __ptr_navigationVisibilityMode in
        withUnsafeArgumentPackPointer(__ptr_navigationVisibilityMode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_navigation_visibility_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_navigation_visibility_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_navigation_visibility_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2026313073)!
        }
        }
    }()

    private func __getNavigationVisibilityMode() -> Godot.TileMap.VisibilityMode {
        Godot.TileMap.VisibilityMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_navigation_visibility_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_cell: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_cell").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 966713560)!
        }
        }
    }()

    public func setCell(
        layer: Int32,
        coords: Godot.Vector2I,
        sourceID: Int32 = -1,
        atlasCoords: Godot.Vector2I = Vector2i(x: -1, y: -1),
        alternativeTile: Int32 = 0
    ) {
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        coords.withGodotUnsafeRawPointer { __ptr_coords in
        sourceID.withGodotUnsafeRawPointer { __ptr_sourceID in
        atlasCoords.withGodotUnsafeRawPointer { __ptr_atlasCoords in
        alternativeTile.withGodotUnsafeRawPointer { __ptr_alternativeTile in
        withUnsafeArgumentPackPointer(__ptr_layer, __ptr_coords, __ptr_sourceID, __ptr_atlasCoords, __ptr_alternativeTile) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_cell,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    internal static var __method_binding_erase_cell: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "erase_cell").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2311374912)!
        }
        }
    }()

    public func eraseCell(
        layer: Int32,
        coords: Godot.Vector2I
    ) {
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        coords.withGodotUnsafeRawPointer { __ptr_coords in
        withUnsafeArgumentPackPointer(__ptr_layer, __ptr_coords) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_erase_cell,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_cell_source_id: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_cell_source_id").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 551761942)!
        }
        }
    }()

    public func cellSourceID(
        layer: Int32,
        coords: Godot.Vector2I,
        useProxies: Bool = false
    ) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        coords.withGodotUnsafeRawPointer { __ptr_coords in
        useProxies.withGodotUnsafeRawPointer { __ptr_useProxies in
        withUnsafeArgumentPackPointer(__ptr_layer, __ptr_coords, __ptr_useProxies) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_cell_source_id,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    internal static var __method_binding_get_cell_atlas_coords: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_cell_atlas_coords").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1869815066)!
        }
        }
    }()

    public func cellAtlasCoords(
        layer: Int32,
        coords: Godot.Vector2I,
        useProxies: Bool = false
    ) -> Godot.Vector2I {
        Godot.Vector2I.fromMutatingGodotUnsafePointer { __temporary in
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        coords.withGodotUnsafeRawPointer { __ptr_coords in
        useProxies.withGodotUnsafeRawPointer { __ptr_useProxies in
        withUnsafeArgumentPackPointer(__ptr_layer, __ptr_coords, __ptr_useProxies) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_cell_atlas_coords,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    internal static var __method_binding_get_cell_alternative_tile: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_cell_alternative_tile").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 551761942)!
        }
        }
    }()

    public func cellAlternativeTile(
        layer: Int32,
        coords: Godot.Vector2I,
        useProxies: Bool = false
    ) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        coords.withGodotUnsafeRawPointer { __ptr_coords in
        useProxies.withGodotUnsafeRawPointer { __ptr_useProxies in
        withUnsafeArgumentPackPointer(__ptr_layer, __ptr_coords, __ptr_useProxies) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_cell_alternative_tile,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    internal static var __method_binding_get_cell_tile_data: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_cell_tile_data").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2849631287)!
        }
        }
    }()

    public func cellTileData(
        layer: Int32,
        coords: Godot.Vector2I,
        useProxies: Bool = false
    ) -> Godot.TileData? {
        Godot.TileData?.fromMutatingGodotUnsafePointer { __temporary in
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        coords.withGodotUnsafeRawPointer { __ptr_coords in
        useProxies.withGodotUnsafeRawPointer { __ptr_useProxies in
        withUnsafeArgumentPackPointer(__ptr_layer, __ptr_coords, __ptr_useProxies) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_cell_tile_data,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    internal static var __method_binding_get_coords_for_body_rid: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_coords_for_body_rid").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 291584212)!
        }
        }
    }()

    public func coordsForBodyRid(
        body: Godot.RID
    ) -> Godot.Vector2I {
        Godot.Vector2I.fromMutatingGodotUnsafePointer { __temporary in
        body.withGodotUnsafeRawPointer { __ptr_body in
        withUnsafeArgumentPackPointer(__ptr_body) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_coords_for_body_rid,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_layer_for_body_rid: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_layer_for_body_rid").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3917799429)!
        }
        }
    }()

    public func layerForBodyRid(
        body: Godot.RID
    ) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        body.withGodotUnsafeRawPointer { __ptr_body in
        withUnsafeArgumentPackPointer(__ptr_body) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_layer_for_body_rid,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_pattern: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_pattern").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2833570986)!
        }
        }
    }()

    public func pattern(
        layer: Int32,
        coordsArray: Godot.GodotArray<Godot.Vector2I>
    ) -> Godot.TileMapPattern? {
        Godot.TileMapPattern?.fromMutatingGodotUnsafePointer { __temporary in
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        coordsArray.withGodotUnsafeRawPointer { __ptr_coordsArray in
        withUnsafeArgumentPackPointer(__ptr_layer, __ptr_coordsArray) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_pattern,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_map_pattern: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_pattern").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1864516957)!
        }
        }
    }()

    public func mapPattern(
        positionInTilemap: Godot.Vector2I,
        coordsInPattern: Godot.Vector2I,
        pattern: Godot.TileMapPattern?
    ) -> Godot.Vector2I {
        Godot.Vector2I.fromMutatingGodotUnsafePointer { __temporary in
        positionInTilemap.withGodotUnsafeRawPointer { __ptr_positionInTilemap in
        coordsInPattern.withGodotUnsafeRawPointer { __ptr_coordsInPattern in
        pattern.withGodotUnsafeRawPointer { __ptr_pattern in
        withUnsafePointer(to: __ptr_pattern) { _ptr___ptr_pattern in
        withUnsafeArgumentPackPointer(__ptr_positionInTilemap, __ptr_coordsInPattern, _ptr___ptr_pattern) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_map_pattern,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}
    }

    internal static var __method_binding_set_pattern: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_pattern").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1195853946)!
        }
        }
    }()

    public func setPattern(
        layer: Int32,
        position: Godot.Vector2I,
        pattern: Godot.TileMapPattern?
    ) {
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        position.withGodotUnsafeRawPointer { __ptr_position in
        pattern.withGodotUnsafeRawPointer { __ptr_pattern in
        withUnsafePointer(to: __ptr_pattern) { _ptr___ptr_pattern in
        withUnsafeArgumentPackPointer(__ptr_layer, __ptr_position, _ptr___ptr_pattern) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_pattern,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    internal static var __method_binding_set_cells_terrain_connect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_cells_terrain_connect").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3578627656)!
        }
        }
    }()

    public func setCellsTerrainConnect(
        layer: Int32,
        cells: Godot.GodotArray<Godot.Vector2I>,
        terrainSet: Int32,
        terrain: Int32,
        ignoreEmptyTerrains: Bool = true
    ) {
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        cells.withGodotUnsafeRawPointer { __ptr_cells in
        terrainSet.withGodotUnsafeRawPointer { __ptr_terrainSet in
        terrain.withGodotUnsafeRawPointer { __ptr_terrain in
        ignoreEmptyTerrains.withGodotUnsafeRawPointer { __ptr_ignoreEmptyTerrains in
        withUnsafeArgumentPackPointer(__ptr_layer, __ptr_cells, __ptr_terrainSet, __ptr_terrain, __ptr_ignoreEmptyTerrains) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_cells_terrain_connect,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    internal static var __method_binding_set_cells_terrain_path: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_cells_terrain_path").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3578627656)!
        }
        }
    }()

    public func setCellsTerrainPath(
        layer: Int32,
        path: Godot.GodotArray<Godot.Vector2I>,
        terrainSet: Int32,
        terrain: Int32,
        ignoreEmptyTerrains: Bool = true
    ) {
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        path.withGodotUnsafeRawPointer { __ptr_path in
        terrainSet.withGodotUnsafeRawPointer { __ptr_terrainSet in
        terrain.withGodotUnsafeRawPointer { __ptr_terrain in
        ignoreEmptyTerrains.withGodotUnsafeRawPointer { __ptr_ignoreEmptyTerrains in
        withUnsafeArgumentPackPointer(__ptr_layer, __ptr_path, __ptr_terrainSet, __ptr_terrain, __ptr_ignoreEmptyTerrains) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_cells_terrain_path,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    internal static var __method_binding_fix_invalid_tiles: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "fix_invalid_tiles").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func fixInvalidTiles() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_fix_invalid_tiles,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_clear_layer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_layer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    public func clearLayer(
        _ layer: Int32
    ) {
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        withUnsafeArgumentPackPointer(__ptr_layer) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_clear_layer,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_clear: GDExtensionMethodBindPtr = {
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

    internal static var __method_binding_update_internals: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "update_internals").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func updateInternals() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_update_internals,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_notify_runtime_tile_data_update: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "notify_runtime_tile_data_update").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1025054187)!
        }
        }
    }()

    public func notifyRuntimeTileDataUpdate(
        layer: Int32 = -1
    ) {
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        withUnsafeArgumentPackPointer(__ptr_layer) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_notify_runtime_tile_data_update,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_surrounding_cells: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_surrounding_cells").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2673526557)!
        }
        }
    }()

    public func surroundingCells(
        coords: Godot.Vector2I
    ) -> Godot.GodotArray<Godot.Vector2I> {
        Godot.GodotArray<Godot.Vector2I>.fromMutatingGodotUnsafePointer { __temporary in
        coords.withGodotUnsafeRawPointer { __ptr_coords in
        withUnsafeArgumentPackPointer(__ptr_coords) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_surrounding_cells,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_used_cells: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_used_cells").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 663333327)!
        }
        }
    }()

    public func usedCells(
        layer: Int32
    ) -> Godot.GodotArray<Godot.Vector2I> {
        Godot.GodotArray<Godot.Vector2I>.fromMutatingGodotUnsafePointer { __temporary in
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        withUnsafeArgumentPackPointer(__ptr_layer) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_used_cells,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_used_cells_by_id: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_used_cells_by_id").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2931012785)!
        }
        }
    }()

    public func usedCellsByID(
        layer: Int32,
        sourceID: Int32 = -1,
        atlasCoords: Godot.Vector2I = Vector2i(x: -1, y: -1),
        alternativeTile: Int32 = -1
    ) -> Godot.GodotArray<Godot.Vector2I> {
        Godot.GodotArray<Godot.Vector2I>.fromMutatingGodotUnsafePointer { __temporary in
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        sourceID.withGodotUnsafeRawPointer { __ptr_sourceID in
        atlasCoords.withGodotUnsafeRawPointer { __ptr_atlasCoords in
        alternativeTile.withGodotUnsafeRawPointer { __ptr_alternativeTile in
        withUnsafeArgumentPackPointer(__ptr_layer, __ptr_sourceID, __ptr_atlasCoords, __ptr_alternativeTile) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_used_cells_by_id,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}
    }

    internal static var __method_binding_get_used_rect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_used_rect").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 410525958)!
        }
        }
    }()

    public func usedRect() -> Godot.Rect2I {
        Godot.Rect2I.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_used_rect,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_map_to_local: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_to_local").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 108438297)!
        }
        }
    }()

    public func mapToLocal(
        mapPosition: Godot.Vector2I
    ) -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        mapPosition.withGodotUnsafeRawPointer { __ptr_mapPosition in
        withUnsafeArgumentPackPointer(__ptr_mapPosition) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_map_to_local,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_local_to_map: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "local_to_map").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 837806996)!
        }
        }
    }()

    public func localToMap(
        localPosition: Godot.Vector2
    ) -> Godot.Vector2I {
        Godot.Vector2I.fromMutatingGodotUnsafePointer { __temporary in
        localPosition.withGodotUnsafeRawPointer { __ptr_localPosition in
        withUnsafeArgumentPackPointer(__ptr_localPosition) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_local_to_map,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_neighbor_cell: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_neighbor_cell").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 986575103)!
        }
        }
    }()

    public func neighborCell(
        coords: Godot.Vector2I,
        neighbor: Godot.TileSet.CellNeighbor
    ) -> Godot.Vector2I {
        Godot.Vector2I.fromMutatingGodotUnsafePointer { __temporary in
        coords.withGodotUnsafeRawPointer { __ptr_coords in
        neighbor.withGodotUnsafeRawPointer { __ptr_neighbor in
        withUnsafeArgumentPackPointer(__ptr_coords, __ptr_neighbor) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_neighbor_cell,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
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

    public var renderingQuadrantSize: Int32 {
        get {
            __getRenderingQuadrantSize()
        }
        set {
            __setRenderingQuadrantSize(
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
            Unmanaged<TileMap>.fromOpaque(instancePtr).takeUnretainedValue()
        ._useTileDataRuntimeUpdate(
            layer: Int32.fromGodotUnsafePointer(args[0]!),
            coords: Godot.Vector2I.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _tile_data_runtime_update_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TileMap>.fromOpaque(instancePtr).takeUnretainedValue()
        ._tileDataRuntimeUpdate(
            layer: Int32.fromGodotUnsafePointer(args[0]!),
            coords: Godot.Vector2I.fromGodotUnsafePointer(args[1]!),
            tileData: Godot.TileData?.fromGodotUnsafePointer(args[2]!)
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