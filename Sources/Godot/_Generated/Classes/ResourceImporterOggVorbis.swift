//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class ResourceImporterOggVorbis: ResourceImporter {
    private static var __method_binding_load_from_buffer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "load_from_buffer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 354904730)!
        }
        }
    }()
    static public func loadFromBuffer(_ buffer: Godot.PackedByteArray) -> Godot.AudioStreamOggVorbis? {
        Godot.AudioStreamOggVorbis?.fromMutatingGodotUnsafePointer { __temporary in
        buffer.withGodotUnsafeRawPointer { __ptr_buffer in
        withUnsafeArgumentPackPointer(__ptr_buffer) { __accessPtr in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_load_from_buffer,
            nil,
            __accessPtr,
            __temporary
        )}}}
    }

    private static var __method_binding_load_from_file: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "load_from_file").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 797568536)!
        }
        }
    }()
    static public func loadFromFile(path: Godot.GodotString) -> Godot.AudioStreamOggVorbis? {
        Godot.AudioStreamOggVorbis?.fromMutatingGodotUnsafePointer { __temporary in
        path.withGodotUnsafeRawPointer { __ptr_path in
        withUnsafeArgumentPackPointer(__ptr_path) { __accessPtr in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_load_from_file,
            nil,
            __accessPtr,
            __temporary
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