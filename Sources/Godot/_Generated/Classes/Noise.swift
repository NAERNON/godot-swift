//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class Noise: Resource {
    private static var __method_binding_get_noise_1d: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_noise_1d").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3919130443)!
        }
        }
    }()
    public func noise1d(_ x: Double) -> Double {
        var __temporary = Double()
        withUnsafePointer(to: x) { (__ptr_x) in
            withUnsafeArgumentPackPointer(__ptr_x) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_noise_1d,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_noise_2d: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_noise_2d").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2753205203)!
        }
        }
    }()
    public func noise2D(x: Double, y: Double) -> Double {
        var __temporary = Double()
        withUnsafePointer(to: x) { (__ptr_x) in
            withUnsafePointer(to: y) { (__ptr_y) in
                withUnsafeArgumentPackPointer(__ptr_x, __ptr_y) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_get_noise_2d,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_noise_2dv: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_noise_2dv").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2276447920)!
        }
        }
    }()
    public func noise2dv(_ v: Godot.Vector2) -> Double {
        var __temporary = Double()
        withUnsafePointer(to: v) { (__ptr_v) in
            withUnsafeArgumentPackPointer(__ptr_v) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_noise_2dv,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_noise_3d: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_noise_3d").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 973811851)!
        }
        }
    }()
    public func noise3D(x: Double, y: Double, z: Double) -> Double {
        var __temporary = Double()
        withUnsafePointer(to: x) { (__ptr_x) in
            withUnsafePointer(to: y) { (__ptr_y) in
                withUnsafePointer(to: z) { (__ptr_z) in
                    withUnsafeArgumentPackPointer(__ptr_x, __ptr_y, __ptr_z) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_get_noise_3d,
                                    __ptr_self,
                                    __accessPtr,
                                    __ptr___temporary
                                )
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_noise_3dv: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_noise_3dv").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1109078154)!
        }
        }
    }()
    public func noise3dv(_ v: Godot.Vector3) -> Double {
        var __temporary = Double()
        withUnsafePointer(to: v) { (__ptr_v) in
            withUnsafeArgumentPackPointer(__ptr_v) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_noise_3dv,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_image: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_image").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2569233413)!
        }
        }
    }()
    public func image(width: Int32, height: Int32, invert: Bool = false, in3DSpace: Bool = false, normalize: Bool = true) -> Godot.Image? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafePointer(to: width) { (__ptr_width) in
            withUnsafePointer(to: height) { (__ptr_height) in
                withUnsafePointer(to: invert) { (__ptr_invert) in
                    withUnsafePointer(to: in3DSpace) { (__ptr_in3DSpace) in
                        withUnsafePointer(to: normalize) { (__ptr_normalize) in
                            withUnsafeArgumentPackPointer(__ptr_width, __ptr_height, __ptr_invert, __ptr_in3DSpace, __ptr_normalize) { (__accessPtr) in
                                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                        gdextension_interface_object_method_bind_ptrcall(
                                            Self.__method_binding_get_image,
                                            __ptr_self,
                                            __accessPtr,
                                            __ptr___temporary
                                        )
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return Godot.Image.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_get_seamless_image: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_seamless_image").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2210827790)!
        }
        }
    }()
    public func seamlessImage(width: Int32, height: Int32, invert: Bool = false, in3DSpace: Bool = false, skirt: Double = 0.1, normalize: Bool = true) -> Godot.Image? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafePointer(to: width) { (__ptr_width) in
            withUnsafePointer(to: height) { (__ptr_height) in
                withUnsafePointer(to: invert) { (__ptr_invert) in
                    withUnsafePointer(to: in3DSpace) { (__ptr_in3DSpace) in
                        withUnsafePointer(to: skirt) { (__ptr_skirt) in
                            withUnsafePointer(to: normalize) { (__ptr_normalize) in
                                withUnsafeArgumentPackPointer(__ptr_width, __ptr_height, __ptr_invert, __ptr_in3DSpace, __ptr_skirt, __ptr_normalize) { (__accessPtr) in
                                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                        `self`.withUnsafeRawPointer { (__ptr_self) in
                                            gdextension_interface_object_method_bind_ptrcall(
                                                Self.__method_binding_get_seamless_image,
                                                __ptr_self,
                                                __accessPtr,
                                                __ptr___temporary
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
        return Godot.Image.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_get_image_3d: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_image_3d").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2358868431)!
        }
        }
    }()
    public func image3D(width: Int32, height: Int32, depth: Int32, invert: Bool = false, normalize: Bool = true) -> Godot.GodotArray<Godot.Image?> {
        let __temporary = Godot.GodotArray<Godot.Image?>()
        withUnsafePointer(to: width) { (__ptr_width) in
            withUnsafePointer(to: height) { (__ptr_height) in
                withUnsafePointer(to: depth) { (__ptr_depth) in
                    withUnsafePointer(to: invert) { (__ptr_invert) in
                        withUnsafePointer(to: normalize) { (__ptr_normalize) in
                            withUnsafeArgumentPackPointer(__ptr_width, __ptr_height, __ptr_depth, __ptr_invert, __ptr_normalize) { (__accessPtr) in
                                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                        gdextension_interface_object_method_bind_ptrcall(
                                            Self.__method_binding_get_image_3d,
                                            __ptr_self,
                                            __accessPtr,
                                            __ptr___temporary
                                        )
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_seamless_image_3d: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_seamless_image_3d").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3328694319)!
        }
        }
    }()
    public func seamlessImage3D(width: Int32, height: Int32, depth: Int32, invert: Bool = false, skirt: Double = 0.1, normalize: Bool = true) -> Godot.GodotArray<Godot.Image?> {
        let __temporary = Godot.GodotArray<Godot.Image?>()
        withUnsafePointer(to: width) { (__ptr_width) in
            withUnsafePointer(to: height) { (__ptr_height) in
                withUnsafePointer(to: depth) { (__ptr_depth) in
                    withUnsafePointer(to: invert) { (__ptr_invert) in
                        withUnsafePointer(to: skirt) { (__ptr_skirt) in
                            withUnsafePointer(to: normalize) { (__ptr_normalize) in
                                withUnsafeArgumentPackPointer(__ptr_width, __ptr_height, __ptr_depth, __ptr_invert, __ptr_skirt, __ptr_normalize) { (__accessPtr) in
                                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                                        `self`.withUnsafeRawPointer { (__ptr_self) in
                                            gdextension_interface_object_method_bind_ptrcall(
                                                Self.__method_binding_get_seamless_image_3d,
                                                __ptr_self,
                                                __accessPtr,
                                                __ptr___temporary
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
        return __temporary
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