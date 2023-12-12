//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class Performance: Object {
    public enum Monitor: UInt32, GodotEnum {
        case timeFps = 0
        case timeProcess = 1
        case timePhysicsProcess = 2
        case timeNavigationProcess = 3
        case memoryStatic = 4
        case memoryStaticMax = 5
        case memoryMessageBufferMax = 6
        case objectCount = 7
        case objectResourceCount = 8
        case objectNodeCount = 9
        case objectOrphanNodeCount = 10
        case renderTotalObjectsInFrame = 11
        case renderTotalPrimitivesInFrame = 12
        case renderTotalDrawCallsInFrame = 13
        case renderVideoMemUsed = 14
        case renderTextureMemUsed = 15
        case renderBufferMemUsed = 16
        case physics2DActiveObjects = 17
        case physics2DCollisionPairs = 18
        case physics2DIslandCount = 19
        case physics3DActiveObjects = 20
        case physics3DCollisionPairs = 21
        case physics3DIslandCount = 22
        case audioOutputLatency = 23
        case navigationActiveMaps = 24
        case navigationRegionCount = 25
        case navigationAgentCount = 26
        case navigationLinkCount = 27
        case navigationPolygonCount = 28
        case navigationEdgeCount = 29
        case navigationEdgeMergeCount = 30
        case navigationEdgeConnectionCount = 31
        case navigationEdgeFreeCount = 32
        case monitorMax = 33
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Time Fps", 0),
            ("Time Process", 1),
            ("Time Physics Process", 2),
            ("Time Navigation Process", 3),
            ("Memory Static", 4),
            ("Memory Static Max", 5),
            ("Memory Message Buffer Max", 6),
            ("Object Count", 7),
            ("Object Resource Count", 8),
            ("Object Node Count", 9),
            ("Object Orphan Node Count", 10),
            ("Render Total Objects In Frame", 11),
            ("Render Total Primitives In Frame", 12),
            ("Render Total Draw Calls In Frame", 13),
            ("Render Video Mem Used", 14),
            ("Render Texture Mem Used", 15),
            ("Render Buffer Mem Used", 16),
            ("Physics2 D Active Objects", 17),
            ("Physics2 D Collision Pairs", 18),
            ("Physics2 D Island Count", 19),
            ("Physics3 D Active Objects", 20),
            ("Physics3 D Collision Pairs", 21),
            ("Physics3 D Island Count", 22),
            ("Audio Output Latency", 23),
            ("Navigation Active Maps", 24),
            ("Navigation Region Count", 25),
            ("Navigation Agent Count", 26),
            ("Navigation Link Count", 27),
            ("Navigation Polygon Count", 28),
            ("Navigation Edge Count", 29),
            ("Navigation Edge Merge Count", 30),
            ("Navigation Edge Connection Count", 31),
            ("Navigation Edge Free Count", 32),
            ("Monitor Max", 33),]
        }
    }

    private static var __method_binding_get_monitor: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_monitor").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1943275655)!
        }
        }
    }()
    public func monitor(_ monitor: Godot.Performance.Monitor) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        monitor.withGodotUnsafeRawPointer { __ptr_monitor in
        withUnsafeArgumentPackPointer(__ptr_monitor) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_monitor,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_add_custom_monitor: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_custom_monitor").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2865980031)!
        }
        }
    }()
    public func addCustomMonitor<Value: VariantStorable>(id: Godot.GodotStringName, callable: Godot.Callable, arguments: Godot.GodotArray<Value> = []) {
        id.withGodotUnsafeRawPointer { __ptr_id in
        callable.withGodotUnsafeRawPointer { __ptr_callable in
        arguments.withGodotUnsafeRawPointer { __ptr_arguments in
        withUnsafeArgumentPackPointer(__ptr_id, __ptr_callable, __ptr_arguments) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_custom_monitor,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_remove_custom_monitor: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_custom_monitor").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3304788590)!
        }
        }
    }()
    public func removeCustomMonitor(id: Godot.GodotStringName) {
        id.withGodotUnsafeRawPointer { __ptr_id in
        withUnsafeArgumentPackPointer(__ptr_id) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_remove_custom_monitor,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_has_custom_monitor: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_custom_monitor").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2041966384)!
        }
        }
    }()
    public func hasCustomMonitor(id: Godot.GodotStringName) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        id.withGodotUnsafeRawPointer { __ptr_id in
        withUnsafeArgumentPackPointer(__ptr_id) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_has_custom_monitor,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_custom_monitor: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_custom_monitor").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2138907829)!
        }
        }
    }()
    public func customMonitor(id: Godot.GodotStringName) -> Godot.Variant {
        Godot.Variant.fromMutatingGodotUnsafePointer { __temporary in
        id.withGodotUnsafeRawPointer { __ptr_id in
        withUnsafeArgumentPackPointer(__ptr_id) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_custom_monitor,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_monitor_modification_time: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_monitor_modification_time").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2455072627)!
        }
        }
    }()
    public func monitorModificationTime() -> UInt64 {
        UInt64.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_monitor_modification_time,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_custom_monitor_names: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_custom_monitor_names").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()
    public func customMonitorNames() -> Godot.GodotArray<Godot.GodotStringName> {
        Godot.GodotArray<Godot.GodotStringName> .fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_custom_monitor_names,
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