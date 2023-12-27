//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class NavigationServer2D: Object {
    public func mapChanged(map: Godot.RID) {
        mapChangedConnector.emit(map)
    }

    public private (set) lazy var mapChangedConnector: Godot.SignalConnector<Godot.RID> = {
        .init(self, "map_changed")
    }()

    public func navigationDebugChanged() {
        navigationDebugChangedConnector.emit()
    }

    public private (set) lazy var navigationDebugChangedConnector: Godot.SignalConnector
    <> = {
        .init(self, "navigation_debug_changed")
    }()


    private static var __method_binding_get_maps: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_maps").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()
    public func maps() -> Godot.GodotArray<Godot.RID> {
        Godot.GodotArray<Godot.RID>.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_maps,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_map_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func mapCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_map_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_map_set_active: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_set_active").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func mapSetActive(map: Godot.RID, active: Bool) {
        map.withGodotUnsafeRawPointer { __ptr_map in
        active.withGodotUnsafeRawPointer { __ptr_active in
        withUnsafeArgumentPackPointer(__ptr_map, __ptr_active) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_map_set_active,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_map_is_active: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_is_active").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func mapIsActive(map: Godot.RID) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        map.withGodotUnsafeRawPointer { __ptr_map in
        withUnsafeArgumentPackPointer(__ptr_map) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_map_is_active,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_map_set_cell_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_set_cell_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func mapSetCellSize(map: Godot.RID, cellSize: Double) {
        map.withGodotUnsafeRawPointer { __ptr_map in
        cellSize.withGodotUnsafeRawPointer { __ptr_cellSize in
        withUnsafeArgumentPackPointer(__ptr_map, __ptr_cellSize) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_map_set_cell_size,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_map_get_cell_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_get_cell_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 866169185)!
        }
        }
    }()
    public func mapGetCellSize(map: Godot.RID) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        map.withGodotUnsafeRawPointer { __ptr_map in
        withUnsafeArgumentPackPointer(__ptr_map) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_map_get_cell_size,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_map_set_use_edge_connections: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_set_use_edge_connections").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func mapSetUseEdgeConnections(map: Godot.RID, enabled: Bool) {
        map.withGodotUnsafeRawPointer { __ptr_map in
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_map, __ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_map_set_use_edge_connections,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_map_get_use_edge_connections: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_get_use_edge_connections").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func mapGetUseEdgeConnections(map: Godot.RID) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        map.withGodotUnsafeRawPointer { __ptr_map in
        withUnsafeArgumentPackPointer(__ptr_map) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_map_get_use_edge_connections,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_map_set_edge_connection_margin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_set_edge_connection_margin").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func mapSetEdgeConnectionMargin(map: Godot.RID, margin: Double) {
        map.withGodotUnsafeRawPointer { __ptr_map in
        margin.withGodotUnsafeRawPointer { __ptr_margin in
        withUnsafeArgumentPackPointer(__ptr_map, __ptr_margin) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_map_set_edge_connection_margin,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_map_get_edge_connection_margin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_get_edge_connection_margin").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 866169185)!
        }
        }
    }()
    public func mapGetEdgeConnectionMargin(map: Godot.RID) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        map.withGodotUnsafeRawPointer { __ptr_map in
        withUnsafeArgumentPackPointer(__ptr_map) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_map_get_edge_connection_margin,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_map_set_link_connection_radius: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_set_link_connection_radius").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func mapSetLinkConnectionRadius(map: Godot.RID, radius: Double) {
        map.withGodotUnsafeRawPointer { __ptr_map in
        radius.withGodotUnsafeRawPointer { __ptr_radius in
        withUnsafeArgumentPackPointer(__ptr_map, __ptr_radius) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_map_set_link_connection_radius,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_map_get_link_connection_radius: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_get_link_connection_radius").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 866169185)!
        }
        }
    }()
    public func mapGetLinkConnectionRadius(map: Godot.RID) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        map.withGodotUnsafeRawPointer { __ptr_map in
        withUnsafeArgumentPackPointer(__ptr_map) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_map_get_link_connection_radius,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_map_get_path: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_get_path").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3146466012)!
        }
        }
    }()
    public func mapGetPath(map: Godot.RID, origin: Godot.Vector2, destination: Godot.Vector2, optimize: Bool, navigationLayers: UInt32 = 1) -> Godot.PackedVector2Array {
        Godot.PackedVector2Array.fromMutatingGodotUnsafePointer { __temporary in
        map.withGodotUnsafeRawPointer { __ptr_map in
        origin.withGodotUnsafeRawPointer { __ptr_origin in
        destination.withGodotUnsafeRawPointer { __ptr_destination in
        optimize.withGodotUnsafeRawPointer { __ptr_optimize in
        navigationLayers.withGodotUnsafeRawPointer { __ptr_navigationLayers in
        withUnsafeArgumentPackPointer(__ptr_map, __ptr_origin, __ptr_destination, __ptr_optimize, __ptr_navigationLayers) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_map_get_path,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}
    }

    private static var __method_binding_map_get_closest_point: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_get_closest_point").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1358334418)!
        }
        }
    }()
    public func mapGetClosestPoint(map: Godot.RID, toPoint point: Godot.Vector2) -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        map.withGodotUnsafeRawPointer { __ptr_map in
        point.withGodotUnsafeRawPointer { __ptr_point in
        withUnsafeArgumentPackPointer(__ptr_map, __ptr_point) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_map_get_closest_point,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_map_get_closest_point_owner: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_get_closest_point_owner").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1353467510)!
        }
        }
    }()
    public func mapGetClosestPointOwner(map: Godot.RID, toPoint point: Godot.Vector2) -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        map.withGodotUnsafeRawPointer { __ptr_map in
        point.withGodotUnsafeRawPointer { __ptr_point in
        withUnsafeArgumentPackPointer(__ptr_map, __ptr_point) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_map_get_closest_point_owner,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_map_get_links: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_get_links").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2684255073)!
        }
        }
    }()
    public func mapGetLinks(map: Godot.RID) -> Godot.GodotArray<Godot.RID> {
        Godot.GodotArray<Godot.RID>.fromMutatingGodotUnsafePointer { __temporary in
        map.withGodotUnsafeRawPointer { __ptr_map in
        withUnsafeArgumentPackPointer(__ptr_map) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_map_get_links,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_map_get_regions: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_get_regions").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2684255073)!
        }
        }
    }()
    public func mapGetRegions(map: Godot.RID) -> Godot.GodotArray<Godot.RID> {
        Godot.GodotArray<Godot.RID>.fromMutatingGodotUnsafePointer { __temporary in
        map.withGodotUnsafeRawPointer { __ptr_map in
        withUnsafeArgumentPackPointer(__ptr_map) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_map_get_regions,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_map_get_agents: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_get_agents").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2684255073)!
        }
        }
    }()
    public func mapGetAgents(map: Godot.RID) -> Godot.GodotArray<Godot.RID> {
        Godot.GodotArray<Godot.RID>.fromMutatingGodotUnsafePointer { __temporary in
        map.withGodotUnsafeRawPointer { __ptr_map in
        withUnsafeArgumentPackPointer(__ptr_map) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_map_get_agents,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_map_get_obstacles: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_get_obstacles").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2684255073)!
        }
        }
    }()
    public func mapGetObstacles(map: Godot.RID) -> Godot.GodotArray<Godot.RID> {
        Godot.GodotArray<Godot.RID>.fromMutatingGodotUnsafePointer { __temporary in
        map.withGodotUnsafeRawPointer { __ptr_map in
        withUnsafeArgumentPackPointer(__ptr_map) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_map_get_obstacles,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_map_force_update: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "map_force_update").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2722037293)!
        }
        }
    }()
    public func mapForceUpdate(map: Godot.RID) {
        map.withGodotUnsafeRawPointer { __ptr_map in
        withUnsafeArgumentPackPointer(__ptr_map) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_map_force_update,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_query_path: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "query_path").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3394638789)!
        }
        }
    }()
    public func queryPath(parameters: Godot.NavigationPathQueryParameters2D?, result: Godot.NavigationPathQueryResult2D?) {
        parameters.withGodotUnsafeRawPointer { __ptr_parameters in
        withUnsafePointer(to: __ptr_parameters) { _ptr___ptr_parameters in
        result.withGodotUnsafeRawPointer { __ptr_result in
        withUnsafePointer(to: __ptr_result) { _ptr___ptr_result in
        withUnsafeArgumentPackPointer(_ptr___ptr_parameters, _ptr___ptr_result) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_query_path,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_region_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "region_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func regionCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_region_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_region_set_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "region_set_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func regionSetEnabled(region: Godot.RID, enabled: Bool) {
        region.withGodotUnsafeRawPointer { __ptr_region in
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_region, __ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_region_set_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_region_get_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "region_get_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func regionGetEnabled(region: Godot.RID) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        region.withGodotUnsafeRawPointer { __ptr_region in
        withUnsafeArgumentPackPointer(__ptr_region) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_region_get_enabled,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_region_set_use_edge_connections: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "region_set_use_edge_connections").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func regionSetUseEdgeConnections(region: Godot.RID, enabled: Bool) {
        region.withGodotUnsafeRawPointer { __ptr_region in
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_region, __ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_region_set_use_edge_connections,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_region_get_use_edge_connections: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "region_get_use_edge_connections").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func regionGetUseEdgeConnections(region: Godot.RID) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        region.withGodotUnsafeRawPointer { __ptr_region in
        withUnsafeArgumentPackPointer(__ptr_region) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_region_get_use_edge_connections,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_region_set_enter_cost: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "region_set_enter_cost").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func regionSetEnterCost(region: Godot.RID, enterCost: Double) {
        region.withGodotUnsafeRawPointer { __ptr_region in
        enterCost.withGodotUnsafeRawPointer { __ptr_enterCost in
        withUnsafeArgumentPackPointer(__ptr_region, __ptr_enterCost) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_region_set_enter_cost,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_region_get_enter_cost: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "region_get_enter_cost").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 866169185)!
        }
        }
    }()
    public func regionGetEnterCost(region: Godot.RID) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        region.withGodotUnsafeRawPointer { __ptr_region in
        withUnsafeArgumentPackPointer(__ptr_region) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_region_get_enter_cost,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_region_set_travel_cost: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "region_set_travel_cost").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func regionSetTravelCost(region: Godot.RID, travelCost: Double) {
        region.withGodotUnsafeRawPointer { __ptr_region in
        travelCost.withGodotUnsafeRawPointer { __ptr_travelCost in
        withUnsafeArgumentPackPointer(__ptr_region, __ptr_travelCost) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_region_set_travel_cost,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_region_get_travel_cost: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "region_get_travel_cost").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 866169185)!
        }
        }
    }()
    public func regionGetTravelCost(region: Godot.RID) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        region.withGodotUnsafeRawPointer { __ptr_region in
        withUnsafeArgumentPackPointer(__ptr_region) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_region_get_travel_cost,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_region_set_owner_id: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "region_set_owner_id").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func regionSetOwnerId(region: Godot.RID, ownerId: UInt64) {
        region.withGodotUnsafeRawPointer { __ptr_region in
        ownerId.withGodotUnsafeRawPointer { __ptr_ownerId in
        withUnsafeArgumentPackPointer(__ptr_region, __ptr_ownerId) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_region_set_owner_id,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_region_get_owner_id: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "region_get_owner_id").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func regionGetOwnerId(region: Godot.RID) -> UInt64 {
        UInt64.fromMutatingGodotUnsafePointer { __temporary in
        region.withGodotUnsafeRawPointer { __ptr_region in
        withUnsafeArgumentPackPointer(__ptr_region) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_region_get_owner_id,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_region_owns_point: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "region_owns_point").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 219849798)!
        }
        }
    }()
    public func regionOwnsPoint(region: Godot.RID, point: Godot.Vector2) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        region.withGodotUnsafeRawPointer { __ptr_region in
        point.withGodotUnsafeRawPointer { __ptr_point in
        withUnsafeArgumentPackPointer(__ptr_region, __ptr_point) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_region_owns_point,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_region_set_map: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "region_set_map").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func regionSetMap(region: Godot.RID, map: Godot.RID) {
        region.withGodotUnsafeRawPointer { __ptr_region in
        map.withGodotUnsafeRawPointer { __ptr_map in
        withUnsafeArgumentPackPointer(__ptr_region, __ptr_map) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_region_set_map,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_region_get_map: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "region_get_map").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3814569979)!
        }
        }
    }()
    public func regionGetMap(region: Godot.RID) -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        region.withGodotUnsafeRawPointer { __ptr_region in
        withUnsafeArgumentPackPointer(__ptr_region) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_region_get_map,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_region_set_navigation_layers: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "region_set_navigation_layers").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func regionSetNavigationLayers(region: Godot.RID, navigationLayers: UInt32) {
        region.withGodotUnsafeRawPointer { __ptr_region in
        navigationLayers.withGodotUnsafeRawPointer { __ptr_navigationLayers in
        withUnsafeArgumentPackPointer(__ptr_region, __ptr_navigationLayers) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_region_set_navigation_layers,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_region_get_navigation_layers: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "region_get_navigation_layers").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func regionGetNavigationLayers(region: Godot.RID) -> UInt32 {
        UInt32.fromMutatingGodotUnsafePointer { __temporary in
        region.withGodotUnsafeRawPointer { __ptr_region in
        withUnsafeArgumentPackPointer(__ptr_region) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_region_get_navigation_layers,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_region_set_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "region_set_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1246044741)!
        }
        }
    }()
    public func regionSetTransform(region: Godot.RID, transform: Godot.Transform2D) {
        region.withGodotUnsafeRawPointer { __ptr_region in
        transform.withGodotUnsafeRawPointer { __ptr_transform in
        withUnsafeArgumentPackPointer(__ptr_region, __ptr_transform) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_region_set_transform,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_region_set_navigation_polygon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "region_set_navigation_polygon").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3633623451)!
        }
        }
    }()
    public func regionSetNavigationPolygon(region: Godot.RID, navigationPolygon: Godot.NavigationPolygon?) {
        region.withGodotUnsafeRawPointer { __ptr_region in
        navigationPolygon.withGodotUnsafeRawPointer { __ptr_navigationPolygon in
        withUnsafePointer(to: __ptr_navigationPolygon) { _ptr___ptr_navigationPolygon in
        withUnsafeArgumentPackPointer(__ptr_region, _ptr___ptr_navigationPolygon) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_region_set_navigation_polygon,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_region_get_connections_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "region_get_connections_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func regionGetConnectionsCount(region: Godot.RID) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        region.withGodotUnsafeRawPointer { __ptr_region in
        withUnsafeArgumentPackPointer(__ptr_region) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_region_get_connections_count,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_region_get_connection_pathway_start: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "region_get_connection_pathway_start").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2546185844)!
        }
        }
    }()
    public func regionGetConnectionPathwayStart(region: Godot.RID, connection: Int32) -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        region.withGodotUnsafeRawPointer { __ptr_region in
        connection.withGodotUnsafeRawPointer { __ptr_connection in
        withUnsafeArgumentPackPointer(__ptr_region, __ptr_connection) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_region_get_connection_pathway_start,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_region_get_connection_pathway_end: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "region_get_connection_pathway_end").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2546185844)!
        }
        }
    }()
    public func regionGetConnectionPathwayEnd(region: Godot.RID, connection: Int32) -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        region.withGodotUnsafeRawPointer { __ptr_region in
        connection.withGodotUnsafeRawPointer { __ptr_connection in
        withUnsafeArgumentPackPointer(__ptr_region, __ptr_connection) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_region_get_connection_pathway_end,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_link_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "link_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func linkCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_link_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_link_set_map: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "link_set_map").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func linkSetMap(link: Godot.RID, map: Godot.RID) {
        link.withGodotUnsafeRawPointer { __ptr_link in
        map.withGodotUnsafeRawPointer { __ptr_map in
        withUnsafeArgumentPackPointer(__ptr_link, __ptr_map) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_link_set_map,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_link_get_map: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "link_get_map").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3814569979)!
        }
        }
    }()
    public func linkGetMap(link: Godot.RID) -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        link.withGodotUnsafeRawPointer { __ptr_link in
        withUnsafeArgumentPackPointer(__ptr_link) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_link_get_map,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_link_set_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "link_set_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func linkSetEnabled(link: Godot.RID, enabled: Bool) {
        link.withGodotUnsafeRawPointer { __ptr_link in
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_link, __ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_link_set_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_link_get_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "link_get_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func linkGetEnabled(link: Godot.RID) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        link.withGodotUnsafeRawPointer { __ptr_link in
        withUnsafeArgumentPackPointer(__ptr_link) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_link_get_enabled,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_link_set_bidirectional: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "link_set_bidirectional").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func linkSetBidirectional(link: Godot.RID, bidirectional: Bool) {
        link.withGodotUnsafeRawPointer { __ptr_link in
        bidirectional.withGodotUnsafeRawPointer { __ptr_bidirectional in
        withUnsafeArgumentPackPointer(__ptr_link, __ptr_bidirectional) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_link_set_bidirectional,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_link_is_bidirectional: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "link_is_bidirectional").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func linkIsBidirectional(link: Godot.RID) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        link.withGodotUnsafeRawPointer { __ptr_link in
        withUnsafeArgumentPackPointer(__ptr_link) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_link_is_bidirectional,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_link_set_navigation_layers: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "link_set_navigation_layers").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func linkSetNavigationLayers(link: Godot.RID, navigationLayers: UInt32) {
        link.withGodotUnsafeRawPointer { __ptr_link in
        navigationLayers.withGodotUnsafeRawPointer { __ptr_navigationLayers in
        withUnsafeArgumentPackPointer(__ptr_link, __ptr_navigationLayers) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_link_set_navigation_layers,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_link_get_navigation_layers: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "link_get_navigation_layers").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func linkGetNavigationLayers(link: Godot.RID) -> UInt32 {
        UInt32.fromMutatingGodotUnsafePointer { __temporary in
        link.withGodotUnsafeRawPointer { __ptr_link in
        withUnsafeArgumentPackPointer(__ptr_link) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_link_get_navigation_layers,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_link_set_start_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "link_set_start_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3201125042)!
        }
        }
    }()
    public func linkSetStartPosition(link: Godot.RID, position: Godot.Vector2) {
        link.withGodotUnsafeRawPointer { __ptr_link in
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_link, __ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_link_set_start_position,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_link_get_start_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "link_get_start_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2440833711)!
        }
        }
    }()
    public func linkGetStartPosition(link: Godot.RID) -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        link.withGodotUnsafeRawPointer { __ptr_link in
        withUnsafeArgumentPackPointer(__ptr_link) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_link_get_start_position,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_link_set_end_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "link_set_end_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3201125042)!
        }
        }
    }()
    public func linkSetEndPosition(link: Godot.RID, position: Godot.Vector2) {
        link.withGodotUnsafeRawPointer { __ptr_link in
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_link, __ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_link_set_end_position,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_link_get_end_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "link_get_end_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2440833711)!
        }
        }
    }()
    public func linkGetEndPosition(link: Godot.RID) -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        link.withGodotUnsafeRawPointer { __ptr_link in
        withUnsafeArgumentPackPointer(__ptr_link) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_link_get_end_position,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_link_set_enter_cost: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "link_set_enter_cost").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func linkSetEnterCost(link: Godot.RID, enterCost: Double) {
        link.withGodotUnsafeRawPointer { __ptr_link in
        enterCost.withGodotUnsafeRawPointer { __ptr_enterCost in
        withUnsafeArgumentPackPointer(__ptr_link, __ptr_enterCost) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_link_set_enter_cost,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_link_get_enter_cost: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "link_get_enter_cost").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 866169185)!
        }
        }
    }()
    public func linkGetEnterCost(link: Godot.RID) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        link.withGodotUnsafeRawPointer { __ptr_link in
        withUnsafeArgumentPackPointer(__ptr_link) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_link_get_enter_cost,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_link_set_travel_cost: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "link_set_travel_cost").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func linkSetTravelCost(link: Godot.RID, travelCost: Double) {
        link.withGodotUnsafeRawPointer { __ptr_link in
        travelCost.withGodotUnsafeRawPointer { __ptr_travelCost in
        withUnsafeArgumentPackPointer(__ptr_link, __ptr_travelCost) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_link_set_travel_cost,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_link_get_travel_cost: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "link_get_travel_cost").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 866169185)!
        }
        }
    }()
    public func linkGetTravelCost(link: Godot.RID) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        link.withGodotUnsafeRawPointer { __ptr_link in
        withUnsafeArgumentPackPointer(__ptr_link) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_link_get_travel_cost,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_link_set_owner_id: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "link_set_owner_id").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func linkSetOwnerId(link: Godot.RID, ownerId: UInt64) {
        link.withGodotUnsafeRawPointer { __ptr_link in
        ownerId.withGodotUnsafeRawPointer { __ptr_ownerId in
        withUnsafeArgumentPackPointer(__ptr_link, __ptr_ownerId) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_link_set_owner_id,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_link_get_owner_id: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "link_get_owner_id").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func linkGetOwnerId(link: Godot.RID) -> UInt64 {
        UInt64.fromMutatingGodotUnsafePointer { __temporary in
        link.withGodotUnsafeRawPointer { __ptr_link in
        withUnsafeArgumentPackPointer(__ptr_link) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_link_get_owner_id,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_agent_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "agent_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func agentCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_agent_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_agent_set_avoidance_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "agent_set_avoidance_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func agentSetAvoidanceEnabled(agent: Godot.RID, enabled: Bool) {
        agent.withGodotUnsafeRawPointer { __ptr_agent in
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_agent, __ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_agent_set_avoidance_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_agent_get_avoidance_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "agent_get_avoidance_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func agentGetAvoidanceEnabled(agent: Godot.RID) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        agent.withGodotUnsafeRawPointer { __ptr_agent in
        withUnsafeArgumentPackPointer(__ptr_agent) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_agent_get_avoidance_enabled,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_agent_set_map: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "agent_set_map").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func agentSetMap(agent: Godot.RID, map: Godot.RID) {
        agent.withGodotUnsafeRawPointer { __ptr_agent in
        map.withGodotUnsafeRawPointer { __ptr_map in
        withUnsafeArgumentPackPointer(__ptr_agent, __ptr_map) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_agent_set_map,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_agent_get_map: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "agent_get_map").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3814569979)!
        }
        }
    }()
    public func agentGetMap(agent: Godot.RID) -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        agent.withGodotUnsafeRawPointer { __ptr_agent in
        withUnsafeArgumentPackPointer(__ptr_agent) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_agent_get_map,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_agent_set_paused: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "agent_set_paused").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func agentSetPaused(agent: Godot.RID, paused: Bool) {
        agent.withGodotUnsafeRawPointer { __ptr_agent in
        paused.withGodotUnsafeRawPointer { __ptr_paused in
        withUnsafeArgumentPackPointer(__ptr_agent, __ptr_paused) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_agent_set_paused,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_agent_get_paused: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "agent_get_paused").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func agentGetPaused(agent: Godot.RID) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        agent.withGodotUnsafeRawPointer { __ptr_agent in
        withUnsafeArgumentPackPointer(__ptr_agent) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_agent_get_paused,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_agent_set_neighbor_distance: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "agent_set_neighbor_distance").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func agentSetNeighborDistance(agent: Godot.RID, distance: Double) {
        agent.withGodotUnsafeRawPointer { __ptr_agent in
        distance.withGodotUnsafeRawPointer { __ptr_distance in
        withUnsafeArgumentPackPointer(__ptr_agent, __ptr_distance) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_agent_set_neighbor_distance,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_agent_set_max_neighbors: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "agent_set_max_neighbors").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func agentSetMaxNeighbors(agent: Godot.RID, count: Int32) {
        agent.withGodotUnsafeRawPointer { __ptr_agent in
        count.withGodotUnsafeRawPointer { __ptr_count in
        withUnsafeArgumentPackPointer(__ptr_agent, __ptr_count) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_agent_set_max_neighbors,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_agent_set_time_horizon_agents: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "agent_set_time_horizon_agents").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func agentSetTimeHorizonAgents(agent: Godot.RID, timeHorizon: Double) {
        agent.withGodotUnsafeRawPointer { __ptr_agent in
        timeHorizon.withGodotUnsafeRawPointer { __ptr_timeHorizon in
        withUnsafeArgumentPackPointer(__ptr_agent, __ptr_timeHorizon) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_agent_set_time_horizon_agents,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_agent_set_time_horizon_obstacles: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "agent_set_time_horizon_obstacles").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func agentSetTimeHorizonObstacles(agent: Godot.RID, timeHorizon: Double) {
        agent.withGodotUnsafeRawPointer { __ptr_agent in
        timeHorizon.withGodotUnsafeRawPointer { __ptr_timeHorizon in
        withUnsafeArgumentPackPointer(__ptr_agent, __ptr_timeHorizon) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_agent_set_time_horizon_obstacles,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_agent_set_radius: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "agent_set_radius").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func agentSetRadius(agent: Godot.RID, radius: Double) {
        agent.withGodotUnsafeRawPointer { __ptr_agent in
        radius.withGodotUnsafeRawPointer { __ptr_radius in
        withUnsafeArgumentPackPointer(__ptr_agent, __ptr_radius) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_agent_set_radius,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_agent_set_max_speed: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "agent_set_max_speed").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func agentSetMaxSpeed(agent: Godot.RID, maxSpeed: Double) {
        agent.withGodotUnsafeRawPointer { __ptr_agent in
        maxSpeed.withGodotUnsafeRawPointer { __ptr_maxSpeed in
        withUnsafeArgumentPackPointer(__ptr_agent, __ptr_maxSpeed) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_agent_set_max_speed,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_agent_set_velocity_forced: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "agent_set_velocity_forced").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3201125042)!
        }
        }
    }()
    public func agentSetVelocityForced(agent: Godot.RID, velocity: Godot.Vector2) {
        agent.withGodotUnsafeRawPointer { __ptr_agent in
        velocity.withGodotUnsafeRawPointer { __ptr_velocity in
        withUnsafeArgumentPackPointer(__ptr_agent, __ptr_velocity) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_agent_set_velocity_forced,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_agent_set_velocity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "agent_set_velocity").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3201125042)!
        }
        }
    }()
    public func agentSetVelocity(agent: Godot.RID, velocity: Godot.Vector2) {
        agent.withGodotUnsafeRawPointer { __ptr_agent in
        velocity.withGodotUnsafeRawPointer { __ptr_velocity in
        withUnsafeArgumentPackPointer(__ptr_agent, __ptr_velocity) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_agent_set_velocity,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_agent_set_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "agent_set_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3201125042)!
        }
        }
    }()
    public func agentSetPosition(agent: Godot.RID, position: Godot.Vector2) {
        agent.withGodotUnsafeRawPointer { __ptr_agent in
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_agent, __ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_agent_set_position,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_agent_is_map_changed: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "agent_is_map_changed").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func agentIsMapChanged(agent: Godot.RID) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        agent.withGodotUnsafeRawPointer { __ptr_agent in
        withUnsafeArgumentPackPointer(__ptr_agent) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_agent_is_map_changed,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_agent_set_avoidance_callback: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "agent_set_avoidance_callback").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3379118538)!
        }
        }
    }()
    public func agentSetAvoidanceCallback(agent: Godot.RID, callback: Godot.Callable) {
        agent.withGodotUnsafeRawPointer { __ptr_agent in
        callback.withGodotUnsafeRawPointer { __ptr_callback in
        withUnsafeArgumentPackPointer(__ptr_agent, __ptr_callback) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_agent_set_avoidance_callback,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_agent_set_avoidance_layers: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "agent_set_avoidance_layers").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func agentSetAvoidanceLayers(agent: Godot.RID, layers: UInt32) {
        agent.withGodotUnsafeRawPointer { __ptr_agent in
        layers.withGodotUnsafeRawPointer { __ptr_layers in
        withUnsafeArgumentPackPointer(__ptr_agent, __ptr_layers) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_agent_set_avoidance_layers,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_agent_set_avoidance_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "agent_set_avoidance_mask").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func agentSetAvoidanceMask(agent: Godot.RID, mask: UInt32) {
        agent.withGodotUnsafeRawPointer { __ptr_agent in
        mask.withGodotUnsafeRawPointer { __ptr_mask in
        withUnsafeArgumentPackPointer(__ptr_agent, __ptr_mask) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_agent_set_avoidance_mask,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_agent_set_avoidance_priority: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "agent_set_avoidance_priority").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func agentSetAvoidancePriority(agent: Godot.RID, priority: Double) {
        agent.withGodotUnsafeRawPointer { __ptr_agent in
        priority.withGodotUnsafeRawPointer { __ptr_priority in
        withUnsafeArgumentPackPointer(__ptr_agent, __ptr_priority) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_agent_set_avoidance_priority,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_obstacle_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "obstacle_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func obstacleCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_obstacle_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_obstacle_set_avoidance_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "obstacle_set_avoidance_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func obstacleSetAvoidanceEnabled(obstacle: Godot.RID, enabled: Bool) {
        obstacle.withGodotUnsafeRawPointer { __ptr_obstacle in
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_obstacle, __ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_obstacle_set_avoidance_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_obstacle_get_avoidance_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "obstacle_get_avoidance_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func obstacleGetAvoidanceEnabled(obstacle: Godot.RID) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        obstacle.withGodotUnsafeRawPointer { __ptr_obstacle in
        withUnsafeArgumentPackPointer(__ptr_obstacle) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_obstacle_get_avoidance_enabled,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_obstacle_set_map: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "obstacle_set_map").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func obstacleSetMap(obstacle: Godot.RID, map: Godot.RID) {
        obstacle.withGodotUnsafeRawPointer { __ptr_obstacle in
        map.withGodotUnsafeRawPointer { __ptr_map in
        withUnsafeArgumentPackPointer(__ptr_obstacle, __ptr_map) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_obstacle_set_map,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_obstacle_get_map: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "obstacle_get_map").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3814569979)!
        }
        }
    }()
    public func obstacleGetMap(obstacle: Godot.RID) -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        obstacle.withGodotUnsafeRawPointer { __ptr_obstacle in
        withUnsafeArgumentPackPointer(__ptr_obstacle) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_obstacle_get_map,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_obstacle_set_paused: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "obstacle_set_paused").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func obstacleSetPaused(obstacle: Godot.RID, paused: Bool) {
        obstacle.withGodotUnsafeRawPointer { __ptr_obstacle in
        paused.withGodotUnsafeRawPointer { __ptr_paused in
        withUnsafeArgumentPackPointer(__ptr_obstacle, __ptr_paused) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_obstacle_set_paused,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_obstacle_get_paused: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "obstacle_get_paused").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func obstacleGetPaused(obstacle: Godot.RID) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        obstacle.withGodotUnsafeRawPointer { __ptr_obstacle in
        withUnsafeArgumentPackPointer(__ptr_obstacle) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_obstacle_get_paused,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_obstacle_set_radius: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "obstacle_set_radius").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func obstacleSetRadius(obstacle: Godot.RID, radius: Double) {
        obstacle.withGodotUnsafeRawPointer { __ptr_obstacle in
        radius.withGodotUnsafeRawPointer { __ptr_radius in
        withUnsafeArgumentPackPointer(__ptr_obstacle, __ptr_radius) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_obstacle_set_radius,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_obstacle_set_velocity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "obstacle_set_velocity").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3201125042)!
        }
        }
    }()
    public func obstacleSetVelocity(obstacle: Godot.RID, velocity: Godot.Vector2) {
        obstacle.withGodotUnsafeRawPointer { __ptr_obstacle in
        velocity.withGodotUnsafeRawPointer { __ptr_velocity in
        withUnsafeArgumentPackPointer(__ptr_obstacle, __ptr_velocity) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_obstacle_set_velocity,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_obstacle_set_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "obstacle_set_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3201125042)!
        }
        }
    }()
    public func obstacleSetPosition(obstacle: Godot.RID, position: Godot.Vector2) {
        obstacle.withGodotUnsafeRawPointer { __ptr_obstacle in
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_obstacle, __ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_obstacle_set_position,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_obstacle_set_vertices: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "obstacle_set_vertices").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 29476483)!
        }
        }
    }()
    public func obstacleSetVertices(obstacle: Godot.RID, vertices: Godot.PackedVector2Array) {
        obstacle.withGodotUnsafeRawPointer { __ptr_obstacle in
        vertices.withGodotUnsafeRawPointer { __ptr_vertices in
        withUnsafeArgumentPackPointer(__ptr_obstacle, __ptr_vertices) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_obstacle_set_vertices,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_obstacle_set_avoidance_layers: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "obstacle_set_avoidance_layers").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func obstacleSetAvoidanceLayers(obstacle: Godot.RID, layers: UInt32) {
        obstacle.withGodotUnsafeRawPointer { __ptr_obstacle in
        layers.withGodotUnsafeRawPointer { __ptr_layers in
        withUnsafeArgumentPackPointer(__ptr_obstacle, __ptr_layers) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_obstacle_set_avoidance_layers,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_parse_source_geometry_data: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "parse_source_geometry_data").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1176164995)!
        }
        }
    }()
    public func parseSourceGeometryData(navigationPolygon: Godot.NavigationPolygon?, sourceGeometryData: Godot.NavigationMeshSourceGeometryData2D?, rootNode: Godot.Node?, callback: Godot.Callable = Callable()) {
        navigationPolygon.withGodotUnsafeRawPointer { __ptr_navigationPolygon in
        withUnsafePointer(to: __ptr_navigationPolygon) { _ptr___ptr_navigationPolygon in
        sourceGeometryData.withGodotUnsafeRawPointer { __ptr_sourceGeometryData in
        withUnsafePointer(to: __ptr_sourceGeometryData) { _ptr___ptr_sourceGeometryData in
        rootNode.withGodotUnsafeRawPointer { __ptr_rootNode in
        withUnsafePointer(to: __ptr_rootNode) { _ptr___ptr_rootNode in
        callback.withGodotUnsafeRawPointer { __ptr_callback in
        withUnsafeArgumentPackPointer(_ptr___ptr_navigationPolygon, _ptr___ptr_sourceGeometryData, _ptr___ptr_rootNode, __ptr_callback) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_parse_source_geometry_data,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}}
    }

    private static var __method_binding_bake_from_source_geometry_data: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "bake_from_source_geometry_data").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2909414286)!
        }
        }
    }()
    public func bakeFromSourceGeometryData(navigationPolygon: Godot.NavigationPolygon?, sourceGeometryData: Godot.NavigationMeshSourceGeometryData2D?, callback: Godot.Callable = Callable()) {
        navigationPolygon.withGodotUnsafeRawPointer { __ptr_navigationPolygon in
        withUnsafePointer(to: __ptr_navigationPolygon) { _ptr___ptr_navigationPolygon in
        sourceGeometryData.withGodotUnsafeRawPointer { __ptr_sourceGeometryData in
        withUnsafePointer(to: __ptr_sourceGeometryData) { _ptr___ptr_sourceGeometryData in
        callback.withGodotUnsafeRawPointer { __ptr_callback in
        withUnsafeArgumentPackPointer(_ptr___ptr_navigationPolygon, _ptr___ptr_sourceGeometryData, __ptr_callback) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_bake_from_source_geometry_data,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    private static var __method_binding_bake_from_source_geometry_data_async: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "bake_from_source_geometry_data_async").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2909414286)!
        }
        }
    }()
    public func bakeFromSourceGeometryDataAsync(navigationPolygon: Godot.NavigationPolygon?, sourceGeometryData: Godot.NavigationMeshSourceGeometryData2D?, callback: Godot.Callable = Callable()) {
        navigationPolygon.withGodotUnsafeRawPointer { __ptr_navigationPolygon in
        withUnsafePointer(to: __ptr_navigationPolygon) { _ptr___ptr_navigationPolygon in
        sourceGeometryData.withGodotUnsafeRawPointer { __ptr_sourceGeometryData in
        withUnsafePointer(to: __ptr_sourceGeometryData) { _ptr___ptr_sourceGeometryData in
        callback.withGodotUnsafeRawPointer { __ptr_callback in
        withUnsafeArgumentPackPointer(_ptr___ptr_navigationPolygon, _ptr___ptr_sourceGeometryData, __ptr_callback) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_bake_from_source_geometry_data_async,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    private static var __method_binding_free_rid: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "free_rid").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2722037293)!
        }
        }
    }()
    public func freeRid(_ rid: Godot.RID) {
        rid.withGodotUnsafeRawPointer { __ptr_rid in
        withUnsafeArgumentPackPointer(__ptr_rid) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_free_rid,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_debug_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_debug_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    public func setDebugEnabled(_ enabled: Bool) {
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_debug_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_debug_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_debug_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func debugEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_debug_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
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