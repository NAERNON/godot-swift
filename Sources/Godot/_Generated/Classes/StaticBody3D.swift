//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotClass
open class StaticBody3D: PhysicsBody3D {
    internal static var __method_binding_set_constant_linear_velocity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_constant_linear_velocity").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3460891852)!
            }
        }
    }()
    
    private func __setConstantLinearVelocity(
        vel: Godot.Vector3
    ) {
        withTransferrableUnsafeRawPointer(to: vel) { __ptr_vel in
            withUnsafeArgumentPackPointer(__ptr_vel) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_constant_linear_velocity,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_set_constant_angular_velocity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_constant_angular_velocity").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3460891852)!
            }
        }
    }()
    
    private func __setConstantAngularVelocity(
        vel: Godot.Vector3
    ) {
        withTransferrableUnsafeRawPointer(to: vel) { __ptr_vel in
            withUnsafeArgumentPackPointer(__ptr_vel) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_constant_angular_velocity,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_constant_linear_velocity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_constant_linear_velocity").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3360562783)!
            }
        }
    }()
    
    private func __getConstantLinearVelocity() -> Godot.Vector3 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_constant_linear_velocity,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_get_constant_angular_velocity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_constant_angular_velocity").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3360562783)!
            }
        }
    }()
    
    private func __getConstantAngularVelocity() -> Godot.Vector3 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_constant_angular_velocity,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_physics_material_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_physics_material_override").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1784508650)!
            }
        }
    }()
    
    private func __setPhysicsMaterialOverride(
        _ physicsMaterialOverride: Godot.PhysicsMaterial?
    ) {
        withTransferrableUnsafeRawPointer(to: physicsMaterialOverride) { __ptr_physicsMaterialOverride in
            withUnsafePointer(to: __ptr_physicsMaterialOverride) { _ptr___ptr_physicsMaterialOverride in
                withUnsafeArgumentPackPointer(_ptr___ptr_physicsMaterialOverride) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_physics_material_override,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_physics_material_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_physics_material_override").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2521850424)!
            }
        }
    }()
    
    private func __getPhysicsMaterialOverride() -> Godot.PhysicsMaterial? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_physics_material_override,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    public var physicsMaterialOverride: Godot.PhysicsMaterial? {
        get {
            __getPhysicsMaterialOverride()
        }
        set(newValue) {
            __setPhysicsMaterialOverride(
                newValue
            )
        }
    }
    
    public var constantLinearVelocity: Godot.Vector3 {
        get {
            __getConstantLinearVelocity()
        }
        set(newValue) {
            __setConstantLinearVelocity(
                vel: newValue
            )
        }
    }
    
    public var constantAngularVelocity: Godot.Vector3 {
        get {
            __getConstantAngularVelocity()
        }
        set(newValue) {
            __setConstantAngularVelocity(
                vel: newValue
            )
        }
    }
    
    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        _virtualFunctions = [:]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions![key] = value
        }
        return _virtualFunctions!
    }
}