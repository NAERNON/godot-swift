//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class NavigationServer3D: Object {
    public enum ProcessInfo: UInt32, GodotEnum {
        case activeMaps = 0
        case regionCount = 1
        case agentCount = 2
        case linkCount = 3
        case polygonCount = 4
        case edgeCount = 5
        case edgeMergeCount = 6
        case edgeConnectionCount = 7
        case edgeFreeCount = 8
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Active Maps", 0),
            ("Region Count", 1),
            ("Agent Count", 2),
            ("Link Count", 3),
            ("Polygon Count", 4),
            ("Edge Count", 5),
            ("Edge Merge Count", 6),
            ("Edge Connection Count", 7),
            ("Edge Free Count", 8),]
        }
    }

    @Emitter(signal: "map_changed", args: ("map", Godot.RID))
    public struct MapChanged {
    }

    @Emitter(signal: "navigation_debug_changed")
    public struct NavigationDebugChanged {
    }

    @Emitter(signal: "avoidance_debug_changed")
    public struct AvoidanceDebugChanged {
    }

    private static var __method_binding_get_maps: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_maps").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()
    public func maps() -> Godot.GodotArray<Godot.RID> {
        let __temporary = Godot.GodotArray<Godot.RID>()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_maps,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_map_create: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_create").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func mapCreate() -> Godot.RID {
        let __temporary = Godot.RID()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_map_create,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_map_set_active: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_set_active").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func mapSetActive(map: Godot.RID, active: Bool) {
        map.withUnsafeRawPointer { (__ptr_map) in
            withUnsafePointer(to: active) { (__ptr_active) in
                withUnsafeArgumentPackPointer(__ptr_map, __ptr_active) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_map_set_active,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_map_is_active: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_is_active").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func mapIsActive(map: Godot.RID) -> Bool {
        var __temporary = Bool()
        map.withUnsafeRawPointer { (__ptr_map) in
            withUnsafeArgumentPackPointer(__ptr_map) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_map_is_active,
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

    private static var __method_binding_map_set_up: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_set_up").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3227306858)!
        }
        }
    }()
    public func mapSetUp(map: Godot.RID, up: Godot.Vector3) {
        map.withUnsafeRawPointer { (__ptr_map) in
            withUnsafePointer(to: up) { (__ptr_up) in
                withUnsafeArgumentPackPointer(__ptr_map, __ptr_up) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_map_set_up,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_map_get_up: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_get_up").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 531438156)!
        }
        }
    }()
    public func mapGetUp(map: Godot.RID) -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        map.withUnsafeRawPointer { (__ptr_map) in
            withUnsafeArgumentPackPointer(__ptr_map) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_map_get_up,
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

    private static var __method_binding_map_set_cell_size: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_set_cell_size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func mapSetCellSize(map: Godot.RID, cellSize: Double) {
        map.withUnsafeRawPointer { (__ptr_map) in
            withUnsafePointer(to: cellSize) { (__ptr_cellSize) in
                withUnsafeArgumentPackPointer(__ptr_map, __ptr_cellSize) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_map_set_cell_size,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_map_get_cell_size: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_get_cell_size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 866169185)!
        }
        }
    }()
    public func mapGetCellSize(map: Godot.RID) -> Double {
        var __temporary = Double()
        map.withUnsafeRawPointer { (__ptr_map) in
            withUnsafeArgumentPackPointer(__ptr_map) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_map_get_cell_size,
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

    private static var __method_binding_map_set_cell_height: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_set_cell_height").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func mapSetCellHeight(map: Godot.RID, cellHeight: Double) {
        map.withUnsafeRawPointer { (__ptr_map) in
            withUnsafePointer(to: cellHeight) { (__ptr_cellHeight) in
                withUnsafeArgumentPackPointer(__ptr_map, __ptr_cellHeight) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_map_set_cell_height,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_map_get_cell_height: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_get_cell_height").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 866169185)!
        }
        }
    }()
    public func mapGetCellHeight(map: Godot.RID) -> Double {
        var __temporary = Double()
        map.withUnsafeRawPointer { (__ptr_map) in
            withUnsafeArgumentPackPointer(__ptr_map) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_map_get_cell_height,
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

    private static var __method_binding_map_set_use_edge_connections: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_set_use_edge_connections").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func mapSetUseEdgeConnections(map: Godot.RID, enabled: Bool) {
        map.withUnsafeRawPointer { (__ptr_map) in
            withUnsafePointer(to: enabled) { (__ptr_enabled) in
                withUnsafeArgumentPackPointer(__ptr_map, __ptr_enabled) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_map_set_use_edge_connections,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_map_get_use_edge_connections: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_get_use_edge_connections").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func mapGetUseEdgeConnections(map: Godot.RID) -> Bool {
        var __temporary = Bool()
        map.withUnsafeRawPointer { (__ptr_map) in
            withUnsafeArgumentPackPointer(__ptr_map) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_map_get_use_edge_connections,
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

    private static var __method_binding_map_set_edge_connection_margin: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_set_edge_connection_margin").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func mapSetEdgeConnectionMargin(map: Godot.RID, margin: Double) {
        map.withUnsafeRawPointer { (__ptr_map) in
            withUnsafePointer(to: margin) { (__ptr_margin) in
                withUnsafeArgumentPackPointer(__ptr_map, __ptr_margin) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_map_set_edge_connection_margin,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_map_get_edge_connection_margin: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_get_edge_connection_margin").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 866169185)!
        }
        }
    }()
    public func mapGetEdgeConnectionMargin(map: Godot.RID) -> Double {
        var __temporary = Double()
        map.withUnsafeRawPointer { (__ptr_map) in
            withUnsafeArgumentPackPointer(__ptr_map) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_map_get_edge_connection_margin,
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

    private static var __method_binding_map_set_link_connection_radius: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_set_link_connection_radius").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func mapSetLinkConnectionRadius(map: Godot.RID, radius: Double) {
        map.withUnsafeRawPointer { (__ptr_map) in
            withUnsafePointer(to: radius) { (__ptr_radius) in
                withUnsafeArgumentPackPointer(__ptr_map, __ptr_radius) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_map_set_link_connection_radius,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_map_get_link_connection_radius: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_get_link_connection_radius").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 866169185)!
        }
        }
    }()
    public func mapGetLinkConnectionRadius(map: Godot.RID) -> Double {
        var __temporary = Double()
        map.withUnsafeRawPointer { (__ptr_map) in
            withUnsafeArgumentPackPointer(__ptr_map) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_map_get_link_connection_radius,
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

    private static var __method_binding_map_get_path: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_get_path").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2121045993)!
        }
        }
    }()
    public func mapGetPath(map: Godot.RID, origin: Godot.Vector3, destination: Godot.Vector3, optimize: Bool, navigationLayers: UInt32 = 1) -> Godot.PackedVector3Array {
        let __temporary = Godot.PackedVector3Array()
        map.withUnsafeRawPointer { (__ptr_map) in
            withUnsafePointer(to: origin) { (__ptr_origin) in
                withUnsafePointer(to: destination) { (__ptr_destination) in
                    withUnsafePointer(to: optimize) { (__ptr_optimize) in
                        withUnsafePointer(to: navigationLayers) { (__ptr_navigationLayers) in
                            withUnsafeArgumentPackPointer(__ptr_map, __ptr_origin, __ptr_destination, __ptr_optimize, __ptr_navigationLayers) { (__accessPtr) in
                                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                        gdextension_interface_object_method_bind_ptrcall(
                                            Self.__method_binding_map_get_path,
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

    private static var __method_binding_map_get_closest_point_to_segment: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_get_closest_point_to_segment").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3830095642)!
        }
        }
    }()
    public func mapGetClosestPointToSegment(map: Godot.RID, start: Godot.Vector3, end: Godot.Vector3, useCollision: Bool = false) -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        map.withUnsafeRawPointer { (__ptr_map) in
            withUnsafePointer(to: start) { (__ptr_start) in
                withUnsafePointer(to: end) { (__ptr_end) in
                    withUnsafePointer(to: useCollision) { (__ptr_useCollision) in
                        withUnsafeArgumentPackPointer(__ptr_map, __ptr_start, __ptr_end, __ptr_useCollision) { (__accessPtr) in
                            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_map_get_closest_point_to_segment,
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

    private static var __method_binding_map_get_closest_point: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_get_closest_point").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2056183332)!
        }
        }
    }()
    public func mapGetClosestPoint(map: Godot.RID, toPoint point: Godot.Vector3) -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        map.withUnsafeRawPointer { (__ptr_map) in
            withUnsafePointer(to: point) { (__ptr_point) in
                withUnsafeArgumentPackPointer(__ptr_map, __ptr_point) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_map_get_closest_point,
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

    private static var __method_binding_map_get_closest_point_normal: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_get_closest_point_normal").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2056183332)!
        }
        }
    }()
    public func mapGetClosestPointNormal(map: Godot.RID, toPoint point: Godot.Vector3) -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        map.withUnsafeRawPointer { (__ptr_map) in
            withUnsafePointer(to: point) { (__ptr_point) in
                withUnsafeArgumentPackPointer(__ptr_map, __ptr_point) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_map_get_closest_point_normal,
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

    private static var __method_binding_map_get_closest_point_owner: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_get_closest_point_owner").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 553364610)!
        }
        }
    }()
    public func mapGetClosestPointOwner(map: Godot.RID, toPoint point: Godot.Vector3) -> Godot.RID {
        let __temporary = Godot.RID()
        map.withUnsafeRawPointer { (__ptr_map) in
            withUnsafePointer(to: point) { (__ptr_point) in
                withUnsafeArgumentPackPointer(__ptr_map, __ptr_point) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_map_get_closest_point_owner,
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

    private static var __method_binding_map_get_links: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_get_links").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2684255073)!
        }
        }
    }()
    public func mapGetLinks(map: Godot.RID) -> Godot.GodotArray<Godot.RID> {
        let __temporary = Godot.GodotArray<Godot.RID>()
        map.withUnsafeRawPointer { (__ptr_map) in
            withUnsafeArgumentPackPointer(__ptr_map) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_map_get_links,
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

    private static var __method_binding_map_get_regions: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_get_regions").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2684255073)!
        }
        }
    }()
    public func mapGetRegions(map: Godot.RID) -> Godot.GodotArray<Godot.RID> {
        let __temporary = Godot.GodotArray<Godot.RID>()
        map.withUnsafeRawPointer { (__ptr_map) in
            withUnsafeArgumentPackPointer(__ptr_map) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_map_get_regions,
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

    private static var __method_binding_map_get_agents: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_get_agents").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2684255073)!
        }
        }
    }()
    public func mapGetAgents(map: Godot.RID) -> Godot.GodotArray<Godot.RID> {
        let __temporary = Godot.GodotArray<Godot.RID>()
        map.withUnsafeRawPointer { (__ptr_map) in
            withUnsafeArgumentPackPointer(__ptr_map) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_map_get_agents,
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

    private static var __method_binding_map_get_obstacles: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_get_obstacles").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2684255073)!
        }
        }
    }()
    public func mapGetObstacles(map: Godot.RID) -> Godot.GodotArray<Godot.RID> {
        let __temporary = Godot.GodotArray<Godot.RID>()
        map.withUnsafeRawPointer { (__ptr_map) in
            withUnsafeArgumentPackPointer(__ptr_map) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_map_get_obstacles,
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

    private static var __method_binding_map_force_update: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_force_update").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2722037293)!
        }
        }
    }()
    public func mapForceUpdate(map: Godot.RID) {
        map.withUnsafeRawPointer { (__ptr_map) in
            withUnsafeArgumentPackPointer(__ptr_map) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_map_force_update,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_query_path: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "query_path").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3415008901)!
        }
        }
    }()
    public func queryPath(parameters: Godot.NavigationPathQueryParameters3D?, result: Godot.NavigationPathQueryResult3D?) {
        parameters.withUnsafeRawPointer { (__ptr_parameters) in
            withUnsafePointer(to: __ptr_parameters) { (_ptr___ptr_parameters) in
                result.withUnsafeRawPointer { (__ptr_result) in
                    withUnsafePointer(to: __ptr_result) { (_ptr___ptr_result) in
                        withUnsafeArgumentPackPointer(_ptr___ptr_parameters, _ptr___ptr_result) { (__accessPtr) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_query_path,
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

    private static var __method_binding_region_create: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "region_create").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func regionCreate() -> Godot.RID {
        let __temporary = Godot.RID()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_region_create,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_region_set_use_edge_connections: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "region_set_use_edge_connections").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func regionSetUseEdgeConnections(region: Godot.RID, enabled: Bool) {
        region.withUnsafeRawPointer { (__ptr_region) in
            withUnsafePointer(to: enabled) { (__ptr_enabled) in
                withUnsafeArgumentPackPointer(__ptr_region, __ptr_enabled) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_region_set_use_edge_connections,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_region_get_use_edge_connections: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "region_get_use_edge_connections").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func regionGetUseEdgeConnections(region: Godot.RID) -> Bool {
        var __temporary = Bool()
        region.withUnsafeRawPointer { (__ptr_region) in
            withUnsafeArgumentPackPointer(__ptr_region) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_region_get_use_edge_connections,
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

    private static var __method_binding_region_set_enter_cost: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "region_set_enter_cost").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func regionSetEnterCost(region: Godot.RID, enterCost: Double) {
        region.withUnsafeRawPointer { (__ptr_region) in
            withUnsafePointer(to: enterCost) { (__ptr_enterCost) in
                withUnsafeArgumentPackPointer(__ptr_region, __ptr_enterCost) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_region_set_enter_cost,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_region_get_enter_cost: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "region_get_enter_cost").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 866169185)!
        }
        }
    }()
    public func regionGetEnterCost(region: Godot.RID) -> Double {
        var __temporary = Double()
        region.withUnsafeRawPointer { (__ptr_region) in
            withUnsafeArgumentPackPointer(__ptr_region) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_region_get_enter_cost,
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

    private static var __method_binding_region_set_travel_cost: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "region_set_travel_cost").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func regionSetTravelCost(region: Godot.RID, travelCost: Double) {
        region.withUnsafeRawPointer { (__ptr_region) in
            withUnsafePointer(to: travelCost) { (__ptr_travelCost) in
                withUnsafeArgumentPackPointer(__ptr_region, __ptr_travelCost) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_region_set_travel_cost,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_region_get_travel_cost: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "region_get_travel_cost").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 866169185)!
        }
        }
    }()
    public func regionGetTravelCost(region: Godot.RID) -> Double {
        var __temporary = Double()
        region.withUnsafeRawPointer { (__ptr_region) in
            withUnsafeArgumentPackPointer(__ptr_region) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_region_get_travel_cost,
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

    private static var __method_binding_region_set_owner_id: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "region_set_owner_id").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func regionSetOwnerId(region: Godot.RID, ownerId: UInt64) {
        region.withUnsafeRawPointer { (__ptr_region) in
            withUnsafePointer(to: ownerId) { (__ptr_ownerId) in
                withUnsafeArgumentPackPointer(__ptr_region, __ptr_ownerId) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_region_set_owner_id,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_region_get_owner_id: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "region_get_owner_id").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func regionGetOwnerId(region: Godot.RID) -> UInt64 {
        var __temporary = UInt64()
        region.withUnsafeRawPointer { (__ptr_region) in
            withUnsafeArgumentPackPointer(__ptr_region) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_region_get_owner_id,
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

    private static var __method_binding_region_owns_point: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "region_owns_point").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2360011153)!
        }
        }
    }()
    public func regionOwnsPoint(region: Godot.RID, point: Godot.Vector3) -> Bool {
        var __temporary = Bool()
        region.withUnsafeRawPointer { (__ptr_region) in
            withUnsafePointer(to: point) { (__ptr_point) in
                withUnsafeArgumentPackPointer(__ptr_region, __ptr_point) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_region_owns_point,
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

    private static var __method_binding_region_set_map: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "region_set_map").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func regionSetMap(region: Godot.RID, map: Godot.RID) {
        region.withUnsafeRawPointer { (__ptr_region) in
            map.withUnsafeRawPointer { (__ptr_map) in
                withUnsafeArgumentPackPointer(__ptr_region, __ptr_map) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_region_set_map,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_region_get_map: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "region_get_map").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3814569979)!
        }
        }
    }()
    public func regionGetMap(region: Godot.RID) -> Godot.RID {
        let __temporary = Godot.RID()
        region.withUnsafeRawPointer { (__ptr_region) in
            withUnsafeArgumentPackPointer(__ptr_region) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_region_get_map,
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

    private static var __method_binding_region_set_navigation_layers: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "region_set_navigation_layers").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func regionSetNavigationLayers(region: Godot.RID, navigationLayers: UInt32) {
        region.withUnsafeRawPointer { (__ptr_region) in
            withUnsafePointer(to: navigationLayers) { (__ptr_navigationLayers) in
                withUnsafeArgumentPackPointer(__ptr_region, __ptr_navigationLayers) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_region_set_navigation_layers,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_region_get_navigation_layers: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "region_get_navigation_layers").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func regionGetNavigationLayers(region: Godot.RID) -> UInt32 {
        var __temporary = UInt32()
        region.withUnsafeRawPointer { (__ptr_region) in
            withUnsafeArgumentPackPointer(__ptr_region) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_region_get_navigation_layers,
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

    private static var __method_binding_region_set_transform: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "region_set_transform").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3935195649)!
        }
        }
    }()
    public func regionSetTransform(region: Godot.RID, transform: Godot.Transform3D) {
        region.withUnsafeRawPointer { (__ptr_region) in
            withUnsafePointer(to: transform) { (__ptr_transform) in
                withUnsafeArgumentPackPointer(__ptr_region, __ptr_transform) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_region_set_transform,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_region_set_navigation_mesh: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "region_set_navigation_mesh").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2764952978)!
        }
        }
    }()
    public func regionSetNavigationMesh(region: Godot.RID, navigationMesh: Godot.NavigationMesh?) {
        region.withUnsafeRawPointer { (__ptr_region) in
            navigationMesh.withUnsafeRawPointer { (__ptr_navigationMesh) in
                withUnsafePointer(to: __ptr_navigationMesh) { (_ptr___ptr_navigationMesh) in
                    withUnsafeArgumentPackPointer(__ptr_region, _ptr___ptr_navigationMesh) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_region_set_navigation_mesh,
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

    private static var __method_binding_region_bake_navigation_mesh: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "region_bake_navigation_mesh").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1401173477)!
        }
        }
    }()
    public func regionBakeNavigationMesh(_ navigationMesh: Godot.NavigationMesh?, rootNode: Godot.Node?) {
        navigationMesh.withUnsafeRawPointer { (__ptr_navigationMesh) in
            withUnsafePointer(to: __ptr_navigationMesh) { (_ptr___ptr_navigationMesh) in
                rootNode.withUnsafeRawPointer { (__ptr_rootNode) in
                    withUnsafePointer(to: __ptr_rootNode) { (_ptr___ptr_rootNode) in
                        withUnsafeArgumentPackPointer(_ptr___ptr_navigationMesh, _ptr___ptr_rootNode) { (__accessPtr) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_region_bake_navigation_mesh,
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

    private static var __method_binding_region_get_connections_count: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "region_get_connections_count").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func regionGetConnectionsCount(region: Godot.RID) -> Int32 {
        var __temporary = Int32()
        region.withUnsafeRawPointer { (__ptr_region) in
            withUnsafeArgumentPackPointer(__ptr_region) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_region_get_connections_count,
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

    private static var __method_binding_region_get_connection_pathway_start: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "region_get_connection_pathway_start").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3440143363)!
        }
        }
    }()
    public func regionGetConnectionPathwayStart(region: Godot.RID, connection: Int32) -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        region.withUnsafeRawPointer { (__ptr_region) in
            withUnsafePointer(to: connection) { (__ptr_connection) in
                withUnsafeArgumentPackPointer(__ptr_region, __ptr_connection) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_region_get_connection_pathway_start,
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

    private static var __method_binding_region_get_connection_pathway_end: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "region_get_connection_pathway_end").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3440143363)!
        }
        }
    }()
    public func regionGetConnectionPathwayEnd(region: Godot.RID, connection: Int32) -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        region.withUnsafeRawPointer { (__ptr_region) in
            withUnsafePointer(to: connection) { (__ptr_connection) in
                withUnsafeArgumentPackPointer(__ptr_region, __ptr_connection) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_region_get_connection_pathway_end,
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

    private static var __method_binding_link_create: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "link_create").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func linkCreate() -> Godot.RID {
        let __temporary = Godot.RID()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_link_create,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_link_set_map: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "link_set_map").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func linkSetMap(link: Godot.RID, map: Godot.RID) {
        link.withUnsafeRawPointer { (__ptr_link) in
            map.withUnsafeRawPointer { (__ptr_map) in
                withUnsafeArgumentPackPointer(__ptr_link, __ptr_map) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_link_set_map,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_link_get_map: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "link_get_map").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3814569979)!
        }
        }
    }()
    public func linkGetMap(link: Godot.RID) -> Godot.RID {
        let __temporary = Godot.RID()
        link.withUnsafeRawPointer { (__ptr_link) in
            withUnsafeArgumentPackPointer(__ptr_link) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_link_get_map,
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

    private static var __method_binding_link_set_bidirectional: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "link_set_bidirectional").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func linkSetBidirectional(link: Godot.RID, bidirectional: Bool) {
        link.withUnsafeRawPointer { (__ptr_link) in
            withUnsafePointer(to: bidirectional) { (__ptr_bidirectional) in
                withUnsafeArgumentPackPointer(__ptr_link, __ptr_bidirectional) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_link_set_bidirectional,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_link_is_bidirectional: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "link_is_bidirectional").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func linkIsBidirectional(link: Godot.RID) -> Bool {
        var __temporary = Bool()
        link.withUnsafeRawPointer { (__ptr_link) in
            withUnsafeArgumentPackPointer(__ptr_link) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_link_is_bidirectional,
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

    private static var __method_binding_link_set_navigation_layers: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "link_set_navigation_layers").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func linkSetNavigationLayers(link: Godot.RID, navigationLayers: UInt32) {
        link.withUnsafeRawPointer { (__ptr_link) in
            withUnsafePointer(to: navigationLayers) { (__ptr_navigationLayers) in
                withUnsafeArgumentPackPointer(__ptr_link, __ptr_navigationLayers) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_link_set_navigation_layers,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_link_get_navigation_layers: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "link_get_navigation_layers").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func linkGetNavigationLayers(link: Godot.RID) -> UInt32 {
        var __temporary = UInt32()
        link.withUnsafeRawPointer { (__ptr_link) in
            withUnsafeArgumentPackPointer(__ptr_link) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_link_get_navigation_layers,
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

    private static var __method_binding_link_set_start_position: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "link_set_start_position").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3227306858)!
        }
        }
    }()
    public func linkSetStartPosition(link: Godot.RID, position: Godot.Vector3) {
        link.withUnsafeRawPointer { (__ptr_link) in
            withUnsafePointer(to: position) { (__ptr_position) in
                withUnsafeArgumentPackPointer(__ptr_link, __ptr_position) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_link_set_start_position,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_link_get_start_position: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "link_get_start_position").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 531438156)!
        }
        }
    }()
    public func linkGetStartPosition(link: Godot.RID) -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        link.withUnsafeRawPointer { (__ptr_link) in
            withUnsafeArgumentPackPointer(__ptr_link) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_link_get_start_position,
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

    private static var __method_binding_link_set_end_position: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "link_set_end_position").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3227306858)!
        }
        }
    }()
    public func linkSetEndPosition(link: Godot.RID, position: Godot.Vector3) {
        link.withUnsafeRawPointer { (__ptr_link) in
            withUnsafePointer(to: position) { (__ptr_position) in
                withUnsafeArgumentPackPointer(__ptr_link, __ptr_position) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_link_set_end_position,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_link_get_end_position: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "link_get_end_position").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 531438156)!
        }
        }
    }()
    public func linkGetEndPosition(link: Godot.RID) -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        link.withUnsafeRawPointer { (__ptr_link) in
            withUnsafeArgumentPackPointer(__ptr_link) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_link_get_end_position,
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

    private static var __method_binding_link_set_enter_cost: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "link_set_enter_cost").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func linkSetEnterCost(link: Godot.RID, enterCost: Double) {
        link.withUnsafeRawPointer { (__ptr_link) in
            withUnsafePointer(to: enterCost) { (__ptr_enterCost) in
                withUnsafeArgumentPackPointer(__ptr_link, __ptr_enterCost) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_link_set_enter_cost,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_link_get_enter_cost: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "link_get_enter_cost").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 866169185)!
        }
        }
    }()
    public func linkGetEnterCost(link: Godot.RID) -> Double {
        var __temporary = Double()
        link.withUnsafeRawPointer { (__ptr_link) in
            withUnsafeArgumentPackPointer(__ptr_link) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_link_get_enter_cost,
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

    private static var __method_binding_link_set_travel_cost: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "link_set_travel_cost").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func linkSetTravelCost(link: Godot.RID, travelCost: Double) {
        link.withUnsafeRawPointer { (__ptr_link) in
            withUnsafePointer(to: travelCost) { (__ptr_travelCost) in
                withUnsafeArgumentPackPointer(__ptr_link, __ptr_travelCost) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_link_set_travel_cost,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_link_get_travel_cost: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "link_get_travel_cost").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 866169185)!
        }
        }
    }()
    public func linkGetTravelCost(link: Godot.RID) -> Double {
        var __temporary = Double()
        link.withUnsafeRawPointer { (__ptr_link) in
            withUnsafeArgumentPackPointer(__ptr_link) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_link_get_travel_cost,
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

    private static var __method_binding_link_set_owner_id: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "link_set_owner_id").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func linkSetOwnerId(link: Godot.RID, ownerId: UInt64) {
        link.withUnsafeRawPointer { (__ptr_link) in
            withUnsafePointer(to: ownerId) { (__ptr_ownerId) in
                withUnsafeArgumentPackPointer(__ptr_link, __ptr_ownerId) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_link_set_owner_id,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_link_get_owner_id: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "link_get_owner_id").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func linkGetOwnerId(link: Godot.RID) -> UInt64 {
        var __temporary = UInt64()
        link.withUnsafeRawPointer { (__ptr_link) in
            withUnsafeArgumentPackPointer(__ptr_link) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_link_get_owner_id,
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

    private static var __method_binding_agent_create: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "agent_create").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func agentCreate() -> Godot.RID {
        let __temporary = Godot.RID()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_agent_create,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_agent_set_avoidance_enabled: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "agent_set_avoidance_enabled").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func agentSetAvoidanceEnabled(agent: Godot.RID, enabled: Bool) {
        agent.withUnsafeRawPointer { (__ptr_agent) in
            withUnsafePointer(to: enabled) { (__ptr_enabled) in
                withUnsafeArgumentPackPointer(__ptr_agent, __ptr_enabled) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_agent_set_avoidance_enabled,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_agent_get_avoidance_enabled: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "agent_get_avoidance_enabled").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func agentGetAvoidanceEnabled(agent: Godot.RID) -> Bool {
        var __temporary = Bool()
        agent.withUnsafeRawPointer { (__ptr_agent) in
            withUnsafeArgumentPackPointer(__ptr_agent) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_agent_get_avoidance_enabled,
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

    private static var __method_binding_agent_set_use_3d_avoidance: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "agent_set_use_3d_avoidance").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func agentSetUse3DAvoidance(agent: Godot.RID, enabled: Bool) {
        agent.withUnsafeRawPointer { (__ptr_agent) in
            withUnsafePointer(to: enabled) { (__ptr_enabled) in
                withUnsafeArgumentPackPointer(__ptr_agent, __ptr_enabled) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_agent_set_use_3d_avoidance,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_agent_get_use_3d_avoidance: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "agent_get_use_3d_avoidance").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func agentGetUse3DAvoidance(agent: Godot.RID) -> Bool {
        var __temporary = Bool()
        agent.withUnsafeRawPointer { (__ptr_agent) in
            withUnsafeArgumentPackPointer(__ptr_agent) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_agent_get_use_3d_avoidance,
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

    private static var __method_binding_agent_set_map: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "agent_set_map").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func agentSetMap(agent: Godot.RID, map: Godot.RID) {
        agent.withUnsafeRawPointer { (__ptr_agent) in
            map.withUnsafeRawPointer { (__ptr_map) in
                withUnsafeArgumentPackPointer(__ptr_agent, __ptr_map) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_agent_set_map,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_agent_get_map: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "agent_get_map").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3814569979)!
        }
        }
    }()
    public func agentGetMap(agent: Godot.RID) -> Godot.RID {
        let __temporary = Godot.RID()
        agent.withUnsafeRawPointer { (__ptr_agent) in
            withUnsafeArgumentPackPointer(__ptr_agent) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_agent_get_map,
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

    private static var __method_binding_agent_set_paused: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "agent_set_paused").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func agentSetPaused(agent: Godot.RID, paused: Bool) {
        agent.withUnsafeRawPointer { (__ptr_agent) in
            withUnsafePointer(to: paused) { (__ptr_paused) in
                withUnsafeArgumentPackPointer(__ptr_agent, __ptr_paused) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_agent_set_paused,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_agent_get_paused: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "agent_get_paused").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func agentGetPaused(agent: Godot.RID) -> Bool {
        var __temporary = Bool()
        agent.withUnsafeRawPointer { (__ptr_agent) in
            withUnsafeArgumentPackPointer(__ptr_agent) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_agent_get_paused,
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

    private static var __method_binding_agent_set_neighbor_distance: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "agent_set_neighbor_distance").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func agentSetNeighborDistance(agent: Godot.RID, distance: Double) {
        agent.withUnsafeRawPointer { (__ptr_agent) in
            withUnsafePointer(to: distance) { (__ptr_distance) in
                withUnsafeArgumentPackPointer(__ptr_agent, __ptr_distance) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_agent_set_neighbor_distance,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_agent_set_max_neighbors: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "agent_set_max_neighbors").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func agentSetMaxNeighbors(agent: Godot.RID, count: Int32) {
        agent.withUnsafeRawPointer { (__ptr_agent) in
            withUnsafePointer(to: count) { (__ptr_count) in
                withUnsafeArgumentPackPointer(__ptr_agent, __ptr_count) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_agent_set_max_neighbors,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_agent_set_time_horizon_agents: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "agent_set_time_horizon_agents").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func agentSetTimeHorizonAgents(agent: Godot.RID, timeHorizon: Double) {
        agent.withUnsafeRawPointer { (__ptr_agent) in
            withUnsafePointer(to: timeHorizon) { (__ptr_timeHorizon) in
                withUnsafeArgumentPackPointer(__ptr_agent, __ptr_timeHorizon) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_agent_set_time_horizon_agents,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_agent_set_time_horizon_obstacles: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "agent_set_time_horizon_obstacles").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func agentSetTimeHorizonObstacles(agent: Godot.RID, timeHorizon: Double) {
        agent.withUnsafeRawPointer { (__ptr_agent) in
            withUnsafePointer(to: timeHorizon) { (__ptr_timeHorizon) in
                withUnsafeArgumentPackPointer(__ptr_agent, __ptr_timeHorizon) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_agent_set_time_horizon_obstacles,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_agent_set_radius: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "agent_set_radius").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func agentSetRadius(agent: Godot.RID, radius: Double) {
        agent.withUnsafeRawPointer { (__ptr_agent) in
            withUnsafePointer(to: radius) { (__ptr_radius) in
                withUnsafeArgumentPackPointer(__ptr_agent, __ptr_radius) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_agent_set_radius,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_agent_set_height: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "agent_set_height").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func agentSetHeight(agent: Godot.RID, height: Double) {
        agent.withUnsafeRawPointer { (__ptr_agent) in
            withUnsafePointer(to: height) { (__ptr_height) in
                withUnsafeArgumentPackPointer(__ptr_agent, __ptr_height) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_agent_set_height,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_agent_set_max_speed: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "agent_set_max_speed").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func agentSetMaxSpeed(agent: Godot.RID, maxSpeed: Double) {
        agent.withUnsafeRawPointer { (__ptr_agent) in
            withUnsafePointer(to: maxSpeed) { (__ptr_maxSpeed) in
                withUnsafeArgumentPackPointer(__ptr_agent, __ptr_maxSpeed) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_agent_set_max_speed,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_agent_set_velocity_forced: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "agent_set_velocity_forced").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3227306858)!
        }
        }
    }()
    public func agentSetVelocityForced(agent: Godot.RID, velocity: Godot.Vector3) {
        agent.withUnsafeRawPointer { (__ptr_agent) in
            withUnsafePointer(to: velocity) { (__ptr_velocity) in
                withUnsafeArgumentPackPointer(__ptr_agent, __ptr_velocity) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_agent_set_velocity_forced,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_agent_set_velocity: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "agent_set_velocity").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3227306858)!
        }
        }
    }()
    public func agentSetVelocity(agent: Godot.RID, velocity: Godot.Vector3) {
        agent.withUnsafeRawPointer { (__ptr_agent) in
            withUnsafePointer(to: velocity) { (__ptr_velocity) in
                withUnsafeArgumentPackPointer(__ptr_agent, __ptr_velocity) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_agent_set_velocity,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_agent_set_position: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "agent_set_position").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3227306858)!
        }
        }
    }()
    public func agentSetPosition(agent: Godot.RID, position: Godot.Vector3) {
        agent.withUnsafeRawPointer { (__ptr_agent) in
            withUnsafePointer(to: position) { (__ptr_position) in
                withUnsafeArgumentPackPointer(__ptr_agent, __ptr_position) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_agent_set_position,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_agent_is_map_changed: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "agent_is_map_changed").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func agentIsMapChanged(agent: Godot.RID) -> Bool {
        var __temporary = Bool()
        agent.withUnsafeRawPointer { (__ptr_agent) in
            withUnsafeArgumentPackPointer(__ptr_agent) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_agent_is_map_changed,
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

    private static var __method_binding_agent_set_avoidance_callback: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "agent_set_avoidance_callback").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3379118538)!
        }
        }
    }()
    public func agentSetAvoidanceCallback(agent: Godot.RID, callback: Godot.Callable) {
        agent.withUnsafeRawPointer { (__ptr_agent) in
            callback.withUnsafeRawPointer { (__ptr_callback) in
                withUnsafeArgumentPackPointer(__ptr_agent, __ptr_callback) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_agent_set_avoidance_callback,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_agent_set_avoidance_layers: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "agent_set_avoidance_layers").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func agentSetAvoidanceLayers(agent: Godot.RID, layers: UInt32) {
        agent.withUnsafeRawPointer { (__ptr_agent) in
            withUnsafePointer(to: layers) { (__ptr_layers) in
                withUnsafeArgumentPackPointer(__ptr_agent, __ptr_layers) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_agent_set_avoidance_layers,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_agent_set_avoidance_mask: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "agent_set_avoidance_mask").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func agentSetAvoidanceMask(agent: Godot.RID, mask: UInt32) {
        agent.withUnsafeRawPointer { (__ptr_agent) in
            withUnsafePointer(to: mask) { (__ptr_mask) in
                withUnsafeArgumentPackPointer(__ptr_agent, __ptr_mask) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_agent_set_avoidance_mask,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_agent_set_avoidance_priority: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "agent_set_avoidance_priority").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func agentSetAvoidancePriority(agent: Godot.RID, priority: Double) {
        agent.withUnsafeRawPointer { (__ptr_agent) in
            withUnsafePointer(to: priority) { (__ptr_priority) in
                withUnsafeArgumentPackPointer(__ptr_agent, __ptr_priority) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_agent_set_avoidance_priority,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_obstacle_create: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "obstacle_create").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func obstacleCreate() -> Godot.RID {
        let __temporary = Godot.RID()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_obstacle_create,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_obstacle_set_avoidance_enabled: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "obstacle_set_avoidance_enabled").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func obstacleSetAvoidanceEnabled(obstacle: Godot.RID, enabled: Bool) {
        obstacle.withUnsafeRawPointer { (__ptr_obstacle) in
            withUnsafePointer(to: enabled) { (__ptr_enabled) in
                withUnsafeArgumentPackPointer(__ptr_obstacle, __ptr_enabled) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_obstacle_set_avoidance_enabled,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_obstacle_get_avoidance_enabled: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "obstacle_get_avoidance_enabled").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func obstacleGetAvoidanceEnabled(obstacle: Godot.RID) -> Bool {
        var __temporary = Bool()
        obstacle.withUnsafeRawPointer { (__ptr_obstacle) in
            withUnsafeArgumentPackPointer(__ptr_obstacle) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_obstacle_get_avoidance_enabled,
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

    private static var __method_binding_obstacle_set_use_3d_avoidance: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "obstacle_set_use_3d_avoidance").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func obstacleSetUse3DAvoidance(obstacle: Godot.RID, enabled: Bool) {
        obstacle.withUnsafeRawPointer { (__ptr_obstacle) in
            withUnsafePointer(to: enabled) { (__ptr_enabled) in
                withUnsafeArgumentPackPointer(__ptr_obstacle, __ptr_enabled) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_obstacle_set_use_3d_avoidance,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_obstacle_get_use_3d_avoidance: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "obstacle_get_use_3d_avoidance").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func obstacleGetUse3DAvoidance(obstacle: Godot.RID) -> Bool {
        var __temporary = Bool()
        obstacle.withUnsafeRawPointer { (__ptr_obstacle) in
            withUnsafeArgumentPackPointer(__ptr_obstacle) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_obstacle_get_use_3d_avoidance,
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

    private static var __method_binding_obstacle_set_map: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "obstacle_set_map").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func obstacleSetMap(obstacle: Godot.RID, map: Godot.RID) {
        obstacle.withUnsafeRawPointer { (__ptr_obstacle) in
            map.withUnsafeRawPointer { (__ptr_map) in
                withUnsafeArgumentPackPointer(__ptr_obstacle, __ptr_map) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_obstacle_set_map,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_obstacle_get_map: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "obstacle_get_map").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3814569979)!
        }
        }
    }()
    public func obstacleGetMap(obstacle: Godot.RID) -> Godot.RID {
        let __temporary = Godot.RID()
        obstacle.withUnsafeRawPointer { (__ptr_obstacle) in
            withUnsafeArgumentPackPointer(__ptr_obstacle) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_obstacle_get_map,
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

    private static var __method_binding_obstacle_set_paused: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "obstacle_set_paused").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func obstacleSetPaused(obstacle: Godot.RID, paused: Bool) {
        obstacle.withUnsafeRawPointer { (__ptr_obstacle) in
            withUnsafePointer(to: paused) { (__ptr_paused) in
                withUnsafeArgumentPackPointer(__ptr_obstacle, __ptr_paused) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_obstacle_set_paused,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_obstacle_get_paused: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "obstacle_get_paused").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func obstacleGetPaused(obstacle: Godot.RID) -> Bool {
        var __temporary = Bool()
        obstacle.withUnsafeRawPointer { (__ptr_obstacle) in
            withUnsafeArgumentPackPointer(__ptr_obstacle) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_obstacle_get_paused,
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

    private static var __method_binding_obstacle_set_radius: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "obstacle_set_radius").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func obstacleSetRadius(obstacle: Godot.RID, radius: Double) {
        obstacle.withUnsafeRawPointer { (__ptr_obstacle) in
            withUnsafePointer(to: radius) { (__ptr_radius) in
                withUnsafeArgumentPackPointer(__ptr_obstacle, __ptr_radius) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_obstacle_set_radius,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_obstacle_set_height: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "obstacle_set_height").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func obstacleSetHeight(obstacle: Godot.RID, height: Double) {
        obstacle.withUnsafeRawPointer { (__ptr_obstacle) in
            withUnsafePointer(to: height) { (__ptr_height) in
                withUnsafeArgumentPackPointer(__ptr_obstacle, __ptr_height) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_obstacle_set_height,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_obstacle_set_velocity: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "obstacle_set_velocity").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3227306858)!
        }
        }
    }()
    public func obstacleSetVelocity(obstacle: Godot.RID, velocity: Godot.Vector3) {
        obstacle.withUnsafeRawPointer { (__ptr_obstacle) in
            withUnsafePointer(to: velocity) { (__ptr_velocity) in
                withUnsafeArgumentPackPointer(__ptr_obstacle, __ptr_velocity) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_obstacle_set_velocity,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_obstacle_set_position: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "obstacle_set_position").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3227306858)!
        }
        }
    }()
    public func obstacleSetPosition(obstacle: Godot.RID, position: Godot.Vector3) {
        obstacle.withUnsafeRawPointer { (__ptr_obstacle) in
            withUnsafePointer(to: position) { (__ptr_position) in
                withUnsafeArgumentPackPointer(__ptr_obstacle, __ptr_position) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_obstacle_set_position,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_obstacle_set_vertices: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "obstacle_set_vertices").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4030257846)!
        }
        }
    }()
    public func obstacleSetVertices(obstacle: Godot.RID, vertices: Godot.PackedVector3Array) {
        obstacle.withUnsafeRawPointer { (__ptr_obstacle) in
            vertices.withUnsafeRawPointer { (__ptr_vertices) in
                withUnsafeArgumentPackPointer(__ptr_obstacle, __ptr_vertices) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_obstacle_set_vertices,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_obstacle_set_avoidance_layers: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "obstacle_set_avoidance_layers").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func obstacleSetAvoidanceLayers(obstacle: Godot.RID, layers: UInt32) {
        obstacle.withUnsafeRawPointer { (__ptr_obstacle) in
            withUnsafePointer(to: layers) { (__ptr_layers) in
                withUnsafeArgumentPackPointer(__ptr_obstacle, __ptr_layers) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_obstacle_set_avoidance_layers,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_parse_source_geometry_data: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "parse_source_geometry_data").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3703028813)!
        }
        }
    }()
    public func parseSourceGeometryData(navigationMesh: Godot.NavigationMesh?, sourceGeometryData: Godot.NavigationMeshSourceGeometryData3D?, rootNode: Godot.Node?, callback: Godot.Callable = Callable()) {
        navigationMesh.withUnsafeRawPointer { (__ptr_navigationMesh) in
            withUnsafePointer(to: __ptr_navigationMesh) { (_ptr___ptr_navigationMesh) in
                sourceGeometryData.withUnsafeRawPointer { (__ptr_sourceGeometryData) in
                    withUnsafePointer(to: __ptr_sourceGeometryData) { (_ptr___ptr_sourceGeometryData) in
                        rootNode.withUnsafeRawPointer { (__ptr_rootNode) in
                            withUnsafePointer(to: __ptr_rootNode) { (_ptr___ptr_rootNode) in
                                callback.withUnsafeRawPointer { (__ptr_callback) in
                                    withUnsafeArgumentPackPointer(_ptr___ptr_navigationMesh, _ptr___ptr_sourceGeometryData, _ptr___ptr_rootNode, __ptr_callback) { (__accessPtr) in
                                        `self`.withUnsafeRawPointer { (__ptr_self) in
                                            gdextension_interface_object_method_bind_ptrcall(
                                                Self.__method_binding_parse_source_geometry_data,
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
    }

    private static var __method_binding_bake_from_source_geometry_data: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "bake_from_source_geometry_data").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3669016597)!
        }
        }
    }()
    public func bakeFromSourceGeometryData(navigationMesh: Godot.NavigationMesh?, sourceGeometryData: Godot.NavigationMeshSourceGeometryData3D?, callback: Godot.Callable = Callable()) {
        navigationMesh.withUnsafeRawPointer { (__ptr_navigationMesh) in
            withUnsafePointer(to: __ptr_navigationMesh) { (_ptr___ptr_navigationMesh) in
                sourceGeometryData.withUnsafeRawPointer { (__ptr_sourceGeometryData) in
                    withUnsafePointer(to: __ptr_sourceGeometryData) { (_ptr___ptr_sourceGeometryData) in
                        callback.withUnsafeRawPointer { (__ptr_callback) in
                            withUnsafeArgumentPackPointer(_ptr___ptr_navigationMesh, _ptr___ptr_sourceGeometryData, __ptr_callback) { (__accessPtr) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_bake_from_source_geometry_data,
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

    private static var __method_binding_free_rid: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "free_rid").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2722037293)!
        }
        }
    }()
    public func freeRid(_ rid: Godot.RID) {
        rid.withUnsafeRawPointer { (__ptr_rid) in
            withUnsafeArgumentPackPointer(__ptr_rid) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_free_rid,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_set_active: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_active").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    public func setActive(_ active: Bool) {
        withUnsafePointer(to: active) { (__ptr_active) in
            withUnsafeArgumentPackPointer(__ptr_active) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_active,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_set_debug_enabled: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_debug_enabled").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    public func setDebugEnabled(_ enabled: Bool) {
        withUnsafePointer(to: enabled) { (__ptr_enabled) in
            withUnsafeArgumentPackPointer(__ptr_enabled) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_debug_enabled,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_debug_enabled: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_debug_enabled").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func debugEnabled() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_debug_enabled,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_process_info: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_process_info").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1938440894)!
        }
        }
    }()
    public func processInfo(_ processInfo: Godot.NavigationServer3D.ProcessInfo) -> Int32 {
        var __temporary = Int32()
        withUnsafePointer(to: processInfo) { (__ptr_processInfo) in
            withUnsafeArgumentPackPointer(__ptr_processInfo) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_process_info,
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