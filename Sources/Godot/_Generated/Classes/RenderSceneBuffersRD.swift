//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class RenderSceneBuffersRD: RenderSceneBuffers {
    private static var __method_binding_has_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_texture").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 471820014)!
        }
        }
    }()
    public func hasTexture(context: Godot.GodotStringName, name: Godot.GodotStringName) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        context.withGodotUnsafeRawPointer { __ptr_context in
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_context, __ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_has_texture,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_create_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_texture").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3559915770)!
        }
        }
    }()
    public func createTexture(context: Godot.GodotStringName, name: Godot.GodotStringName, dataFormat: Godot.RenderingDevice.DataFormat, usageBits: UInt32, textureSamples: Godot.RenderingDevice.TextureSamples, size: Godot.Vector2i, layers: UInt32, mipmaps: UInt32, unique: Bool) -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        context.withGodotUnsafeRawPointer { __ptr_context in
        name.withGodotUnsafeRawPointer { __ptr_name in
        dataFormat.withGodotUnsafeRawPointer { __ptr_dataFormat in
        usageBits.withGodotUnsafeRawPointer { __ptr_usageBits in
        textureSamples.withGodotUnsafeRawPointer { __ptr_textureSamples in
        size.withGodotUnsafeRawPointer { __ptr_size in
        layers.withGodotUnsafeRawPointer { __ptr_layers in
        mipmaps.withGodotUnsafeRawPointer { __ptr_mipmaps in
        unique.withGodotUnsafeRawPointer { __ptr_unique in
        withUnsafeArgumentPackPointer(__ptr_context, __ptr_name, __ptr_dataFormat, __ptr_usageBits, __ptr_textureSamples, __ptr_size, __ptr_layers, __ptr_mipmaps, __ptr_unique) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_create_texture,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}}}}}
    }

    private static var __method_binding_create_texture_from_format: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_texture_from_format").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3344669382)!
        }
        }
    }()
    public func createTextureFromFormat(context: Godot.GodotStringName, name: Godot.GodotStringName, format: Godot.RDTextureFormat?, view: Godot.RDTextureView?, unique: Bool) -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        context.withGodotUnsafeRawPointer { __ptr_context in
        name.withGodotUnsafeRawPointer { __ptr_name in
        format.withGodotUnsafeRawPointer { __ptr_format in
        withUnsafePointer(to: __ptr_format) { _ptr___ptr_format in
        view.withGodotUnsafeRawPointer { __ptr_view in
        withUnsafePointer(to: __ptr_view) { _ptr___ptr_view in
        unique.withGodotUnsafeRawPointer { __ptr_unique in
        withUnsafeArgumentPackPointer(__ptr_context, __ptr_name, _ptr___ptr_format, _ptr___ptr_view, __ptr_unique) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_create_texture_from_format,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}}}
    }

    private static var __method_binding_create_texture_view: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_texture_view").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 283055834)!
        }
        }
    }()
    public func createTextureView(context: Godot.GodotStringName, name: Godot.GodotStringName, viewName: Godot.GodotStringName, view: Godot.RDTextureView?) -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        context.withGodotUnsafeRawPointer { __ptr_context in
        name.withGodotUnsafeRawPointer { __ptr_name in
        viewName.withGodotUnsafeRawPointer { __ptr_viewName in
        view.withGodotUnsafeRawPointer { __ptr_view in
        withUnsafePointer(to: __ptr_view) { _ptr___ptr_view in
        withUnsafeArgumentPackPointer(__ptr_context, __ptr_name, __ptr_viewName, _ptr___ptr_view) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_create_texture_view,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}
    }

    private static var __method_binding_get_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 750006389)!
        }
        }
    }()
    public func texture(context: Godot.GodotStringName, name: Godot.GodotStringName) -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        context.withGodotUnsafeRawPointer { __ptr_context in
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_context, __ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_texture,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_get_texture_format: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture_format").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 371461758)!
        }
        }
    }()
    public func textureFormat(context: Godot.GodotStringName, name: Godot.GodotStringName) -> Godot.RDTextureFormat? {
        Godot.RDTextureFormat?.fromMutatingGodotUnsafePointer { __temporary in
        context.withGodotUnsafeRawPointer { __ptr_context in
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_context, __ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_texture_format,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_get_texture_slice: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture_slice").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 588440706)!
        }
        }
    }()
    public func textureSlice(context: Godot.GodotStringName, name: Godot.GodotStringName, layer: UInt32, mipmap: UInt32, layers: UInt32, mipmaps: UInt32) -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        context.withGodotUnsafeRawPointer { __ptr_context in
        name.withGodotUnsafeRawPointer { __ptr_name in
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        mipmap.withGodotUnsafeRawPointer { __ptr_mipmap in
        layers.withGodotUnsafeRawPointer { __ptr_layers in
        mipmaps.withGodotUnsafeRawPointer { __ptr_mipmaps in
        withUnsafeArgumentPackPointer(__ptr_context, __ptr_name, __ptr_layer, __ptr_mipmap, __ptr_layers, __ptr_mipmaps) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_texture_slice,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}}
    }

    private static var __method_binding_get_texture_slice_view: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture_slice_view").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 682451778)!
        }
        }
    }()
    public func textureSliceView(context: Godot.GodotStringName, name: Godot.GodotStringName, layer: UInt32, mipmap: UInt32, layers: UInt32, mipmaps: UInt32, view: Godot.RDTextureView?) -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        context.withGodotUnsafeRawPointer { __ptr_context in
        name.withGodotUnsafeRawPointer { __ptr_name in
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        mipmap.withGodotUnsafeRawPointer { __ptr_mipmap in
        layers.withGodotUnsafeRawPointer { __ptr_layers in
        mipmaps.withGodotUnsafeRawPointer { __ptr_mipmaps in
        view.withGodotUnsafeRawPointer { __ptr_view in
        withUnsafePointer(to: __ptr_view) { _ptr___ptr_view in
        withUnsafeArgumentPackPointer(__ptr_context, __ptr_name, __ptr_layer, __ptr_mipmap, __ptr_layers, __ptr_mipmaps, _ptr___ptr_view) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_texture_slice_view,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}}}}
    }

    private static var __method_binding_get_texture_slice_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture_slice_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2617625368)!
        }
        }
    }()
    public func textureSliceSize(context: Godot.GodotStringName, name: Godot.GodotStringName, mipmap: UInt32) -> Godot.Vector2i {
        Godot.Vector2i.fromMutatingGodotUnsafePointer { __temporary in
        context.withGodotUnsafeRawPointer { __ptr_context in
        name.withGodotUnsafeRawPointer { __ptr_name in
        mipmap.withGodotUnsafeRawPointer { __ptr_mipmap in
        withUnsafeArgumentPackPointer(__ptr_context, __ptr_name, __ptr_mipmap) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_texture_slice_size,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_clear_context: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_context").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3304788590)!
        }
        }
    }()
    public func clearContext(_ context: Godot.GodotStringName) {
        context.withGodotUnsafeRawPointer { __ptr_context in
        withUnsafeArgumentPackPointer(__ptr_context) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_clear_context,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_color_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_color_texture").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func colorTexture() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_color_texture,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_color_layer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_color_layer").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 937000113)!
        }
        }
    }()
    public func colorLayer(_ layer: UInt32) -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        withUnsafeArgumentPackPointer(__ptr_layer) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_color_layer,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_depth_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_depth_texture").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func depthTexture() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_depth_texture,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_depth_layer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_depth_layer").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 937000113)!
        }
        }
    }()
    public func depthLayer(_ layer: UInt32) -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        withUnsafeArgumentPackPointer(__ptr_layer) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_depth_layer,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_velocity_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_velocity_texture").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func velocityTexture() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_velocity_texture,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_velocity_layer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_velocity_layer").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 937000113)!
        }
        }
    }()
    public func velocityLayer(_ layer: UInt32) -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        withUnsafeArgumentPackPointer(__ptr_layer) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_velocity_layer,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_render_target: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_render_target").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2944877500)!
        }
        }
    }()
    public func renderTarget() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_render_target,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_view_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_view_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func viewCount() -> UInt32 {
        UInt32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_view_count,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_internal_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_internal_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3690982128)!
        }
        }
    }()
    public func internalSize() -> Godot.Vector2i {
        Godot.Vector2i.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_internal_size,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_use_taa: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_use_taa").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func useTaa() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_use_taa,
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
        _virtualFunctions = [
            :
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }