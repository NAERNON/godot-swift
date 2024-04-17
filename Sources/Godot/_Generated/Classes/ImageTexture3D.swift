//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class ImageTexture3D: Texture3D {
    internal static var __method_binding_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1130379827)!
        }
        }
    }()

    public func create(
        format: Godot.Image.Format,
        width: Int32,
        height: Int32,
        depth: Int32,
        useMipmaps: Bool,
        data: Godot.GodotArray<Godot.Image?>
    ) -> Godot.ErrorType {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: format) { __ptr_format in
                withTransferrableUnsafeRawPointer(to: width) { __ptr_width in
                    withTransferrableUnsafeRawPointer(to: height) { __ptr_height in
                        withTransferrableUnsafeRawPointer(to: depth) { __ptr_depth in
                            withTransferrableUnsafeRawPointer(to: useMipmaps) { __ptr_useMipmaps in
                                withTransferrableUnsafeRawPointer(to: data) { __ptr_data in
                                    withUnsafeArgumentPackPointer(__ptr_format, __ptr_width, __ptr_height, __ptr_depth, __ptr_useMipmaps, __ptr_data) { __accessPtr in
                                        self.withUnsafeMutableRawPointer { __ptr_self in
                                            GodotExtension.Interface.objectMethodBindPtrcall(
                                                Self.__method_binding_create,
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

    internal static var __method_binding_update: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "update").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()

    public func update(
        data: Godot.GodotArray<Godot.Image?>
    ) {
        withTransferrableUnsafeRawPointer(to: data) { __ptr_data in
            withUnsafeArgumentPackPointer(__ptr_data) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_update,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
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