//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotClass
open class GPUParticlesCollisionSDF3D: GPUParticlesCollision3D {
    public enum Resolution: UInt32, GodotEnum {
        case resolution16 = 0
        case resolution32 = 1
        case resolution64 = 2
        case resolution128 = 3
        case resolution256 = 4
        case resolution512 = 5
        case max = 6

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Resolution16", 0),
            ("Resolution32", 1),
            ("Resolution64", 2),
            ("Resolution128", 3),
            ("Resolution256", 4),
            ("Resolution512", 5),
            ("Max", 6),]
        }
    }

    internal static var __method_binding_set_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_size").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()

    private func __setSize(
        _ size: Godot.Vector3
    ) {
        withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
            withUnsafeArgumentPackPointer(__ptr_size) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_size,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_size").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()

    private func __getSize() -> Godot.Vector3 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_size,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_resolution: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_resolution").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1155629297)!
        }
        }
    }()

    private func __setResolution(
        _ resolution: Godot.GPUParticlesCollisionSDF3D.Resolution
    ) {
        withTransferrableUnsafeRawPointer(to: resolution) { __ptr_resolution in
            withUnsafeArgumentPackPointer(__ptr_resolution) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_resolution,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_resolution: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_resolution").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2919555867)!
        }
        }
    }()

    private func __getResolution() -> Godot.GPUParticlesCollisionSDF3D.Resolution {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_resolution,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_texture").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1188404210)!
        }
        }
    }()

    private func __setTexture(
        _ texture: Godot.Texture3D?
    ) {
        withTransferrableUnsafeRawPointer(to: texture) { __ptr_texture in
            withUnsafePointer(to: __ptr_texture) { _ptr___ptr_texture in
                withUnsafeArgumentPackPointer(_ptr___ptr_texture) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_texture,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373985333)!
        }
        }
    }()

    private func __getTexture() -> Godot.Texture3D? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_texture,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_thickness: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_thickness").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setThickness(
        _ thickness: Double
    ) {
        withTransferrableUnsafeRawPointer(to: thickness) { __ptr_thickness in
            withUnsafeArgumentPackPointer(__ptr_thickness) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_thickness,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_thickness: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_thickness").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getThickness() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_thickness,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_bake_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_bake_mask").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    private func __setBakeMask(
        _ mask: UInt32
    ) {
        withTransferrableUnsafeRawPointer(to: mask) { __ptr_mask in
            withUnsafeArgumentPackPointer(__ptr_mask) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_bake_mask,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_bake_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_bake_mask").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    private func __getBakeMask() -> UInt32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_bake_mask,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_bake_mask_value: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_bake_mask_value").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()

    public func setBakeMaskValue(
        layerNumber: Int32,
        value: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: layerNumber) { __ptr_layerNumber in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_layerNumber, __ptr_value) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_bake_mask_value,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_bake_mask_value: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_bake_mask_value").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()

    public func bakeMaskValue(
        layerNumber: Int32
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: layerNumber) { __ptr_layerNumber in
                withUnsafeArgumentPackPointer(__ptr_layerNumber) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_bake_mask_value,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    public var size: Godot.Vector3 {
        get {
            __getSize()
        }
        set {
            __setSize(
                newValue
            )
        }
    }

    public var resolution: Godot.GPUParticlesCollisionSDF3D.Resolution {
        get {
            __getResolution()
        }
        set {
            __setResolution(
                newValue
            )
        }
    }

    public var thickness: Double {
        get {
            __getThickness()
        }
        set {
            __setThickness(
                newValue
            )
        }
    }

    public var bakeMask: UInt32 {
        get {
            __getBakeMask()
        }
        set {
            __setBakeMask(
                newValue
            )
        }
    }

    public var texture: Godot.Texture3D? {
        get {
            __getTexture()
        }
        set {
            __setTexture(
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