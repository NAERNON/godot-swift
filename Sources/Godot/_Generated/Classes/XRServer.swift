//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class XRServer: Object {
    public enum TrackerType: UInt32, GodotEnum {
        case head = 1
        case controller = 2
        case basestation = 4
        case anchor = 8
        case anyKnown = 127
        case unknown = 128
        case any = 255
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Head", 1),
            ("Controller", 2),
            ("Basestation", 4),
            ("Anchor", 8),
            ("Any Known", 127),
            ("Unknown", 128),
            ("Any", 255),]
        }
    }
    public enum RotationMode: UInt32, GodotEnum {
        case resetFullRotation = 0
        case resetButKeepTilt = 1
        case dontResetRotation = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Reset Full Rotation", 0),
            ("Reset But Keep Tilt", 1),
            ("Dont Reset Rotation", 2),]
        }
    }

    public func interfaceAdded(interfaceName: Godot.GodotStringName) {
        interfaceAddedConnector.emit(interfaceName)
    }

    public private (set) lazy var interfaceAddedConnector: Godot.SignalConnector<Godot.GodotStringName> = {
        .init(self, "interface_added")
    }()

    public func interfaceRemoved(interfaceName: Godot.GodotStringName) {
        interfaceRemovedConnector.emit(interfaceName)
    }

    public private (set) lazy var interfaceRemovedConnector: Godot.SignalConnector<Godot.GodotStringName> = {
        .init(self, "interface_removed")
    }()

    public func trackerAdded(trackerName: Godot.GodotStringName, type: Int) {
        trackerAddedConnector.emit(trackerName, type)
    }

    public private (set) lazy var trackerAddedConnector: Godot.SignalConnector<Godot.GodotStringName, Int> = {
        .init(self, "tracker_added")
    }()

    public func trackerUpdated(trackerName: Godot.GodotStringName, type: Int) {
        trackerUpdatedConnector.emit(trackerName, type)
    }

    public private (set) lazy var trackerUpdatedConnector: Godot.SignalConnector<Godot.GodotStringName, Int> = {
        .init(self, "tracker_updated")
    }()

    public func trackerRemoved(trackerName: Godot.GodotStringName, type: Int) {
        trackerRemovedConnector.emit(trackerName, type)
    }

    public private (set) lazy var trackerRemovedConnector: Godot.SignalConnector<Godot.GodotStringName, Int> = {
        .init(self, "tracker_removed")
    }()

    private static var __method_binding_get_world_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_world_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getWorldScale() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_world_scale,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_world_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_world_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setWorldScale(_ scale: Double) {
        scale.withGodotUnsafeRawPointer { __ptr_scale in
        withUnsafeArgumentPackPointer(__ptr_scale) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_world_scale,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_world_origin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_world_origin").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3229777777)!
        }
        }
    }()
    private func __getWorldOrigin() -> Godot.Transform3D {
        Godot.Transform3D.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_world_origin,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_world_origin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_world_origin").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2952846383)!
        }
        }
    }()
    private func __setWorldOrigin(_ worldOrigin: Godot.Transform3D) {
        worldOrigin.withGodotUnsafeRawPointer { __ptr_worldOrigin in
        withUnsafeArgumentPackPointer(__ptr_worldOrigin) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_world_origin,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_reference_frame: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_reference_frame").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3229777777)!
        }
        }
    }()
    public func referenceFrame() -> Godot.Transform3D {
        Godot.Transform3D.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_reference_frame,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_center_on_hmd: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "center_on_hmd").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1450904707)!
        }
        }
    }()
    public func centerOnHmd(rotationMode: Godot.XRServer.RotationMode, keepHeight: Bool) {
        rotationMode.withGodotUnsafeRawPointer { __ptr_rotationMode in
        keepHeight.withGodotUnsafeRawPointer { __ptr_keepHeight in
        withUnsafeArgumentPackPointer(__ptr_rotationMode, __ptr_keepHeight) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_center_on_hmd,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_hmd_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_hmd_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4183770049)!
        }
        }
    }()
    public func hmdTransform() -> Godot.Transform3D {
        Godot.Transform3D.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_hmd_transform,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_add_interface: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_interface").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1898711491)!
        }
        }
    }()
    public func addInterface(_ interface: Godot.XRInterface?) {
        interface.withGodotUnsafeRawPointer { __ptr_interface in
        withUnsafePointer(to: __ptr_interface) { _ptr___ptr_interface in
        withUnsafeArgumentPackPointer(_ptr___ptr_interface) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_interface,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_interface_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_interface_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func interfaceCount() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_interface_count,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_remove_interface: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_interface").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1898711491)!
        }
        }
    }()
    public func removeInterface(_ interface: Godot.XRInterface?) {
        interface.withGodotUnsafeRawPointer { __ptr_interface in
        withUnsafePointer(to: __ptr_interface) { _ptr___ptr_interface in
        withUnsafeArgumentPackPointer(_ptr___ptr_interface) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_remove_interface,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_interface: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_interface").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4237347919)!
        }
        }
    }()
    public func interface(idx: Int32) -> Godot.XRInterface? {
        Godot.XRInterface?.fromMutatingGodotUnsafePointer { __temporary in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        withUnsafeArgumentPackPointer(__ptr_idx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_interface,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_interfaces: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_interfaces").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()
    public func interfaces() -> Godot.GodotArray<Godot.AnyGodotDictionary> {
        Godot.GodotArray<Godot.AnyGodotDictionary>.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_interfaces,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_find_interface: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "find_interface").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1395192955)!
        }
        }
    }()
    public func findInterface(name: Godot.GodotString) -> Godot.XRInterface? {
        Godot.XRInterface?.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_find_interface,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_add_tracker: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_tracker").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2692800323)!
        }
        }
    }()
    public func addTracker(_ tracker: Godot.XRPositionalTracker?) {
        tracker.withGodotUnsafeRawPointer { __ptr_tracker in
        withUnsafePointer(to: __ptr_tracker) { _ptr___ptr_tracker in
        withUnsafeArgumentPackPointer(_ptr___ptr_tracker) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_tracker,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_remove_tracker: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_tracker").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2692800323)!
        }
        }
    }()
    public func removeTracker(_ tracker: Godot.XRPositionalTracker?) {
        tracker.withGodotUnsafeRawPointer { __ptr_tracker in
        withUnsafePointer(to: __ptr_tracker) { _ptr___ptr_tracker in
        withUnsafeArgumentPackPointer(_ptr___ptr_tracker) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_remove_tracker,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_trackers: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_trackers").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3554694381)!
        }
        }
    }()
    public func trackers(trackerTypes: Int32) -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary.fromMutatingGodotUnsafePointer { __temporary in
        trackerTypes.withGodotUnsafeRawPointer { __ptr_trackerTypes in
        withUnsafeArgumentPackPointer(__ptr_trackerTypes) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_trackers,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_tracker: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tracker").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2742084544)!
        }
        }
    }()
    public func tracker(trackerName: Godot.GodotStringName) -> Godot.XRPositionalTracker? {
        Godot.XRPositionalTracker?.fromMutatingGodotUnsafePointer { __temporary in
        trackerName.withGodotUnsafeRawPointer { __ptr_trackerName in
        withUnsafeArgumentPackPointer(__ptr_trackerName) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_tracker,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_primary_interface: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_primary_interface").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2143545064)!
        }
        }
    }()
    private func __getPrimaryInterface() -> Godot.XRInterface? {
        Godot.XRInterface?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_primary_interface,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_primary_interface: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_primary_interface").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1898711491)!
        }
        }
    }()
    private func __setPrimaryInterface(_ interface: Godot.XRInterface?) {
        interface.withGodotUnsafeRawPointer { __ptr_interface in
        withUnsafePointer(to: __ptr_interface) { _ptr___ptr_interface in
        withUnsafeArgumentPackPointer(_ptr___ptr_interface) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_primary_interface,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
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