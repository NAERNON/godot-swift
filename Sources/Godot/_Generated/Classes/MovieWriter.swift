//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class MovieWriter: Object {
    open func _getAudioMixRate() -> UInt32 {
        UInt32()
    }

    open func _getAudioSpeakerMode() -> Godot.AudioServer.SpeakerMode {
        Godot.AudioServer.SpeakerMode(rawValue: 0)!
    }

    open func _handlesFile(path: Godot.GodotString) -> Bool {
        Bool()
    }

    open func _writeBegin(movieSize: Godot.Vector2i, fps: UInt32, basePath: Godot.GodotString) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _writeFrame(frameImage: Godot.Image?, audioFrameBlock: UnsafeRawPointer) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _writeEnd() {
    }

    private static var __method_binding_add_writer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_writer").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4023702871)!
        }
        }
    }()
    static public func addWriter(_ writer: Godot.MovieWriter?) {
        writer.withGodotUnsafeRawPointer { __ptr_writer in
        withUnsafePointer(to: __ptr_writer) { _ptr___ptr_writer in
        withUnsafeArgumentPackPointer(_ptr___ptr_writer) { __accessPtr in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_writer,
            nil,
            __accessPtr,
            nil
        )}}}
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _get_audio_mix_rate_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<MovieWriter>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getAudioMixRate()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_audio_speaker_mode_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<MovieWriter>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getAudioSpeakerMode()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _handles_file_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<MovieWriter>.fromOpaque(instancePtr).takeUnretainedValue()
        ._handlesFile(
            path: Godot.GodotString.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _write_begin_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<MovieWriter>.fromOpaque(instancePtr).takeUnretainedValue()
        ._writeBegin(
            movieSize: Godot.Vector2i.fromGodotUnsafePointer(args[0]!),
            fps: UInt32.fromGodotUnsafePointer(args[1]!),
            basePath: Godot.GodotString.fromGodotUnsafePointer(args[2]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _write_frame_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<MovieWriter>.fromOpaque(instancePtr).takeUnretainedValue()
        ._writeFrame(
            frameImage: Godot.Image?.fromGodotUnsafePointer(args[0]!),
            audioFrameBlock: UnsafeRawPointer.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _write_end_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<MovieWriter>.fromOpaque(instancePtr).takeUnretainedValue()
        ._writeEnd()}
        _virtualFunctions = [
            "_getAudioMixRate" : ("_get_audio_mix_rate", _get_audio_mix_rate_call),
            "_getAudioSpeakerMode" : ("_get_audio_speaker_mode", _get_audio_speaker_mode_call),
            "_handlesFile" : ("_handles_file", _handles_file_call),
            "_writeBegin" : ("_write_begin", _write_begin_call),
            "_writeFrame" : ("_write_frame", _write_frame_call),
            "_writeEnd" : ("_write_end", _write_end_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }