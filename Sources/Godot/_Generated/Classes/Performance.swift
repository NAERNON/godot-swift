//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class Performance: Object {
    public enum Monitor: UInt32 {
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
    }

    private static var __method_binding_get_monitor: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_monitor").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1943275655)!
        }
        }
    }()
    public func monitor(_ monitor: Godot.Performance.Monitor) -> Double {
        var __temporary = Double()
        withUnsafePointer(to: monitor) { (__ptr_monitor) in
            withUnsafeArgumentPackPointer(__ptr_monitor) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_monitor,
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

    private static var __method_binding_add_custom_monitor: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_custom_monitor").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2865980031)!
        }
        }
    }()
    public func addCustomMonitor(id: Godot.GodotStringName, callable: Godot.Callable, arguments: Godot.GodotArray = []) {
        id.withUnsafeRawPointer { (__ptr_id) in
            callable.withUnsafeRawPointer { (__ptr_callable) in
                arguments.withUnsafeRawPointer { (__ptr_arguments) in
                    withUnsafeArgumentPackPointer(__ptr_id, __ptr_callable, __ptr_arguments) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_add_custom_monitor,
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

    private static var __method_binding_remove_custom_monitor: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_custom_monitor").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3304788590)!
        }
        }
    }()
    public func removeCustomMonitor(id: Godot.GodotStringName) {
        id.withUnsafeRawPointer { (__ptr_id) in
            withUnsafeArgumentPackPointer(__ptr_id) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_remove_custom_monitor,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_has_custom_monitor: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_custom_monitor").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2041966384)!
        }
        }
    }()
    public func hasCustomMonitor(id: Godot.GodotStringName) -> Bool {
        var __temporary = Bool()
        id.withUnsafeRawPointer { (__ptr_id) in
            withUnsafeArgumentPackPointer(__ptr_id) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_has_custom_monitor,
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

    private static var __method_binding_get_custom_monitor: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_custom_monitor").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2138907829)!
        }
        }
    }()
    public func customMonitor(id: Godot.GodotStringName) -> Godot.Variant {
        let __temporary = Godot.Variant()
        id.withUnsafeRawPointer { (__ptr_id) in
            withUnsafeArgumentPackPointer(__ptr_id) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_custom_monitor,
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

    private static var __method_binding_get_monitor_modification_time: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_monitor_modification_time").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2455072627)!
        }
        }
    }()
    public func monitorModificationTime() -> UInt64 {
        var __temporary = UInt64()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_monitor_modification_time,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_custom_monitor_names: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_custom_monitor_names").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()
    public func customMonitorNames() -> Godot.GodotTypedArray<Godot.GodotStringName> {
        let __temporary = Godot.GodotTypedArray<Godot.GodotStringName>()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_custom_monitor_names,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
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