//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class NavigationPathQueryParameters2D: RefCounted {
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
    public struct PathMetadataFlags: OptionSet {
        public let rawValue: UInt32

        public init(rawValue: UInt32) {
            self.rawValue = rawValue
        }

        public static let none: Self = .init(rawValue: 0)
        public static let types: Self = .init(rawValue: 1)
        public static let rids: Self = .init(rawValue: 2)
        public static let owners: Self = .init(rawValue: 4)
        public static let all: Self = .init(rawValue: 7)
    }

    private static var __method_binding_set_pathfinding_algorithm: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_pathfinding_algorithm").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2783519915)!
        }
        }
    }()
    private func __setPathfindingAlgorithm(_ pathfindingAlgorithm: Godot.NavigationPathQueryParameters2D.PathfindingAlgorithm) {
        withUnsafePointer(to: pathfindingAlgorithm) { (__ptr_pathfindingAlgorithm) in
            withUnsafeArgumentPackPointer(__ptr_pathfindingAlgorithm) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_pathfinding_algorithm,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_pathfinding_algorithm: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_pathfinding_algorithm").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3000421146)!
        }
        }
    }()
    private func __getPathfindingAlgorithm() -> Godot.NavigationPathQueryParameters2D.PathfindingAlgorithm {
        var __temporary = Godot.NavigationPathQueryParameters2D.PathfindingAlgorithm.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_pathfinding_algorithm,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.NavigationPathQueryParameters2D.PathfindingAlgorithm(rawValue: __temporary)!
    }

    private static var __method_binding_set_path_postprocessing: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_path_postprocessing").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2864409082)!
        }
        }
    }()
    private func __setPathPostprocessing(_ pathPostprocessing: Godot.NavigationPathQueryParameters2D.PathPostProcessing) {
        withUnsafePointer(to: pathPostprocessing) { (__ptr_pathPostprocessing) in
            withUnsafeArgumentPackPointer(__ptr_pathPostprocessing) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_path_postprocessing,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_path_postprocessing: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_path_postprocessing").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3798118993)!
        }
        }
    }()
    private func __getPathPostprocessing() -> Godot.NavigationPathQueryParameters2D.PathPostProcessing {
        var __temporary = Godot.NavigationPathQueryParameters2D.PathPostProcessing.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_path_postprocessing,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.NavigationPathQueryParameters2D.PathPostProcessing(rawValue: __temporary)!
    }

    private static var __method_binding_set_map: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_map").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2722037293)!
        }
        }
    }()
    private func __setMap(_ map: Godot.RID) {
        map.withUnsafeRawPointer { (__ptr_map) in
            withUnsafeArgumentPackPointer(__ptr_map) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_map,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_map: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_map").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2944877500)!
        }
        }
    }()
    private func __getMap() -> Godot.RID {
        let __temporary = Godot.RID()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_map,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_start_position: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_start_position").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 743155724)!
        }
        }
    }()
    private func __setStartPosition(_ startPosition: Godot.Vector2) {
        withUnsafePointer(to: startPosition) { (__ptr_startPosition) in
            withUnsafeArgumentPackPointer(__ptr_startPosition) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_start_position,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_start_position: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_start_position").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()
    private func __getStartPosition() -> Godot.Vector2 {
        var __temporary = Godot.Vector2()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_start_position,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_target_position: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_target_position").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 743155724)!
        }
        }
    }()
    private func __setTargetPosition(_ targetPosition: Godot.Vector2) {
        withUnsafePointer(to: targetPosition) { (__ptr_targetPosition) in
            withUnsafeArgumentPackPointer(__ptr_targetPosition) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_target_position,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_target_position: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_target_position").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()
    private func __getTargetPosition() -> Godot.Vector2 {
        var __temporary = Godot.Vector2()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_target_position,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_navigation_layers: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_navigation_layers").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setNavigationLayers(_ navigationLayers: UInt32) {
        withUnsafePointer(to: navigationLayers) { (__ptr_navigationLayers) in
            withUnsafeArgumentPackPointer(__ptr_navigationLayers) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_navigation_layers,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_navigation_layers: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_navigation_layers").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getNavigationLayers() -> UInt32 {
        var __temporary = UInt32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_navigation_layers,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_metadata_flags: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_metadata_flags").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 24274129)!
        }
        }
    }()
    private func __setMetadataFlags(_ flags: Godot.NavigationPathQueryParameters2D.PathMetadataFlags) {
        withUnsafePointer(to: flags) { (__ptr_flags) in
            withUnsafeArgumentPackPointer(__ptr_flags) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_metadata_flags,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_metadata_flags: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_metadata_flags").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 488152976)!
        }
        }
    }()
    private func __getMetadataFlags() -> Godot.NavigationPathQueryParameters2D.PathMetadataFlags {
        var __temporary = Godot.NavigationPathQueryParameters2D.PathMetadataFlags()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_metadata_flags,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
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

    public var startPosition: Godot.Vector2 {
        get {
            __getStartPosition()
        }
        set {
            __setStartPosition(
                newValue
            )
        }
    }

    public var targetPosition: Godot.Vector2 {
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

    public var pathfindingAlgorithm: Godot.NavigationPathQueryParameters2D.PathfindingAlgorithm {
        get {
            __getPathfindingAlgorithm()
        }
        set {
            __setPathfindingAlgorithm(
                newValue
            )
        }
    }

    public var pathPostprocessing: Godot.NavigationPathQueryParameters2D.PathPostProcessing {
        get {
            __getPathPostprocessing()
        }
        set {
            __setPathPostprocessing(
                newValue
            )
        }
    }

    public var metadataFlags: Godot.NavigationPathQueryParameters2D.PathMetadataFlags {
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