//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class WebRTCDataChannelExtension: WebRTCDataChannel {
    open func _getPacket(rBuffer: UnsafePointer<UnsafePointer<UInt8>>, rBufferSize: UnsafeMutablePointer<Int32>) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _putPacket(pBuffer: UnsafePointer<UInt8>, pBufferSize: Int32) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _getAvailablePacketCount() -> Int32 {
        Int32()
    }

    open func _getMaxPacketSize() -> Int32 {
        Int32()
    }

    open func _poll() -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _close() {
    }

    open func _setWriteMode(pWriteMode: Godot.WebRTCDataChannel.WriteMode) {
    }

    open func _getWriteMode() -> Godot.WebRTCDataChannel.WriteMode {
        Godot.WebRTCDataChannel.WriteMode(rawValue: 0)!
    }

    open func _wasStringPacket() -> Bool {
        Bool()
    }

    open func _getReadyState() -> Godot.WebRTCDataChannel.ChannelState {
        Godot.WebRTCDataChannel.ChannelState(rawValue: 0)!
    }

    open func _getLabel() -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _isOrdered() -> Bool {
        Bool()
    }

    open func _getId() -> Int32 {
        Int32()
    }

    open func _getMaxPacketLifeTime() -> Int32 {
        Int32()
    }

    open func _getMaxRetransmits() -> Int32 {
        Int32()
    }

    open func _getProtocol() -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _isNegotiated() -> Bool {
        Bool()
    }

    open func _getBufferedAmount() -> Int32 {
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
            let instance = Unmanaged<WebRTCDataChannelExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getPacket(
            rBuffer: args[0]!.load(as: UnsafePointer<UnsafePointer<UInt8>> .self),
            rBufferSize: args[1]!.load(as: UnsafeMutablePointer<Int32> .self)
        )
        returnPtr!.assumingMemoryBound(to: Godot.ErrorType.self).pointee = returnValue}
        let _put_packet_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<WebRTCDataChannelExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._putPacket(
            pBuffer: args[0]!.load(as: UnsafePointer<UInt8> .self),
            pBufferSize: args[1]!.load(as: Int32.self)
        )
        returnPtr!.assumingMemoryBound(to: Godot.ErrorType.self).pointee = returnValue}
        let _get_available_packet_count_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<WebRTCDataChannelExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getAvailablePacketCount()
        returnPtr!.assumingMemoryBound(to: Int32.self).pointee = returnValue}
        let _get_max_packet_size_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<WebRTCDataChannelExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getMaxPacketSize()
        returnPtr!.assumingMemoryBound(to: Int32.self).pointee = returnValue}
        let _poll_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<WebRTCDataChannelExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._poll()
        returnPtr!.assumingMemoryBound(to: Godot.ErrorType.self).pointee = returnValue}
        let _close_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<WebRTCDataChannelExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._close()}
        let _set_write_mode_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<WebRTCDataChannelExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._setWriteMode(
            pWriteMode: args[0]!.load(as: Godot.WebRTCDataChannel.WriteMode.self)
        )}
        let _get_write_mode_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<WebRTCDataChannelExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getWriteMode()
        returnPtr!.assumingMemoryBound(to: Godot.WebRTCDataChannel.WriteMode.self).pointee = returnValue}
        let _was_string_packet_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<WebRTCDataChannelExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._wasStringPacket()
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _get_ready_state_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<WebRTCDataChannelExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getReadyState()
        returnPtr!.assumingMemoryBound(to: Godot.WebRTCDataChannel.ChannelState.self).pointee = returnValue}
        let _get_label_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<WebRTCDataChannelExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getLabel()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _is_ordered_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<WebRTCDataChannelExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._isOrdered()
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _get_id_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<WebRTCDataChannelExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getId()
        returnPtr!.assumingMemoryBound(to: Int32.self).pointee = returnValue}
        let _get_max_packet_life_time_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<WebRTCDataChannelExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getMaxPacketLifeTime()
        returnPtr!.assumingMemoryBound(to: Int32.self).pointee = returnValue}
        let _get_max_retransmits_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<WebRTCDataChannelExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getMaxRetransmits()
        returnPtr!.assumingMemoryBound(to: Int32.self).pointee = returnValue}
        let _get_protocol_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<WebRTCDataChannelExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getProtocol()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _is_negotiated_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<WebRTCDataChannelExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._isNegotiated()
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _get_buffered_amount_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<WebRTCDataChannelExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getBufferedAmount()
        returnPtr!.assumingMemoryBound(to: Int32.self).pointee = returnValue}
        _virtualFunctions = [
            "_getPacket" : ("_get_packet", _get_packet_call),
            "_putPacket" : ("_put_packet", _put_packet_call),
            "_getAvailablePacketCount" : ("_get_available_packet_count", _get_available_packet_count_call),
            "_getMaxPacketSize" : ("_get_max_packet_size", _get_max_packet_size_call),
            "_poll" : ("_poll", _poll_call),
            "_close" : ("_close", _close_call),
            "_setWriteMode" : ("_set_write_mode", _set_write_mode_call),
            "_getWriteMode" : ("_get_write_mode", _get_write_mode_call),
            "_wasStringPacket" : ("_was_string_packet", _was_string_packet_call),
            "_getReadyState" : ("_get_ready_state", _get_ready_state_call),
            "_getLabel" : ("_get_label", _get_label_call),
            "_isOrdered" : ("_is_ordered", _is_ordered_call),
            "_getId" : ("_get_id", _get_id_call),
            "_getMaxPacketLifeTime" : ("_get_max_packet_life_time", _get_max_packet_life_time_call),
            "_getMaxRetransmits" : ("_get_max_retransmits", _get_max_retransmits_call),
            "_getProtocol" : ("_get_protocol", _get_protocol_call),
            "_isNegotiated" : ("_is_negotiated", _is_negotiated_call),
            "_getBufferedAmount" : ("_get_buffered_amount", _get_buffered_amount_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }