//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class Shape3D: Resource {
    internal static var __method_binding_set_custom_solver_bias: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_custom_solver_bias").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setCustomSolverBias(
        _ bias: Double
    ) {
        withTransferrableUnsafeRawPointer(to: bias) { __ptr_bias in
            withUnsafeArgumentPackPointer(__ptr_bias) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_custom_solver_bias,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_custom_solver_bias: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_custom_solver_bias").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getCustomSolverBias() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_custom_solver_bias,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_margin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_margin").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setMargin(
        _ margin: Double
    ) {
        withTransferrableUnsafeRawPointer(to: margin) { __ptr_margin in
            withUnsafeArgumentPackPointer(__ptr_margin) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_margin,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_margin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_margin").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getMargin() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_margin,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_debug_mesh: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_debug_mesh").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1605880883)!
        }
        }
    }()

    public func debugMesh() -> Godot.ArrayMesh? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_debug_mesh,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    public var customSolverBias: Double {
        get {
            __getCustomSolverBias()
        }
        set {
            __setCustomSolverBias(
                newValue
            )
        }
    }

    public var margin: Double {
        get {
            __getMargin()
        }
        set {
            __setMargin(
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