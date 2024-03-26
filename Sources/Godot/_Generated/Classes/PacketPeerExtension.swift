//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class PacketPeerExtension: PacketPeer {
    open func _getPacket(
        rBuffer: UnsafePointer<UnsafePointer<UInt8>>,
        rBufferSize: UnsafeMutablePointer<Int32>
    ) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _putPacket(
        pBuffer: UnsafePointer<UInt8>,
        pBufferSize: Int32
    ) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _getAvailablePacketCount() -> Int32 {
        Int32()
    }

    open func _getMaxPacketSize() -> Int32 {
        Int32()
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil

    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _get_packet_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PacketPeerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getPacket(
            rBuffer: UnsafePointer<UnsafePointer<UInt8>>.fromGodotUnsafePointer(args[0]!),
            rBufferSize: UnsafeMutablePointer<Int32>.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _put_packet_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PacketPeerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._putPacket(
            pBuffer: UnsafePointer<UInt8>.fromGodotUnsafePointer(args[0]!),
            pBufferSize: Int32.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_available_packet_count_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<PacketPeerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getAvailablePacketCount()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_max_packet_size_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<PacketPeerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getMaxPacketSize()
        .copyToGodot(unsafePointer: returnPtr!)}
        _virtualFunctions = [
            "_getPacket" : ("_get_packet", _get_packet_call),
            "_putPacket" : ("_put_packet", _put_packet_call),
            "_getAvailablePacketCount" : ("_get_available_packet_count", _get_available_packet_count_call),
            "_getMaxPacketSize" : ("_get_max_packet_size", _get_max_packet_size_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }
}