//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class RenderSceneBuffersRD: RenderSceneBuffers {
    internal static var __method_binding_has_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_texture").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 471820014)!
        }
        }
    }()

    public func hasTexture(
        context: Godot.GodotStringName,
        name: Godot.GodotStringName
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: context) { __ptr_context in
                withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
                    withUnsafeArgumentPackPointer(__ptr_context, __ptr_name) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_has_texture,
                                __ptr_self,
                                __accessPtr,
                                __temporary
                            )
                        }
                    }
                }
            }
        }
    }

    internal static var __method_binding_create_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_texture").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3559915770)!
        }
        }
    }()

    public func createTexture(
        context: Godot.GodotStringName,
        name: Godot.GodotStringName,
        dataFormat: Godot.RenderingDevice.DataFormat,
        usageBits: UInt32,
        textureSamples: Godot.RenderingDevice.TextureSamples,
        size: Godot.Vector2I,
        layers: UInt32,
        mipmaps: UInt32,
        unique: Bool
    ) -> Godot.RID {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: context) { __ptr_context in
                withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
                    withTransferrableUnsafeRawPointer(to: dataFormat) { __ptr_dataFormat in
                        withTransferrableUnsafeRawPointer(to: usageBits) { __ptr_usageBits in
                            withTransferrableUnsafeRawPointer(to: textureSamples) { __ptr_textureSamples in
                                withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                                    withTransferrableUnsafeRawPointer(to: layers) { __ptr_layers in
                                        withTransferrableUnsafeRawPointer(to: mipmaps) { __ptr_mipmaps in
                                            withTransferrableUnsafeRawPointer(to: unique) { __ptr_unique in
                                                withUnsafeArgumentPackPointer(__ptr_context, __ptr_name, __ptr_dataFormat, __ptr_usageBits, __ptr_textureSamples, __ptr_size, __ptr_layers, __ptr_mipmaps, __ptr_unique) { __accessPtr in
                                                    self.withUnsafeMutableRawPointer { __ptr_self in
                                                        GodotExtension.Interface.objectMethodBindPtrcall(
                                                            Self.__method_binding_create_texture,
                                                            __ptr_self,
                                                            __accessPtr,
                                                            __temporary
                                                        )
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    internal static var __method_binding_create_texture_from_format: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_texture_from_format").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3344669382)!
        }
        }
    }()

    public func createTextureFromFormat(
        context: Godot.GodotStringName,
        name: Godot.GodotStringName,
        format: Godot.RDTextureFormat?,
        view: Godot.RDTextureView?,
        unique: Bool
    ) -> Godot.RID {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: context) { __ptr_context in
                withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
                    withTransferrableUnsafeRawPointer(to: format) { __ptr_format in
                        withUnsafePointer(to: __ptr_format) { _ptr___ptr_format in
                            withTransferrableUnsafeRawPointer(to: view) { __ptr_view in
                                withUnsafePointer(to: __ptr_view) { _ptr___ptr_view in
                                    withTransferrableUnsafeRawPointer(to: unique) { __ptr_unique in
                                        withUnsafeArgumentPackPointer(__ptr_context, __ptr_name, _ptr___ptr_format, _ptr___ptr_view, __ptr_unique) { __accessPtr in
                                            self.withUnsafeMutableRawPointer { __ptr_self in
                                                GodotExtension.Interface.objectMethodBindPtrcall(
                                                    Self.__method_binding_create_texture_from_format,
                                                    __ptr_self,
                                                    __accessPtr,
                                                    __temporary
                                                )
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    internal static var __method_binding_create_texture_view: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_texture_view").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 283055834)!
        }
        }
    }()

    public func createTextureView(
        context: Godot.GodotStringName,
        name: Godot.GodotStringName,
        viewName: Godot.GodotStringName,
        view: Godot.RDTextureView?
    ) -> Godot.RID {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: context) { __ptr_context in
                withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
                    withTransferrableUnsafeRawPointer(to: viewName) { __ptr_viewName in
                        withTransferrableUnsafeRawPointer(to: view) { __ptr_view in
                            withUnsafePointer(to: __ptr_view) { _ptr___ptr_view in
                                withUnsafeArgumentPackPointer(__ptr_context, __ptr_name, __ptr_viewName, _ptr___ptr_view) { __accessPtr in
                                    self.withUnsafeMutableRawPointer { __ptr_self in
                                        GodotExtension.Interface.objectMethodBindPtrcall(
                                            Self.__method_binding_create_texture_view,
                                            __ptr_self,
                                            __accessPtr,
                                            __temporary
                                        )
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 750006389)!
        }
        }
    }()

    public func texture(
        context: Godot.GodotStringName,
        name: Godot.GodotStringName
    ) -> Godot.RID {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: context) { __ptr_context in
                withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
                    withUnsafeArgumentPackPointer(__ptr_context, __ptr_name) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_get_texture,
                                __ptr_self,
                                __accessPtr,
                                __temporary
                            )
                        }
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_texture_format: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture_format").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 371461758)!
        }
        }
    }()

    public func textureFormat(
        context: Godot.GodotStringName,
        name: Godot.GodotStringName
    ) -> Godot.RDTextureFormat? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: context) { __ptr_context in
                withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
                    withUnsafeArgumentPackPointer(__ptr_context, __ptr_name) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_get_texture_format,
                                __ptr_self,
                                __accessPtr,
                                __temporary
                            )
                        }
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_texture_slice: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture_slice").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 588440706)!
        }
        }
    }()

    public func textureSlice(
        context: Godot.GodotStringName,
        name: Godot.GodotStringName,
        layer: UInt32,
        mipmap: UInt32,
        layers: UInt32,
        mipmaps: UInt32
    ) -> Godot.RID {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: context) { __ptr_context in
                withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
                    withTransferrableUnsafeRawPointer(to: layer) { __ptr_layer in
                        withTransferrableUnsafeRawPointer(to: mipmap) { __ptr_mipmap in
                            withTransferrableUnsafeRawPointer(to: layers) { __ptr_layers in
                                withTransferrableUnsafeRawPointer(to: mipmaps) { __ptr_mipmaps in
                                    withUnsafeArgumentPackPointer(__ptr_context, __ptr_name, __ptr_layer, __ptr_mipmap, __ptr_layers, __ptr_mipmaps) { __accessPtr in
                                        self.withUnsafeMutableRawPointer { __ptr_self in
                                            GodotExtension.Interface.objectMethodBindPtrcall(
                                                Self.__method_binding_get_texture_slice,
                                                __ptr_self,
                                                __accessPtr,
                                                __temporary
                                            )
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_texture_slice_view: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture_slice_view").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 682451778)!
        }
        }
    }()

    public func textureSliceView(
        context: Godot.GodotStringName,
        name: Godot.GodotStringName,
        layer: UInt32,
        mipmap: UInt32,
        layers: UInt32,
        mipmaps: UInt32,
        view: Godot.RDTextureView?
    ) -> Godot.RID {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: context) { __ptr_context in
                withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
                    withTransferrableUnsafeRawPointer(to: layer) { __ptr_layer in
                        withTransferrableUnsafeRawPointer(to: mipmap) { __ptr_mipmap in
                            withTransferrableUnsafeRawPointer(to: layers) { __ptr_layers in
                                withTransferrableUnsafeRawPointer(to: mipmaps) { __ptr_mipmaps in
                                    withTransferrableUnsafeRawPointer(to: view) { __ptr_view in
                                        withUnsafePointer(to: __ptr_view) { _ptr___ptr_view in
                                            withUnsafeArgumentPackPointer(__ptr_context, __ptr_name, __ptr_layer, __ptr_mipmap, __ptr_layers, __ptr_mipmaps, _ptr___ptr_view) { __accessPtr in
                                                self.withUnsafeMutableRawPointer { __ptr_self in
                                                    GodotExtension.Interface.objectMethodBindPtrcall(
                                                        Self.__method_binding_get_texture_slice_view,
                                                        __ptr_self,
                                                        __accessPtr,
                                                        __temporary
                                                    )
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_texture_slice_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture_slice_size").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2617625368)!
        }
        }
    }()

    public func textureSliceSize(
        context: Godot.GodotStringName,
        name: Godot.GodotStringName,
        mipmap: UInt32
    ) -> Godot.Vector2I {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: context) { __ptr_context in
                withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
                    withTransferrableUnsafeRawPointer(to: mipmap) { __ptr_mipmap in
                        withUnsafeArgumentPackPointer(__ptr_context, __ptr_name, __ptr_mipmap) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_get_texture_slice_size,
                                    __ptr_self,
                                    __accessPtr,
                                    __temporary
                                )
                            }
                        }
                    }
                }
            }
        }
    }

    internal static var __method_binding_clear_context: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_context").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3304788590)!
        }
        }
    }()

    public func clearContext(
        _ context: Godot.GodotStringName
    ) {
        withTransferrableUnsafeRawPointer(to: context) { __ptr_context in
            withUnsafeArgumentPackPointer(__ptr_context) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_clear_context,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_color_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_color_texture").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()

    public func colorTexture() -> Godot.RID {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_color_texture,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_color_layer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_color_layer").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 937000113)!
        }
        }
    }()

    public func colorLayer(
        _ layer: UInt32
    ) -> Godot.RID {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: layer) { __ptr_layer in
                withUnsafeArgumentPackPointer(__ptr_layer) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_color_layer,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_depth_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_depth_texture").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()

    public func depthTexture() -> Godot.RID {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_depth_texture,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_depth_layer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_depth_layer").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 937000113)!
        }
        }
    }()

    public func depthLayer(
        _ layer: UInt32
    ) -> Godot.RID {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: layer) { __ptr_layer in
                withUnsafeArgumentPackPointer(__ptr_layer) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_depth_layer,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_velocity_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_velocity_texture").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()

    public func velocityTexture() -> Godot.RID {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_velocity_texture,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_velocity_layer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_velocity_layer").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 937000113)!
        }
        }
    }()

    public func velocityLayer(
        _ layer: UInt32
    ) -> Godot.RID {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: layer) { __ptr_layer in
                withUnsafeArgumentPackPointer(__ptr_layer) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_velocity_layer,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_render_target: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_render_target").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2944877500)!
        }
        }
    }()

    public func renderTarget() -> Godot.RID {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_render_target,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_view_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_view_count").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    public func viewCount() -> UInt32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_view_count,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_internal_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_internal_size").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3690982128)!
        }
        }
    }()

    public func internalSize() -> Godot.Vector2I {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_internal_size,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_use_taa: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_use_taa").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    public func useTaa() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_use_taa,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
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