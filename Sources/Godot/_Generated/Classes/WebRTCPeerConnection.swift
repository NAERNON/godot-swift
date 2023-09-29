//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class WebRTCPeerConnection: RefCounted {
    public enum ConnectionState: UInt32 {
        case new = 0
        case connecting = 1
        case connected = 2
        case disconnected = 3
        case failed = 4
        case closed = 5
    }
    public enum GatheringState: UInt32 {
        case new = 0
        case gathering = 1
        case complete = 2
    }
    public enum SignalingState: UInt32 {
        case stable = 0
        case haveLocalOffer = 1
        case haveRemoteOffer = 2
        case haveLocalPranswer = 3
        case haveRemotePranswer = 4
        case closed = 5
    }

    @Emitter(signal: "session_description_created", args: ("type", Godot.GodotString), ("sdp", Godot.GodotString))
    public struct SessionDescriptionCreated {
    }

    @Emitter(signal: "ice_candidate_created", args: ("media", Godot.GodotString), ("index", Int), ("name", Godot.GodotString))
    public struct IceCandidateCreated {
    }

    @Emitter(signal: "data_channel_received", args: ("channel", Godot.WebRTCDataChannel?))
    public struct DataChannelReceived {
    }

    private static var __method_binding_set_default_extension: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_default_extension").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3304788590)!
        }
        }
    }()
    static public func setDefaultExtension(extensionClass: Godot.GodotStringName) {
        extensionClass.withUnsafeRawPointer { (__ptr_extensionClass) in
            withUnsafeArgumentPackPointer(__ptr_extensionClass) { (__accessPtr) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_set_default_extension,
                    nil,
                    __accessPtr,
                    nil
                )
            }
        }
    }

    private static var __method_binding_initialize: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "initialize").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2625064318)!
        }
        }
    }()
    public func initialize(configuration: Godot.GodotDictionary = [:]) -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        configuration.withUnsafeRawPointer { (__ptr_configuration) in
            withUnsafeArgumentPackPointer(__ptr_configuration) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_initialize,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.ErrorType(rawValue: __temporary)!
    }

    private static var __method_binding_create_data_channel: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_data_channel").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3997447457)!
        }
        }
    }()
    public func createDataChannel(label: Godot.GodotString, options: Godot.GodotDictionary = [:]) -> Godot.WebRTCDataChannel? {
        var __temporary: GDExtensionObjectPtr!
        label.withUnsafeRawPointer { (__ptr_label) in
            options.withUnsafeRawPointer { (__ptr_options) in
                withUnsafeArgumentPackPointer(__ptr_label, __ptr_options) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_create_data_channel,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return Godot.WebRTCDataChannel.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_create_offer: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_offer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 166280745)!
        }
        }
    }()
    public func createOffer() -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_create_offer,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.ErrorType(rawValue: __temporary)!
    }

    private static var __method_binding_set_local_description: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_local_description").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 852856452)!
        }
        }
    }()
    public func setLocalDescription(type: Godot.GodotString, sdp: Godot.GodotString) -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        type.withUnsafeRawPointer { (__ptr_type) in
            sdp.withUnsafeRawPointer { (__ptr_sdp) in
                withUnsafeArgumentPackPointer(__ptr_type, __ptr_sdp) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_set_local_description,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return Godot.ErrorType(rawValue: __temporary)!
    }

    private static var __method_binding_set_remote_description: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_remote_description").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 852856452)!
        }
        }
    }()
    public func setRemoteDescription(type: Godot.GodotString, sdp: Godot.GodotString) -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        type.withUnsafeRawPointer { (__ptr_type) in
            sdp.withUnsafeRawPointer { (__ptr_sdp) in
                withUnsafeArgumentPackPointer(__ptr_type, __ptr_sdp) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_set_remote_description,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return Godot.ErrorType(rawValue: __temporary)!
    }

    private static var __method_binding_add_ice_candidate: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_ice_candidate").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3958950400)!
        }
        }
    }()
    public func addIceCandidate(media: Godot.GodotString, index: Int32, name: Godot.GodotString) -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        media.withUnsafeRawPointer { (__ptr_media) in
            withUnsafePointer(to: index) { (__ptr_index) in
                name.withUnsafeRawPointer { (__ptr_name) in
                    withUnsafeArgumentPackPointer(__ptr_media, __ptr_index, __ptr_name) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_add_ice_candidate,
                                    __ptr_self,
                                    __accessPtr,
                                    __ptr___temporary
                                )
                            }
                        }
                    }
                }
            }
        }
        return Godot.ErrorType(rawValue: __temporary)!
    }

    private static var __method_binding_poll: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "poll").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 166280745)!
        }
        }
    }()
    public func poll() -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_poll,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.ErrorType(rawValue: __temporary)!
    }

    private static var __method_binding_close: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "close").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func close() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_close,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_get_connection_state: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_connection_state").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2275710506)!
        }
        }
    }()
    public func connectionState() -> Godot.WebRTCPeerConnection.ConnectionState {
        var __temporary = Godot.WebRTCPeerConnection.ConnectionState.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_connection_state,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.WebRTCPeerConnection.ConnectionState(rawValue: __temporary)!
    }

    private static var __method_binding_get_gathering_state: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_gathering_state").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4262591401)!
        }
        }
    }()
    public func gatheringState() -> Godot.WebRTCPeerConnection.GatheringState {
        var __temporary = Godot.WebRTCPeerConnection.GatheringState.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_gathering_state,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.WebRTCPeerConnection.GatheringState(rawValue: __temporary)!
    }

    private static var __method_binding_get_signaling_state: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_signaling_state").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3342956226)!
        }
        }
    }()
    public func signalingState() -> Godot.WebRTCPeerConnection.SignalingState {
        var __temporary = Godot.WebRTCPeerConnection.SignalingState.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_signaling_state,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.WebRTCPeerConnection.SignalingState(rawValue: __temporary)!
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