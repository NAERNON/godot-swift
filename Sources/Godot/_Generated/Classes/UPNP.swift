//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class UPNP: RefCounted {
    public enum UPNPResult: UInt32, GodotEnum {
        case success = 0
        case notAuthorized = 1
        case portMappingNotFound = 2
        case inconsistentParameters = 3
        case noSuchEntryInArray = 4
        case actionFailed = 5
        case srcIpWildcardNotPermitted = 6
        case extPortWildcardNotPermitted = 7
        case intPortWildcardNotPermitted = 8
        case remoteHostMustBeWildcard = 9
        case extPortMustBeWildcard = 10
        case noPortMapsAvailable = 11
        case conflictWithOtherMechanism = 12
        case conflictWithOtherMapping = 13
        case samePortValuesRequired = 14
        case onlyPermanentLeaseSupported = 15
        case invalidGateway = 16
        case invalidPort = 17
        case invalidProtocol = 18
        case invalidDuration = 19
        case invalidArgs = 20
        case invalidResponse = 21
        case invalidParam = 22
        case httpError = 23
        case socketError = 24
        case memAllocError = 25
        case noGateway = 26
        case noDevices = 27
        case unknownError = 28
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Success", 0),
            ("Not Authorized", 1),
            ("Port Mapping Not Found", 2),
            ("Inconsistent Parameters", 3),
            ("No Such Entry In Array", 4),
            ("Action Failed", 5),
            ("Src Ip Wildcard Not Permitted", 6),
            ("Ext Port Wildcard Not Permitted", 7),
            ("Int Port Wildcard Not Permitted", 8),
            ("Remote Host Must Be Wildcard", 9),
            ("Ext Port Must Be Wildcard", 10),
            ("No Port Maps Available", 11),
            ("Conflict With Other Mechanism", 12),
            ("Conflict With Other Mapping", 13),
            ("Same Port Values Required", 14),
            ("Only Permanent Lease Supported", 15),
            ("Invalid Gateway", 16),
            ("Invalid Port", 17),
            ("Invalid Protocol", 18),
            ("Invalid Duration", 19),
            ("Invalid Args", 20),
            ("Invalid Response", 21),
            ("Invalid Param", 22),
            ("Http Error", 23),
            ("Socket Error", 24),
            ("Mem Alloc Error", 25),
            ("No Gateway", 26),
            ("No Devices", 27),
            ("Unknown Error", 28),]
        }
    }

    private static var __method_binding_get_device_count: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_device_count").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func deviceCount() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_device_count,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_device: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_device").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2193290270)!
        }
        }
    }()
    public func device(index: Int32) -> Godot.UPNPDevice? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafePointer(to: index) { (__ptr_index) in
            withUnsafeArgumentPackPointer(__ptr_index) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_device,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.UPNPDevice.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_add_device: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_device").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 986715920)!
        }
        }
    }()
    public func addDevice(_ device: Godot.UPNPDevice?) {
        device.withUnsafeRawPointer { (__ptr_device) in
            withUnsafePointer(to: __ptr_device) { (_ptr___ptr_device) in
                withUnsafeArgumentPackPointer(_ptr___ptr_device) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_add_device,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_set_device: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_device").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3015133723)!
        }
        }
    }()
    public func setDevice(index: Int32, device: Godot.UPNPDevice?) {
        withUnsafePointer(to: index) { (__ptr_index) in
            device.withUnsafeRawPointer { (__ptr_device) in
                withUnsafePointer(to: __ptr_device) { (_ptr___ptr_device) in
                    withUnsafeArgumentPackPointer(__ptr_index, _ptr___ptr_device) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_set_device,
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

    private static var __method_binding_remove_device: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_device").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func removeDevice(index: Int32) {
        withUnsafePointer(to: index) { (__ptr_index) in
            withUnsafeArgumentPackPointer(__ptr_index) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_remove_device,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_clear_devices: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_devices").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func clearDevices() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_clear_devices,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_get_gateway: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_gateway").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2276800779)!
        }
        }
    }()
    public func gateway() -> Godot.UPNPDevice? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_gateway,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.UPNPDevice.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_discover: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "discover").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1575334765)!
        }
        }
    }()
    public func discover(timeout: Int32 = 2000, ttl: Int32 = 2, deviceFilter: Godot.GodotString = "InternetGatewayDevice") -> Int32 {
        var __temporary = Int32()
        withUnsafePointer(to: timeout) { (__ptr_timeout) in
            withUnsafePointer(to: ttl) { (__ptr_ttl) in
                deviceFilter.withUnsafeRawPointer { (__ptr_deviceFilter) in
                    withUnsafeArgumentPackPointer(__ptr_timeout, __ptr_ttl, __ptr_deviceFilter) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_discover,
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
        return __temporary
    }

    private static var __method_binding_query_external_address: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "query_external_address").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    public func queryExternalAddress() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_query_external_address,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_add_port_mapping: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_port_mapping").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3358934458)!
        }
        }
    }()
    public func addPortMapping(port: Int32, portInternal: Int32 = 0, desc: Godot.GodotString = "", proto: Godot.GodotString = "UDP", duration: Int32 = 0) -> Int32 {
        var __temporary = Int32()
        withUnsafePointer(to: port) { (__ptr_port) in
            withUnsafePointer(to: portInternal) { (__ptr_portInternal) in
                desc.withUnsafeRawPointer { (__ptr_desc) in
                    proto.withUnsafeRawPointer { (__ptr_proto) in
                        withUnsafePointer(to: duration) { (__ptr_duration) in
                            withUnsafeArgumentPackPointer(__ptr_port, __ptr_portInternal, __ptr_desc, __ptr_proto, __ptr_duration) { (__accessPtr) in
                                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                        gdextension_interface_object_method_bind_ptrcall(
                                            Self.__method_binding_add_port_mapping,
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
            }
        }
        return __temporary
    }

    private static var __method_binding_delete_port_mapping: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "delete_port_mapping").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 760296170)!
        }
        }
    }()
    public func deletePortMapping(port: Int32, proto: Godot.GodotString = "UDP") -> Int32 {
        var __temporary = Int32()
        withUnsafePointer(to: port) { (__ptr_port) in
            proto.withUnsafeRawPointer { (__ptr_proto) in
                withUnsafeArgumentPackPointer(__ptr_port, __ptr_proto) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_delete_port_mapping,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_set_discover_multicast_if: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_discover_multicast_if").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    private func __setDiscoverMulticastIf(mIf: Godot.GodotString) {
        mIf.withUnsafeRawPointer { (__ptr_mIf) in
            withUnsafeArgumentPackPointer(__ptr_mIf) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_discover_multicast_if,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_discover_multicast_if: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_discover_multicast_if").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    private func __getDiscoverMulticastIf() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_discover_multicast_if,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_discover_local_port: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_discover_local_port").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setDiscoverLocalPort(_ port: Int32) {
        withUnsafePointer(to: port) { (__ptr_port) in
            withUnsafeArgumentPackPointer(__ptr_port) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_discover_local_port,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_discover_local_port: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_discover_local_port").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getDiscoverLocalPort() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_discover_local_port,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_discover_ipv6: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_discover_ipv6").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setDiscoverIpv6(_ ipv6: Bool) {
        withUnsafePointer(to: ipv6) { (__ptr_ipv6) in
            withUnsafeArgumentPackPointer(__ptr_ipv6) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_discover_ipv6,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_is_discover_ipv6: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_discover_ipv6").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isDiscoverIpv6() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_discover_ipv6,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    public var discoverMulticastIf: Godot.GodotString {
        get {
            __getDiscoverMulticastIf()
        }
        set {
            __setDiscoverMulticastIf(
                mIf: newValue
            )
        }
    }

    public var discoverLocalPort: Int32 {
        get {
            __getDiscoverLocalPort()
        }
        set {
            __setDiscoverLocalPort(
                newValue
            )
        }
    }

    public var isDiscoverIpv6: Bool {
        get {
            __isDiscoverIpv6()
        }
        set {
            __setDiscoverIpv6(
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