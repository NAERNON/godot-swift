//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotClass
open class RigidBody2D: PhysicsBody2D {
    public enum FreezeMode: UInt32, GodotEnum {
        case `static` = 0
        case kinematic = 1
        
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
               ("Static", 0),
               ("Kinematic", 1),
            ]
        }
    }
    
    public enum CenterOfMassMode: UInt32, GodotEnum {
        case auto = 0
        case custom = 1
        
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
               ("Auto", 0),
               ("Custom", 1),
            ]
        }
    }
    
    public enum DampMode: UInt32, GodotEnum {
        case combine = 0
        case replace = 1
        
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
               ("Combine", 0),
               ("Replace", 1),
            ]
        }
    }
    
    public enum CCDMode: UInt32, GodotEnum {
        case disabled = 0
        case castRay = 1
        case castShape = 2
        
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
               ("Disabled", 0),
               ("Cast Ray", 1),
               ("Cast Shape", 2),
            ]
        }
    }
    
    public struct BodyShapeEnteredSignalInput: Godot.SignalInput {
        public let bodyRID: Godot.RID
        public let body: Godot.Node?
        public let bodyShapeIndex: Int
        public let localShapeIndex: Int
        fileprivate init(bodyRID: Godot.RID, body: Godot.Node?, bodyShapeIndex: Int, localShapeIndex: Int) {
            self.bodyRID = bodyRID
            self.body = body
            self.bodyShapeIndex = bodyShapeIndex
            self.localShapeIndex = localShapeIndex
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.bodyRID), Variant(input.body), Variant(input.bodyShapeIndex), Variant(input.localShapeIndex)]
        }
    }
    public func bodyShapeEntered(bodyRID: Godot.RID, body: Godot.Node?, bodyShapeIndex: Int, localShapeIndex: Int) {
        _ = bodyShapeEnteredSignal.emit(.init(bodyRID: bodyRID,
                body: body,
                bodyShapeIndex: bodyShapeIndex,
                localShapeIndex: localShapeIndex))
    }
    public lazy var bodyShapeEnteredSignal: Godot.SignalEmitter<BodyShapeEnteredSignalInput> = {
        .init(object: self, signalName: "body_shape_entered") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<BodyShapeEnteredSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(bodyRID: Godot.RID.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!),
                    body: Godot.Node?.convertFromStorage(unsafePointer: args!.advanced(by: 1).pointee!),
                    bodyShapeIndex: Int.convertFromStorage(unsafePointer: args!.advanced(by: 2).pointee!),
                    localShapeIndex: Int.convertFromStorage(unsafePointer: args!.advanced(by: 3).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<BodyShapeEnteredSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<BodyShapeEnteredSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()
    
    public struct BodyShapeExitedSignalInput: Godot.SignalInput {
        public let bodyRID: Godot.RID
        public let body: Godot.Node?
        public let bodyShapeIndex: Int
        public let localShapeIndex: Int
        fileprivate init(bodyRID: Godot.RID, body: Godot.Node?, bodyShapeIndex: Int, localShapeIndex: Int) {
            self.bodyRID = bodyRID
            self.body = body
            self.bodyShapeIndex = bodyShapeIndex
            self.localShapeIndex = localShapeIndex
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.bodyRID), Variant(input.body), Variant(input.bodyShapeIndex), Variant(input.localShapeIndex)]
        }
    }
    public func bodyShapeExited(bodyRID: Godot.RID, body: Godot.Node?, bodyShapeIndex: Int, localShapeIndex: Int) {
        _ = bodyShapeExitedSignal.emit(.init(bodyRID: bodyRID,
                body: body,
                bodyShapeIndex: bodyShapeIndex,
                localShapeIndex: localShapeIndex))
    }
    public lazy var bodyShapeExitedSignal: Godot.SignalEmitter<BodyShapeExitedSignalInput> = {
        .init(object: self, signalName: "body_shape_exited") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<BodyShapeExitedSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(bodyRID: Godot.RID.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!),
                    body: Godot.Node?.convertFromStorage(unsafePointer: args!.advanced(by: 1).pointee!),
                    bodyShapeIndex: Int.convertFromStorage(unsafePointer: args!.advanced(by: 2).pointee!),
                    localShapeIndex: Int.convertFromStorage(unsafePointer: args!.advanced(by: 3).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<BodyShapeExitedSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<BodyShapeExitedSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()
    
    public struct BodyEnteredSignalInput: Godot.SignalInput {
        public let body: Godot.Node?
        fileprivate init(body: Godot.Node?) {
            self.body = body
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.body)]
        }
    }
    public func bodyEntered(body: Godot.Node?) {
        _ = bodyEnteredSignal.emit(.init(body: body))
    }
    public lazy var bodyEnteredSignal: Godot.SignalEmitter<BodyEnteredSignalInput> = {
        .init(object: self, signalName: "body_entered") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<BodyEnteredSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(body: Godot.Node?.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<BodyEnteredSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<BodyEnteredSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()
    
    public struct BodyExitedSignalInput: Godot.SignalInput {
        public let body: Godot.Node?
        fileprivate init(body: Godot.Node?) {
            self.body = body
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.body)]
        }
    }
    public func bodyExited(body: Godot.Node?) {
        _ = bodyExitedSignal.emit(.init(body: body))
    }
    public lazy var bodyExitedSignal: Godot.SignalEmitter<BodyExitedSignalInput> = {
        .init(object: self, signalName: "body_exited") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<BodyExitedSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(body: Godot.Node?.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<BodyExitedSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<BodyExitedSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()
    
    
    public func sleepingStateChanged() {
        _ = sleepingStateChangedSignal.emit()
    }
    public lazy var sleepingStateChangedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "sleeping_state_changed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()
    
    open func _integrateForces(
        state: Godot.PhysicsDirectBodyState2D?
    ) {
        
    }
    
    internal static var __method_binding_set_mass: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_mass").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
            }
        }
    }()
    
    private func __setMass(
        _ mass: Double
    ) {
        withTransferrableUnsafeRawPointer(to: mass) { __ptr_mass in
            withUnsafeArgumentPackPointer(__ptr_mass) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_mass,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_mass: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_mass").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
            }
        }
    }()
    
    private func __getMass() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_mass,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_get_inertia: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_inertia").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
            }
        }
    }()
    
    private func __getInertia() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_inertia,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_inertia: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_inertia").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
            }
        }
    }()
    
    private func __setInertia(
        _ inertia: Double
    ) {
        withTransferrableUnsafeRawPointer(to: inertia) { __ptr_inertia in
            withUnsafeArgumentPackPointer(__ptr_inertia) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_inertia,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_set_center_of_mass_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_center_of_mass_mode").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1757235706)!
            }
        }
    }()
    
    private func __setCenterOfMassMode(
        _ mode: Godot.RigidBody2D.CenterOfMassMode
    ) {
        withTransferrableUnsafeRawPointer(to: mode) { __ptr_mode in
            withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_center_of_mass_mode,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_center_of_mass_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_center_of_mass_mode").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3277132817)!
            }
        }
    }()
    
    private func __getCenterOfMassMode() -> Godot.RigidBody2D.CenterOfMassMode {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_center_of_mass_mode,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_center_of_mass: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_center_of_mass").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 743155724)!
            }
        }
    }()
    
    private func __setCenterOfMass(
        _ centerOfMass: Godot.Vector2
    ) {
        withTransferrableUnsafeRawPointer(to: centerOfMass) { __ptr_centerOfMass in
            withUnsafeArgumentPackPointer(__ptr_centerOfMass) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_center_of_mass,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_center_of_mass: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_center_of_mass").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3341600327)!
            }
        }
    }()
    
    private func __getCenterOfMass() -> Godot.Vector2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_center_of_mass,
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
    
    internal static var __method_binding_set_gravity_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_gravity_scale").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
            }
        }
    }()
    
    private func __setGravityScale(
        _ gravityScale: Double
    ) {
        withTransferrableUnsafeRawPointer(to: gravityScale) { __ptr_gravityScale in
            withUnsafeArgumentPackPointer(__ptr_gravityScale) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_gravity_scale,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_gravity_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_gravity_scale").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
            }
        }
    }()
    
    private func __getGravityScale() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_gravity_scale,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_linear_damp_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_linear_damp_mode").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3406533708)!
            }
        }
    }()
    
    private func __setLinearDampMode(
        _ linearDampMode: Godot.RigidBody2D.DampMode
    ) {
        withTransferrableUnsafeRawPointer(to: linearDampMode) { __ptr_linearDampMode in
            withUnsafeArgumentPackPointer(__ptr_linearDampMode) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_linear_damp_mode,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_linear_damp_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_linear_damp_mode").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2970511462)!
            }
        }
    }()
    
    private func __getLinearDampMode() -> Godot.RigidBody2D.DampMode {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_linear_damp_mode,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_angular_damp_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_angular_damp_mode").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3406533708)!
            }
        }
    }()
    
    private func __setAngularDampMode(
        _ angularDampMode: Godot.RigidBody2D.DampMode
    ) {
        withTransferrableUnsafeRawPointer(to: angularDampMode) { __ptr_angularDampMode in
            withUnsafeArgumentPackPointer(__ptr_angularDampMode) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_angular_damp_mode,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_angular_damp_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_angular_damp_mode").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2970511462)!
            }
        }
    }()
    
    private func __getAngularDampMode() -> Godot.RigidBody2D.DampMode {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_angular_damp_mode,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_linear_damp: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_linear_damp").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
            }
        }
    }()
    
    private func __setLinearDamp(
        _ linearDamp: Double
    ) {
        withTransferrableUnsafeRawPointer(to: linearDamp) { __ptr_linearDamp in
            withUnsafeArgumentPackPointer(__ptr_linearDamp) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_linear_damp,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_linear_damp: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_linear_damp").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
            }
        }
    }()
    
    private func __getLinearDamp() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_linear_damp,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_angular_damp: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_angular_damp").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
            }
        }
    }()
    
    private func __setAngularDamp(
        _ angularDamp: Double
    ) {
        withTransferrableUnsafeRawPointer(to: angularDamp) { __ptr_angularDamp in
            withUnsafeArgumentPackPointer(__ptr_angularDamp) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_angular_damp,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_angular_damp: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_angular_damp").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
            }
        }
    }()
    
    private func __getAngularDamp() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_angular_damp,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_linear_velocity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_linear_velocity").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 743155724)!
            }
        }
    }()
    
    private func __setLinearVelocity(
        _ linearVelocity: Godot.Vector2
    ) {
        withTransferrableUnsafeRawPointer(to: linearVelocity) { __ptr_linearVelocity in
            withUnsafeArgumentPackPointer(__ptr_linearVelocity) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_linear_velocity,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_linear_velocity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_linear_velocity").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3341600327)!
            }
        }
    }()
    
    private func __getLinearVelocity() -> Godot.Vector2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_linear_velocity,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_angular_velocity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_angular_velocity").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
            }
        }
    }()
    
    private func __setAngularVelocity(
        _ angularVelocity: Double
    ) {
        withTransferrableUnsafeRawPointer(to: angularVelocity) { __ptr_angularVelocity in
            withUnsafeArgumentPackPointer(__ptr_angularVelocity) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_angular_velocity,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_angular_velocity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_angular_velocity").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
            }
        }
    }()
    
    private func __getAngularVelocity() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_angular_velocity,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_max_contacts_reported: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_max_contacts_reported").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
            }
        }
    }()
    
    private func __setMaxContactsReported(
        amount: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: amount) { __ptr_amount in
            withUnsafeArgumentPackPointer(__ptr_amount) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_max_contacts_reported,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_max_contacts_reported: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_max_contacts_reported").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
            }
        }
    }()
    
    private func __getMaxContactsReported() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_max_contacts_reported,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_get_contact_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_contact_count").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
            }
        }
    }()
    
    public func contactCount() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_contact_count,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_use_custom_integrator: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_use_custom_integrator").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
            }
        }
    }()
    
    private func __setUseCustomIntegrator(
        enable: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: enable) { __ptr_enable in
            withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_use_custom_integrator,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_is_using_custom_integrator: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "is_using_custom_integrator").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2240911060)!
            }
        }
    }()
    
    private func __isUsingCustomIntegrator() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_using_custom_integrator,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_contact_monitor: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_contact_monitor").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
            }
        }
    }()
    
    private func __setContactMonitor(
        enabled: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: enabled) { __ptr_enabled in
            withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_contact_monitor,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_is_contact_monitor_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "is_contact_monitor_enabled").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
            }
        }
    }()
    
    private func __isContactMonitorEnabled() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_contact_monitor_enabled,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_continuous_collision_detection_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_continuous_collision_detection_mode").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1000241384)!
            }
        }
    }()
    
    private func __setContinuousCollisionDetectionMode(
        _ mode: Godot.RigidBody2D.CCDMode
    ) {
        withTransferrableUnsafeRawPointer(to: mode) { __ptr_mode in
            withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_continuous_collision_detection_mode,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_continuous_collision_detection_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_continuous_collision_detection_mode").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 815214376)!
            }
        }
    }()
    
    private func __getContinuousCollisionDetectionMode() -> Godot.RigidBody2D.CCDMode {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_continuous_collision_detection_mode,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_axis_velocity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_axis_velocity").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 743155724)!
            }
        }
    }()
    
    public func setAxisVelocity(
        _ axisVelocity: Godot.Vector2
    ) {
        withTransferrableUnsafeRawPointer(to: axisVelocity) { __ptr_axisVelocity in
            withUnsafeArgumentPackPointer(__ptr_axisVelocity) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_axis_velocity,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_apply_central_impulse: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "apply_central_impulse").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3862383994)!
            }
        }
    }()
    
    public func applyCentralImpulse(
        _ impulse: Godot.Vector2 = Vector2(x: 0, y: 0)
    ) {
        withTransferrableUnsafeRawPointer(to: impulse) { __ptr_impulse in
            withUnsafeArgumentPackPointer(__ptr_impulse) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_apply_central_impulse,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_apply_impulse: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "apply_impulse").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4288681949)!
            }
        }
    }()
    
    public func applyImpulse(
        _ impulse: Godot.Vector2,
        position: Godot.Vector2 = Vector2(x: 0, y: 0)
    ) {
        withTransferrableUnsafeRawPointer(to: impulse) { __ptr_impulse in
            withTransferrableUnsafeRawPointer(to: position) { __ptr_position in
                withUnsafeArgumentPackPointer(__ptr_impulse, __ptr_position) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_apply_impulse,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_apply_torque_impulse: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "apply_torque_impulse").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
            }
        }
    }()
    
    public func applyTorqueImpulse(
        torque: Double
    ) {
        withTransferrableUnsafeRawPointer(to: torque) { __ptr_torque in
            withUnsafeArgumentPackPointer(__ptr_torque) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_apply_torque_impulse,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_apply_central_force: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "apply_central_force").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 743155724)!
            }
        }
    }()
    
    public func applyCentralForce(
        _ force: Godot.Vector2
    ) {
        withTransferrableUnsafeRawPointer(to: force) { __ptr_force in
            withUnsafeArgumentPackPointer(__ptr_force) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_apply_central_force,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_apply_force: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "apply_force").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4288681949)!
            }
        }
    }()
    
    public func applyForce(
        _ force: Godot.Vector2,
        position: Godot.Vector2 = Vector2(x: 0, y: 0)
    ) {
        withTransferrableUnsafeRawPointer(to: force) { __ptr_force in
            withTransferrableUnsafeRawPointer(to: position) { __ptr_position in
                withUnsafeArgumentPackPointer(__ptr_force, __ptr_position) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_apply_force,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_apply_torque: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "apply_torque").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
            }
        }
    }()
    
    public func applyTorque(
        _ torque: Double
    ) {
        withTransferrableUnsafeRawPointer(to: torque) { __ptr_torque in
            withUnsafeArgumentPackPointer(__ptr_torque) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_apply_torque,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_add_constant_central_force: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "add_constant_central_force").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 743155724)!
            }
        }
    }()
    
    public func addConstantCentralForce(
        _ force: Godot.Vector2
    ) {
        withTransferrableUnsafeRawPointer(to: force) { __ptr_force in
            withUnsafeArgumentPackPointer(__ptr_force) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_add_constant_central_force,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_add_constant_force: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "add_constant_force").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4288681949)!
            }
        }
    }()
    
    public func addConstantForce(
        _ force: Godot.Vector2,
        position: Godot.Vector2 = Vector2(x: 0, y: 0)
    ) {
        withTransferrableUnsafeRawPointer(to: force) { __ptr_force in
            withTransferrableUnsafeRawPointer(to: position) { __ptr_position in
                withUnsafeArgumentPackPointer(__ptr_force, __ptr_position) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_add_constant_force,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_add_constant_torque: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "add_constant_torque").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
            }
        }
    }()
    
    public func addConstantTorque(
        _ torque: Double
    ) {
        withTransferrableUnsafeRawPointer(to: torque) { __ptr_torque in
            withUnsafeArgumentPackPointer(__ptr_torque) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_add_constant_torque,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_set_constant_force: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_constant_force").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 743155724)!
            }
        }
    }()
    
    private func __setConstantForce(
        _ force: Godot.Vector2
    ) {
        withTransferrableUnsafeRawPointer(to: force) { __ptr_force in
            withUnsafeArgumentPackPointer(__ptr_force) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_constant_force,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_constant_force: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_constant_force").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3341600327)!
            }
        }
    }()
    
    private func __getConstantForce() -> Godot.Vector2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_constant_force,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_constant_torque: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_constant_torque").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
            }
        }
    }()
    
    private func __setConstantTorque(
        _ torque: Double
    ) {
        withTransferrableUnsafeRawPointer(to: torque) { __ptr_torque in
            withUnsafeArgumentPackPointer(__ptr_torque) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_constant_torque,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_constant_torque: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_constant_torque").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
            }
        }
    }()
    
    private func __getConstantTorque() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_constant_torque,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_sleeping: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_sleeping").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
            }
        }
    }()
    
    private func __setSleeping(
        _ sleeping: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: sleeping) { __ptr_sleeping in
            withUnsafeArgumentPackPointer(__ptr_sleeping) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_sleeping,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_is_sleeping: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "is_sleeping").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
            }
        }
    }()
    
    private func __isSleeping() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_sleeping,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_can_sleep: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_can_sleep").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
            }
        }
    }()
    
    private func __setCanSleep(
        ableToSleep: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: ableToSleep) { __ptr_ableToSleep in
            withUnsafeArgumentPackPointer(__ptr_ableToSleep) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_can_sleep,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_is_able_to_sleep: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "is_able_to_sleep").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
            }
        }
    }()
    
    private func __isAbleToSleep() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_able_to_sleep,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_lock_rotation_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_lock_rotation_enabled").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
            }
        }
    }()
    
    private func __setLockRotationEnabled(
        lockRotation: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: lockRotation) { __ptr_lockRotation in
            withUnsafeArgumentPackPointer(__ptr_lockRotation) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_lock_rotation_enabled,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_is_lock_rotation_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "is_lock_rotation_enabled").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
            }
        }
    }()
    
    private func __isLockRotationEnabled() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_lock_rotation_enabled,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_freeze_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_freeze_enabled").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
            }
        }
    }()
    
    private func __setFreezeEnabled(
        freezeMode: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: freezeMode) { __ptr_freezeMode in
            withUnsafeArgumentPackPointer(__ptr_freezeMode) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_freeze_enabled,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_is_freeze_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "is_freeze_enabled").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
            }
        }
    }()
    
    private func __isFreezeEnabled() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_freeze_enabled,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_freeze_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_freeze_mode").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1705112154)!
            }
        }
    }()
    
    private func __setFreezeMode(
        _ freezeMode: Godot.RigidBody2D.FreezeMode
    ) {
        withTransferrableUnsafeRawPointer(to: freezeMode) { __ptr_freezeMode in
            withUnsafeArgumentPackPointer(__ptr_freezeMode) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_freeze_mode,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_freeze_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_freeze_mode").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2016872314)!
            }
        }
    }()
    
    private func __getFreezeMode() -> Godot.RigidBody2D.FreezeMode {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_freeze_mode,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_get_colliding_bodies: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_colliding_bodies").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3995934104)!
            }
        }
    }()
    
    public func collidingBodies() -> Godot.GodotArray<Godot.Node2D> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_colliding_bodies,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    public var mass: Double {
        get {
            __getMass()
        }
        set(newValue) {
            __setMass(
                newValue
            )
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
    
    public var gravityScale: Double {
        get {
            __getGravityScale()
        }
        set(newValue) {
            __setGravityScale(
                newValue
            )
        }
    }
    
    public var centerOfMassMode: Godot.RigidBody2D.CenterOfMassMode {
        get {
            __getCenterOfMassMode()
        }
        set(newValue) {
            __setCenterOfMassMode(
                newValue
            )
        }
    }
    
    public var centerOfMass: Godot.Vector2 {
        get {
            __getCenterOfMass()
        }
        set(newValue) {
            __setCenterOfMass(
                newValue
            )
        }
    }
    
    public var inertia: Double {
        get {
            __getInertia()
        }
        set(newValue) {
            __setInertia(
                newValue
            )
        }
    }
    
    public var isSleeping: Bool {
        get {
            __isSleeping()
        }
        set(newValue) {
            __setSleeping(
                newValue
            )
        }
    }
    
    public var isAbleToSleep: Bool {
        get {
            __isAbleToSleep()
        }
        set(newValue) {
            __setCanSleep(
                ableToSleep: newValue
            )
        }
    }
    
    public var isLockRotationEnabled: Bool {
        get {
            __isLockRotationEnabled()
        }
        set(newValue) {
            __setLockRotationEnabled(
                lockRotation: newValue
            )
        }
    }
    
    public var isFreezeEnabled: Bool {
        get {
            __isFreezeEnabled()
        }
        set(newValue) {
            __setFreezeEnabled(
                freezeMode: newValue
            )
        }
    }
    
    public var freezeMode: Godot.RigidBody2D.FreezeMode {
        get {
            __getFreezeMode()
        }
        set(newValue) {
            __setFreezeMode(
                newValue
            )
        }
    }
    
    public var isUsingCustomIntegrator: Bool {
        get {
            __isUsingCustomIntegrator()
        }
        set(newValue) {
            __setUseCustomIntegrator(
                enable: newValue
            )
        }
    }
    
    public var continuousCollisionDetectionMode: Godot.RigidBody2D.CCDMode {
        get {
            __getContinuousCollisionDetectionMode()
        }
        set(newValue) {
            __setContinuousCollisionDetectionMode(
                newValue
            )
        }
    }
    
    public var maxContactsReported: Int32 {
        get {
            __getMaxContactsReported()
        }
        set(newValue) {
            __setMaxContactsReported(
                amount: newValue
            )
        }
    }
    
    public var isContactMonitorEnabled: Bool {
        get {
            __isContactMonitorEnabled()
        }
        set(newValue) {
            __setContactMonitor(
                enabled: newValue
            )
        }
    }
    
    public var linearVelocity: Godot.Vector2 {
        get {
            __getLinearVelocity()
        }
        set(newValue) {
            __setLinearVelocity(
                newValue
            )
        }
    }
    
    public var linearDampMode: Godot.RigidBody2D.DampMode {
        get {
            __getLinearDampMode()
        }
        set(newValue) {
            __setLinearDampMode(
                newValue
            )
        }
    }
    
    public var linearDamp: Double {
        get {
            __getLinearDamp()
        }
        set(newValue) {
            __setLinearDamp(
                newValue
            )
        }
    }
    
    public var angularVelocity: Double {
        get {
            __getAngularVelocity()
        }
        set(newValue) {
            __setAngularVelocity(
                newValue
            )
        }
    }
    
    public var angularDampMode: Godot.RigidBody2D.DampMode {
        get {
            __getAngularDampMode()
        }
        set(newValue) {
            __setAngularDampMode(
                newValue
            )
        }
    }
    
    public var angularDamp: Double {
        get {
            __getAngularDamp()
        }
        set(newValue) {
            __setAngularDamp(
                newValue
            )
        }
    }
    
    public var constantForce: Godot.Vector2 {
        get {
            __getConstantForce()
        }
        set(newValue) {
            __setConstantForce(
                newValue
            )
        }
    }
    
    public var constantTorque: Double {
        get {
            __getConstantTorque()
        }
        set(newValue) {
            __setConstantTorque(
                newValue
            )
        }
    }
    
    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _integrate_forces_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else { return }
            Unmanaged<RigidBody2D>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._integrateForces(
                    state: Godot.PhysicsDirectBodyState2D?.transferFromGodot(unsafePointer: args[0]!)
                )
        }
        _virtualFunctions = [
            "_integrateForces" : ("_integrate_forces", _integrate_forces_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions![key] = value
        }
        return _virtualFunctions!
    }
}