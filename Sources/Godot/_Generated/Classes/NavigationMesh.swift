//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class NavigationMesh: Resource {
    public enum SamplePartitionType: UInt32, GodotEnum {
        case watershed = 0
        case monotone = 1
        case layers = 2
        case max = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Watershed", 0),
            ("Monotone", 1),
            ("Layers", 2),
            ("Max", 3),]
        }
    }
    public enum ParsedGeometryType: UInt32, GodotEnum {
        case meshInstances = 0
        case staticColliders = 1
        case both = 2
        case max = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Mesh Instances", 0),
            ("Static Colliders", 1),
            ("Both", 2),
            ("Max", 3),]
        }
    }
    public enum SourceGeometryMode: UInt32, GodotEnum {
        case rootNodeChildren = 0
        case groupsWithChildren = 1
        case groupsExplicit = 2
        case max = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Root Node Children", 0),
            ("Groups With Children", 1),
            ("Groups Explicit", 2),
            ("Max", 3),]
        }
    }

    private static var __method_binding_set_sample_partition_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_sample_partition_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2472437533)!
        }
        }
    }()
    private func __setSamplePartitionType(_ samplePartitionType: Godot.NavigationMesh.SamplePartitionType) {
        samplePartitionType.withGodotUnsafeRawPointer { __ptr_samplePartitionType in
        withUnsafeArgumentPackPointer(__ptr_samplePartitionType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_sample_partition_type,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_sample_partition_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_sample_partition_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 833513918)!
        }
        }
    }()
    private func __getSamplePartitionType() -> Godot.NavigationMesh.SamplePartitionType {
        Godot.NavigationMesh.SamplePartitionType.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_sample_partition_type,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_parsed_geometry_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_parsed_geometry_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3064713163)!
        }
        }
    }()
    private func __setParsedGeometryType(_ geometryType: Godot.NavigationMesh.ParsedGeometryType) {
        geometryType.withGodotUnsafeRawPointer { __ptr_geometryType in
        withUnsafeArgumentPackPointer(__ptr_geometryType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_parsed_geometry_type,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_parsed_geometry_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_parsed_geometry_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3928011953)!
        }
        }
    }()
    private func __getParsedGeometryType() -> Godot.NavigationMesh.ParsedGeometryType {
        Godot.NavigationMesh.ParsedGeometryType.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_parsed_geometry_type,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_collision_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_collision_mask").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setCollisionMask(_ mask: UInt32) {
        mask.withGodotUnsafeRawPointer { __ptr_mask in
        withUnsafeArgumentPackPointer(__ptr_mask) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_collision_mask,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_collision_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_collision_mask").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getCollisionMask() -> UInt32 {
        UInt32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_collision_mask,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_collision_mask_value: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_collision_mask_value").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()
    public func setCollisionMaskValue(layerNumber: Int32, value: Bool) {
        layerNumber.withGodotUnsafeRawPointer { __ptr_layerNumber in
        value.withGodotUnsafeRawPointer { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_layerNumber, __ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_collision_mask_value,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_collision_mask_value: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_collision_mask_value").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func collisionMaskValue(layerNumber: Int32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        layerNumber.withGodotUnsafeRawPointer { __ptr_layerNumber in
        withUnsafeArgumentPackPointer(__ptr_layerNumber) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_collision_mask_value,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_source_geometry_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_source_geometry_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2700825194)!
        }
        }
    }()
    private func __setSourceGeometryMode(mask: Godot.NavigationMesh.SourceGeometryMode) {
        mask.withGodotUnsafeRawPointer { __ptr_mask in
        withUnsafeArgumentPackPointer(__ptr_mask) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_source_geometry_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_source_geometry_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_source_geometry_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2770484141)!
        }
        }
    }()
    private func __getSourceGeometryMode() -> Godot.NavigationMesh.SourceGeometryMode {
        Godot.NavigationMesh.SourceGeometryMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_source_geometry_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_source_group_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_source_group_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3304788590)!
        }
        }
    }()
    private func __setSourceGroupName(mask: Godot.GodotStringName) {
        mask.withGodotUnsafeRawPointer { __ptr_mask in
        withUnsafeArgumentPackPointer(__ptr_mask) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_source_group_name,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_source_group_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_source_group_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2002593661)!
        }
        }
    }()
    private func __getSourceGroupName() -> Godot.GodotStringName {
        Godot.GodotStringName.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_source_group_name,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_cell_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_cell_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setCellSize(_ cellSize: Double) {
        cellSize.withGodotUnsafeRawPointer { __ptr_cellSize in
        withUnsafeArgumentPackPointer(__ptr_cellSize) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_cell_size,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_cell_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_cell_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getCellSize() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_cell_size,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_cell_height: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_cell_height").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setCellHeight(_ cellHeight: Double) {
        cellHeight.withGodotUnsafeRawPointer { __ptr_cellHeight in
        withUnsafeArgumentPackPointer(__ptr_cellHeight) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_cell_height,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_cell_height: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_cell_height").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getCellHeight() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_cell_height,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_agent_height: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_agent_height").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setAgentHeight(_ agentHeight: Double) {
        agentHeight.withGodotUnsafeRawPointer { __ptr_agentHeight in
        withUnsafeArgumentPackPointer(__ptr_agentHeight) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_agent_height,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_agent_height: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_agent_height").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getAgentHeight() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_agent_height,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_agent_radius: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_agent_radius").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setAgentRadius(_ agentRadius: Double) {
        agentRadius.withGodotUnsafeRawPointer { __ptr_agentRadius in
        withUnsafeArgumentPackPointer(__ptr_agentRadius) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_agent_radius,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_agent_radius: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_agent_radius").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 191475506)!
        }
        }
    }()
    private func __getAgentRadius() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_agent_radius,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_agent_max_climb: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_agent_max_climb").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setAgentMaxClimb(_ agentMaxClimb: Double) {
        agentMaxClimb.withGodotUnsafeRawPointer { __ptr_agentMaxClimb in
        withUnsafeArgumentPackPointer(__ptr_agentMaxClimb) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_agent_max_climb,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_agent_max_climb: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_agent_max_climb").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getAgentMaxClimb() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_agent_max_climb,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_agent_max_slope: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_agent_max_slope").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setAgentMaxSlope(_ agentMaxSlope: Double) {
        agentMaxSlope.withGodotUnsafeRawPointer { __ptr_agentMaxSlope in
        withUnsafeArgumentPackPointer(__ptr_agentMaxSlope) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_agent_max_slope,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_agent_max_slope: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_agent_max_slope").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getAgentMaxSlope() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_agent_max_slope,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_region_min_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_region_min_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setRegionMinSize(_ regionMinSize: Double) {
        regionMinSize.withGodotUnsafeRawPointer { __ptr_regionMinSize in
        withUnsafeArgumentPackPointer(__ptr_regionMinSize) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_region_min_size,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_region_min_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_region_min_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getRegionMinSize() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_region_min_size,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_region_merge_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_region_merge_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setRegionMergeSize(_ regionMergeSize: Double) {
        regionMergeSize.withGodotUnsafeRawPointer { __ptr_regionMergeSize in
        withUnsafeArgumentPackPointer(__ptr_regionMergeSize) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_region_merge_size,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_region_merge_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_region_merge_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getRegionMergeSize() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_region_merge_size,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_edge_max_length: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_edge_max_length").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setEdgeMaxLength(_ edgeMaxLength: Double) {
        edgeMaxLength.withGodotUnsafeRawPointer { __ptr_edgeMaxLength in
        withUnsafeArgumentPackPointer(__ptr_edgeMaxLength) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_edge_max_length,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_edge_max_length: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_edge_max_length").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getEdgeMaxLength() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_edge_max_length,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_edge_max_error: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_edge_max_error").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setEdgeMaxError(_ edgeMaxError: Double) {
        edgeMaxError.withGodotUnsafeRawPointer { __ptr_edgeMaxError in
        withUnsafeArgumentPackPointer(__ptr_edgeMaxError) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_edge_max_error,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_edge_max_error: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_edge_max_error").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getEdgeMaxError() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_edge_max_error,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_vertices_per_polygon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_vertices_per_polygon").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setVerticesPerPolygon(_ verticesPerPolygon: Double) {
        verticesPerPolygon.withGodotUnsafeRawPointer { __ptr_verticesPerPolygon in
        withUnsafeArgumentPackPointer(__ptr_verticesPerPolygon) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_vertices_per_polygon,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_vertices_per_polygon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_vertices_per_polygon").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getVerticesPerPolygon() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_vertices_per_polygon,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_detail_sample_distance: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_detail_sample_distance").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setDetailSampleDistance(detailSampleDist: Double) {
        detailSampleDist.withGodotUnsafeRawPointer { __ptr_detailSampleDist in
        withUnsafeArgumentPackPointer(__ptr_detailSampleDist) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_detail_sample_distance,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_detail_sample_distance: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_detail_sample_distance").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getDetailSampleDistance() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_detail_sample_distance,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_detail_sample_max_error: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_detail_sample_max_error").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setDetailSampleMaxError(_ detailSampleMaxError: Double) {
        detailSampleMaxError.withGodotUnsafeRawPointer { __ptr_detailSampleMaxError in
        withUnsafeArgumentPackPointer(__ptr_detailSampleMaxError) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_detail_sample_max_error,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_detail_sample_max_error: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_detail_sample_max_error").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getDetailSampleMaxError() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_detail_sample_max_error,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_filter_low_hanging_obstacles: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_filter_low_hanging_obstacles").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setFilterLowHangingObstacles(_ filterLowHangingObstacles: Bool) {
        filterLowHangingObstacles.withGodotUnsafeRawPointer { __ptr_filterLowHangingObstacles in
        withUnsafeArgumentPackPointer(__ptr_filterLowHangingObstacles) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_filter_low_hanging_obstacles,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_filter_low_hanging_obstacles: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_filter_low_hanging_obstacles").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getFilterLowHangingObstacles() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_filter_low_hanging_obstacles,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_filter_ledge_spans: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_filter_ledge_spans").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setFilterLedgeSpans(_ filterLedgeSpans: Bool) {
        filterLedgeSpans.withGodotUnsafeRawPointer { __ptr_filterLedgeSpans in
        withUnsafeArgumentPackPointer(__ptr_filterLedgeSpans) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_filter_ledge_spans,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_filter_ledge_spans: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_filter_ledge_spans").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getFilterLedgeSpans() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_filter_ledge_spans,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_filter_walkable_low_height_spans: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_filter_walkable_low_height_spans").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setFilterWalkableLowHeightSpans(_ filterWalkableLowHeightSpans: Bool) {
        filterWalkableLowHeightSpans.withGodotUnsafeRawPointer { __ptr_filterWalkableLowHeightSpans in
        withUnsafeArgumentPackPointer(__ptr_filterWalkableLowHeightSpans) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_filter_walkable_low_height_spans,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_filter_walkable_low_height_spans: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_filter_walkable_low_height_spans").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getFilterWalkableLowHeightSpans() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_filter_walkable_low_height_spans,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_filter_baking_aabb: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_filter_baking_aabb").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 259215842)!
        }
        }
    }()
    private func __setFilterBakingAabb(_ bakingAabb: Godot.AABB) {
        bakingAabb.withGodotUnsafeRawPointer { __ptr_bakingAabb in
        withUnsafeArgumentPackPointer(__ptr_bakingAabb) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_filter_baking_aabb,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_filter_baking_aabb: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_filter_baking_aabb").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1068685055)!
        }
        }
    }()
    private func __getFilterBakingAabb() -> Godot.AABB {
        Godot.AABB.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_filter_baking_aabb,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_filter_baking_aabb_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_filter_baking_aabb_offset").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    private func __setFilterBakingAabbOffset(_ bakingAabbOffset: Godot.Vector3) {
        bakingAabbOffset.withGodotUnsafeRawPointer { __ptr_bakingAabbOffset in
        withUnsafeArgumentPackPointer(__ptr_bakingAabbOffset) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_filter_baking_aabb_offset,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_filter_baking_aabb_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_filter_baking_aabb_offset").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    private func __getFilterBakingAabbOffset() -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_filter_baking_aabb_offset,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_vertices: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_vertices").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 334873810)!
        }
        }
    }()
    private func __setVertices(_ vertices: Godot.PackedVector3Array) {
        vertices.withGodotUnsafeRawPointer { __ptr_vertices in
        withUnsafeArgumentPackPointer(__ptr_vertices) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_vertices,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_vertices: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_vertices").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 497664490)!
        }
        }
    }()
    private func __getVertices() -> Godot.PackedVector3Array {
        Godot.PackedVector3Array.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_vertices,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_add_polygon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_polygon").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3614634198)!
        }
        }
    }()
    public func addPolygon(_ polygon: Godot.PackedInt32Array) {
        polygon.withGodotUnsafeRawPointer { __ptr_polygon in
        withUnsafeArgumentPackPointer(__ptr_polygon) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_polygon,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_polygon_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_polygon_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func polygonCount() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_polygon_count,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_polygon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_polygon").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3668444399)!
        }
        }
    }()
    public func polygon(idx: Int32) -> Godot.PackedInt32Array {
        Godot.PackedInt32Array.fromMutatingGodotUnsafePointer { __temporary in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        withUnsafeArgumentPackPointer(__ptr_idx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_polygon,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_clear_polygons: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_polygons").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func clearPolygons() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_clear_polygons,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_create_from_mesh: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_from_mesh").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 194775623)!
        }
        }
    }()
    public func createFromMesh(_ mesh: Godot.Mesh?) {
        mesh.withGodotUnsafeRawPointer { __ptr_mesh in
        withUnsafePointer(to: __ptr_mesh) { _ptr___ptr_mesh in
        withUnsafeArgumentPackPointer(_ptr___ptr_mesh) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_create_from_mesh,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_clear: GDExtensionMethodBindPtr = {
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

    public var vertices: Godot.PackedVector3Array {
        get {
            __getVertices()
        }
        set {
            __setVertices(
                newValue
            )
        }
    }

    public var samplePartitionType: Godot.NavigationMesh.SamplePartitionType {
        get {
            __getSamplePartitionType()
        }
        set {
            __setSamplePartitionType(
                newValue
            )
        }
    }

    public var parsedGeometryType: Godot.NavigationMesh.ParsedGeometryType {
        get {
            __getParsedGeometryType()
        }
        set {
            __setParsedGeometryType(
                newValue
            )
        }
    }

    public var collisionMask: UInt32 {
        get {
            __getCollisionMask()
        }
        set {
            __setCollisionMask(
                newValue
            )
        }
    }

    public var sourceGeometryMode: Godot.NavigationMesh.SourceGeometryMode {
        get {
            __getSourceGeometryMode()
        }
        set {
            __setSourceGeometryMode(
                mask: newValue
            )
        }
    }

    public var sourceGroupName: Godot.GodotStringName {
        get {
            __getSourceGroupName()
        }
        set {
            __setSourceGroupName(
                mask: newValue
            )
        }
    }

    public var cellSize: Double {
        get {
            __getCellSize()
        }
        set {
            __setCellSize(
                newValue
            )
        }
    }

    public var cellHeight: Double {
        get {
            __getCellHeight()
        }
        set {
            __setCellHeight(
                newValue
            )
        }
    }

    public var agentHeight: Double {
        get {
            __getAgentHeight()
        }
        set {
            __setAgentHeight(
                newValue
            )
        }
    }

    public var agentRadius: Double {
        get {
            __getAgentRadius()
        }
        set {
            __setAgentRadius(
                newValue
            )
        }
    }

    public var agentMaxClimb: Double {
        get {
            __getAgentMaxClimb()
        }
        set {
            __setAgentMaxClimb(
                newValue
            )
        }
    }

    public var agentMaxSlope: Double {
        get {
            __getAgentMaxSlope()
        }
        set {
            __setAgentMaxSlope(
                newValue
            )
        }
    }

    public var regionMinSize: Double {
        get {
            __getRegionMinSize()
        }
        set {
            __setRegionMinSize(
                newValue
            )
        }
    }

    public var regionMergeSize: Double {
        get {
            __getRegionMergeSize()
        }
        set {
            __setRegionMergeSize(
                newValue
            )
        }
    }

    public var edgeMaxLength: Double {
        get {
            __getEdgeMaxLength()
        }
        set {
            __setEdgeMaxLength(
                newValue
            )
        }
    }

    public var edgeMaxError: Double {
        get {
            __getEdgeMaxError()
        }
        set {
            __setEdgeMaxError(
                newValue
            )
        }
    }

    public var verticesPerPolygon: Double {
        get {
            __getVerticesPerPolygon()
        }
        set {
            __setVerticesPerPolygon(
                newValue
            )
        }
    }

    public var detailSampleDistance: Double {
        get {
            __getDetailSampleDistance()
        }
        set {
            __setDetailSampleDistance(
                detailSampleDist: newValue
            )
        }
    }

    public var detailSampleMaxError: Double {
        get {
            __getDetailSampleMaxError()
        }
        set {
            __setDetailSampleMaxError(
                newValue
            )
        }
    }

    public var filterLowHangingObstacles: Bool {
        get {
            __getFilterLowHangingObstacles()
        }
        set {
            __setFilterLowHangingObstacles(
                newValue
            )
        }
    }

    public var filterLedgeSpans: Bool {
        get {
            __getFilterLedgeSpans()
        }
        set {
            __setFilterLedgeSpans(
                newValue
            )
        }
    }

    public var filterWalkableLowHeightSpans: Bool {
        get {
            __getFilterWalkableLowHeightSpans()
        }
        set {
            __setFilterWalkableLowHeightSpans(
                newValue
            )
        }
    }

    public var filterBakingAabb: Godot.AABB {
        get {
            __getFilterBakingAabb()
        }
        set {
            __setFilterBakingAabb(
                newValue
            )
        }
    }

    public var filterBakingAabbOffset: Godot.Vector3 {
        get {
            __getFilterBakingAabbOffset()
        }
        set {
            __setFilterBakingAabbOffset(
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