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
               ("Force Hide", 2),
            ]
        }
    }
    
    
    public func changed() {
        _ = changedSignal.emit()
    }
    public lazy var changedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "changed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
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
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_navigation_map").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4040184819)!
            }
        }
    }()
    
    public func setNavigationMap(
        layer: Int32,
        map: Godot.RID
    ) {
        withTransferrableUnsafeRawPointer(to: layer) { __ptr_layer in
            withTransferrableUnsafeRawPointer(to: map) { __ptr_map in
                withUnsafeArgumentPackPointer(__ptr_layer, __ptr_map) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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
    
    internal static var __method_binding_get_navigation_map: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_navigation_map").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 495598643)!
            }
        }
    }()
    
    public func navigationMap(
        layer: Int32
    ) -> Godot.RID {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: layer) { __ptr_layer in
                withUnsafeArgumentPackPointer(__ptr_layer) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_navigation_map,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_force_update: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "force_update").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1025054187)!
            }
        }
    }()
    
    public func forceUpdate(
        layer: Int32 = -1
    ) {
        withTransferrableUnsafeRawPointer(to: layer) { __ptr_layer in
            withUnsafeArgumentPackPointer(__ptr_layer) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_force_update,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_set_tileset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_tileset").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 774531446)!
            }
        }
    }()
    
    private func __setTileset(
        _ tileset: Godot.TileSet?
    ) {
        withTransferrableUnsafeRawPointer(to: tileset) { __ptr_tileset in
            withUnsafePointer(to: __ptr_tileset) { _ptr___ptr_tileset in
                withUnsafeArgumentPackPointer(_ptr___ptr_tileset) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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
    
    internal static var __method_binding_get_tileset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_tileset").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2678226422)!
            }
        }
    }()
    
    private func __getTileset() -> Godot.TileSet? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_tileset,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_rendering_quadrant_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_rendering_quadrant_size").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
            }
        }
    }()
    
    private func __setRenderingQuadrantSize(
        _ size: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
            withUnsafeArgumentPackPointer(__ptr_size) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_rendering_quadrant_size,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_rendering_quadrant_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_rendering_quadrant_size").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
            }
        }
    }()
    
    private func __getRenderingQuadrantSize() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_rendering_quadrant_size,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_get_layers_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_layers_count").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
            }
        }
    }()
    
    public func layersCount() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_layers_count,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_add_layer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "add_layer").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
            }
        }
    }()
    
    public func addLayer(
        toPosition position: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: position) { __ptr_position in
            withUnsafeArgumentPackPointer(__ptr_position) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_add_layer,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_move_layer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "move_layer").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
            }
        }
    }()
    
    public func moveLayer(
        _ layer: Int32,
        toPosition position: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: layer) { __ptr_layer in
            withTransferrableUnsafeRawPointer(to: position) { __ptr_position in
                withUnsafeArgumentPackPointer(__ptr_layer, __ptr_position) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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
    
    internal static var __method_binding_remove_layer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "remove_layer").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
            }
        }
    }()
    
    public func removeLayer(
        _ layer: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: layer) { __ptr_layer in
            withUnsafeArgumentPackPointer(__ptr_layer) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_remove_layer,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_set_layer_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_layer_name").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 501894301)!
            }
        }
    }()
    
    public func setLayerName(
        layer: Int32,
        name: Godot.GodotString
    ) {
        withTransferrableUnsafeRawPointer(to: layer) { __ptr_layer in
            withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
                withUnsafeArgumentPackPointer(__ptr_layer, __ptr_name) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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
    
    internal static var __method_binding_get_layer_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_layer_name").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 844755477)!
            }
        }
    }()
    
    public func layerName(
        layer: Int32
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: layer) { __ptr_layer in
                withUnsafeArgumentPackPointer(__ptr_layer) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_layer_name,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_set_layer_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_layer_enabled").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 300928843)!
            }
        }
    }()
    
    public func setLayerEnabled(
        layer: Int32,
        enabled: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: layer) { __ptr_layer in
            withTransferrableUnsafeRawPointer(to: enabled) { __ptr_enabled in
                withUnsafeArgumentPackPointer(__ptr_layer, __ptr_enabled) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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
    
    internal static var __method_binding_is_layer_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "is_layer_enabled").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
            }
        }
    }()
    
    public func isLayerEnabled(
        layer: Int32
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: layer) { __ptr_layer in
                withUnsafeArgumentPackPointer(__ptr_layer) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_is_layer_enabled,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_set_layer_modulate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_layer_modulate").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2878471219)!
            }
        }
    }()
    
    public func setLayerModulate(
        layer: Int32,
        modulate: Godot.Color
    ) {
        withTransferrableUnsafeRawPointer(to: layer) { __ptr_layer in
            withTransferrableUnsafeRawPointer(to: modulate) { __ptr_modulate in
                withUnsafeArgumentPackPointer(__ptr_layer, __ptr_modulate) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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
    
    internal static var __method_binding_get_layer_modulate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_layer_modulate").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3457211756)!
            }
        }
    }()
    
    public func layerModulate(
        layer: Int32
    ) -> Godot.Color {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: layer) { __ptr_layer in
                withUnsafeArgumentPackPointer(__ptr_layer) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_layer_modulate,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_set_layer_y_sort_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_layer_y_sort_enabled").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 300928843)!
            }
        }
    }()
    
    public func setLayerYSortEnabled(
        layer: Int32,
        ySortEnabled: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: layer) { __ptr_layer in
            withTransferrableUnsafeRawPointer(to: ySortEnabled) { __ptr_ySortEnabled in
                withUnsafeArgumentPackPointer(__ptr_layer, __ptr_ySortEnabled) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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
    
    internal static var __method_binding_is_layer_y_sort_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "is_layer_y_sort_enabled").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
            }
        }
    }()
    
    public func isLayerYSortEnabled(
        layer: Int32
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: layer) { __ptr_layer in
                withUnsafeArgumentPackPointer(__ptr_layer) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_is_layer_y_sort_enabled,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_set_layer_y_sort_origin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_layer_y_sort_origin").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
            }
        }
    }()
    
    public func setLayerYSortOrigin(
        layer: Int32,
        ySortOrigin: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: layer) { __ptr_layer in
            withTransferrableUnsafeRawPointer(to: ySortOrigin) { __ptr_ySortOrigin in
                withUnsafeArgumentPackPointer(__ptr_layer, __ptr_ySortOrigin) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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
    
    internal static var __method_binding_get_layer_y_sort_origin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_layer_y_sort_origin").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 923996154)!
            }
        }
    }()
    
    public func layerYSortOrigin(
        layer: Int32
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: layer) { __ptr_layer in
                withUnsafeArgumentPackPointer(__ptr_layer) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_layer_y_sort_origin,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_set_layer_z_index: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_layer_z_index").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
            }
        }
    }()
    
    public func setLayerZIndex(
        layer: Int32,
        zIndex: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: layer) { __ptr_layer in
            withTransferrableUnsafeRawPointer(to: zIndex) { __ptr_zIndex in
                withUnsafeArgumentPackPointer(__ptr_layer, __ptr_zIndex) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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
    
    internal static var __method_binding_get_layer_z_index: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_layer_z_index").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 923996154)!
            }
        }
    }()
    
    public func layerZIndex(
        layer: Int32
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: layer) { __ptr_layer in
                withUnsafeArgumentPackPointer(__ptr_layer) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_layer_z_index,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_set_layer_navigation_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_layer_navigation_enabled").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 300928843)!
            }
        }
    }()
    
    public func setLayerNavigationEnabled(
        layer: Int32,
        enabled: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: layer) { __ptr_layer in
            withTransferrableUnsafeRawPointer(to: enabled) { __ptr_enabled in
                withUnsafeArgumentPackPointer(__ptr_layer, __ptr_enabled) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_layer_navigation_enabled,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_is_layer_navigation_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "is_layer_navigation_enabled").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
            }
        }
    }()
    
    public func isLayerNavigationEnabled(
        layer: Int32
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: layer) { __ptr_layer in
                withUnsafeArgumentPackPointer(__ptr_layer) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_is_layer_navigation_enabled,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_set_layer_navigation_map: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_layer_navigation_map").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4040184819)!
            }
        }
    }()
    
    public func setLayerNavigationMap(
        layer: Int32,
        map: Godot.RID
    ) {
        withTransferrableUnsafeRawPointer(to: layer) { __ptr_layer in
            withTransferrableUnsafeRawPointer(to: map) { __ptr_map in
                withUnsafeArgumentPackPointer(__ptr_layer, __ptr_map) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_layer_navigation_map,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_layer_navigation_map: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_layer_navigation_map").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 495598643)!
            }
        }
    }()
    
    public func layerNavigationMap(
        layer: Int32
    ) -> Godot.RID {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: layer) { __ptr_layer in
                withUnsafeArgumentPackPointer(__ptr_layer) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_layer_navigation_map,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_set_collision_animatable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_collision_animatable").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
            }
        }
    }()
    
    private func __setCollisionAnimatable(
        enabled: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: enabled) { __ptr_enabled in
            withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_collision_animatable,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_is_collision_animatable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "is_collision_animatable").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
            }
        }
    }()
    
    private func __isCollisionAnimatable() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_collision_animatable,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_collision_visibility_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_collision_visibility_mode").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3193440636)!
            }
        }
    }()
    
    private func __setCollisionVisibilityMode(
        _ collisionVisibilityMode: Godot.TileMap.VisibilityMode
    ) {
        withTransferrableUnsafeRawPointer(to: collisionVisibilityMode) { __ptr_collisionVisibilityMode in
            withUnsafeArgumentPackPointer(__ptr_collisionVisibilityMode) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_collision_visibility_mode,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_collision_visibility_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_collision_visibility_mode").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2026313073)!
            }
        }
    }()
    
    private func __getCollisionVisibilityMode() -> Godot.TileMap.VisibilityMode {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_collision_visibility_mode,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_navigation_visibility_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_navigation_visibility_mode").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3193440636)!
            }
        }
    }()
    
    private func __setNavigationVisibilityMode(
        _ navigationVisibilityMode: Godot.TileMap.VisibilityMode
    ) {
        withTransferrableUnsafeRawPointer(to: navigationVisibilityMode) { __ptr_navigationVisibilityMode in
            withUnsafeArgumentPackPointer(__ptr_navigationVisibilityMode) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_navigation_visibility_mode,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_navigation_visibility_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_navigation_visibility_mode").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2026313073)!
            }
        }
    }()
    
    private func __getNavigationVisibilityMode() -> Godot.TileMap.VisibilityMode {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_navigation_visibility_mode,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_cell: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_cell").withUnsafeOpaquePointer { __ptr__method_name in
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
        withTransferrableUnsafeRawPointer(to: layer) { __ptr_layer in
            withTransferrableUnsafeRawPointer(to: coords) { __ptr_coords in
                withTransferrableUnsafeRawPointer(to: sourceID) { __ptr_sourceID in
                    withTransferrableUnsafeRawPointer(to: atlasCoords) { __ptr_atlasCoords in
                        withTransferrableUnsafeRawPointer(to: alternativeTile) { __ptr_alternativeTile in
                            withUnsafeArgumentPackPointer(__ptr_layer, __ptr_coords, __ptr_sourceID, __ptr_atlasCoords, __ptr_alternativeTile) { __accessPtr in
                                self.withUnsafeMutableRawPointer { __ptr_self in
                                    GodotExtension.Interface.objectMethodBindPtrcall(
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
    
    internal static var __method_binding_erase_cell: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "erase_cell").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2311374912)!
            }
        }
    }()
    
    public func eraseCell(
        layer: Int32,
        coords: Godot.Vector2I
    ) {
        withTransferrableUnsafeRawPointer(to: layer) { __ptr_layer in
            withTransferrableUnsafeRawPointer(to: coords) { __ptr_coords in
                withUnsafeArgumentPackPointer(__ptr_layer, __ptr_coords) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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
    
    internal static var __method_binding_get_cell_source_id: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_cell_source_id").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 551761942)!
            }
        }
    }()
    
    public func cellSourceID(
        layer: Int32,
        coords: Godot.Vector2I,
        useProxies: Bool = false
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: layer) { __ptr_layer in
                withTransferrableUnsafeRawPointer(to: coords) { __ptr_coords in
                    withTransferrableUnsafeRawPointer(to: useProxies) { __ptr_useProxies in
                        withUnsafeArgumentPackPointer(__ptr_layer, __ptr_coords, __ptr_useProxies) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_get_cell_source_id,
                                    __ptr_self,
                                    __accessPtr,
                                    __temporary
                                )
                            }
                        }
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_cell_atlas_coords: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_cell_atlas_coords").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1869815066)!
            }
        }
    }()
    
    public func cellAtlasCoords(
        layer: Int32,
        coords: Godot.Vector2I,
        useProxies: Bool = false
    ) -> Godot.Vector2I {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: layer) { __ptr_layer in
                withTransferrableUnsafeRawPointer(to: coords) { __ptr_coords in
                    withTransferrableUnsafeRawPointer(to: useProxies) { __ptr_useProxies in
                        withUnsafeArgumentPackPointer(__ptr_layer, __ptr_coords, __ptr_useProxies) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_get_cell_atlas_coords,
                                    __ptr_self,
                                    __accessPtr,
                                    __temporary
                                )
                            }
                        }
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_cell_alternative_tile: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_cell_alternative_tile").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 551761942)!
            }
        }
    }()
    
    public func cellAlternativeTile(
        layer: Int32,
        coords: Godot.Vector2I,
        useProxies: Bool = false
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: layer) { __ptr_layer in
                withTransferrableUnsafeRawPointer(to: coords) { __ptr_coords in
                    withTransferrableUnsafeRawPointer(to: useProxies) { __ptr_useProxies in
                        withUnsafeArgumentPackPointer(__ptr_layer, __ptr_coords, __ptr_useProxies) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_get_cell_alternative_tile,
                                    __ptr_self,
                                    __accessPtr,
                                    __temporary
                                )
                            }
                        }
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_cell_tile_data: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_cell_tile_data").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2849631287)!
            }
        }
    }()
    
    public func cellTileData(
        layer: Int32,
        coords: Godot.Vector2I,
        useProxies: Bool = false
    ) -> Godot.TileData? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: layer) { __ptr_layer in
                withTransferrableUnsafeRawPointer(to: coords) { __ptr_coords in
                    withTransferrableUnsafeRawPointer(to: useProxies) { __ptr_useProxies in
                        withUnsafeArgumentPackPointer(__ptr_layer, __ptr_coords, __ptr_useProxies) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_get_cell_tile_data,
                                    __ptr_self,
                                    __accessPtr,
                                    __temporary
                                )
                            }
                        }
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_coords_for_body_rid: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_coords_for_body_rid").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 291584212)!
            }
        }
    }()
    
    public func coordsForBodyRID(
        body: Godot.RID
    ) -> Godot.Vector2I {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: body) { __ptr_body in
                withUnsafeArgumentPackPointer(__ptr_body) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_coords_for_body_rid,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_layer_for_body_rid: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_layer_for_body_rid").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3917799429)!
            }
        }
    }()
    
    public func layerForBodyRID(
        body: Godot.RID
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: body) { __ptr_body in
                withUnsafeArgumentPackPointer(__ptr_body) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_layer_for_body_rid,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_pattern: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_pattern").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2833570986)!
            }
        }
    }()
    
    public func pattern(
        layer: Int32,
        coordsArray: Godot.GodotArray<Godot.Vector2I>
    ) -> Godot.TileMapPattern? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: layer) { __ptr_layer in
                withTransferrableUnsafeRawPointer(to: coordsArray) { __ptr_coordsArray in
                    withUnsafeArgumentPackPointer(__ptr_layer, __ptr_coordsArray) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_get_pattern,
                                __ptr_self,
                                __accessPtr,
                                __temporary
                            )
                        }
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_map_pattern: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "map_pattern").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1864516957)!
            }
        }
    }()
    
    public func mapPattern(
        positionInTilemap: Godot.Vector2I,
        coordsInPattern: Godot.Vector2I,
        pattern: Godot.TileMapPattern?
    ) -> Godot.Vector2I {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: positionInTilemap) { __ptr_positionInTilemap in
                withTransferrableUnsafeRawPointer(to: coordsInPattern) { __ptr_coordsInPattern in
                    withTransferrableUnsafeRawPointer(to: pattern) { __ptr_pattern in
                        withUnsafePointer(to: __ptr_pattern) { _ptr___ptr_pattern in
                            withUnsafeArgumentPackPointer(__ptr_positionInTilemap, __ptr_coordsInPattern, _ptr___ptr_pattern) { __accessPtr in
                                self.withUnsafeMutableRawPointer { __ptr_self in
                                    GodotExtension.Interface.objectMethodBindPtrcall(
                                        Self.__method_binding_map_pattern,
                                        __ptr_self,
                                        __accessPtr,
                                        __temporary
                                    )
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_set_pattern: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_pattern").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1195853946)!
            }
        }
    }()
    
    public func setPattern(
        layer: Int32,
        position: Godot.Vector2I,
        pattern: Godot.TileMapPattern?
    ) {
        withTransferrableUnsafeRawPointer(to: layer) { __ptr_layer in
            withTransferrableUnsafeRawPointer(to: position) { __ptr_position in
                withTransferrableUnsafeRawPointer(to: pattern) { __ptr_pattern in
                    withUnsafePointer(to: __ptr_pattern) { _ptr___ptr_pattern in
                        withUnsafeArgumentPackPointer(__ptr_layer, __ptr_position, _ptr___ptr_pattern) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
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
    
    internal static var __method_binding_set_cells_terrain_connect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_cells_terrain_connect").withUnsafeOpaquePointer { __ptr__method_name in
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
        withTransferrableUnsafeRawPointer(to: layer) { __ptr_layer in
            withTransferrableUnsafeRawPointer(to: cells) { __ptr_cells in
                withTransferrableUnsafeRawPointer(to: terrainSet) { __ptr_terrainSet in
                    withTransferrableUnsafeRawPointer(to: terrain) { __ptr_terrain in
                        withTransferrableUnsafeRawPointer(to: ignoreEmptyTerrains) { __ptr_ignoreEmptyTerrains in
                            withUnsafeArgumentPackPointer(__ptr_layer, __ptr_cells, __ptr_terrainSet, __ptr_terrain, __ptr_ignoreEmptyTerrains) { __accessPtr in
                                self.withUnsafeMutableRawPointer { __ptr_self in
                                    GodotExtension.Interface.objectMethodBindPtrcall(
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
    
    internal static var __method_binding_set_cells_terrain_path: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_cells_terrain_path").withUnsafeOpaquePointer { __ptr__method_name in
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
        withTransferrableUnsafeRawPointer(to: layer) { __ptr_layer in
            withTransferrableUnsafeRawPointer(to: path) { __ptr_path in
                withTransferrableUnsafeRawPointer(to: terrainSet) { __ptr_terrainSet in
                    withTransferrableUnsafeRawPointer(to: terrain) { __ptr_terrain in
                        withTransferrableUnsafeRawPointer(to: ignoreEmptyTerrains) { __ptr_ignoreEmptyTerrains in
                            withUnsafeArgumentPackPointer(__ptr_layer, __ptr_path, __ptr_terrainSet, __ptr_terrain, __ptr_ignoreEmptyTerrains) { __accessPtr in
                                self.withUnsafeMutableRawPointer { __ptr_self in
                                    GodotExtension.Interface.objectMethodBindPtrcall(
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
    
    internal static var __method_binding_fix_invalid_tiles: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "fix_invalid_tiles").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
            }
        }
    }()
    
    public func fixInvalidTiles() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_fix_invalid_tiles,
                __ptr_self,
                nil,
                nil
            )
        }
    }
    
    internal static var __method_binding_clear_layer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "clear_layer").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
            }
        }
    }()
    
    public func clearLayer(
        _ layer: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: layer) { __ptr_layer in
            withUnsafeArgumentPackPointer(__ptr_layer) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_clear_layer,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_clear: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "clear").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
            }
        }
    }()
    
    public func clear() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_clear,
                __ptr_self,
                nil,
                nil
            )
        }
    }
    
    internal static var __method_binding_update_internals: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "update_internals").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
            }
        }
    }()
    
    public func updateInternals() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_update_internals,
                __ptr_self,
                nil,
                nil
            )
        }
    }
    
    internal static var __method_binding_notify_runtime_tile_data_update: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "notify_runtime_tile_data_update").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1025054187)!
            }
        }
    }()
    
    public func notifyRuntimeTileDataUpdate(
        layer: Int32 = -1
    ) {
        withTransferrableUnsafeRawPointer(to: layer) { __ptr_layer in
            withUnsafeArgumentPackPointer(__ptr_layer) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_notify_runtime_tile_data_update,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_surrounding_cells: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_surrounding_cells").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2673526557)!
            }
        }
    }()
    
    public func surroundingCells(
        coords: Godot.Vector2I
    ) -> Godot.GodotArray<Godot.Vector2I> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: coords) { __ptr_coords in
                withUnsafeArgumentPackPointer(__ptr_coords) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_surrounding_cells,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_used_cells: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_used_cells").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 663333327)!
            }
        }
    }()
    
    public func usedCells(
        layer: Int32
    ) -> Godot.GodotArray<Godot.Vector2I> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: layer) { __ptr_layer in
                withUnsafeArgumentPackPointer(__ptr_layer) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_used_cells,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_used_cells_by_id: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_used_cells_by_id").withUnsafeOpaquePointer { __ptr__method_name in
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
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: layer) { __ptr_layer in
                withTransferrableUnsafeRawPointer(to: sourceID) { __ptr_sourceID in
                    withTransferrableUnsafeRawPointer(to: atlasCoords) { __ptr_atlasCoords in
                        withTransferrableUnsafeRawPointer(to: alternativeTile) { __ptr_alternativeTile in
                            withUnsafeArgumentPackPointer(__ptr_layer, __ptr_sourceID, __ptr_atlasCoords, __ptr_alternativeTile) { __accessPtr in
                                self.withUnsafeMutableRawPointer { __ptr_self in
                                    GodotExtension.Interface.objectMethodBindPtrcall(
                                        Self.__method_binding_get_used_cells_by_id,
                                        __ptr_self,
                                        __accessPtr,
                                        __temporary
                                    )
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_used_rect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_used_rect").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 410525958)!
            }
        }
    }()
    
    public func usedRect() -> Godot.Rect2I {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_used_rect,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_map_to_local: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "map_to_local").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 108438297)!
            }
        }
    }()
    
    public func mapToLocal(
        mapPosition: Godot.Vector2I
    ) -> Godot.Vector2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: mapPosition) { __ptr_mapPosition in
                withUnsafeArgumentPackPointer(__ptr_mapPosition) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_map_to_local,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_local_to_map: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "local_to_map").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 837806996)!
            }
        }
    }()
    
    public func localToMap(
        localPosition: Godot.Vector2
    ) -> Godot.Vector2I {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: localPosition) { __ptr_localPosition in
                withUnsafeArgumentPackPointer(__ptr_localPosition) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_local_to_map,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_neighbor_cell: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_neighbor_cell").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 986575103)!
            }
        }
    }()
    
    public func neighborCell(
        coords: Godot.Vector2I,
        neighbor: Godot.TileSet.CellNeighbor
    ) -> Godot.Vector2I {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: coords) { __ptr_coords in
                withTransferrableUnsafeRawPointer(to: neighbor) { __ptr_neighbor in
                    withUnsafeArgumentPackPointer(__ptr_coords, __ptr_neighbor) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_get_neighbor_cell,
                                __ptr_self,
                                __accessPtr,
                                __temporary
                            )
                        }
                    }
                }
            }
        }
    }
    
    public var tileset: Godot.TileSet? {
        get {
            __getTileset()
        }
        set(newValue) {
            __setTileset(
                newValue
            )
        }
    }
    
    public var renderingQuadrantSize: Int32 {
        get {
            __getRenderingQuadrantSize()
        }
        set(newValue) {
            __setRenderingQuadrantSize(
                newValue
            )
        }
    }
    
    public var isCollisionAnimatable: Bool {
        get {
            __isCollisionAnimatable()
        }
        set(newValue) {
            __setCollisionAnimatable(
                enabled: newValue
            )
        }
    }
    
    public var collisionVisibilityMode: Godot.TileMap.VisibilityMode {
        get {
            __getCollisionVisibilityMode()
        }
        set(newValue) {
            __setCollisionVisibilityMode(
                newValue
            )
        }
    }
    
    public var navigationVisibilityMode: Godot.TileMap.VisibilityMode {
        get {
            __getNavigationVisibilityMode()
        }
        set(newValue) {
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
            guard let instancePtr, let args else { return }
            Unmanaged<TileMap>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._useTileDataRuntimeUpdate(
                    layer: Int32.transferFromGodot(unsafePointer: args[0]!),
                    coords: Godot.Vector2I.transferFromGodot(unsafePointer: args[1]!)
                )
               .transferToGodot(unsafePointer: returnPtr!)
        }
        let _tile_data_runtime_update_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else { return }
            Unmanaged<TileMap>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._tileDataRuntimeUpdate(
                    layer: Int32.transferFromGodot(unsafePointer: args[0]!),
                    coords: Godot.Vector2I.transferFromGodot(unsafePointer: args[1]!),
                    tileData: Godot.TileData?.transferFromGodot(unsafePointer: args[2]!)
                )
        }
        _virtualFunctions = [
            "_useTileDataRuntimeUpdate" : ("_use_tile_data_runtime_update", _use_tile_data_runtime_update_call),
            "_tileDataRuntimeUpdate" : ("_tile_data_runtime_update", _tile_data_runtime_update_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions![key] = value
        }
        return _virtualFunctions!
    }
}