//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class StreamPeerExtension: StreamPeer {
    open func _getData(rBuffer: UnsafeMutablePointer<UInt8>, rBytes: Int32, rReceived: UnsafeMutablePointer<Int32>) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _getPartialData(rBuffer: UnsafeMutablePointer<UInt8>, rBytes: Int32, rReceived: UnsafeMutablePointer<Int32>) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _putData(pData: UnsafePointer<UInt8>, pBytes: Int32, rSent: UnsafeMutablePointer<Int32>) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _putPartialData(pData: UnsafePointer<UInt8>, pBytes: Int32, rSent: UnsafeMutablePointer<Int32>) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _getAvailableBytes() -> Int32 {
        Int32()
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _get_data_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<StreamPeerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getData(
            rBuffer: UnsafeMutablePointer<UInt8>.fromGodotUnsafePointer(args[0]!),
            rBytes: Int32.fromGodotUnsafePointer(args[1]!),
            rReceived: UnsafeMutablePointer<Int32>.fromGodotUnsafePointer(args[2]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_partial_data_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<StreamPeerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getPartialData(
            rBuffer: UnsafeMutablePointer<UInt8>.fromGodotUnsafePointer(args[0]!),
            rBytes: Int32.fromGodotUnsafePointer(args[1]!),
            rReceived: UnsafeMutablePointer<Int32>.fromGodotUnsafePointer(args[2]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _put_data_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<StreamPeerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._putData(
            pData: UnsafePointer<UInt8>.fromGodotUnsafePointer(args[0]!),
            pBytes: Int32.fromGodotUnsafePointer(args[1]!),
            rSent: UnsafeMutablePointer<Int32>.fromGodotUnsafePointer(args[2]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _put_partial_data_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<StreamPeerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._putPartialData(
            pData: UnsafePointer<UInt8>.fromGodotUnsafePointer(args[0]!),
            pBytes: Int32.fromGodotUnsafePointer(args[1]!),
            rSent: UnsafeMutablePointer<Int32>.fromGodotUnsafePointer(args[2]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_available_bytes_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<StreamPeerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getAvailableBytes()
        .copyToGodot(unsafePointer: returnPtr!)}
        _virtualFunctions = [
            "_getData" : ("_get_data", _get_data_call),
            "_getPartialData" : ("_get_partial_data", _get_partial_data_call),
            "_putData" : ("_put_data", _put_data_call),
            "_putPartialData" : ("_put_partial_data", _put_partial_data_call),
            "_getAvailableBytes" : ("_get_available_bytes", _get_available_bytes_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }