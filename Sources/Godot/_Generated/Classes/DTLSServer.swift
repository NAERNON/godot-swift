//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class DTLSServer: RefCounted {
    internal static var __method_binding_setup: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "setup").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1262296096)!
        }
        }
    }()

    public func setup(
        serverOptions: Godot.TLSOptions?
    ) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        serverOptions.withGodotUnsafeRawPointer { __ptr_serverOptions in
        withUnsafePointer(to: __ptr_serverOptions) { _ptr___ptr_serverOptions in
        withUnsafeArgumentPackPointer(_ptr___ptr_serverOptions) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_setup,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_take_connection: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "take_connection").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3946580474)!
        }
        }
    }()

    public func takeConnection(
        udpPeer: Godot.PacketPeerUDP?
    ) -> Godot.PacketPeerDTLS? {
        Godot.PacketPeerDTLS?.fromMutatingGodotUnsafePointer { __temporary in
        udpPeer.withGodotUnsafeRawPointer { __ptr_udpPeer in
        withUnsafePointer(to: __ptr_udpPeer) { _ptr___ptr_udpPeer in
        withUnsafeArgumentPackPointer(_ptr___ptr_udpPeer) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_take_connection,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
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