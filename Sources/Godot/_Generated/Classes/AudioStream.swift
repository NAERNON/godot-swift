//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class AudioStream: Resource {
    open func _instantiatePlayback() -> Godot.AudioStreamPlayback? {
        nil
    }

    open func _getStreamName() -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _getLength() -> Double {
        Double()
    }

    open func _isMonophonic() -> Bool {
        Bool()
    }

    open func _getBpm() -> Double {
        Double()
    }

    open func _getBeatCount() -> Int32 {
        Int32()
    }

    private static var __method_binding_get_length: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_length").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    public func length() -> Double {
        var __temporary = Double()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_length,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_is_monophonic: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "is_monophonic").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func isMonophonic() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_monophonic,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_instantiate_playback: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "instantiate_playback").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 210135309)!
        }
        }
    }()
    public func instantiatePlayback() -> Godot.AudioStreamPlayback? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_instantiate_playback,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.AudioStreamPlayback.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _instantiate_playback_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<AudioStream> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._instantiatePlayback()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_stream_name_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<AudioStream> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getStreamName()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_length_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<AudioStream> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getLength()
        returnPtr!.assumingMemoryBound(to: Double.self).pointee = returnValue}
        let _is_monophonic_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<AudioStream> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._isMonophonic()
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _get_bpm_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<AudioStream> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getBpm()
        returnPtr!.assumingMemoryBound(to: Double.self).pointee = returnValue}
        let _get_beat_count_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<AudioStream> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getBeatCount()
        returnPtr!.assumingMemoryBound(to: Int32.self).pointee = returnValue}
        _virtualFunctions = [
            "_instantiatePlayback" : ("_instantiate_playback", _instantiate_playback_call),
            "_getStreamName" : ("_get_stream_name", _get_stream_name_call),
            "_getLength" : ("_get_length", _get_length_call),
            "_isMonophonic" : ("_is_monophonic", _is_monophonic_call),
            "_getBpm" : ("_get_bpm", _get_bpm_call),
            "_getBeatCount" : ("_get_beat_count", _get_beat_count_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }