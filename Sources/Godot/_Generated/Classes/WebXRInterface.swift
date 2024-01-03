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
        public let session_mode: Godot.GodotString
        public let supported: Bool
        fileprivate init(session_mode: Godot.GodotString, supported: Bool) {
            self.session_mode = session_mode
            self.supported = supported
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, session_mode, supported)
        }
    }
    public func sessionSupported(session_mode: Godot.GodotString, supported: Bool) {
        _ = sessionSupportedSignal.emit(.init(session_mode: session_mode,
                supported: supported))
    }
    public lazy var sessionSupportedSignal: Godot.SignalEmitter<SessionSupportedSignalInput> = {
        .init(object: self, signalName: "session_supported") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<SessionSupportedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(session_mode: Godot.GodotString.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!)),
                    supported: Bool.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 1).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<SessionSupportedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<SessionSupportedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func sessionStarted() {
        _ = sessionStartedSignal.emit()
    }
    public lazy var sessionStartedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "session_started") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func sessionEnded() {
        _ = sessionEndedSignal.emit()
    }
    public lazy var sessionEndedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "session_ended") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct SessionFailedSignalInput: Godot.SignalInput {
        public let message: Godot.GodotString
        fileprivate init(message: Godot.GodotString) {
            self.message = message
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, message)
        }
    }
    public func sessionFailed(message: Godot.GodotString) {
        _ = sessionFailedSignal.emit(.init(message: message))
    }
    public lazy var sessionFailedSignal: Godot.SignalEmitter<SessionFailedSignalInput> = {
        .init(object: self, signalName: "session_failed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<SessionFailedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(message: Godot.GodotString.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<SessionFailedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<SessionFailedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct SelectstartSignalInput: Godot.SignalInput {
        public let input_source_id: Int
        fileprivate init(input_source_id: Int) {
            self.input_source_id = input_source_id
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, input_source_id)
        }
    }
    public func selectstart(input_source_id: Int) {
        _ = selectstartSignal.emit(.init(input_source_id: input_source_id))
    }
    public lazy var selectstartSignal: Godot.SignalEmitter<SelectstartSignalInput> = {
        .init(object: self, signalName: "selectstart") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<SelectstartSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(input_source_id: Int.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<SelectstartSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<SelectstartSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct SelectSignalInput: Godot.SignalInput {
        public let input_source_id: Int
        fileprivate init(input_source_id: Int) {
            self.input_source_id = input_source_id
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, input_source_id)
        }
    }
    public func select(input_source_id: Int) {
        _ = selectSignal.emit(.init(input_source_id: input_source_id))
    }
    public lazy var selectSignal: Godot.SignalEmitter<SelectSignalInput> = {
        .init(object: self, signalName: "select") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<SelectSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(input_source_id: Int.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<SelectSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<SelectSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct SelectendSignalInput: Godot.SignalInput {
        public let input_source_id: Int
        fileprivate init(input_source_id: Int) {
            self.input_source_id = input_source_id
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, input_source_id)
        }
    }
    public func selectend(input_source_id: Int) {
        _ = selectendSignal.emit(.init(input_source_id: input_source_id))
    }
    public lazy var selectendSignal: Godot.SignalEmitter<SelectendSignalInput> = {
        .init(object: self, signalName: "selectend") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<SelectendSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(input_source_id: Int.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<SelectendSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<SelectendSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct SqueezestartSignalInput: Godot.SignalInput {
        public let input_source_id: Int
        fileprivate init(input_source_id: Int) {
            self.input_source_id = input_source_id
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, input_source_id)
        }
    }
    public func squeezestart(input_source_id: Int) {
        _ = squeezestartSignal.emit(.init(input_source_id: input_source_id))
    }
    public lazy var squeezestartSignal: Godot.SignalEmitter<SqueezestartSignalInput> = {
        .init(object: self, signalName: "squeezestart") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<SqueezestartSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(input_source_id: Int.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<SqueezestartSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<SqueezestartSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct SqueezeSignalInput: Godot.SignalInput {
        public let input_source_id: Int
        fileprivate init(input_source_id: Int) {
            self.input_source_id = input_source_id
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, input_source_id)
        }
    }
    public func squeeze(input_source_id: Int) {
        _ = squeezeSignal.emit(.init(input_source_id: input_source_id))
    }
    public lazy var squeezeSignal: Godot.SignalEmitter<SqueezeSignalInput> = {
        .init(object: self, signalName: "squeeze") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<SqueezeSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(input_source_id: Int.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<SqueezeSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<SqueezeSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct SqueezeendSignalInput: Godot.SignalInput {
        public let input_source_id: Int
        fileprivate init(input_source_id: Int) {
            self.input_source_id = input_source_id
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, input_source_id)
        }
    }
    public func squeezeend(input_source_id: Int) {
        _ = squeezeendSignal.emit(.init(input_source_id: input_source_id))
    }
    public lazy var squeezeendSignal: Godot.SignalEmitter<SqueezeendSignalInput> = {
        .init(object: self, signalName: "squeezeend") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<SqueezeendSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(input_source_id: Int.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<SqueezeendSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<SqueezeendSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func visibilityStateChanged() {
        _ = visibilityStateChangedSignal.emit()
    }
    public lazy var visibilityStateChangedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "visibility_state_changed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func referenceSpaceReset() {
        _ = referenceSpaceResetSignal.emit()
    }
    public lazy var referenceSpaceResetSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "reference_space_reset") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func displayRefreshRateChanged() {
        _ = displayRefreshRateChangedSignal.emit()
    }
    public lazy var displayRefreshRateChangedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "display_refresh_rate_changed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    private static var __method_binding_is_session_supported: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_session_supported").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func isSessionSupported(sessionMode: Godot.GodotString) {
        sessionMode.withGodotUnsafeRawPointer { __ptr_sessionMode in
        withUnsafeArgumentPackPointer(__ptr_sessionMode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_session_supported,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_session_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_session_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    private func __setSessionMode(_ sessionMode: Godot.GodotString) {
        sessionMode.withGodotUnsafeRawPointer { __ptr_sessionMode in
        withUnsafeArgumentPackPointer(__ptr_sessionMode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_session_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_session_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_session_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    private func __getSessionMode() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_session_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_required_features: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_required_features").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    private func __setRequiredFeatures(_ requiredFeatures: Godot.GodotString) {
        requiredFeatures.withGodotUnsafeRawPointer { __ptr_requiredFeatures in
        withUnsafeArgumentPackPointer(__ptr_requiredFeatures) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_required_features,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_required_features: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_required_features").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    private func __getRequiredFeatures() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_required_features,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_optional_features: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_optional_features").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    private func __setOptionalFeatures(_ optionalFeatures: Godot.GodotString) {
        optionalFeatures.withGodotUnsafeRawPointer { __ptr_optionalFeatures in
        withUnsafeArgumentPackPointer(__ptr_optionalFeatures) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_optional_features,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_optional_features: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_optional_features").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    private func __getOptionalFeatures() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_optional_features,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_reference_space_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_reference_space_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    private func __getReferenceSpaceType() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_reference_space_type,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_requested_reference_space_types: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_requested_reference_space_types").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    private func __setRequestedReferenceSpaceTypes(_ requestedReferenceSpaceTypes: Godot.GodotString) {
        requestedReferenceSpaceTypes.withGodotUnsafeRawPointer { __ptr_requestedReferenceSpaceTypes in
        withUnsafeArgumentPackPointer(__ptr_requestedReferenceSpaceTypes) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_requested_reference_space_types,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_requested_reference_space_types: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_requested_reference_space_types").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    private func __getRequestedReferenceSpaceTypes() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_requested_reference_space_types,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_is_input_source_active: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_input_source_active").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func isInputSourceActive(inputSourceId: Int32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        inputSourceId.withGodotUnsafeRawPointer { __ptr_inputSourceId in
        withUnsafeArgumentPackPointer(__ptr_inputSourceId) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_input_source_active,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_input_source_tracker: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_input_source_tracker").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 636011756)!
        }
        }
    }()
    public func inputSourceTracker(inputSourceId: Int32) -> Godot.XRPositionalTracker? {
        Godot.XRPositionalTracker?.fromMutatingGodotUnsafePointer { __temporary in
        inputSourceId.withGodotUnsafeRawPointer { __ptr_inputSourceId in
        withUnsafeArgumentPackPointer(__ptr_inputSourceId) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_input_source_tracker,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_input_source_target_ray_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_input_source_target_ray_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2852387453)!
        }
        }
    }()
    public func inputSourceTargetRayMode(inputSourceId: Int32) -> Godot.WebXRInterface.TargetRayMode {
        Godot.WebXRInterface.TargetRayMode.fromMutatingGodotUnsafePointer { __temporary in
        inputSourceId.withGodotUnsafeRawPointer { __ptr_inputSourceId in
        withUnsafeArgumentPackPointer(__ptr_inputSourceId) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_input_source_target_ray_mode,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_visibility_state: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_visibility_state").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    private func __getVisibilityState() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_visibility_state,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_display_refresh_rate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_display_refresh_rate").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    public func displayRefreshRate() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_display_refresh_rate,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_display_refresh_rate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_display_refresh_rate").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    public func setDisplayRefreshRate(_ refreshRate: Double) {
        refreshRate.withGodotUnsafeRawPointer { __ptr_refreshRate in
        withUnsafeArgumentPackPointer(__ptr_refreshRate) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_display_refresh_rate,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_available_display_refresh_rates: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_available_display_refresh_rates").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()
    public func availableDisplayRefreshRates() -> Godot.AnyGodotArray {
        Godot.AnyGodotArray.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
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