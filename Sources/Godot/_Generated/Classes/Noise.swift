//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class Noise: Resource {
    private static var __method_binding_get_noise_1d: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_noise_1d").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3919130443)!
        }
        }
    }()
    public func noise1d(_ x: Double) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        x.withGodotUnsafeRawPointer { __ptr_x in
        withUnsafeArgumentPackPointer(__ptr_x) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_noise_1d,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_noise_2d: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_noise_2d").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2753205203)!
        }
        }
    }()
    public func noise2D(x: Double, y: Double) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        x.withGodotUnsafeRawPointer { __ptr_x in
        y.withGodotUnsafeRawPointer { __ptr_y in
        withUnsafeArgumentPackPointer(__ptr_x, __ptr_y) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_noise_2d,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_get_noise_2dv: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_noise_2dv").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2276447920)!
        }
        }
    }()
    public func noise2dv(_ v: Godot.Vector2) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        v.withGodotUnsafeRawPointer { __ptr_v in
        withUnsafeArgumentPackPointer(__ptr_v) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_noise_2dv,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_noise_3d: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_noise_3d").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 973811851)!
        }
        }
    }()
    public func noise3D(x: Double, y: Double, z: Double) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        x.withGodotUnsafeRawPointer { __ptr_x in
        y.withGodotUnsafeRawPointer { __ptr_y in
        z.withGodotUnsafeRawPointer { __ptr_z in
        withUnsafeArgumentPackPointer(__ptr_x, __ptr_y, __ptr_z) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_noise_3d,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_get_noise_3dv: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_noise_3dv").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1109078154)!
        }
        }
    }()
    public func noise3dv(_ v: Godot.Vector3) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        v.withGodotUnsafeRawPointer { __ptr_v in
        withUnsafeArgumentPackPointer(__ptr_v) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_noise_3dv,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_image: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_image").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3180683109)!
        }
        }
    }()
    public func image(width: Int32, height: Int32, invert: Bool = false, in3DSpace: Bool = false, normalize: Bool = true) -> Godot.Image? {
        Godot.Image?.fromMutatingGodotUnsafePointer { __temporary in
        width.withGodotUnsafeRawPointer { __ptr_width in
        height.withGodotUnsafeRawPointer { __ptr_height in
        invert.withGodotUnsafeRawPointer { __ptr_invert in
        in3DSpace.withGodotUnsafeRawPointer { __ptr_in3DSpace in
        normalize.withGodotUnsafeRawPointer { __ptr_normalize in
        withUnsafeArgumentPackPointer(__ptr_width, __ptr_height, __ptr_invert, __ptr_in3DSpace, __ptr_normalize) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_image,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}
    }

    private static var __method_binding_get_seamless_image: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_seamless_image").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2770743602)!
        }
        }
    }()
    public func seamlessImage(width: Int32, height: Int32, invert: Bool = false, in3DSpace: Bool = false, skirt: Double = 0.1, normalize: Bool = true) -> Godot.Image? {
        Godot.Image?.fromMutatingGodotUnsafePointer { __temporary in
        width.withGodotUnsafeRawPointer { __ptr_width in
        height.withGodotUnsafeRawPointer { __ptr_height in
        invert.withGodotUnsafeRawPointer { __ptr_invert in
        in3DSpace.withGodotUnsafeRawPointer { __ptr_in3DSpace in
        skirt.withGodotUnsafeRawPointer { __ptr_skirt in
        normalize.withGodotUnsafeRawPointer { __ptr_normalize in
        withUnsafeArgumentPackPointer(__ptr_width, __ptr_height, __ptr_invert, __ptr_in3DSpace, __ptr_skirt, __ptr_normalize) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_seamless_image,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}}
    }

    private static var __method_binding_get_image_3d: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_image_3d").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3977814329)!
        }
        }
    }()
    public func image3D(width: Int32, height: Int32, depth: Int32, invert: Bool = false, normalize: Bool = true) -> Godot.GodotArray<Godot.Image?> {
        Godot.GodotArray<Godot.Image?>.fromMutatingGodotUnsafePointer { __temporary in
        width.withGodotUnsafeRawPointer { __ptr_width in
        height.withGodotUnsafeRawPointer { __ptr_height in
        depth.withGodotUnsafeRawPointer { __ptr_depth in
        invert.withGodotUnsafeRawPointer { __ptr_invert in
        normalize.withGodotUnsafeRawPointer { __ptr_normalize in
        withUnsafeArgumentPackPointer(__ptr_width, __ptr_height, __ptr_depth, __ptr_invert, __ptr_normalize) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_image_3d,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}
    }

    private static var __method_binding_get_seamless_image_3d: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_seamless_image_3d").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 451006340)!
        }
        }
    }()
    public func seamlessImage3D(width: Int32, height: Int32, depth: Int32, invert: Bool = false, skirt: Double = 0.1, normalize: Bool = true) -> Godot.GodotArray<Godot.Image?> {
        Godot.GodotArray<Godot.Image?>.fromMutatingGodotUnsafePointer { __temporary in
        width.withGodotUnsafeRawPointer { __ptr_width in
        height.withGodotUnsafeRawPointer { __ptr_height in
        depth.withGodotUnsafeRawPointer { __ptr_depth in
        invert.withGodotUnsafeRawPointer { __ptr_invert in
        skirt.withGodotUnsafeRawPointer { __ptr_skirt in
        normalize.withGodotUnsafeRawPointer { __ptr_normalize in
        withUnsafeArgumentPackPointer(__ptr_width, __ptr_height, __ptr_depth, __ptr_invert, __ptr_skirt, __ptr_normalize) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_seamless_image_3d,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}}
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