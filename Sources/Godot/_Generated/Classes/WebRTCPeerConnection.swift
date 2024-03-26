//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class WebRTCPeerConnection: RefCounted {
    public enum ConnectionState: UInt32, GodotEnum {
        case new = 0
        case connecting = 1
        case connected = 2
        case disconnected = 3
        case failed = 4
        case closed = 5

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("New", 0),
            ("Connecting", 1),
            ("Connected", 2),
            ("Disconnected", 3),
            ("Failed", 4),
            ("Closed", 5),]
        }
    }

    public enum GatheringState: UInt32, GodotEnum {
        case new = 0
        case gathering = 1
        case complete = 2

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("New", 0),
            ("Gathering", 1),
            ("Complete", 2),]
        }
    }

    public enum SignalingState: UInt32, GodotEnum {
        case stable = 0
        case haveLocalOffer = 1
        case haveRemoteOffer = 2
        case haveLocalPranswer = 3
        case haveRemotePranswer = 4
        case closed = 5

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Stable", 0),
            ("Have Local Offer", 1),
            ("Have Remote Offer", 2),
            ("Have Local Pranswer", 3),
            ("Have Remote Pranswer", 4),
            ("Closed", 5),]
        }
    }

    public struct SessionDescriptionCreatedSignalInput: Godot.SignalInput {
        public let type: Godot.GodotString

        public let sdp: Godot.GodotString

        fileprivate init(
            type: Godot.GodotString,
            sdp: Godot.GodotString
        ) {
            self.type = type
            self.sdp = sdp
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.type), Variant(input.sdp)]
        }
    }

    public func sessionDescriptionCreated(
        type: Godot.GodotString,
        sdp: Godot.GodotString
    ) {
        _ = sessionDescriptionCreatedSignal.emit(.init(type: type,
                sdp: sdp))
    }

    public lazy var sessionDescriptionCreatedSignal: Godot.SignalEmitter<SessionDescriptionCreatedSignalInput> = {
        .init(object: self, signalName: "session_description_created") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<SessionDescriptionCreatedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(type: Godot.GodotString.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!)),
                    sdp: Godot.GodotString.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 1).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<SessionDescriptionCreatedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<SessionDescriptionCreatedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct IceCandidateCreatedSignalInput: Godot.SignalInput {
        public let media: Godot.GodotString

        public let index: Int

        public let name: Godot.GodotString

        fileprivate init(
            media: Godot.GodotString,
            index: Int,
            name: Godot.GodotString
        ) {
            self.media = media
            self.index = index
            self.name = name
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.media), Variant(input.index), Variant(input.name)]
        }
    }

    public func iceCandidateCreated(
        media: Godot.GodotString,
        index: Int,
        name: Godot.GodotString
    ) {
        _ = iceCandidateCreatedSignal.emit(.init(media: media,
                index: index,
                name: name))
    }

    public lazy var iceCandidateCreatedSignal: Godot.SignalEmitter<IceCandidateCreatedSignalInput> = {
        .init(object: self, signalName: "ice_candidate_created") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<IceCandidateCreatedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(media: Godot.GodotString.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!)),
                    index: Int.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 1).pointee!)),
                    name: Godot.GodotString.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 2).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<IceCandidateCreatedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<IceCandidateCreatedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct DataChannelReceivedSignalInput: Godot.SignalInput {
        public let channel: Godot.WebRTCDataChannel?

        fileprivate init(
            channel: Godot.WebRTCDataChannel?
        ) {
            self.channel = channel
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.channel)]
        }
    }

    public func dataChannelReceived(
        channel: Godot.WebRTCDataChannel?
    ) {
        _ = dataChannelReceivedSignal.emit(.init(channel: channel))
    }

    public lazy var dataChannelReceivedSignal: Godot.SignalEmitter<DataChannelReceivedSignalInput> = {
        .init(object: self, signalName: "data_channel_received") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<DataChannelReceivedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(channel: Godot.WebRTCDataChannel?.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<DataChannelReceivedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<DataChannelReceivedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    internal static var __method_binding_set_default_extension: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_default_extension").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3304788590)!
        }
        }
    }()

    static public func setDefaultExtension(
        extensionClass: Godot.GodotStringName
    ) {
        extensionClass.withGodotUnsafeRawPointer { __ptr_extensionClass in
        withUnsafeArgumentPackPointer(__ptr_extensionClass) { __accessPtr in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_default_extension,
            nil,
            __accessPtr,
            nil
        )}}
    }

    internal static var __method_binding_initialize: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "initialize").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2625064318)!
        }
        }
    }()

    public func initialize<Value1: VariantStorable, Value2: VariantStorable>(
        configuration: Godot.GodotDictionary<Value1, Value2> = [:]
    ) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        configuration.withGodotUnsafeRawPointer { __ptr_configuration in
        withUnsafeArgumentPackPointer(__ptr_configuration) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_initialize,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_create_data_channel: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_data_channel").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1288557393)!
        }
        }
    }()

    public func createDataChannel<Value1: VariantStorable, Value2: VariantStorable>(
        label: Godot.GodotString,
        options: Godot.GodotDictionary<Value1, Value2> = [:]
    ) -> Godot.WebRTCDataChannel? {
        Godot.WebRTCDataChannel?.fromMutatingGodotUnsafePointer { __temporary in
        label.withGodotUnsafeRawPointer { __ptr_label in
        options.withGodotUnsafeRawPointer { __ptr_options in
        withUnsafeArgumentPackPointer(__ptr_label, __ptr_options) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_create_data_channel,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_create_offer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_offer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 166280745)!
        }
        }
    }()

    public func createOffer() -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_create_offer,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_local_description: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_local_description").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 852856452)!
        }
        }
    }()

    public func setLocalDescription(
        type: Godot.GodotString,
        sdp: Godot.GodotString
    ) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        type.withGodotUnsafeRawPointer { __ptr_type in
        sdp.withGodotUnsafeRawPointer { __ptr_sdp in
        withUnsafeArgumentPackPointer(__ptr_type, __ptr_sdp) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_local_description,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_set_remote_description: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_remote_description").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 852856452)!
        }
        }
    }()

    public func setRemoteDescription(
        type: Godot.GodotString,
        sdp: Godot.GodotString
    ) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        type.withGodotUnsafeRawPointer { __ptr_type in
        sdp.withGodotUnsafeRawPointer { __ptr_sdp in
        withUnsafeArgumentPackPointer(__ptr_type, __ptr_sdp) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_remote_description,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_add_ice_candidate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_ice_candidate").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3958950400)!
        }
        }
    }()

    public func addIceCandidate(
        media: Godot.GodotString,
        index: Int32,
        name: Godot.GodotString
    ) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        media.withGodotUnsafeRawPointer { __ptr_media in
        index.withGodotUnsafeRawPointer { __ptr_index in
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_media, __ptr_index, __ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_ice_candidate,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    internal static var __method_binding_poll: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "poll").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 166280745)!
        }
        }
    }()

    public func poll() -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_poll,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_close: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "close").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func close() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_close,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_get_connection_state: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_connection_state").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2275710506)!
        }
        }
    }()

    public func connectionState() -> Godot.WebRTCPeerConnection.ConnectionState {
        Godot.WebRTCPeerConnection.ConnectionState.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_connection_state,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_gathering_state: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_gathering_state").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4262591401)!
        }
        }
    }()

    public func gatheringState() -> Godot.WebRTCPeerConnection.GatheringState {
        Godot.WebRTCPeerConnection.GatheringState.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_gathering_state,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_signaling_state: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_signaling_state").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3342956226)!
        }
        }
    }()

    public func signalingState() -> Godot.WebRTCPeerConnection.SignalingState {
        Godot.WebRTCPeerConnection.SignalingState.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_signaling_state,
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