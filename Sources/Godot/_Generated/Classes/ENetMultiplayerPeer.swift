//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class ENetMultiplayerPeer: MultiplayerPeer {
    private static var __method_binding_create_server: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_server").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2917761309)!
        }
        }
    }()
    public func createServer(port: Int32, maxClients: Int32 = 32, maxChannels: Int32 = 0, inBandwidth bandwidth: Int32 = 0, outBandwidth: Int32 = 0) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        port.withGodotUnsafeRawPointer { __ptr_port in
        maxClients.withGodotUnsafeRawPointer { __ptr_maxClients in
        maxChannels.withGodotUnsafeRawPointer { __ptr_maxChannels in
        bandwidth.withGodotUnsafeRawPointer { __ptr_bandwidth in
        outBandwidth.withGodotUnsafeRawPointer { __ptr_outBandwidth in
        withUnsafeArgumentPackPointer(__ptr_port, __ptr_maxClients, __ptr_maxChannels, __ptr_bandwidth, __ptr_outBandwidth) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_create_server,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}
    }

    private static var __method_binding_create_client: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_client").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2327163476)!
        }
        }
    }()
    public func createClient(address: Godot.GodotString, port: Int32, channelCount: Int32 = 0, inBandwidth bandwidth: Int32 = 0, outBandwidth: Int32 = 0, localPort: Int32 = 0) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        address.withGodotUnsafeRawPointer { __ptr_address in
        port.withGodotUnsafeRawPointer { __ptr_port in
        channelCount.withGodotUnsafeRawPointer { __ptr_channelCount in
        bandwidth.withGodotUnsafeRawPointer { __ptr_bandwidth in
        outBandwidth.withGodotUnsafeRawPointer { __ptr_outBandwidth in
        localPort.withGodotUnsafeRawPointer { __ptr_localPort in
        withUnsafeArgumentPackPointer(__ptr_address, __ptr_port, __ptr_channelCount, __ptr_bandwidth, __ptr_outBandwidth, __ptr_localPort) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_create_client,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}}
    }

    private static var __method_binding_create_mesh: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_mesh").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 844576869)!
        }
        }
    }()
    public func createMesh(uniqueId: Int32) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        uniqueId.withGodotUnsafeRawPointer { __ptr_uniqueId in
        withUnsafeArgumentPackPointer(__ptr_uniqueId) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_create_mesh,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_add_mesh_peer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_mesh_peer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1293458335)!
        }
        }
    }()
    public func addMeshPeer(peerId: Int32, host: Godot.ENetConnection?) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        peerId.withGodotUnsafeRawPointer { __ptr_peerId in
        host.withGodotUnsafeRawPointer { __ptr_host in
        withUnsafePointer(to: __ptr_host) { _ptr___ptr_host in
        withUnsafeArgumentPackPointer(__ptr_peerId, _ptr___ptr_host) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_mesh_peer,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_set_bind_ip: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_bind_ip").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func setBindIp(_ ip: Godot.GodotString) {
        ip.withGodotUnsafeRawPointer { __ptr_ip in
        withUnsafeArgumentPackPointer(__ptr_ip) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_bind_ip,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_host: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_host").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4103238886)!
        }
        }
    }()
    private func __getHost() -> Godot.ENetConnection? {
        Godot.ENetConnection?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_host,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_peer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_peer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3793311544)!
        }
        }
    }()
    public func peer(id: Int32) -> Godot.ENetPacketPeer? {
        Godot.ENetPacketPeer?.fromMutatingGodotUnsafePointer { __temporary in
        id.withGodotUnsafeRawPointer { __ptr_id in
        withUnsafeArgumentPackPointer(__ptr_id) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_peer,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    public var host: Godot.ENetConnection? {
        get {
            __getHost()
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