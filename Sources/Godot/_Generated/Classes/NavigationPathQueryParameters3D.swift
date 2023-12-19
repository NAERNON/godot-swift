//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class NavigationPathQueryParameters3D: RefCounted {
    public enum PathfindingAlgorithm: UInt32, GodotEnum {
        case pathfindingAlgorithmAstar = 0
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Pathfinding Algorithm Astar", 0),]
        }
    }
    public enum PathPostProcessing: UInt32, GodotEnum {
        case corridorfunnel = 0
        case edgecentered = 1
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Corridorfunnel", 0),
            ("Edgecentered", 1),]
        }
    }
    public struct PathMetadataFlags: GodotOptionSet {
        public let rawValue: Int64

        public init(rawValue: Int64) {
            self.rawValue = rawValue
        }

        public static let none: Self = .init(rawValue: 0)
        public static let types: Self = .init(rawValue: 1)
        public static let rids: Self = .init(rawValue: 2)
        public static let owners: Self = .init(rawValue: 4)
        public static let all: Self = .init(rawValue: 7)
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("None", 0),
            ("Types", 1),
            ("Rids", 2),
            ("Owners", 4),
            ("All", 7),]
        }
    }

    private static var __method_binding_set_pathfinding_algorithm: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_pathfinding_algorithm").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 394560454)!
        }
        }
    }()
    private func __setPathfindingAlgorithm(_ pathfindingAlgorithm: Godot.NavigationPathQueryParameters3D.PathfindingAlgorithm) {
        pathfindingAlgorithm.withGodotUnsafeRawPointer { __ptr_pathfindingAlgorithm in
        withUnsafeArgumentPackPointer(__ptr_pathfindingAlgorithm) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_pathfinding_algorithm,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_pathfinding_algorithm: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_pathfinding_algorithm").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3398491350)!
        }
        }
    }()
    private func __getPathfindingAlgorithm() -> Godot.NavigationPathQueryParameters3D.PathfindingAlgorithm {
        Godot.NavigationPathQueryParameters3D.PathfindingAlgorithm.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_pathfinding_algorithm,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_path_postprocessing: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_path_postprocessing").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2267362344)!
        }
        }
    }()
    private func __setPathPostprocessing(_ pathPostprocessing: Godot.NavigationPathQueryParameters3D.PathPostProcessing) {
        pathPostprocessing.withGodotUnsafeRawPointer { __ptr_pathPostprocessing in
        withUnsafeArgumentPackPointer(__ptr_pathPostprocessing) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_path_postprocessing,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_path_postprocessing: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_path_postprocessing").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3883858360)!
        }
        }
    }()
    private func __getPathPostprocessing() -> Godot.NavigationPathQueryParameters3D.PathPostProcessing {
        Godot.NavigationPathQueryParameters3D.PathPostProcessing.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_path_postprocessing,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_map: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_map").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2722037293)!
        }
        }
    }()
    private func __setMap(_ map: Godot.RID) {
        map.withGodotUnsafeRawPointer { __ptr_map in
        withUnsafeArgumentPackPointer(__ptr_map) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_map,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_map: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_map").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2944877500)!
        }
        }
    }()
    private func __getMap() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_map,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_start_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_start_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    private func __setStartPosition(_ startPosition: Godot.Vector3) {
        startPosition.withGodotUnsafeRawPointer { __ptr_startPosition in
        withUnsafeArgumentPackPointer(__ptr_startPosition) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_start_position,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_start_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_start_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    private func __getStartPosition() -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_start_position,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_target_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_target_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    private func __setTargetPosition(_ targetPosition: Godot.Vector3) {
        targetPosition.withGodotUnsafeRawPointer { __ptr_targetPosition in
        withUnsafeArgumentPackPointer(__ptr_targetPosition) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_target_position,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_target_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_target_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    private func __getTargetPosition() -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_target_position,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_navigation_layers: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_navigation_layers").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setNavigationLayers(_ navigationLayers: UInt32) {
        navigationLayers.withGodotUnsafeRawPointer { __ptr_navigationLayers in
        withUnsafeArgumentPackPointer(__ptr_navigationLayers) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_navigation_layers,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_navigation_layers: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_navigation_layers").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getNavigationLayers() -> UInt32 {
        UInt32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_navigation_layers,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_metadata_flags: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_metadata_flags").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2713846708)!
        }
        }
    }()
    private func __setMetadataFlags(_ flags: Godot.NavigationPathQueryParameters3D.PathMetadataFlags) {
        flags.withGodotUnsafeRawPointer { __ptr_flags in
        withUnsafeArgumentPackPointer(__ptr_flags) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_metadata_flags,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_metadata_flags: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_metadata_flags").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1582332802)!
        }
        }
    }()
    private func __getMetadataFlags() -> Godot.NavigationPathQueryParameters3D.PathMetadataFlags {
        Godot.NavigationPathQueryParameters3D.PathMetadataFlags.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_metadata_flags,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var map: Godot.RID {
        get {
            __getMap()
        }
        set {
            __setMap(
                newValue
            )
        }
    }

    public var startPosition: Godot.Vector3 {
        get {
            __getStartPosition()
        }
        set {
            __setStartPosition(
                newValue
            )
        }
    }

    public var targetPosition: Godot.Vector3 {
        get {
            __getTargetPosition()
        }
        set {
            __setTargetPosition(
                newValue
            )
        }
    }

    public var navigationLayers: UInt32 {
        get {
            __getNavigationLayers()
        }
        set {
            __setNavigationLayers(
                newValue
            )
        }
    }

    public var pathfindingAlgorithm: Godot.NavigationPathQueryParameters3D.PathfindingAlgorithm {
        get {
            __getPathfindingAlgorithm()
        }
        set {
            __setPathfindingAlgorithm(
                newValue
            )
        }
    }

    public var pathPostprocessing: Godot.NavigationPathQueryParameters3D.PathPostProcessing {
        get {
            __getPathPostprocessing()
        }
        set {
            __setPathPostprocessing(
                newValue
            )
        }
    }

    public var metadataFlags: Godot.NavigationPathQueryParameters3D.PathMetadataFlags {
        get {
            __getMetadataFlags()
        }
        set {
            __setMetadataFlags(
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