//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class Area2D: CollisionObject2D {
    public enum SpaceOverride: UInt32, GodotEnum {
        case disabled = 0
        case combine = 1
        case combineReplace = 2
        case replace = 3
        case replaceCombine = 4
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Disabled", 0),
            ("Combine", 1),
            ("Combine Replace", 2),
            ("Replace", 3),
            ("Replace Combine", 4),]
        }
    }

    public func bodyShapeEntered(bodyRid: Godot.RID, body: Godot.Node2D?, bodyShapeIndex: Int, localShapeIndex: Int) {
        bodyShapeEnteredConnector.emit(bodyRid, body, bodyShapeIndex, localShapeIndex)
    }

    public private (set) lazy var bodyShapeEnteredConnector: Godot.SignalConnector<Godot.RID, Godot.Node2D?, Int, Int> = {
        .init(self, "body_shape_entered")
    }()

    public func bodyShapeExited(bodyRid: Godot.RID, body: Godot.Node2D?, bodyShapeIndex: Int, localShapeIndex: Int) {
        bodyShapeExitedConnector.emit(bodyRid, body, bodyShapeIndex, localShapeIndex)
    }

    public private (set) lazy var bodyShapeExitedConnector: Godot.SignalConnector<Godot.RID, Godot.Node2D?, Int, Int> = {
        .init(self, "body_shape_exited")
    }()

    public func bodyEntered(body: Godot.Node2D?) {
        bodyEnteredConnector.emit(body)
    }

    public private (set) lazy var bodyEnteredConnector: Godot.SignalConnector<Godot.Node2D?> = {
        .init(self, "body_entered")
    }()

    public func bodyExited(body: Godot.Node2D?) {
        bodyExitedConnector.emit(body)
    }

    public private (set) lazy var bodyExitedConnector: Godot.SignalConnector<Godot.Node2D?> = {
        .init(self, "body_exited")
    }()

    public func areaShapeEntered(areaRid: Godot.RID, area: Godot.Area2D?, areaShapeIndex: Int, localShapeIndex: Int) {
        areaShapeEnteredConnector.emit(areaRid, area, areaShapeIndex, localShapeIndex)
    }

    public private (set) lazy var areaShapeEnteredConnector: Godot.SignalConnector<Godot.RID, Godot.Area2D?, Int, Int> = {
        .init(self, "area_shape_entered")
    }()

    public func areaShapeExited(areaRid: Godot.RID, area: Godot.Area2D?, areaShapeIndex: Int, localShapeIndex: Int) {
        areaShapeExitedConnector.emit(areaRid, area, areaShapeIndex, localShapeIndex)
    }

    public private (set) lazy var areaShapeExitedConnector: Godot.SignalConnector<Godot.RID, Godot.Area2D?, Int, Int> = {
        .init(self, "area_shape_exited")
    }()

    public func areaEntered(area: Godot.Area2D?) {
        areaEnteredConnector.emit(area)
    }

    public private (set) lazy var areaEnteredConnector: Godot.SignalConnector<Godot.Area2D?> = {
        .init(self, "area_entered")
    }()

    public func areaExited(area: Godot.Area2D?) {
        areaExitedConnector.emit(area)
    }

    public private (set) lazy var areaExitedConnector: Godot.SignalConnector<Godot.Area2D?> = {
        .init(self, "area_exited")
    }()

    private static var __method_binding_set_gravity_space_override_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_gravity_space_override_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2879900038)!
        }
        }
    }()
    private func __setGravitySpaceOverrideMode(_ spaceOverrideMode: Godot.Area2D.SpaceOverride) {
        spaceOverrideMode.withGodotUnsafeRawPointer { __ptr_spaceOverrideMode in
        withUnsafeArgumentPackPointer(__ptr_spaceOverrideMode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_gravity_space_override_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_gravity_space_override_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_gravity_space_override_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3990256304)!
        }
        }
    }()
    private func __getGravitySpaceOverrideMode() -> Godot.Area2D.SpaceOverride {
        Godot.Area2D.SpaceOverride.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_gravity_space_override_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_gravity_is_point: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_gravity_is_point").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setGravityIsPoint(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_gravity_is_point,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_gravity_a_point: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_gravity_a_point").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isGravityAPoint() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_gravity_a_point,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_gravity_point_unit_distance: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_gravity_point_unit_distance").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setGravityPointUnitDistance(distanceScale: Double) {
        distanceScale.withGodotUnsafeRawPointer { __ptr_distanceScale in
        withUnsafeArgumentPackPointer(__ptr_distanceScale) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_gravity_point_unit_distance,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_gravity_point_unit_distance: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_gravity_point_unit_distance").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getGravityPointUnitDistance() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_gravity_point_unit_distance,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_gravity_point_center: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_gravity_point_center").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 743155724)!
        }
        }
    }()
    private func __setGravityPointCenter(_ center: Godot.Vector2) {
        center.withGodotUnsafeRawPointer { __ptr_center in
        withUnsafeArgumentPackPointer(__ptr_center) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_gravity_point_center,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_gravity_point_center: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_gravity_point_center").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()
    private func __getGravityPointCenter() -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_gravity_point_center,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_gravity_direction: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_gravity_direction").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 743155724)!
        }
        }
    }()
    private func __setGravityDirection(_ direction: Godot.Vector2) {
        direction.withGodotUnsafeRawPointer { __ptr_direction in
        withUnsafeArgumentPackPointer(__ptr_direction) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_gravity_direction,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_gravity_direction: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_gravity_direction").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()
    private func __getGravityDirection() -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_gravity_direction,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_gravity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_gravity").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setGravity(_ gravity: Double) {
        gravity.withGodotUnsafeRawPointer { __ptr_gravity in
        withUnsafeArgumentPackPointer(__ptr_gravity) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_gravity,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_gravity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_gravity").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getGravity() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_gravity,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_linear_damp_space_override_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_linear_damp_space_override_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2879900038)!
        }
        }
    }()
    private func __setLinearDampSpaceOverrideMode(_ spaceOverrideMode: Godot.Area2D.SpaceOverride) {
        spaceOverrideMode.withGodotUnsafeRawPointer { __ptr_spaceOverrideMode in
        withUnsafeArgumentPackPointer(__ptr_spaceOverrideMode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_linear_damp_space_override_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_linear_damp_space_override_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_linear_damp_space_override_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3990256304)!
        }
        }
    }()
    private func __getLinearDampSpaceOverrideMode() -> Godot.Area2D.SpaceOverride {
        Godot.Area2D.SpaceOverride.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_linear_damp_space_override_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_angular_damp_space_override_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_angular_damp_space_override_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2879900038)!
        }
        }
    }()
    private func __setAngularDampSpaceOverrideMode(_ spaceOverrideMode: Godot.Area2D.SpaceOverride) {
        spaceOverrideMode.withGodotUnsafeRawPointer { __ptr_spaceOverrideMode in
        withUnsafeArgumentPackPointer(__ptr_spaceOverrideMode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_angular_damp_space_override_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_angular_damp_space_override_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_angular_damp_space_override_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3990256304)!
        }
        }
    }()
    private func __getAngularDampSpaceOverrideMode() -> Godot.Area2D.SpaceOverride {
        Godot.Area2D.SpaceOverride.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_angular_damp_space_override_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_linear_damp: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_linear_damp").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setLinearDamp(_ linearDamp: Double) {
        linearDamp.withGodotUnsafeRawPointer { __ptr_linearDamp in
        withUnsafeArgumentPackPointer(__ptr_linearDamp) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_linear_damp,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_linear_damp: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_linear_damp").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getLinearDamp() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_linear_damp,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_angular_damp: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_angular_damp").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setAngularDamp(_ angularDamp: Double) {
        angularDamp.withGodotUnsafeRawPointer { __ptr_angularDamp in
        withUnsafeArgumentPackPointer(__ptr_angularDamp) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_angular_damp,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_angular_damp: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_angular_damp").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getAngularDamp() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_angular_damp,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_priority: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_priority").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setPriority(_ priority: Int32) {
        priority.withGodotUnsafeRawPointer { __ptr_priority in
        withUnsafeArgumentPackPointer(__ptr_priority) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_priority,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_priority: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_priority").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getPriority() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_priority,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_monitoring: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_monitoring").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setMonitoring(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_monitoring,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_monitoring: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_monitoring").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isMonitoring() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_monitoring,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_monitorable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_monitorable").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setMonitorable(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_monitorable,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_monitorable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_monitorable").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isMonitorable() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_monitorable,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_overlapping_bodies: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_overlapping_bodies").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()
    public func overlappingBodies() -> Godot.GodotArray<Godot.Node2D?> {
        Godot.GodotArray<Godot.Node2D?>.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_overlapping_bodies,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_overlapping_areas: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_overlapping_areas").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()
    public func overlappingAreas() -> Godot.GodotArray<Godot.Area2D?> {
        Godot.GodotArray<Godot.Area2D?>.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_overlapping_areas,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_has_overlapping_bodies: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_overlapping_bodies").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func hasOverlappingBodies() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_overlapping_bodies,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_has_overlapping_areas: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_overlapping_areas").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func hasOverlappingAreas() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_overlapping_areas,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_overlaps_body: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "overlaps_body").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3093956946)!
        }
        }
    }()
    public func overlapsBody(_ body: Godot.Node?) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        body.withGodotUnsafeRawPointer { __ptr_body in
        withUnsafePointer(to: __ptr_body) { _ptr___ptr_body in
        withUnsafeArgumentPackPointer(_ptr___ptr_body) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_overlaps_body,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_overlaps_area: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "overlaps_area").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3093956946)!
        }
        }
    }()
    public func overlapsArea(_ area: Godot.Node?) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        area.withGodotUnsafeRawPointer { __ptr_area in
        withUnsafePointer(to: __ptr_area) { _ptr___ptr_area in
        withUnsafeArgumentPackPointer(_ptr___ptr_area) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_overlaps_area,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_set_audio_bus_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_audio_bus_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3304788590)!
        }
        }
    }()
    private func __setAudioBusName(_ name: Godot.GodotStringName) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_audio_bus_name,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_audio_bus_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_audio_bus_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2002593661)!
        }
        }
    }()
    private func __getAudioBusName() -> Godot.GodotStringName {
        Godot.GodotStringName.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_audio_bus_name,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_audio_bus_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_audio_bus_override").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setAudioBusOverride(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_audio_bus_override,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_overriding_audio_bus: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_overriding_audio_bus").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isOverridingAudioBus() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_overriding_audio_bus,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var isMonitoring: Bool {
        get {
            __isMonitoring()
        }
        set {
            __setMonitoring(
                enable: newValue
            )
        }
    }

    public var isMonitorable: Bool {
        get {
            __isMonitorable()
        }
        set {
            __setMonitorable(
                enable: newValue
            )
        }
    }

    public var priority: Int32 {
        get {
            __getPriority()
        }
        set {
            __setPriority(
                newValue
            )
        }
    }

    public var gravitySpaceOverrideMode: Godot.Area2D.SpaceOverride {
        get {
            __getGravitySpaceOverrideMode()
        }
        set {
            __setGravitySpaceOverrideMode(
                newValue
            )
        }
    }

    public var isGravityAPoint: Bool {
        get {
            __isGravityAPoint()
        }
        set {
            __setGravityIsPoint(
                enable: newValue
            )
        }
    }

    public var gravityPointUnitDistance: Double {
        get {
            __getGravityPointUnitDistance()
        }
        set {
            __setGravityPointUnitDistance(
                distanceScale: newValue
            )
        }
    }

    public var gravityPointCenter: Godot.Vector2 {
        get {
            __getGravityPointCenter()
        }
        set {
            __setGravityPointCenter(
                newValue
            )
        }
    }

    public var gravityDirection: Godot.Vector2 {
        get {
            __getGravityDirection()
        }
        set {
            __setGravityDirection(
                newValue
            )
        }
    }

    public var gravity: Double {
        get {
            __getGravity()
        }
        set {
            __setGravity(
                newValue
            )
        }
    }

    public var linearDampSpaceOverrideMode: Godot.Area2D.SpaceOverride {
        get {
            __getLinearDampSpaceOverrideMode()
        }
        set {
            __setLinearDampSpaceOverrideMode(
                newValue
            )
        }
    }

    public var linearDamp: Double {
        get {
            __getLinearDamp()
        }
        set {
            __setLinearDamp(
                newValue
            )
        }
    }

    public var angularDampSpaceOverrideMode: Godot.Area2D.SpaceOverride {
        get {
            __getAngularDampSpaceOverrideMode()
        }
        set {
            __setAngularDampSpaceOverrideMode(
                newValue
            )
        }
    }

    public var angularDamp: Double {
        get {
            __getAngularDamp()
        }
        set {
            __setAngularDamp(
                newValue
            )
        }
    }

    public var isOverridingAudioBus: Bool {
        get {
            __isOverridingAudioBus()
        }
        set {
            __setAudioBusOverride(
                enable: newValue
            )
        }
    }

    public var audioBusName: Godot.GodotStringName {
        get {
            __getAudioBusName()
        }
        set {
            __setAudioBusName(
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