//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class LightmapGIData: Resource {
    internal static var __method_binding_set_lightmap_textures: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_lightmap_textures").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()

    private func __setLightmapTextures(
        lightTextures: Godot.GodotArray<Godot.TextureLayered?>
    ) {
        withTransferrableUnsafeRawPointer(to: lightTextures) { __ptr_lightTextures in
            withUnsafeArgumentPackPointer(__ptr_lightTextures) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_lightmap_textures,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_lightmap_textures: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_lightmap_textures").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()

    private func __getLightmapTextures() -> Godot.GodotArray<Godot.TextureLayered?> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_lightmap_textures,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_uses_spherical_harmonics: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_uses_spherical_harmonics").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setUsesSphericalHarmonics(
        _ usesSphericalHarmonics: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: usesSphericalHarmonics) { __ptr_usesSphericalHarmonics in
            withUnsafeArgumentPackPointer(__ptr_usesSphericalHarmonics) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_uses_spherical_harmonics,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_is_using_spherical_harmonics: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_using_spherical_harmonics").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isUsingSphericalHarmonics() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_using_spherical_harmonics,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_add_user: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_user").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4272570515)!
        }
        }
    }()

    public func addUser(
        path: Godot.NodePath,
        uvScale: Godot.Rect2,
        sliceIndex: Int32,
        subInstance: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: path) { __ptr_path in
            withTransferrableUnsafeRawPointer(to: uvScale) { __ptr_uvScale in
                withTransferrableUnsafeRawPointer(to: sliceIndex) { __ptr_sliceIndex in
                    withTransferrableUnsafeRawPointer(to: subInstance) { __ptr_subInstance in
                        withUnsafeArgumentPackPointer(__ptr_path, __ptr_uvScale, __ptr_sliceIndex, __ptr_subInstance) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_add_user,
                                    __ptr_self,
                                    __accessPtr,
                                    nil
                                )
                            }
                        }
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_user_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_user_count").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    public func userCount() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_user_count,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_user_path: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_user_path").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 408788394)!
        }
        }
    }()

    public func userPath(
        userIdx: Int32
    ) -> Godot.NodePath {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: userIdx) { __ptr_userIdx in
                withUnsafeArgumentPackPointer(__ptr_userIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_user_path,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_clear_users: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_users").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func clearUsers() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_clear_users,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    internal static var __method_binding_set_light_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_light_texture").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1278366092)!
        }
        }
    }()

    private func __setLightTexture(
        _ lightTexture: Godot.TextureLayered?
    ) {
        withTransferrableUnsafeRawPointer(to: lightTexture) { __ptr_lightTexture in
            withUnsafePointer(to: __ptr_lightTexture) { _ptr___ptr_lightTexture in
                withUnsafeArgumentPackPointer(_ptr___ptr_lightTexture) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_light_texture,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_light_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_light_texture").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3984243839)!
        }
        }
    }()

    private func __getLightTexture() -> Godot.TextureLayered? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_light_texture,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    public var lightmapTextures: Godot.GodotArray<Godot.TextureLayered?> {
        get {
            __getLightmapTextures()
        }
        set {
            __setLightmapTextures(
                lightTextures: newValue
            )
        }
    }

    public var isUsingSphericalHarmonics: Bool {
        get {
            __isUsingSphericalHarmonics()
        }
        set {
            __setUsesSphericalHarmonics(
                newValue
            )
        }
    }

    public var lightTexture: Godot.TextureLayered? {
        get {
            __getLightTexture()
        }
        set {
            __setLightTexture(
                newValue
            )
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