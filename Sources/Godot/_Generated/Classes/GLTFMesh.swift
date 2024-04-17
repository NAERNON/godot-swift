//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class GLTFMesh: Resource {
    internal static var __method_binding_get_mesh: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_mesh").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3754628756)!
        }
        }
    }()

    private func __getMesh() -> Godot.ImporterMesh? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_mesh,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_mesh: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_mesh").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2255166972)!
        }
        }
    }()

    private func __setMesh(
        _ mesh: Godot.ImporterMesh?
    ) {
        withTransferrableUnsafeRawPointer(to: mesh) { __ptr_mesh in
            withUnsafePointer(to: __ptr_mesh) { _ptr___ptr_mesh in
                withUnsafeArgumentPackPointer(_ptr___ptr_mesh) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_mesh,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_blend_weights: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_blend_weights").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2445143706)!
        }
        }
    }()

    private func __getBlendWeights() -> Godot.PackedFloat32Array {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_blend_weights,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_blend_weights: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_blend_weights").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2899603908)!
        }
        }
    }()

    private func __setBlendWeights(
        _ blendWeights: Godot.PackedFloat32Array
    ) {
        withTransferrableUnsafeRawPointer(to: blendWeights) { __ptr_blendWeights in
            withUnsafeArgumentPackPointer(__ptr_blendWeights) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_blend_weights,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_instance_materials: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_instance_materials").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()

    private func __getInstanceMaterials() -> Godot.GodotArray<Godot.Material?> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_instance_materials,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_instance_materials: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_instance_materials").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()

    private func __setInstanceMaterials(
        _ instanceMaterials: Godot.GodotArray<Godot.Material?>
    ) {
        withTransferrableUnsafeRawPointer(to: instanceMaterials) { __ptr_instanceMaterials in
            withUnsafeArgumentPackPointer(__ptr_instanceMaterials) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_instance_materials,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    public var mesh: Godot.ImporterMesh? {
        get {
            __getMesh()
        }
        set {
            __setMesh(
                newValue
            )
        }
    }

    public var blendWeights: Godot.PackedFloat32Array {
        get {
            __getBlendWeights()
        }
        set {
            __setBlendWeights(
                newValue
            )
        }
    }

    public var instanceMaterials: Godot.GodotArray<Godot.Material?> {
        get {
            __getInstanceMaterials()
        }
        set {
            __setInstanceMaterials(
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