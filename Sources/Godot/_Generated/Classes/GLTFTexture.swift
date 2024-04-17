//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class GLTFTexture: Resource {
    internal static var __method_binding_get_src_image: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_src_image").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    private func __getSrcImage() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_src_image,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_src_image: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_src_image").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    private func __setSrcImage(
        _ srcImage: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: srcImage) { __ptr_srcImage in
            withUnsafeArgumentPackPointer(__ptr_srcImage) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_src_image,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_sampler: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_sampler").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    private func __getSampler() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_sampler,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_sampler: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_sampler").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    private func __setSampler(
        _ sampler: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: sampler) { __ptr_sampler in
            withUnsafeArgumentPackPointer(__ptr_sampler) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_sampler,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    public var srcImage: Int32 {
        get {
            __getSrcImage()
        }
        set {
            __setSrcImage(
                newValue
            )
        }
    }

    public var sampler: Int32 {
        get {
            __getSampler()
        }
        set {
            __setSampler(
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