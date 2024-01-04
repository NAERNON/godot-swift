//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class PCKPacker: RefCounted {
    internal static var __method_binding_pck_start: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "pck_start").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 508410629)!
        }
        }
    }()
    public func pckStart(pckName: Godot.GodotString, alignment: Int32 = 32, key: Godot.GodotString = "0000000000000000000000000000000000000000000000000000000000000000", encryptDirectory: Bool = false) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        pckName.withGodotUnsafeRawPointer { __ptr_pckName in
        alignment.withGodotUnsafeRawPointer { __ptr_alignment in
        key.withGodotUnsafeRawPointer { __ptr_key in
        encryptDirectory.withGodotUnsafeRawPointer { __ptr_encryptDirectory in
        withUnsafeArgumentPackPointer(__ptr_pckName, __ptr_alignment, __ptr_key, __ptr_encryptDirectory) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_pck_start,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}
    }

    internal static var __method_binding_add_file: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_file").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2215643711)!
        }
        }
    }()
    public func addFile(pckPath: Godot.GodotString, sourcePath: Godot.GodotString, encrypt: Bool = false) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        pckPath.withGodotUnsafeRawPointer { __ptr_pckPath in
        sourcePath.withGodotUnsafeRawPointer { __ptr_sourcePath in
        encrypt.withGodotUnsafeRawPointer { __ptr_encrypt in
        withUnsafeArgumentPackPointer(__ptr_pckPath, __ptr_sourcePath, __ptr_encrypt) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_file,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    internal static var __method_binding_flush: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "flush").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1633102583)!
        }
        }
    }()
    public func flush(verbose: Bool = false) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        verbose.withGodotUnsafeRawPointer { __ptr_verbose in
        withUnsafeArgumentPackPointer(__ptr_verbose) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_flush,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
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