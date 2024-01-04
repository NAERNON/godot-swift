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

    public struct InterfaceAddedSignalInput: Godot.SignalInput {
        public let interfaceName: Godot.GodotStringName
        fileprivate init(interfaceName: Godot.GodotStringName) {
            self.interfaceName = interfaceName
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.interfaceName)]
        }
    }
    public func interfaceAdded(interfaceName: Godot.GodotStringName) {
        _ = interfaceAddedSignal.emit(.init(interfaceName: interfaceName))
    }
    public lazy var interfaceAddedSignal: Godot.SignalEmitter<InterfaceAddedSignalInput> = {
        .init(object: self, signalName: "interface_added") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<InterfaceAddedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(interfaceName: Godot.GodotStringName.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<InterfaceAddedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<InterfaceAddedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct InterfaceRemovedSignalInput: Godot.SignalInput {
        public let interfaceName: Godot.GodotStringName
        fileprivate init(interfaceName: Godot.GodotStringName) {
            self.interfaceName = interfaceName
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.interfaceName)]
        }
    }
    public func interfaceRemoved(interfaceName: Godot.GodotStringName) {
        _ = interfaceRemovedSignal.emit(.init(interfaceName: interfaceName))
    }
    public lazy var interfaceRemovedSignal: Godot.SignalEmitter<InterfaceRemovedSignalInput> = {
        .init(object: self, signalName: "interface_removed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<InterfaceRemovedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(interfaceName: Godot.GodotStringName.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<InterfaceRemovedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<InterfaceRemovedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct TrackerAddedSignalInput: Godot.SignalInput {
        public let trackerName: Godot.GodotStringName
        public let type: Int
        fileprivate init(trackerName: Godot.GodotStringName, type: Int) {
            self.trackerName = trackerName
            self.type = type
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.trackerName), Variant(input.type)]
        }
    }
    public func trackerAdded(trackerName: Godot.GodotStringName, type: Int) {
        _ = trackerAddedSignal.emit(.init(trackerName: trackerName,
                type: type))
    }
    public lazy var trackerAddedSignal: Godot.SignalEmitter<TrackerAddedSignalInput> = {
        .init(object: self, signalName: "tracker_added") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<TrackerAddedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(trackerName: Godot.GodotStringName.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!)),
                    type: Int.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 1).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<TrackerAddedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<TrackerAddedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct TrackerUpdatedSignalInput: Godot.SignalInput {
        public let trackerName: Godot.GodotStringName
        public let type: Int
        fileprivate init(trackerName: Godot.GodotStringName, type: Int) {
            self.trackerName = trackerName
            self.type = type
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.trackerName), Variant(input.type)]
        }
    }
    public func trackerUpdated(trackerName: Godot.GodotStringName, type: Int) {
        _ = trackerUpdatedSignal.emit(.init(trackerName: trackerName,
                type: type))
    }
    public lazy var trackerUpdatedSignal: Godot.SignalEmitter<TrackerUpdatedSignalInput> = {
        .init(object: self, signalName: "tracker_updated") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<TrackerUpdatedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(trackerName: Godot.GodotStringName.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!)),
                    type: Int.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 1).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<TrackerUpdatedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<TrackerUpdatedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct TrackerRemovedSignalInput: Godot.SignalInput {
        public let trackerName: Godot.GodotStringName
        public let type: Int
        fileprivate init(trackerName: Godot.GodotStringName, type: Int) {
            self.trackerName = trackerName
            self.type = type
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.trackerName), Variant(input.type)]
        }
    }
    public func trackerRemoved(trackerName: Godot.GodotStringName, type: Int) {
        _ = trackerRemovedSignal.emit(.init(trackerName: trackerName,
                type: type))
    }
    public lazy var trackerRemovedSignal: Godot.SignalEmitter<TrackerRemovedSignalInput> = {
        .init(object: self, signalName: "tracker_removed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<TrackerRemovedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(trackerName: Godot.GodotStringName.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!)),
                    type: Int.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 1).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<TrackerRemovedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<TrackerRemovedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    internal static var __method_binding_get_world_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_world_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getWorldScale() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_world_scale,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_world_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_world_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setWorldScale(_ scale: Double) {
        scale.withGodotUnsafeRawPointer { __ptr_scale in
        withUnsafeArgumentPackPointer(__ptr_scale) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_world_scale,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_world_origin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_world_origin").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3229777777)!
        }
        }
    }()
    private func __getWorldOrigin() -> Godot.Transform3D {
        Godot.Transform3D.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_world_origin,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_world_origin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_world_origin").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2952846383)!
        }
        }
    }()
    private func __setWorldOrigin(_ worldOrigin: Godot.Transform3D) {
        worldOrigin.withGodotUnsafeRawPointer { __ptr_worldOrigin in
        withUnsafeArgumentPackPointer(__ptr_worldOrigin) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_world_origin,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_reference_frame: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_reference_frame").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3229777777)!
        }
        }
    }()
    public func referenceFrame() -> Godot.Transform3D {
        Godot.Transform3D.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_reference_frame,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_center_on_hmd: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "center_on_hmd").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1450904707)!
        }
        }
    }()
    public func centerOnHmd(rotationMode: Godot.XRServer.RotationMode, keepHeight: Bool) {
        rotationMode.withGodotUnsafeRawPointer { __ptr_rotationMode in
        keepHeight.withGodotUnsafeRawPointer { __ptr_keepHeight in
        withUnsafeArgumentPackPointer(__ptr_rotationMode, __ptr_keepHeight) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_center_on_hmd,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_hmd_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_hmd_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4183770049)!
        }
        }
    }()
    public func hmdTransform() -> Godot.Transform3D {
        Godot.Transform3D.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_hmd_transform,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_add_interface: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_interface").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1898711491)!
        }
        }
    }()
    public func addInterface(_ interface: Godot.XRInterface?) {
        interface.withGodotUnsafeRawPointer { __ptr_interface in
        withUnsafePointer(to: __ptr_interface) { _ptr___ptr_interface in
        withUnsafeArgumentPackPointer(_ptr___ptr_interface) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_interface,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_interface_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_interface_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func interfaceCount() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_interface_count,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_remove_interface: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_interface").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1898711491)!
        }
        }
    }()
    public func removeInterface(_ interface: Godot.XRInterface?) {
        interface.withGodotUnsafeRawPointer { __ptr_interface in
        withUnsafePointer(to: __ptr_interface) { _ptr___ptr_interface in
        withUnsafeArgumentPackPointer(_ptr___ptr_interface) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_interface,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_interface: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_interface").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4237347919)!
        }
        }
    }()
    public func interface(idx: Int32) -> Godot.XRInterface? {
        Godot.XRInterface?.fromMutatingGodotUnsafePointer { __temporary in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        withUnsafeArgumentPackPointer(__ptr_idx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_interface,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_interfaces: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_interfaces").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()
    public func interfaces() -> Godot.GodotArray<Godot.AnyGodotDictionary> {
        Godot.GodotArray<Godot.AnyGodotDictionary>.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_interfaces,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_find_interface: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "find_interface").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1395192955)!
        }
        }
    }()
    public func findInterface(name: Godot.GodotString) -> Godot.XRInterface? {
        Godot.XRInterface?.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_find_interface,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_add_tracker: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_tracker").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2692800323)!
        }
        }
    }()
    public func addTracker(_ tracker: Godot.XRPositionalTracker?) {
        tracker.withGodotUnsafeRawPointer { __ptr_tracker in
        withUnsafePointer(to: __ptr_tracker) { _ptr___ptr_tracker in
        withUnsafeArgumentPackPointer(_ptr___ptr_tracker) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_tracker,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_remove_tracker: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_tracker").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2692800323)!
        }
        }
    }()
    public func removeTracker(_ tracker: Godot.XRPositionalTracker?) {
        tracker.withGodotUnsafeRawPointer { __ptr_tracker in
        withUnsafePointer(to: __ptr_tracker) { _ptr___ptr_tracker in
        withUnsafeArgumentPackPointer(_ptr___ptr_tracker) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_tracker,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_trackers: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_trackers").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3554694381)!
        }
        }
    }()
    public func trackers(trackerTypes: Int32) -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary.fromMutatingGodotUnsafePointer { __temporary in
        trackerTypes.withGodotUnsafeRawPointer { __ptr_trackerTypes in
        withUnsafeArgumentPackPointer(__ptr_trackerTypes) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_trackers,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_tracker: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tracker").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2742084544)!
        }
        }
    }()
    public func tracker(trackerName: Godot.GodotStringName) -> Godot.XRPositionalTracker? {
        Godot.XRPositionalTracker?.fromMutatingGodotUnsafePointer { __temporary in
        trackerName.withGodotUnsafeRawPointer { __ptr_trackerName in
        withUnsafeArgumentPackPointer(__ptr_trackerName) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_tracker,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_primary_interface: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_primary_interface").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2143545064)!
        }
        }
    }()
    private func __getPrimaryInterface() -> Godot.XRInterface? {
        Godot.XRInterface?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_primary_interface,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_primary_interface: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_primary_interface").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1898711491)!
        }
        }
    }()
    private func __setPrimaryInterface(_ interface: Godot.XRInterface?) {
        interface.withGodotUnsafeRawPointer { __ptr_interface in
        withUnsafePointer(to: __ptr_interface) { _ptr___ptr_interface in
        withUnsafeArgumentPackPointer(_ptr___ptr_interface) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
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