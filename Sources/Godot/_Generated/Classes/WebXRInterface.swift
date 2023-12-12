//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class WebXRInterface: XRInterface {
    public enum TargetRayMode: UInt32, GodotEnum {
        case unknown = 0
        case gaze = 1
        case trackedPointer = 2
        case screen = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Unknown", 0),
            ("Gaze", 1),
            ("Tracked Pointer", 2),
            ("Screen", 3),]
        }
    }

    @Emitter(signal: "session_supported", args: ("sessionMode", Godot.GodotString), ("supported", Bool))
    public struct SessionSupported {
    }

    @Emitter(signal: "session_started")
    public struct SessionStarted {
    }

    @Emitter(signal: "session_ended")
    public struct SessionEnded {
    }

    @Emitter(signal: "session_failed", args: ("message", Godot.GodotString))
    public struct SessionFailed {
    }

    @Emitter(signal: "selectstart", args: ("inputSourceId", Int))
    public struct Selectstart {
    }

    @Emitter(signal: "select", args: ("inputSourceId", Int))
    public struct Select {
    }

    @Emitter(signal: "selectend", args: ("inputSourceId", Int))
    public struct Selectend {
    }

    @Emitter(signal: "squeezestart", args: ("inputSourceId", Int))
    public struct Squeezestart {
    }

    @Emitter(signal: "squeeze", args: ("inputSourceId", Int))
    public struct Squeeze {
    }

    @Emitter(signal: "squeezeend", args: ("inputSourceId", Int))
    public struct Squeezeend {
    }

    @Emitter(signal: "visibility_state_changed")
    public struct VisibilityStateChanged {
    }

    @Emitter(signal: "reference_space_reset")
    public struct ReferenceSpaceReset {
    }

    @Emitter(signal: "display_refresh_rate_changed")
    public struct DisplayRefreshRateChanged {
    }

    private static var __method_binding_is_session_supported: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_session_supported").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func isSessionSupported(sessionMode: Godot.GodotString) {
        sessionMode.withGodotUnsafeRawPointer { __ptr_sessionMode in
        withUnsafeArgumentPackPointer(__ptr_sessionMode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_session_supported,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_session_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_session_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    private func __setSessionMode(_ sessionMode: Godot.GodotString) {
        sessionMode.withGodotUnsafeRawPointer { __ptr_sessionMode in
        withUnsafeArgumentPackPointer(__ptr_sessionMode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_session_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_session_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_session_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    private func __getSessionMode() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_session_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_required_features: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_required_features").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    private func __setRequiredFeatures(_ requiredFeatures: Godot.GodotString) {
        requiredFeatures.withGodotUnsafeRawPointer { __ptr_requiredFeatures in
        withUnsafeArgumentPackPointer(__ptr_requiredFeatures) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_required_features,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_required_features: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_required_features").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    private func __getRequiredFeatures() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_required_features,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_optional_features: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_optional_features").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    private func __setOptionalFeatures(_ optionalFeatures: Godot.GodotString) {
        optionalFeatures.withGodotUnsafeRawPointer { __ptr_optionalFeatures in
        withUnsafeArgumentPackPointer(__ptr_optionalFeatures) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_optional_features,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_optional_features: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_optional_features").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    private func __getOptionalFeatures() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_optional_features,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_reference_space_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_reference_space_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    private func __getReferenceSpaceType() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_reference_space_type,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_requested_reference_space_types: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_requested_reference_space_types").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    private func __setRequestedReferenceSpaceTypes(_ requestedReferenceSpaceTypes: Godot.GodotString) {
        requestedReferenceSpaceTypes.withGodotUnsafeRawPointer { __ptr_requestedReferenceSpaceTypes in
        withUnsafeArgumentPackPointer(__ptr_requestedReferenceSpaceTypes) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_requested_reference_space_types,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_requested_reference_space_types: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_requested_reference_space_types").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    private func __getRequestedReferenceSpaceTypes() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_requested_reference_space_types,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_is_input_source_active: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_input_source_active").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func isInputSourceActive(inputSourceId: Int32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        inputSourceId.withGodotUnsafeRawPointer { __ptr_inputSourceId in
        withUnsafeArgumentPackPointer(__ptr_inputSourceId) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_input_source_active,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_input_source_tracker: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_input_source_tracker").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 636011756)!
        }
        }
    }()
    public func inputSourceTracker(inputSourceId: Int32) -> Godot.XRPositionalTracker? {
        Godot.XRPositionalTracker?.fromMutatingGodotUnsafePointer { __temporary in
        inputSourceId.withGodotUnsafeRawPointer { __ptr_inputSourceId in
        withUnsafeArgumentPackPointer(__ptr_inputSourceId) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_input_source_tracker,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_input_source_target_ray_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_input_source_target_ray_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2852387453)!
        }
        }
    }()
    public func inputSourceTargetRayMode(inputSourceId: Int32) -> Godot.WebXRInterface.TargetRayMode {
        Godot.WebXRInterface.TargetRayMode.fromMutatingGodotUnsafePointer { __temporary in
        inputSourceId.withGodotUnsafeRawPointer { __ptr_inputSourceId in
        withUnsafeArgumentPackPointer(__ptr_inputSourceId) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_input_source_target_ray_mode,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_visibility_state: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_visibility_state").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    private func __getVisibilityState() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_visibility_state,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_display_refresh_rate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_display_refresh_rate").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    public func displayRefreshRate() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_display_refresh_rate,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_display_refresh_rate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_display_refresh_rate").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    public func setDisplayRefreshRate(_ refreshRate: Double) {
        refreshRate.withGodotUnsafeRawPointer { __ptr_refreshRate in
        withUnsafeArgumentPackPointer(__ptr_refreshRate) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_display_refresh_rate,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_available_display_refresh_rates: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_available_display_refresh_rates").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()
    public func availableDisplayRefreshRates() -> Godot.AnyGodotArray {
        Godot.AnyGodotArray.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_available_display_refresh_rates,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var sessionMode: Godot.GodotString {
        get {
            __getSessionMode()
        }
        set {
            __setSessionMode(
                newValue
            )
        }
    }

    public var requiredFeatures: Godot.GodotString {
        get {
            __getRequiredFeatures()
        }
        set {
            __setRequiredFeatures(
                newValue
            )
        }
    }

    public var optionalFeatures: Godot.GodotString {
        get {
            __getOptionalFeatures()
        }
        set {
            __setOptionalFeatures(
                newValue
            )
        }
    }

    public var requestedReferenceSpaceTypes: Godot.GodotString {
        get {
            __getRequestedReferenceSpaceTypes()
        }
        set {
            __setRequestedReferenceSpaceTypes(
                newValue
            )
        }
    }

    public var referenceSpaceType: Godot.GodotString {
        get {
            __getReferenceSpaceType()
        }
    }

    public var visibilityState: Godot.GodotString {
        get {
            __getVisibilityState()
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