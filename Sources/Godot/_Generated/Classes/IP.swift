//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class IP: Object {
    public enum ResolverStatus: UInt32, GodotEnum {
        case none = 0
        case waiting = 1
        case done = 2
        case error = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("None", 0),
            ("Waiting", 1),
            ("Done", 2),
            ("Error", 3),]
        }
    }
    public enum GodotType: UInt32, GodotEnum {
        case none = 0
        case ipv4 = 1
        case ipv6 = 2
        case any = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("None", 0),
            ("Ipv4", 1),
            ("Ipv6", 2),
            ("Any", 3),]
        }
    }

    private static var __method_binding_resolve_hostname: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "resolve_hostname").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4283295457)!
        }
        }
    }()
    public func resolveHostname(host: Godot.GodotString, ipType: Godot.IP.GodotType = IP.GodotType(rawValue: 3)!) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        host.withGodotUnsafeRawPointer { __ptr_host in
        ipType.withGodotUnsafeRawPointer { __ptr_ipType in
        withUnsafeArgumentPackPointer(__ptr_host, __ptr_ipType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_resolve_hostname,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_resolve_hostname_addresses: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "resolve_hostname_addresses").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 773767525)!
        }
        }
    }()
    public func resolveHostnameAddresses(host: Godot.GodotString, ipType: Godot.IP.GodotType = IP.GodotType(rawValue: 3)!) -> Godot.PackedStringArray {
        Godot.PackedStringArray.fromMutatingGodotUnsafePointer { __temporary in
        host.withGodotUnsafeRawPointer { __ptr_host in
        ipType.withGodotUnsafeRawPointer { __ptr_ipType in
        withUnsafeArgumentPackPointer(__ptr_host, __ptr_ipType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_resolve_hostname_addresses,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_resolve_hostname_queue_item: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "resolve_hostname_queue_item").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1749894742)!
        }
        }
    }()
    public func resolveHostnameQueueItem(host: Godot.GodotString, ipType: Godot.IP.GodotType = IP.GodotType(rawValue: 3)!) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        host.withGodotUnsafeRawPointer { __ptr_host in
        ipType.withGodotUnsafeRawPointer { __ptr_ipType in
        withUnsafeArgumentPackPointer(__ptr_host, __ptr_ipType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_resolve_hostname_queue_item,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_get_resolve_item_status: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_resolve_item_status").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3812250196)!
        }
        }
    }()
    public func resolveItemStatus(id: Int32) -> Godot.IP.ResolverStatus {
        Godot.IP.ResolverStatus.fromMutatingGodotUnsafePointer { __temporary in
        id.withGodotUnsafeRawPointer { __ptr_id in
        withUnsafeArgumentPackPointer(__ptr_id) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_resolve_item_status,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_resolve_item_address: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_resolve_item_address").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 844755477)!
        }
        }
    }()
    public func resolveItemAddress(id: Int32) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        id.withGodotUnsafeRawPointer { __ptr_id in
        withUnsafeArgumentPackPointer(__ptr_id) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_resolve_item_address,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_resolve_item_addresses: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_resolve_item_addresses").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 663333327)!
        }
        }
    }()
    public func resolveItemAddresses(id: Int32) -> Godot.AnyGodotArray {
        Godot.AnyGodotArray.fromMutatingGodotUnsafePointer { __temporary in
        id.withGodotUnsafeRawPointer { __ptr_id in
        withUnsafeArgumentPackPointer(__ptr_id) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_resolve_item_addresses,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_erase_resolve_item: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "erase_resolve_item").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func eraseResolveItem(id: Int32) {
        id.withGodotUnsafeRawPointer { __ptr_id in
        withUnsafeArgumentPackPointer(__ptr_id) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_erase_resolve_item,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_local_addresses: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_local_addresses").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1139954409)!
        }
        }
    }()
    public func localAddresses() -> Godot.PackedStringArray {
        Godot.PackedStringArray.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_local_addresses,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_local_interfaces: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_local_interfaces").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()
    public func localInterfaces() -> Godot.GodotArray<Godot.AnyGodotDictionary> {
        Godot.GodotArray<Godot.AnyGodotDictionary>.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_local_interfaces,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_clear_cache: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_cache").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3005725572)!
        }
        }
    }()
    public func clearCache(hostname: Godot.GodotString = "") {
        hostname.withGodotUnsafeRawPointer { __ptr_hostname in
        withUnsafeArgumentPackPointer(__ptr_hostname) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_clear_cache,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
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