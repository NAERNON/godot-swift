//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class ImageFormatLoaderExtension: ImageFormatLoader {
    open func _getRecognizedExtensions() -> Godot.PackedStringArray {
        Godot.PackedStringArray()
    }

    open func _loadImage(_ image: Godot.Image?, fileaccess: Godot.FileAccess?, flags: Godot.ImageFormatLoader.LoaderFlags, scale: Double) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    internal static var __method_binding_add_format_loader: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_format_loader").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func addFormatLoader() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_format_loader,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_remove_format_loader: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_format_loader").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func removeFormatLoader() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_format_loader,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _get_recognized_extensions_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<ImageFormatLoaderExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getRecognizedExtensions()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _load_image_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<ImageFormatLoaderExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._loadImage(
            Godot.Image?.fromGodotUnsafePointer(args[0]!),
            fileaccess: Godot.FileAccess?.fromGodotUnsafePointer(args[1]!),
            flags: Godot.ImageFormatLoader.LoaderFlags.fromGodotUnsafePointer(args[2]!),
            scale: Double.fromGodotUnsafePointer(args[3]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        _virtualFunctions = [
            "_getRecognizedExtensions" : ("_get_recognized_extensions", _get_recognized_extensions_call),
            "_loadImage" : ("_load_image", _load_image_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }