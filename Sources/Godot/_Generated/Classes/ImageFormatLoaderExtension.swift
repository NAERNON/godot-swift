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

    private static var __method_binding_add_format_loader: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_format_loader").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func addFormatLoader() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_add_format_loader,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_remove_format_loader: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "remove_format_loader").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func removeFormatLoader() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_remove_format_loader,
                __ptr_self,
                nil,
                nil
            )
        }
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
            let instance = Unmanaged<ImageFormatLoaderExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getRecognizedExtensions()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _load_image_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<ImageFormatLoaderExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._loadImage(
            Godot.Image.retrievedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!)),
            fileaccess: Godot.FileAccess.retrievedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[1]!)),
            flags: args[2]!.load(as: Godot.ImageFormatLoader.LoaderFlags.self),
            scale: args[3]!.load(as: Double.self)
        )
        returnPtr!.assumingMemoryBound(to: Godot.ErrorType.self).pointee = returnValue}
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