//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class Texture3D: Texture {
    open func _getFormat() -> Godot.Image.Format {
        Godot.Image.Format(rawValue: 0)!
    }

    open func _getWidth() -> Int32 {
        Int32()
    }

    open func _getHeight() -> Int32 {
        Int32()
    }

    open func _getDepth() -> Int32 {
        Int32()
    }

    open func _hasMipmaps() -> Bool {
        Bool()
    }

    open func _getData() -> Godot.GodotArray<Godot.Image?> {
        Godot.GodotArray<Godot.Image?>()
    }

    internal static var __method_binding_get_format: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_format").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3847873762)!
        }
        }
    }()

    public func format() -> Godot.Image.Format {
        Godot.Image.Format.fromInitializingMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_format,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_width: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_width").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    public func width() -> Int32 {
        Int32.fromInitializingMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_width,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_height: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_height").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    public func height() -> Int32 {
        Int32.fromInitializingMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_height,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_depth: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_depth").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    public func depth() -> Int32 {
        Int32.fromInitializingMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_depth,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_has_mipmaps: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_mipmaps").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    public func hasMipmaps() -> Bool {
        Bool.fromInitializingMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_mipmaps,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_data: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_data").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()

    public func data() -> Godot.GodotArray<Godot.Image?> {
        Godot.GodotArray<Godot.Image?> .fromInitializingMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_data,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_create_placeholder: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_placeholder").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 121922552)!
        }
        }
    }()

    public func createPlaceholder() -> Godot.Resource? {
        Godot.Resource?.fromInitializingMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_create_placeholder,
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
        let _get_format_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<Texture3D> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getFormat()
        .transferToGodot(unsafePointer: returnPtr!)}
        let _get_width_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<Texture3D> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getWidth()
        .transferToGodot(unsafePointer: returnPtr!)}
        let _get_height_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<Texture3D> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getHeight()
        .transferToGodot(unsafePointer: returnPtr!)}
        let _get_depth_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<Texture3D> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getDepth()
        .transferToGodot(unsafePointer: returnPtr!)}
        let _has_mipmaps_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<Texture3D> .fromOpaque(instancePtr).takeUnretainedValue()
        ._hasMipmaps()
        .transferToGodot(unsafePointer: returnPtr!)}
        let _get_data_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<Texture3D> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getData()
        .transferToGodot(unsafePointer: returnPtr!)}
        _virtualFunctions = [
            "_getFormat" : ("_get_format", _get_format_call),
            "_getWidth" : ("_get_width", _get_width_call),
            "_getHeight" : ("_get_height", _get_height_call),
            "_getDepth" : ("_get_depth", _get_depth_call),
            "_hasMipmaps" : ("_has_mipmaps", _has_mipmaps_call),
            "_getData" : ("_get_data", _get_data_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }
}