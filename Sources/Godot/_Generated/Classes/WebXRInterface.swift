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

    public struct SessionSupportedSignalInput: Godot.SignalInput {
        public let sessionMode: Godot.GodotString

        public let supported: Bool

        fileprivate init(
            sessionMode: Godot.GodotString,
            supported: Bool
        ) {
            self.sessionMode = sessionMode
            self.supported = supported
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.sessionMode), Variant(input.supported)]
        }
    }

    public func sessionSupported(
        sessionMode: Godot.GodotString,
        supported: Bool
    ) {
        _ = sessionSupportedSignal.emit(.init(sessionMode: sessionMode,
                supported: supported))
    }

    public lazy var sessionSupportedSignal: Godot.SignalEmitter<SessionSupportedSignalInput> = {
        .init(object: self, signalName: "session_supported") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<SessionSupportedSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(sessionMode: Godot.GodotString.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!),
                    supported: Bool.convertFromStorage(unsafePointer: args!.advanced(by: 1).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<SessionSupportedSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<SessionSupportedSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func sessionStarted() {
        _ = sessionStartedSignal.emit()
    }

    public lazy var sessionStartedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "session_started") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func sessionEnded() {
        _ = sessionEndedSignal.emit()
    }

    public lazy var sessionEndedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "session_ended") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct SessionFailedSignalInput: Godot.SignalInput {
        public let message: Godot.GodotString

        fileprivate init(
            message: Godot.GodotString
        ) {
            self.message = message
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.message)]
        }
    }

    public func sessionFailed(
        message: Godot.GodotString
    ) {
        _ = sessionFailedSignal.emit(.init(message: message))
    }

    public lazy var sessionFailedSignal: Godot.SignalEmitter<SessionFailedSignalInput> = {
        .init(object: self, signalName: "session_failed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<SessionFailedSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(message: Godot.GodotString.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<SessionFailedSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<SessionFailedSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct SelectstartSignalInput: Godot.SignalInput {
        public let inputSourceID: Int

        fileprivate init(
            inputSourceID: Int
        ) {
            self.inputSourceID = inputSourceID
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.inputSourceID)]
        }
    }

    public func selectstart(
        inputSourceID: Int
    ) {
        _ = selectstartSignal.emit(.init(inputSourceID: inputSourceID))
    }

    public lazy var selectstartSignal: Godot.SignalEmitter<SelectstartSignalInput> = {
        .init(object: self, signalName: "selectstart") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<SelectstartSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(inputSourceID: Int.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<SelectstartSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<SelectstartSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct SelectSignalInput: Godot.SignalInput {
        public let inputSourceID: Int

        fileprivate init(
            inputSourceID: Int
        ) {
            self.inputSourceID = inputSourceID
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.inputSourceID)]
        }
    }

    public func select(
        inputSourceID: Int
    ) {
        _ = selectSignal.emit(.init(inputSourceID: inputSourceID))
    }

    public lazy var selectSignal: Godot.SignalEmitter<SelectSignalInput> = {
        .init(object: self, signalName: "select") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<SelectSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(inputSourceID: Int.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<SelectSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<SelectSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct SelectendSignalInput: Godot.SignalInput {
        public let inputSourceID: Int

        fileprivate init(
            inputSourceID: Int
        ) {
            self.inputSourceID = inputSourceID
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.inputSourceID)]
        }
    }

    public func selectend(
        inputSourceID: Int
    ) {
        _ = selectendSignal.emit(.init(inputSourceID: inputSourceID))
    }

    public lazy var selectendSignal: Godot.SignalEmitter<SelectendSignalInput> = {
        .init(object: self, signalName: "selectend") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<SelectendSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(inputSourceID: Int.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<SelectendSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<SelectendSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct SqueezestartSignalInput: Godot.SignalInput {
        public let inputSourceID: Int

        fileprivate init(
            inputSourceID: Int
        ) {
            self.inputSourceID = inputSourceID
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.inputSourceID)]
        }
    }

    public func squeezestart(
        inputSourceID: Int
    ) {
        _ = squeezestartSignal.emit(.init(inputSourceID: inputSourceID))
    }

    public lazy var squeezestartSignal: Godot.SignalEmitter<SqueezestartSignalInput> = {
        .init(object: self, signalName: "squeezestart") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<SqueezestartSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(inputSourceID: Int.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<SqueezestartSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<SqueezestartSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct SqueezeSignalInput: Godot.SignalInput {
        public let inputSourceID: Int

        fileprivate init(
            inputSourceID: Int
        ) {
            self.inputSourceID = inputSourceID
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.inputSourceID)]
        }
    }

    public func squeeze(
        inputSourceID: Int
    ) {
        _ = squeezeSignal.emit(.init(inputSourceID: inputSourceID))
    }

    public lazy var squeezeSignal: Godot.SignalEmitter<SqueezeSignalInput> = {
        .init(object: self, signalName: "squeeze") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<SqueezeSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(inputSourceID: Int.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<SqueezeSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<SqueezeSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct SqueezeendSignalInput: Godot.SignalInput {
        public let inputSourceID: Int

        fileprivate init(
            inputSourceID: Int
        ) {
            self.inputSourceID = inputSourceID
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.inputSourceID)]
        }
    }

    public func squeezeend(
        inputSourceID: Int
    ) {
        _ = squeezeendSignal.emit(.init(inputSourceID: inputSourceID))
    }

    public lazy var squeezeendSignal: Godot.SignalEmitter<SqueezeendSignalInput> = {
        .init(object: self, signalName: "squeezeend") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<SqueezeendSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(inputSourceID: Int.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<SqueezeendSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<SqueezeendSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func visibilityStateChanged() {
        _ = visibilityStateChangedSignal.emit()
    }

    public lazy var visibilityStateChangedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "visibility_state_changed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func referenceSpaceReset() {
        _ = referenceSpaceResetSignal.emit()
    }

    public lazy var referenceSpaceResetSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "reference_space_reset") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func displayRefreshRateChanged() {
        _ = displayRefreshRateChangedSignal.emit()
    }

    public lazy var displayRefreshRateChangedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "display_refresh_rate_changed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    internal static var __method_binding_is_session_supported: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_session_supported").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()

    public func isSessionSupported(
        sessionMode: Godot.GodotString
    ) {
        withTransferrableUnsafeRawPointer(to: sessionMode) { __ptr_sessionMode in
            withUnsafeArgumentPackPointer(__ptr_sessionMode) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_is_session_supported,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_set_session_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_session_mode").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()

    private func __setSessionMode(
        _ sessionMode: Godot.GodotString
    ) {
        withTransferrableUnsafeRawPointer(to: sessionMode) { __ptr_sessionMode in
            withUnsafeArgumentPackPointer(__ptr_sessionMode) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_session_mode,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_session_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_session_mode").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()

    private func __getSessionMode() -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_session_mode,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_required_features: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_required_features").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()

    private func __setRequiredFeatures(
        _ requiredFeatures: Godot.GodotString
    ) {
        withTransferrableUnsafeRawPointer(to: requiredFeatures) { __ptr_requiredFeatures in
            withUnsafeArgumentPackPointer(__ptr_requiredFeatures) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_required_features,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_required_features: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_required_features").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()

    private func __getRequiredFeatures() -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_required_features,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_optional_features: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_optional_features").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()

    private func __setOptionalFeatures(
        _ optionalFeatures: Godot.GodotString
    ) {
        withTransferrableUnsafeRawPointer(to: optionalFeatures) { __ptr_optionalFeatures in
            withUnsafeArgumentPackPointer(__ptr_optionalFeatures) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_optional_features,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_optional_features: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_optional_features").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()

    private func __getOptionalFeatures() -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_optional_features,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_reference_space_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_reference_space_type").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()

    private func __getReferenceSpaceType() -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_reference_space_type,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_requested_reference_space_types: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_requested_reference_space_types").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()

    private func __setRequestedReferenceSpaceTypes(
        _ requestedReferenceSpaceTypes: Godot.GodotString
    ) {
        withTransferrableUnsafeRawPointer(to: requestedReferenceSpaceTypes) { __ptr_requestedReferenceSpaceTypes in
            withUnsafeArgumentPackPointer(__ptr_requestedReferenceSpaceTypes) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_requested_reference_space_types,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_requested_reference_space_types: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_requested_reference_space_types").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()

    private func __getRequestedReferenceSpaceTypes() -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_requested_reference_space_types,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_is_input_source_active: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_input_source_active").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()

    public func isInputSourceActive(
        inputSourceID: Int32
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: inputSourceID) { __ptr_inputSourceID in
                withUnsafeArgumentPackPointer(__ptr_inputSourceID) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_is_input_source_active,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_input_source_tracker: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_input_source_tracker").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 636011756)!
        }
        }
    }()

    public func inputSourceTracker(
        inputSourceID: Int32
    ) -> Godot.XRPositionalTracker? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: inputSourceID) { __ptr_inputSourceID in
                withUnsafeArgumentPackPointer(__ptr_inputSourceID) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_input_source_tracker,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_input_source_target_ray_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_input_source_target_ray_mode").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2852387453)!
        }
        }
    }()

    public func inputSourceTargetRayMode(
        inputSourceID: Int32
    ) -> Godot.WebXRInterface.TargetRayMode {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: inputSourceID) { __ptr_inputSourceID in
                withUnsafeArgumentPackPointer(__ptr_inputSourceID) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_input_source_target_ray_mode,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_visibility_state: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_visibility_state").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()

    private func __getVisibilityState() -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_visibility_state,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_display_refresh_rate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_display_refresh_rate").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    public func displayRefreshRate() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_display_refresh_rate,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_display_refresh_rate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_display_refresh_rate").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    public func setDisplayRefreshRate(
        _ refreshRate: Double
    ) {
        withTransferrableUnsafeRawPointer(to: refreshRate) { __ptr_refreshRate in
            withUnsafeArgumentPackPointer(__ptr_refreshRate) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_display_refresh_rate,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_available_display_refresh_rates: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_available_display_refresh_rates").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()

    public func availableDisplayRefreshRates() -> Godot.AnyGodotArray {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_available_display_refresh_rates,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
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