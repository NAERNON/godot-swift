//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class ImageTextureLayered: TextureLayered {
    internal static var __method_binding_create_from_images: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_from_images").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2785773503)!
        }
        }
    }()
    public func createFromImages(_ images: Godot.GodotArray<Godot.Image?>) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        images.withGodotUnsafeRawPointer { __ptr_images in
        withUnsafeArgumentPackPointer(__ptr_images) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_create_from_images,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_update_layer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "update_layer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3331733361)!
        }
        }
    }()
    public func updateLayer(image: Godot.Image?, layer: Int32) {
        image.withGodotUnsafeRawPointer { __ptr_image in
        withUnsafePointer(to: __ptr_image) { _ptr___ptr_image in
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        withUnsafeArgumentPackPointer(_ptr___ptr_image, __ptr_layer) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_update_layer,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
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