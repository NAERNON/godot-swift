//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class XRServer: Object {
    public enum TrackerType: UInt32 {
        case head = 1
        case controller = 2
        case basestation = 4
        case anchor = 8
        case anyKnown = 127
        case unknown = 128
        case any = 255
    }
    public enum RotationMode: UInt32 {
        case resetFullRotation = 0
        case resetButKeepTilt = 1
        case dontResetRotation = 2
    }

    @Emitter(signal: "interface_added", args: ("interfaceName", Godot.GodotStringName))
    public struct InterfaceAdded {
    }

    @Emitter(signal: "interface_removed", args: ("interfaceName", Godot.GodotStringName))
    public struct InterfaceRemoved {
    }

    @Emitter(signal: "tracker_added", args: ("trackerName", Godot.GodotStringName), ("type", Int))
    public struct TrackerAdded {
    }

    @Emitter(signal: "tracker_updated", args: ("trackerName", Godot.GodotStringName), ("type", Int))
    public struct TrackerUpdated {
    }

    @Emitter(signal: "tracker_removed", args: ("trackerName", Godot.GodotStringName), ("type", Int))
    public struct TrackerRemoved {
    }

    private static var __method_binding_get_world_scale: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_world_scale").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getWorldScale() -> Double {
        var __temporary = Double()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_world_scale,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_world_scale: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_world_scale").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setWorldScale(_ scale: Double) {
        withUnsafePointer(to: scale) { (__ptr_scale) in
            withUnsafeArgumentPackPointer(__ptr_scale) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_world_scale,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_world_origin: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_world_origin").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3229777777)!
        }
        }
    }()
    private func __getWorldOrigin() -> Godot.Transform3D {
        var __temporary = Godot.Transform3D()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_world_origin,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_world_origin: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_world_origin").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2952846383)!
        }
        }
    }()
    private func __setWorldOrigin(_ worldOrigin: Godot.Transform3D) {
        withUnsafePointer(to: worldOrigin) { (__ptr_worldOrigin) in
            withUnsafeArgumentPackPointer(__ptr_worldOrigin) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_world_origin,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_reference_frame: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_reference_frame").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3229777777)!
        }
        }
    }()
    public func referenceFrame() -> Godot.Transform3D {
        var __temporary = Godot.Transform3D()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_reference_frame,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_center_on_hmd: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "center_on_hmd").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1450904707)!
        }
        }
    }()
    public func centerOnHmd(rotationMode: Godot.XRServer.RotationMode, keepHeight: Bool) {
        withUnsafePointer(to: rotationMode) { (__ptr_rotationMode) in
            withUnsafePointer(to: keepHeight) { (__ptr_keepHeight) in
                withUnsafeArgumentPackPointer(__ptr_rotationMode, __ptr_keepHeight) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_center_on_hmd,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_hmd_transform: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_hmd_transform").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4183770049)!
        }
        }
    }()
    public func hmdTransform() -> Godot.Transform3D {
        var __temporary = Godot.Transform3D()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_hmd_transform,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_add_interface: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_interface").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1898711491)!
        }
        }
    }()
    public func addInterface(_ interface: Godot.XRInterface?) {
        interface.withUnsafeRawPointer { (__ptr_interface) in
            withUnsafePointer(to: __ptr_interface) { (_ptr___ptr_interface) in
                withUnsafeArgumentPackPointer(_ptr___ptr_interface) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_add_interface,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_interface_count: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_interface_count").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func interfaceCount() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_interface_count,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_remove_interface: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "remove_interface").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1898711491)!
        }
        }
    }()
    public func removeInterface(_ interface: Godot.XRInterface?) {
        interface.withUnsafeRawPointer { (__ptr_interface) in
            withUnsafePointer(to: __ptr_interface) { (_ptr___ptr_interface) in
                withUnsafeArgumentPackPointer(_ptr___ptr_interface) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_remove_interface,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_interface: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_interface").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4237347919)!
        }
        }
    }()
    public func interface(idx: Int32) -> Godot.XRInterface? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafePointer(to: idx) { (__ptr_idx) in
            withUnsafeArgumentPackPointer(__ptr_idx) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_interface,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.XRInterface.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_get_interfaces: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_interfaces").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()
    public func interfaces() -> Godot.GodotTypedArray<Godot.GodotDictionary> {
        let __temporary = Godot.GodotTypedArray<Godot.GodotDictionary>()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_interfaces,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_find_interface: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "find_interface").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1395192955)!
        }
        }
    }()
    public func findInterface(name: Godot.GodotString) -> Godot.XRInterface? {
        var __temporary: GDExtensionObjectPtr!
        name.withUnsafeRawPointer { (__ptr_name) in
            withUnsafeArgumentPackPointer(__ptr_name) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_find_interface,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.XRInterface.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_add_tracker: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_tracker").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2692800323)!
        }
        }
    }()
    public func addTracker(_ tracker: Godot.XRPositionalTracker?) {
        tracker.withUnsafeRawPointer { (__ptr_tracker) in
            withUnsafePointer(to: __ptr_tracker) { (_ptr___ptr_tracker) in
                withUnsafeArgumentPackPointer(_ptr___ptr_tracker) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_add_tracker,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_remove_tracker: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "remove_tracker").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2692800323)!
        }
        }
    }()
    public func removeTracker(_ tracker: Godot.XRPositionalTracker?) {
        tracker.withUnsafeRawPointer { (__ptr_tracker) in
            withUnsafePointer(to: __ptr_tracker) { (_ptr___ptr_tracker) in
                withUnsafeArgumentPackPointer(_ptr___ptr_tracker) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_remove_tracker,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_trackers: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_trackers").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3554694381)!
        }
        }
    }()
    public func trackers(trackerTypes: Int32) -> Godot.GodotDictionary {
        let __temporary = Godot.GodotDictionary()
        withUnsafePointer(to: trackerTypes) { (__ptr_trackerTypes) in
            withUnsafeArgumentPackPointer(__ptr_trackerTypes) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_trackers,
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

    private static var __method_binding_get_tracker: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_tracker").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2742084544)!
        }
        }
    }()
    public func tracker(trackerName: Godot.GodotStringName) -> Godot.XRPositionalTracker? {
        var __temporary: GDExtensionObjectPtr!
        trackerName.withUnsafeRawPointer { (__ptr_trackerName) in
            withUnsafeArgumentPackPointer(__ptr_trackerName) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_tracker,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.XRPositionalTracker.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_get_primary_interface: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_primary_interface").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2143545064)!
        }
        }
    }()
    private func __getPrimaryInterface() -> Godot.XRInterface? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_primary_interface,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.XRInterface.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_set_primary_interface: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_primary_interface").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1898711491)!
        }
        }
    }()
    private func __setPrimaryInterface(_ interface: Godot.XRInterface?) {
        interface.withUnsafeRawPointer { (__ptr_interface) in
            withUnsafePointer(to: __ptr_interface) { (_ptr___ptr_interface) in
                withUnsafeArgumentPackPointer(_ptr___ptr_interface) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_primary_interface,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    public var worldScale: Double {
        get {
            __getWorldScale()
        }
        set {
            __setWorldScale(
                newValue
            )
        }
    }

    public var worldOrigin: Godot.Transform3D {
        get {
            __getWorldOrigin()
        }
        set {
            __setWorldOrigin(
                newValue
            )
        }
    }

    public var primaryInterface: Godot.XRInterface? {
        get {
            __getPrimaryInterface()
        }
        set {
            __setPrimaryInterface(
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