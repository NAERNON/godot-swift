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

    internal static var __method_binding_get_length: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_length").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    public func length() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_length,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_is_monophonic: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_monophonic").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func isMonophonic() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_monophonic,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_instantiate_playback: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "instantiate_playback").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 210135309)!
        }
        }
    }()
    public func instantiatePlayback() -> Godot.AudioStreamPlayback? {
        Godot.AudioStreamPlayback?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_instantiate_playback,
            __ptr_self,
            nil,
            __temporary
        )}}
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
            Unmanaged<AudioStream>.fromOpaque(instancePtr).takeUnretainedValue()
        ._instantiatePlayback()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_stream_name_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<AudioStream>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getStreamName()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_length_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<AudioStream>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getLength()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _is_monophonic_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<AudioStream>.fromOpaque(instancePtr).takeUnretainedValue()
        ._isMonophonic()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_bpm_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<AudioStream>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getBpm()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_beat_count_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<AudioStream>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getBeatCount()
        .copyToGodot(unsafePointer: returnPtr!)}
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