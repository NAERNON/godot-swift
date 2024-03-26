//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class UPNPDevice: RefCounted {
    public enum IGDStatus: UInt32, GodotEnum {
        case ok = 0
        case httpError = 1
        case httpEmpty = 2
        case noUrls = 3
        case noIgd = 4
        case disconnected = 5
        case unknownDevice = 6
        case invalidControl = 7
        case mallocError = 8
        case unknownError = 9

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Ok", 0),
            ("Http Error", 1),
            ("Http Empty", 2),
            ("No Urls", 3),
            ("No Igd", 4),
            ("Disconnected", 5),
            ("Unknown Device", 6),
            ("Invalid Control", 7),
            ("Malloc Error", 8),
            ("Unknown Error", 9),]
        }
    }

    internal static var __method_binding_is_valid_gateway: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_valid_gateway").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    public func isValidGateway() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_valid_gateway,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_query_external_address: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "query_external_address").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()

    public func queryExternalAddress() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_query_external_address,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_add_port_mapping: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_port_mapping").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 818314583)!
        }
        }
    }()

    public func addPortMapping(
        port: Int32,
        portInternal: Int32 = 0,
        desc: Godot.GodotString = "",
        proto: Godot.GodotString = "UDP",
        duration: Int32 = 0
    ) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        port.withGodotUnsafeRawPointer { __ptr_port in
        portInternal.withGodotUnsafeRawPointer { __ptr_portInternal in
        desc.withGodotUnsafeRawPointer { __ptr_desc in
        proto.withGodotUnsafeRawPointer { __ptr_proto in
        duration.withGodotUnsafeRawPointer { __ptr_duration in
        withUnsafeArgumentPackPointer(__ptr_port, __ptr_portInternal, __ptr_desc, __ptr_proto, __ptr_duration) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_port_mapping,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}
    }

    internal static var __method_binding_delete_port_mapping: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "delete_port_mapping").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3444187325)!
        }
        }
    }()

    public func deletePortMapping(
        port: Int32,
        proto: Godot.GodotString = "UDP"
    ) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        port.withGodotUnsafeRawPointer { __ptr_port in
        proto.withGodotUnsafeRawPointer { __ptr_proto in
        withUnsafeArgumentPackPointer(__ptr_port, __ptr_proto) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_delete_port_mapping,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_set_description_url: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_description_url").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()

    private func __setDescriptionUrl(
        _ url: Godot.GodotString
    ) {
        url.withGodotUnsafeRawPointer { __ptr_url in
        withUnsafeArgumentPackPointer(__ptr_url) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_description_url,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_description_url: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_description_url").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()

    private func __getDescriptionUrl() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_description_url,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_service_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_service_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()

    private func __setServiceType(
        _ type: Godot.GodotString
    ) {
        type.withGodotUnsafeRawPointer { __ptr_type in
        withUnsafeArgumentPackPointer(__ptr_type) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_service_type,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_service_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_service_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()

    private func __getServiceType() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_service_type,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_igd_control_url: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_igd_control_url").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()

    private func __setIgdControlUrl(
        _ url: Godot.GodotString
    ) {
        url.withGodotUnsafeRawPointer { __ptr_url in
        withUnsafeArgumentPackPointer(__ptr_url) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_igd_control_url,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_igd_control_url: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_igd_control_url").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()

    private func __getIgdControlUrl() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_igd_control_url,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_igd_service_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_igd_service_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()

    private func __setIgdServiceType(
        _ type: Godot.GodotString
    ) {
        type.withGodotUnsafeRawPointer { __ptr_type in
        withUnsafeArgumentPackPointer(__ptr_type) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_igd_service_type,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_igd_service_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_igd_service_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()

    private func __getIgdServiceType() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_igd_service_type,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_igd_our_addr: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_igd_our_addr").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()

    private func __setIgdOurAddr(
        _ addr: Godot.GodotString
    ) {
        addr.withGodotUnsafeRawPointer { __ptr_addr in
        withUnsafeArgumentPackPointer(__ptr_addr) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_igd_our_addr,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_igd_our_addr: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_igd_our_addr").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()

    private func __getIgdOurAddr() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_igd_our_addr,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_igd_status: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_igd_status").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 519504122)!
        }
        }
    }()

    private func __setIgdStatus(
        _ status: Godot.UPNPDevice.IGDStatus
    ) {
        status.withGodotUnsafeRawPointer { __ptr_status in
        withUnsafeArgumentPackPointer(__ptr_status) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_igd_status,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_igd_status: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_igd_status").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 180887011)!
        }
        }
    }()

    private func __getIgdStatus() -> Godot.UPNPDevice.IGDStatus {
        Godot.UPNPDevice.IGDStatus.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_igd_status,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var descriptionUrl: Godot.GodotString {
        get {
            __getDescriptionUrl()
        }
        set {
            __setDescriptionUrl(
                newValue
            )
        }
    }

    public var serviceType: Godot.GodotString {
        get {
            __getServiceType()
        }
        set {
            __setServiceType(
                newValue
            )
        }
    }

    public var igdControlUrl: Godot.GodotString {
        get {
            __getIgdControlUrl()
        }
        set {
            __setIgdControlUrl(
                newValue
            )
        }
    }

    public var igdServiceType: Godot.GodotString {
        get {
            __getIgdServiceType()
        }
        set {
            __setIgdServiceType(
                newValue
            )
        }
    }

    public var igdOurAddr: Godot.GodotString {
        get {
            __getIgdOurAddr()
        }
        set {
            __setIgdOurAddr(
                newValue
            )
        }
    }

    public var igdStatus: Godot.UPNPDevice.IGDStatus {
        get {
            __getIgdStatus()
        }
        set {
            __setIgdStatus(
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