//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class PhysicsServer3DExtension: PhysicsServer3D {
    open func _worldBoundaryShapeCreate() -> Godot.RID {
        Godot.RID()
    }

    open func _separationRayShapeCreate() -> Godot.RID {
        Godot.RID()
    }

    open func _sphereShapeCreate() -> Godot.RID {
        Godot.RID()
    }

    open func _boxShapeCreate() -> Godot.RID {
        Godot.RID()
    }

    open func _capsuleShapeCreate() -> Godot.RID {
        Godot.RID()
    }

    open func _cylinderShapeCreate() -> Godot.RID {
        Godot.RID()
    }

    open func _convexPolygonShapeCreate() -> Godot.RID {
        Godot.RID()
    }

    open func _concavePolygonShapeCreate() -> Godot.RID {
        Godot.RID()
    }

    open func _heightmapShapeCreate() -> Godot.RID {
        Godot.RID()
    }

    open func _customShapeCreate() -> Godot.RID {
        Godot.RID()
    }

    open func _shapeSetData(shape: Godot.RID, data: Godot.Variant) {
    }

    open func _shapeSetCustomSolverBias(shape: Godot.RID, bias: Double) {
    }

    open func _shapeSetMargin(shape: Godot.RID, margin: Double) {
    }

    open func _shapeGetMargin(shape: Godot.RID) -> Double {
        Double()
    }

    open func _shapeGetType(shape: Godot.RID) -> Godot.PhysicsServer3D.ShapeType {
        Godot.PhysicsServer3D.ShapeType(rawValue: 0)!
    }

    open func _shapeGetData(shape: Godot.RID) -> Godot.Variant {
        nil
    }

    open func _shapeGetCustomSolverBias(shape: Godot.RID) -> Double {
        Double()
    }

    open func _spaceCreate() -> Godot.RID {
        Godot.RID()
    }

    open func _spaceSetActive(space: Godot.RID, active: Bool) {
    }

    open func _spaceIsActive(space: Godot.RID) -> Bool {
        Bool()
    }

    open func _spaceSetParam(space: Godot.RID, param: Godot.PhysicsServer3D.SpaceParameter, value: Double) {
    }

    open func _spaceGetParam(space: Godot.RID, param: Godot.PhysicsServer3D.SpaceParameter) -> Double {
        Double()
    }

    open func _spaceGetDirectState(space: Godot.RID) -> Godot.PhysicsDirectSpaceState3D? {
        nil
    }

    open func _spaceSetDebugContacts(space: Godot.RID, maxContacts: Int32) {
    }

    open func _spaceGetContacts(space: Godot.RID) -> Godot.PackedVector3Array {
        Godot.PackedVector3Array()
    }

    open func _spaceGetContactCount(space: Godot.RID) -> Int32 {
        Int32()
    }

    open func _areaCreate() -> Godot.RID {
        Godot.RID()
    }

    open func _areaSetSpace(area: Godot.RID, space: Godot.RID) {
    }

    open func _areaGetSpace(area: Godot.RID) -> Godot.RID {
        Godot.RID()
    }

    open func _areaAddShape(area: Godot.RID, shape: Godot.RID, transform: Godot.Transform3D, disabled: Bool) {
    }

    open func _areaSetShape(area: Godot.RID, shapeIdx: Int32, shape: Godot.RID) {
    }

    open func _areaSetShapeTransform(area: Godot.RID, shapeIdx: Int32, transform: Godot.Transform3D) {
    }

    open func _areaSetShapeDisabled(area: Godot.RID, shapeIdx: Int32, disabled: Bool) {
    }

    open func _areaGetShapeCount(area: Godot.RID) -> Int32 {
        Int32()
    }

    open func _areaGetShape(area: Godot.RID, shapeIdx: Int32) -> Godot.RID {
        Godot.RID()
    }

    open func _areaGetShapeTransform(area: Godot.RID, shapeIdx: Int32) -> Godot.Transform3D {
        Godot.Transform3D()
    }

    open func _areaRemoveShape(area: Godot.RID, shapeIdx: Int32) {
    }

    open func _areaClearShapes(area: Godot.RID) {
    }

    open func _areaAttachObjectInstanceId(area: Godot.RID, id: UInt64) {
    }

    open func _areaGetObjectInstanceId(area: Godot.RID) -> UInt64 {
        UInt64()
    }

    open func _areaSetParam(area: Godot.RID, param: Godot.PhysicsServer3D.AreaParameter, value: Godot.Variant) {
    }

    open func _areaSetTransform(area: Godot.RID, transform: Godot.Transform3D) {
    }

    open func _areaGetParam(area: Godot.RID, param: Godot.PhysicsServer3D.AreaParameter) -> Godot.Variant {
        nil
    }

    open func _areaGetTransform(area: Godot.RID) -> Godot.Transform3D {
        Godot.Transform3D()
    }

    open func _areaSetCollisionLayer(area: Godot.RID, layer: UInt32) {
    }

    open func _areaGetCollisionLayer(area: Godot.RID) -> UInt32 {
        UInt32()
    }

    open func _areaSetCollisionMask(area: Godot.RID, mask: UInt32) {
    }

    open func _areaGetCollisionMask(area: Godot.RID) -> UInt32 {
        UInt32()
    }

    open func _areaSetMonitorable(area: Godot.RID, monitorable: Bool) {
    }

    open func _areaSetRayPickable(area: Godot.RID, enable: Bool) {
    }

    open func _areaSetMonitorCallback(area: Godot.RID, callback: Godot.Callable) {
    }

    open func _areaSetAreaMonitorCallback(area: Godot.RID, callback: Godot.Callable) {
    }

    open func _bodyCreate() -> Godot.RID {
        Godot.RID()
    }

    open func _bodySetSpace(body: Godot.RID, space: Godot.RID) {
    }

    open func _bodyGetSpace(body: Godot.RID) -> Godot.RID {
        Godot.RID()
    }

    open func _bodySetMode(body: Godot.RID, mode: Godot.PhysicsServer3D.BodyMode) {
    }

    open func _bodyGetMode(body: Godot.RID) -> Godot.PhysicsServer3D.BodyMode {
        Godot.PhysicsServer3D.BodyMode(rawValue: 0)!
    }

    open func _bodyAddShape(body: Godot.RID, shape: Godot.RID, transform: Godot.Transform3D, disabled: Bool) {
    }

    open func _bodySetShape(body: Godot.RID, shapeIdx: Int32, shape: Godot.RID) {
    }

    open func _bodySetShapeTransform(body: Godot.RID, shapeIdx: Int32, transform: Godot.Transform3D) {
    }

    open func _bodySetShapeDisabled(body: Godot.RID, shapeIdx: Int32, disabled: Bool) {
    }

    open func _bodyGetShapeCount(body: Godot.RID) -> Int32 {
        Int32()
    }

    open func _bodyGetShape(body: Godot.RID, shapeIdx: Int32) -> Godot.RID {
        Godot.RID()
    }

    open func _bodyGetShapeTransform(body: Godot.RID, shapeIdx: Int32) -> Godot.Transform3D {
        Godot.Transform3D()
    }

    open func _bodyRemoveShape(body: Godot.RID, shapeIdx: Int32) {
    }

    open func _bodyClearShapes(body: Godot.RID) {
    }

    open func _bodyAttachObjectInstanceId(body: Godot.RID, id: UInt64) {
    }

    open func _bodyGetObjectInstanceId(body: Godot.RID) -> UInt64 {
        UInt64()
    }

    open func _bodySetEnableContinuousCollisionDetection(body: Godot.RID, enable: Bool) {
    }

    open func _bodyIsContinuousCollisionDetectionEnabled(body: Godot.RID) -> Bool {
        Bool()
    }

    open func _bodySetCollisionLayer(body: Godot.RID, layer: UInt32) {
    }

    open func _bodyGetCollisionLayer(body: Godot.RID) -> UInt32 {
        UInt32()
    }

    open func _bodySetCollisionMask(body: Godot.RID, mask: UInt32) {
    }

    open func _bodyGetCollisionMask(body: Godot.RID) -> UInt32 {
        UInt32()
    }

    open func _bodySetCollisionPriority(body: Godot.RID, priority: Double) {
    }

    open func _bodyGetCollisionPriority(body: Godot.RID) -> Double {
        Double()
    }

    open func _bodySetUserFlags(body: Godot.RID, flags: UInt32) {
    }

    open func _bodyGetUserFlags(body: Godot.RID) -> UInt32 {
        UInt32()
    }

    open func _bodySetParam(body: Godot.RID, param: Godot.PhysicsServer3D.BodyParameter, value: Godot.Variant) {
    }

    open func _bodyGetParam(body: Godot.RID, param: Godot.PhysicsServer3D.BodyParameter) -> Godot.Variant {
        nil
    }

    open func _bodyResetMassProperties(body: Godot.RID) {
    }

    open func _bodySetState(body: Godot.RID, state: Godot.PhysicsServer3D.BodyState, value: Godot.Variant) {
    }

    open func _bodyGetState(body: Godot.RID, state: Godot.PhysicsServer3D.BodyState) -> Godot.Variant {
        nil
    }

    open func _bodyApplyCentralImpulse(body: Godot.RID, impulse: Godot.Vector3) {
    }

    open func _bodyApplyImpulse(body: Godot.RID, impulse: Godot.Vector3, position: Godot.Vector3) {
    }

    open func _bodyApplyTorqueImpulse(body: Godot.RID, impulse: Godot.Vector3) {
    }

    open func _bodyApplyCentralForce(body: Godot.RID, force: Godot.Vector3) {
    }

    open func _bodyApplyForce(body: Godot.RID, force: Godot.Vector3, position: Godot.Vector3) {
    }

    open func _bodyApplyTorque(body: Godot.RID, torque: Godot.Vector3) {
    }

    open func _bodyAddConstantCentralForce(body: Godot.RID, force: Godot.Vector3) {
    }

    open func _bodyAddConstantForce(body: Godot.RID, force: Godot.Vector3, position: Godot.Vector3) {
    }

    open func _bodyAddConstantTorque(body: Godot.RID, torque: Godot.Vector3) {
    }

    open func _bodySetConstantForce(body: Godot.RID, force: Godot.Vector3) {
    }

    open func _bodyGetConstantForce(body: Godot.RID) -> Godot.Vector3 {
        Godot.Vector3()
    }

    open func _bodySetConstantTorque(body: Godot.RID, torque: Godot.Vector3) {
    }

    open func _bodyGetConstantTorque(body: Godot.RID) -> Godot.Vector3 {
        Godot.Vector3()
    }

    open func _bodySetAxisVelocity(body: Godot.RID, axisVelocity: Godot.Vector3) {
    }

    open func _bodySetAxisLock(body: Godot.RID, axis: Godot.PhysicsServer3D.BodyAxis, lock: Bool) {
    }

    open func _bodyIsAxisLocked(body: Godot.RID, axis: Godot.PhysicsServer3D.BodyAxis) -> Bool {
        Bool()
    }

    open func _bodyAddCollisionException(body: Godot.RID, exceptedBody: Godot.RID) {
    }

    open func _bodyRemoveCollisionException(body: Godot.RID, exceptedBody: Godot.RID) {
    }

    open func _bodyGetCollisionExceptions(body: Godot.RID) -> Godot.GodotTypedArray<Godot.RID> {
        Godot.GodotTypedArray<Godot.RID>()
    }

    open func _bodySetMaxContactsReported(body: Godot.RID, amount: Int32) {
    }

    open func _bodyGetMaxContactsReported(body: Godot.RID) -> Int32 {
        Int32()
    }

    open func _bodySetContactsReportedDepthThreshold(body: Godot.RID, threshold: Double) {
    }

    open func _bodyGetContactsReportedDepthThreshold(body: Godot.RID) -> Double {
        Double()
    }

    open func _bodySetOmitForceIntegration(body: Godot.RID, enable: Bool) {
    }

    open func _bodyIsOmittingForceIntegration(body: Godot.RID) -> Bool {
        Bool()
    }

    open func _bodySetStateSyncCallback(body: Godot.RID, callable: Godot.Callable) {
    }

    open func _bodySetForceIntegrationCallback(body: Godot.RID, callable: Godot.Callable, userdata: Godot.Variant) {
    }

    open func _bodySetRayPickable(body: Godot.RID, enable: Bool) {
    }

    open func _bodyTestMotion(body: Godot.RID, from: Godot.Transform3D, motion: Godot.Vector3, margin: Double, maxCollisions: Int32, collideSeparationRay: Bool, recoveryAsCollision: Bool, result: UnsafeMutablePointer<PhysicsServer3DExtensionMotionResult>) -> Bool {
        Bool()
    }

    open func _bodyGetDirectState(body: Godot.RID) -> Godot.PhysicsDirectBodyState3D? {
        nil
    }

    open func _softBodyCreate() -> Godot.RID {
        Godot.RID()
    }

    open func _softBodyUpdateRenderingServer(body: Godot.RID, renderingServerHandler: Godot.PhysicsServer3DRenderingServerHandler?) {
    }

    open func _softBodySetSpace(body: Godot.RID, space: Godot.RID) {
    }

    open func _softBodyGetSpace(body: Godot.RID) -> Godot.RID {
        Godot.RID()
    }

    open func _softBodySetRayPickable(body: Godot.RID, enable: Bool) {
    }

    open func _softBodySetCollisionLayer(body: Godot.RID, layer: UInt32) {
    }

    open func _softBodyGetCollisionLayer(body: Godot.RID) -> UInt32 {
        UInt32()
    }

    open func _softBodySetCollisionMask(body: Godot.RID, mask: UInt32) {
    }

    open func _softBodyGetCollisionMask(body: Godot.RID) -> UInt32 {
        UInt32()
    }

    open func _softBodyAddCollisionException(body: Godot.RID, bodyB: Godot.RID) {
    }

    open func _softBodyRemoveCollisionException(body: Godot.RID, bodyB: Godot.RID) {
    }

    open func _softBodyGetCollisionExceptions(body: Godot.RID) -> Godot.GodotTypedArray<Godot.RID> {
        Godot.GodotTypedArray<Godot.RID>()
    }

    open func _softBodySetState(body: Godot.RID, state: Godot.PhysicsServer3D.BodyState, variant: Godot.Variant) {
    }

    open func _softBodyGetState(body: Godot.RID, state: Godot.PhysicsServer3D.BodyState) -> Godot.Variant {
        nil
    }

    open func _softBodySetTransform(body: Godot.RID, transform: Godot.Transform3D) {
    }

    open func _softBodySetSimulationPrecision(body: Godot.RID, simulationPrecision: Int32) {
    }

    open func _softBodyGetSimulationPrecision(body: Godot.RID) -> Int32 {
        Int32()
    }

    open func _softBodySetTotalMass(body: Godot.RID, totalMass: Double) {
    }

    open func _softBodyGetTotalMass(body: Godot.RID) -> Double {
        Double()
    }

    open func _softBodySetLinearStiffness(body: Godot.RID, linearStiffness: Double) {
    }

    open func _softBodyGetLinearStiffness(body: Godot.RID) -> Double {
        Double()
    }

    open func _softBodySetPressureCoefficient(body: Godot.RID, pressureCoefficient: Double) {
    }

    open func _softBodyGetPressureCoefficient(body: Godot.RID) -> Double {
        Double()
    }

    open func _softBodySetDampingCoefficient(body: Godot.RID, dampingCoefficient: Double) {
    }

    open func _softBodyGetDampingCoefficient(body: Godot.RID) -> Double {
        Double()
    }

    open func _softBodySetDragCoefficient(body: Godot.RID, dragCoefficient: Double) {
    }

    open func _softBodyGetDragCoefficient(body: Godot.RID) -> Double {
        Double()
    }

    open func _softBodySetMesh(body: Godot.RID, mesh: Godot.RID) {
    }

    open func _softBodyGetBounds(body: Godot.RID) -> Godot.AABB {
        Godot.AABB()
    }

    open func _softBodyMovePoint(body: Godot.RID, pointIndex: Int32, globalPosition: Godot.Vector3) {
    }

    open func _softBodyGetPointGlobalPosition(body: Godot.RID, pointIndex: Int32) -> Godot.Vector3 {
        Godot.Vector3()
    }

    open func _softBodyRemoveAllPinnedPoints(body: Godot.RID) {
    }

    open func _softBodyPinPoint(body: Godot.RID, pointIndex: Int32, pin: Bool) {
    }

    open func _softBodyIsPointPinned(body: Godot.RID, pointIndex: Int32) -> Bool {
        Bool()
    }

    open func _jointCreate() -> Godot.RID {
        Godot.RID()
    }

    open func _jointClear(joint: Godot.RID) {
    }

    open func _jointMakePin(joint: Godot.RID, bodyA: Godot.RID, localA: Godot.Vector3, bodyB: Godot.RID, localB: Godot.Vector3) {
    }

    open func _pinJointSetParam(joint: Godot.RID, param: Godot.PhysicsServer3D.PinJointParam, value: Double) {
    }

    open func _pinJointGetParam(joint: Godot.RID, param: Godot.PhysicsServer3D.PinJointParam) -> Double {
        Double()
    }

    open func _pinJointSetLocalA(joint: Godot.RID, localA: Godot.Vector3) {
    }

    open func _pinJointGetLocalA(joint: Godot.RID) -> Godot.Vector3 {
        Godot.Vector3()
    }

    open func _pinJointSetLocalB(joint: Godot.RID, localB: Godot.Vector3) {
    }

    open func _pinJointGetLocalB(joint: Godot.RID) -> Godot.Vector3 {
        Godot.Vector3()
    }

    open func _jointMakeHinge(joint: Godot.RID, bodyA: Godot.RID, hingeA: Godot.Transform3D, bodyB: Godot.RID, hingeB: Godot.Transform3D) {
    }

    open func _jointMakeHingeSimple(joint: Godot.RID, bodyA: Godot.RID, pivotA: Godot.Vector3, axisA: Godot.Vector3, bodyB: Godot.RID, pivotB: Godot.Vector3, axisB: Godot.Vector3) {
    }

    open func _hingeJointSetParam(joint: Godot.RID, param: Godot.PhysicsServer3D.HingeJointParam, value: Double) {
    }

    open func _hingeJointGetParam(joint: Godot.RID, param: Godot.PhysicsServer3D.HingeJointParam) -> Double {
        Double()
    }

    open func _hingeJointSetFlag(joint: Godot.RID, flag: Godot.PhysicsServer3D.HingeJointFlag, enabled: Bool) {
    }

    open func _hingeJointGetFlag(joint: Godot.RID, flag: Godot.PhysicsServer3D.HingeJointFlag) -> Bool {
        Bool()
    }

    open func _jointMakeSlider(joint: Godot.RID, bodyA: Godot.RID, localRefA: Godot.Transform3D, bodyB: Godot.RID, localRefB: Godot.Transform3D) {
    }

    open func _sliderJointSetParam(joint: Godot.RID, param: Godot.PhysicsServer3D.SliderJointParam, value: Double) {
    }

    open func _sliderJointGetParam(joint: Godot.RID, param: Godot.PhysicsServer3D.SliderJointParam) -> Double {
        Double()
    }

    open func _jointMakeConeTwist(joint: Godot.RID, bodyA: Godot.RID, localRefA: Godot.Transform3D, bodyB: Godot.RID, localRefB: Godot.Transform3D) {
    }

    open func _coneTwistJointSetParam(joint: Godot.RID, param: Godot.PhysicsServer3D.ConeTwistJointParam, value: Double) {
    }

    open func _coneTwistJointGetParam(joint: Godot.RID, param: Godot.PhysicsServer3D.ConeTwistJointParam) -> Double {
        Double()
    }

    open func _jointMakeGeneric6dof(joint: Godot.RID, bodyA: Godot.RID, localRefA: Godot.Transform3D, bodyB: Godot.RID, localRefB: Godot.Transform3D) {
    }

    open func _generic6dofJointSetParam(joint: Godot.RID, axis: Godot.Vector3.Axis, param: Godot.PhysicsServer3D.G6DOFJointAxisParam, value: Double) {
    }

    open func _generic6dofJointGetParam(joint: Godot.RID, axis: Godot.Vector3.Axis, param: Godot.PhysicsServer3D.G6DOFJointAxisParam) -> Double {
        Double()
    }

    open func _generic6dofJointSetFlag(joint: Godot.RID, axis: Godot.Vector3.Axis, flag: Godot.PhysicsServer3D.G6DOFJointAxisFlag, enable: Bool) {
    }

    open func _generic6dofJointGetFlag(joint: Godot.RID, axis: Godot.Vector3.Axis, flag: Godot.PhysicsServer3D.G6DOFJointAxisFlag) -> Bool {
        Bool()
    }

    open func _jointGetType(joint: Godot.RID) -> Godot.PhysicsServer3D.JointType {
        Godot.PhysicsServer3D.JointType(rawValue: 0)!
    }

    open func _jointSetSolverPriority(joint: Godot.RID, priority: Int32) {
    }

    open func _jointGetSolverPriority(joint: Godot.RID) -> Int32 {
        Int32()
    }

    open func _jointDisableCollisionsBetweenBodies(joint: Godot.RID, disable: Bool) {
    }

    open func _jointIsDisabledCollisionsBetweenBodies(joint: Godot.RID) -> Bool {
        Bool()
    }

    open func _freeRid(_ rid: Godot.RID) {
    }

    open func _setActive(_ active: Bool) {
    }

    open func _init() {
    }

    open func _step(_ step: Double) {
    }

    open func _sync() {
    }

    open func _flushQueries() {
    }

    open func _endSync() {
    }

    open func _finish() {
    }

    open func _isFlushingQueries() -> Bool {
        Bool()
    }

    open func _getProcessInfo(_ processInfo: Godot.PhysicsServer3D.ProcessInfo) -> Int32 {
        Int32()
    }

    private static var __method_binding_body_test_motion_is_excluding_body: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_test_motion_is_excluding_body").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func bodyTestMotionIsExcludingBody(_ body: Godot.RID) -> Bool {
        var __temporary = Bool()
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafeArgumentPackPointer(__ptr_body) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_body_test_motion_is_excluding_body,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_body_test_motion_is_excluding_object: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_test_motion_is_excluding_object").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func bodyTestMotionIsExcludingObject(_ object: UInt64) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: object) { (__ptr_object) in
            withUnsafeArgumentPackPointer(__ptr_object) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_body_test_motion_is_excluding_object,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _world_boundary_shape_create_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._worldBoundaryShapeCreate()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _separation_ray_shape_create_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._separationRayShapeCreate()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _sphere_shape_create_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._sphereShapeCreate()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _box_shape_create_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._boxShapeCreate()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _capsule_shape_create_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._capsuleShapeCreate()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _cylinder_shape_create_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._cylinderShapeCreate()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _convex_polygon_shape_create_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._convexPolygonShapeCreate()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _concave_polygon_shape_create_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._concavePolygonShapeCreate()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _heightmap_shape_create_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._heightmapShapeCreate()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _custom_shape_create_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._customShapeCreate()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _shape_set_data_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._shapeSetData(
            shape: Godot.RID(godotExtensionPointer: args[0]!),
            data: Godot.Variant(godotExtensionPointer: args[1]!)
        )}
        let _shape_set_custom_solver_bias_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._shapeSetCustomSolverBias(
            shape: Godot.RID(godotExtensionPointer: args[0]!),
            bias: args[1]!.load(as: Double.self)
        )}
        let _shape_set_margin_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._shapeSetMargin(
            shape: Godot.RID(godotExtensionPointer: args[0]!),
            margin: args[1]!.load(as: Double.self)
        )}
        let _shape_get_margin_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._shapeGetMargin(
            shape: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: Double.self).pointee = returnValue}
        let _shape_get_type_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._shapeGetType(
            shape: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: Godot.PhysicsServer3D.ShapeType.self).pointee = returnValue}
        let _shape_get_data_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._shapeGetData(
            shape: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _shape_get_custom_solver_bias_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._shapeGetCustomSolverBias(
            shape: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: Double.self).pointee = returnValue}
        let _space_create_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._spaceCreate()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _space_set_active_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._spaceSetActive(
            space: Godot.RID(godotExtensionPointer: args[0]!),
            active: args[1]!.load(as: Bool.self)
        )}
        let _space_is_active_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._spaceIsActive(
            space: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _space_set_param_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._spaceSetParam(
            space: Godot.RID(godotExtensionPointer: args[0]!),
            param: args[1]!.load(as: Godot.PhysicsServer3D.SpaceParameter.self),
            value: args[2]!.load(as: Double.self)
        )}
        let _space_get_param_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._spaceGetParam(
            space: Godot.RID(godotExtensionPointer: args[0]!),
            param: args[1]!.load(as: Godot.PhysicsServer3D.SpaceParameter.self)
        )
        returnPtr!.assumingMemoryBound(to: Double.self).pointee = returnValue}
        let _space_get_direct_state_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._spaceGetDirectState(
            space: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _space_set_debug_contacts_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._spaceSetDebugContacts(
            space: Godot.RID(godotExtensionPointer: args[0]!),
            maxContacts: args[1]!.load(as: Int32.self)
        )}
        let _space_get_contacts_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._spaceGetContacts(
            space: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _space_get_contact_count_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._spaceGetContactCount(
            space: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: Int32.self).pointee = returnValue}
        let _area_create_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._areaCreate()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _area_set_space_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._areaSetSpace(
            area: Godot.RID(godotExtensionPointer: args[0]!),
            space: Godot.RID(godotExtensionPointer: args[1]!)
        )}
        let _area_get_space_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._areaGetSpace(
            area: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _area_add_shape_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._areaAddShape(
            area: Godot.RID(godotExtensionPointer: args[0]!),
            shape: Godot.RID(godotExtensionPointer: args[1]!),
            transform: args[2]!.load(as: Godot.Transform3D.self),
            disabled: args[3]!.load(as: Bool.self)
        )}
        let _area_set_shape_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._areaSetShape(
            area: Godot.RID(godotExtensionPointer: args[0]!),
            shapeIdx: args[1]!.load(as: Int32.self),
            shape: Godot.RID(godotExtensionPointer: args[2]!)
        )}
        let _area_set_shape_transform_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._areaSetShapeTransform(
            area: Godot.RID(godotExtensionPointer: args[0]!),
            shapeIdx: args[1]!.load(as: Int32.self),
            transform: args[2]!.load(as: Godot.Transform3D.self)
        )}
        let _area_set_shape_disabled_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._areaSetShapeDisabled(
            area: Godot.RID(godotExtensionPointer: args[0]!),
            shapeIdx: args[1]!.load(as: Int32.self),
            disabled: args[2]!.load(as: Bool.self)
        )}
        let _area_get_shape_count_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._areaGetShapeCount(
            area: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: Int32.self).pointee = returnValue}
        let _area_get_shape_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._areaGetShape(
            area: Godot.RID(godotExtensionPointer: args[0]!),
            shapeIdx: args[1]!.load(as: Int32.self)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _area_get_shape_transform_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._areaGetShapeTransform(
            area: Godot.RID(godotExtensionPointer: args[0]!),
            shapeIdx: args[1]!.load(as: Int32.self)
        )
        returnPtr!.assumingMemoryBound(to: Godot.Transform3D.self).pointee = returnValue}
        let _area_remove_shape_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._areaRemoveShape(
            area: Godot.RID(godotExtensionPointer: args[0]!),
            shapeIdx: args[1]!.load(as: Int32.self)
        )}
        let _area_clear_shapes_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._areaClearShapes(
            area: Godot.RID(godotExtensionPointer: args[0]!)
        )}
        let _area_attach_object_instance_id_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._areaAttachObjectInstanceId(
            area: Godot.RID(godotExtensionPointer: args[0]!),
            id: args[1]!.load(as: UInt64.self)
        )}
        let _area_get_object_instance_id_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._areaGetObjectInstanceId(
            area: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: UInt64.self).pointee = returnValue}
        let _area_set_param_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._areaSetParam(
            area: Godot.RID(godotExtensionPointer: args[0]!),
            param: args[1]!.load(as: Godot.PhysicsServer3D.AreaParameter.self),
            value: Godot.Variant(godotExtensionPointer: args[2]!)
        )}
        let _area_set_transform_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._areaSetTransform(
            area: Godot.RID(godotExtensionPointer: args[0]!),
            transform: args[1]!.load(as: Godot.Transform3D.self)
        )}
        let _area_get_param_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._areaGetParam(
            area: Godot.RID(godotExtensionPointer: args[0]!),
            param: args[1]!.load(as: Godot.PhysicsServer3D.AreaParameter.self)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _area_get_transform_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._areaGetTransform(
            area: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: Godot.Transform3D.self).pointee = returnValue}
        let _area_set_collision_layer_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._areaSetCollisionLayer(
            area: Godot.RID(godotExtensionPointer: args[0]!),
            layer: args[1]!.load(as: UInt32.self)
        )}
        let _area_get_collision_layer_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._areaGetCollisionLayer(
            area: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: UInt32.self).pointee = returnValue}
        let _area_set_collision_mask_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._areaSetCollisionMask(
            area: Godot.RID(godotExtensionPointer: args[0]!),
            mask: args[1]!.load(as: UInt32.self)
        )}
        let _area_get_collision_mask_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._areaGetCollisionMask(
            area: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: UInt32.self).pointee = returnValue}
        let _area_set_monitorable_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._areaSetMonitorable(
            area: Godot.RID(godotExtensionPointer: args[0]!),
            monitorable: args[1]!.load(as: Bool.self)
        )}
        let _area_set_ray_pickable_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._areaSetRayPickable(
            area: Godot.RID(godotExtensionPointer: args[0]!),
            enable: args[1]!.load(as: Bool.self)
        )}
        let _area_set_monitor_callback_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._areaSetMonitorCallback(
            area: Godot.RID(godotExtensionPointer: args[0]!),
            callback: Godot.Callable(godotExtensionPointer: args[1]!)
        )}
        let _area_set_area_monitor_callback_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._areaSetAreaMonitorCallback(
            area: Godot.RID(godotExtensionPointer: args[0]!),
            callback: Godot.Callable(godotExtensionPointer: args[1]!)
        )}
        let _body_create_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._bodyCreate()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _body_set_space_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._bodySetSpace(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            space: Godot.RID(godotExtensionPointer: args[1]!)
        )}
        let _body_get_space_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._bodyGetSpace(
            body: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _body_set_mode_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._bodySetMode(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            mode: args[1]!.load(as: Godot.PhysicsServer3D.BodyMode.self)
        )}
        let _body_get_mode_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._bodyGetMode(
            body: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: Godot.PhysicsServer3D.BodyMode.self).pointee = returnValue}
        let _body_add_shape_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._bodyAddShape(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            shape: Godot.RID(godotExtensionPointer: args[1]!),
            transform: args[2]!.load(as: Godot.Transform3D.self),
            disabled: args[3]!.load(as: Bool.self)
        )}
        let _body_set_shape_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._bodySetShape(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            shapeIdx: args[1]!.load(as: Int32.self),
            shape: Godot.RID(godotExtensionPointer: args[2]!)
        )}
        let _body_set_shape_transform_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._bodySetShapeTransform(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            shapeIdx: args[1]!.load(as: Int32.self),
            transform: args[2]!.load(as: Godot.Transform3D.self)
        )}
        let _body_set_shape_disabled_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._bodySetShapeDisabled(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            shapeIdx: args[1]!.load(as: Int32.self),
            disabled: args[2]!.load(as: Bool.self)
        )}
        let _body_get_shape_count_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._bodyGetShapeCount(
            body: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: Int32.self).pointee = returnValue}
        let _body_get_shape_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._bodyGetShape(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            shapeIdx: args[1]!.load(as: Int32.self)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _body_get_shape_transform_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._bodyGetShapeTransform(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            shapeIdx: args[1]!.load(as: Int32.self)
        )
        returnPtr!.assumingMemoryBound(to: Godot.Transform3D.self).pointee = returnValue}
        let _body_remove_shape_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._bodyRemoveShape(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            shapeIdx: args[1]!.load(as: Int32.self)
        )}
        let _body_clear_shapes_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._bodyClearShapes(
            body: Godot.RID(godotExtensionPointer: args[0]!)
        )}
        let _body_attach_object_instance_id_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._bodyAttachObjectInstanceId(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            id: args[1]!.load(as: UInt64.self)
        )}
        let _body_get_object_instance_id_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._bodyGetObjectInstanceId(
            body: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: UInt64.self).pointee = returnValue}
        let _body_set_enable_continuous_collision_detection_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._bodySetEnableContinuousCollisionDetection(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            enable: args[1]!.load(as: Bool.self)
        )}
        let _body_is_continuous_collision_detection_enabled_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._bodyIsContinuousCollisionDetectionEnabled(
            body: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _body_set_collision_layer_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._bodySetCollisionLayer(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            layer: args[1]!.load(as: UInt32.self)
        )}
        let _body_get_collision_layer_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._bodyGetCollisionLayer(
            body: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: UInt32.self).pointee = returnValue}
        let _body_set_collision_mask_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._bodySetCollisionMask(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            mask: args[1]!.load(as: UInt32.self)
        )}
        let _body_get_collision_mask_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._bodyGetCollisionMask(
            body: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: UInt32.self).pointee = returnValue}
        let _body_set_collision_priority_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._bodySetCollisionPriority(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            priority: args[1]!.load(as: Double.self)
        )}
        let _body_get_collision_priority_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._bodyGetCollisionPriority(
            body: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: Double.self).pointee = returnValue}
        let _body_set_user_flags_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._bodySetUserFlags(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            flags: args[1]!.load(as: UInt32.self)
        )}
        let _body_get_user_flags_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._bodyGetUserFlags(
            body: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: UInt32.self).pointee = returnValue}
        let _body_set_param_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._bodySetParam(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            param: args[1]!.load(as: Godot.PhysicsServer3D.BodyParameter.self),
            value: Godot.Variant(godotExtensionPointer: args[2]!)
        )}
        let _body_get_param_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._bodyGetParam(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            param: args[1]!.load(as: Godot.PhysicsServer3D.BodyParameter.self)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _body_reset_mass_properties_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._bodyResetMassProperties(
            body: Godot.RID(godotExtensionPointer: args[0]!)
        )}
        let _body_set_state_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._bodySetState(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            state: args[1]!.load(as: Godot.PhysicsServer3D.BodyState.self),
            value: Godot.Variant(godotExtensionPointer: args[2]!)
        )}
        let _body_get_state_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._bodyGetState(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            state: args[1]!.load(as: Godot.PhysicsServer3D.BodyState.self)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _body_apply_central_impulse_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._bodyApplyCentralImpulse(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            impulse: args[1]!.load(as: Godot.Vector3.self)
        )}
        let _body_apply_impulse_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._bodyApplyImpulse(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            impulse: args[1]!.load(as: Godot.Vector3.self),
            position: args[2]!.load(as: Godot.Vector3.self)
        )}
        let _body_apply_torque_impulse_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._bodyApplyTorqueImpulse(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            impulse: args[1]!.load(as: Godot.Vector3.self)
        )}
        let _body_apply_central_force_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._bodyApplyCentralForce(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            force: args[1]!.load(as: Godot.Vector3.self)
        )}
        let _body_apply_force_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._bodyApplyForce(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            force: args[1]!.load(as: Godot.Vector3.self),
            position: args[2]!.load(as: Godot.Vector3.self)
        )}
        let _body_apply_torque_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._bodyApplyTorque(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            torque: args[1]!.load(as: Godot.Vector3.self)
        )}
        let _body_add_constant_central_force_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._bodyAddConstantCentralForce(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            force: args[1]!.load(as: Godot.Vector3.self)
        )}
        let _body_add_constant_force_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._bodyAddConstantForce(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            force: args[1]!.load(as: Godot.Vector3.self),
            position: args[2]!.load(as: Godot.Vector3.self)
        )}
        let _body_add_constant_torque_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._bodyAddConstantTorque(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            torque: args[1]!.load(as: Godot.Vector3.self)
        )}
        let _body_set_constant_force_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._bodySetConstantForce(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            force: args[1]!.load(as: Godot.Vector3.self)
        )}
        let _body_get_constant_force_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._bodyGetConstantForce(
            body: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: Godot.Vector3.self).pointee = returnValue}
        let _body_set_constant_torque_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._bodySetConstantTorque(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            torque: args[1]!.load(as: Godot.Vector3.self)
        )}
        let _body_get_constant_torque_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._bodyGetConstantTorque(
            body: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: Godot.Vector3.self).pointee = returnValue}
        let _body_set_axis_velocity_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._bodySetAxisVelocity(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            axisVelocity: args[1]!.load(as: Godot.Vector3.self)
        )}
        let _body_set_axis_lock_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._bodySetAxisLock(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            axis: args[1]!.load(as: Godot.PhysicsServer3D.BodyAxis.self),
            lock: args[2]!.load(as: Bool.self)
        )}
        let _body_is_axis_locked_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._bodyIsAxisLocked(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            axis: args[1]!.load(as: Godot.PhysicsServer3D.BodyAxis.self)
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _body_add_collision_exception_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._bodyAddCollisionException(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            exceptedBody: Godot.RID(godotExtensionPointer: args[1]!)
        )}
        let _body_remove_collision_exception_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._bodyRemoveCollisionException(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            exceptedBody: Godot.RID(godotExtensionPointer: args[1]!)
        )}
        let _body_get_collision_exceptions_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._bodyGetCollisionExceptions(
            body: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _body_set_max_contacts_reported_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._bodySetMaxContactsReported(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            amount: args[1]!.load(as: Int32.self)
        )}
        let _body_get_max_contacts_reported_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._bodyGetMaxContactsReported(
            body: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: Int32.self).pointee = returnValue}
        let _body_set_contacts_reported_depth_threshold_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._bodySetContactsReportedDepthThreshold(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            threshold: args[1]!.load(as: Double.self)
        )}
        let _body_get_contacts_reported_depth_threshold_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._bodyGetContactsReportedDepthThreshold(
            body: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: Double.self).pointee = returnValue}
        let _body_set_omit_force_integration_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._bodySetOmitForceIntegration(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            enable: args[1]!.load(as: Bool.self)
        )}
        let _body_is_omitting_force_integration_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._bodyIsOmittingForceIntegration(
            body: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _body_set_state_sync_callback_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._bodySetStateSyncCallback(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            callable: Godot.Callable(godotExtensionPointer: args[1]!)
        )}
        let _body_set_force_integration_callback_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._bodySetForceIntegrationCallback(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            callable: Godot.Callable(godotExtensionPointer: args[1]!),
            userdata: Godot.Variant(godotExtensionPointer: args[2]!)
        )}
        let _body_set_ray_pickable_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._bodySetRayPickable(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            enable: args[1]!.load(as: Bool.self)
        )}
        let _body_test_motion_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._bodyTestMotion(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            from: args[1]!.load(as: Godot.Transform3D.self),
            motion: args[2]!.load(as: Godot.Vector3.self),
            margin: args[3]!.load(as: Double.self),
            maxCollisions: args[4]!.load(as: Int32.self),
            collideSeparationRay: args[5]!.load(as: Bool.self),
            recoveryAsCollision: args[6]!.load(as: Bool.self),
            result: args[7]!.load(as: UnsafeMutablePointer<PhysicsServer3DExtensionMotionResult> .self)
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _body_get_direct_state_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._bodyGetDirectState(
            body: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _soft_body_create_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._softBodyCreate()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _soft_body_update_rendering_server_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._softBodyUpdateRenderingServer(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            renderingServerHandler: Godot.PhysicsServer3DRenderingServerHandler.retrievedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[1]!))
        )}
        let _soft_body_set_space_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._softBodySetSpace(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            space: Godot.RID(godotExtensionPointer: args[1]!)
        )}
        let _soft_body_get_space_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._softBodyGetSpace(
            body: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _soft_body_set_ray_pickable_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._softBodySetRayPickable(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            enable: args[1]!.load(as: Bool.self)
        )}
        let _soft_body_set_collision_layer_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._softBodySetCollisionLayer(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            layer: args[1]!.load(as: UInt32.self)
        )}
        let _soft_body_get_collision_layer_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._softBodyGetCollisionLayer(
            body: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: UInt32.self).pointee = returnValue}
        let _soft_body_set_collision_mask_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._softBodySetCollisionMask(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            mask: args[1]!.load(as: UInt32.self)
        )}
        let _soft_body_get_collision_mask_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._softBodyGetCollisionMask(
            body: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: UInt32.self).pointee = returnValue}
        let _soft_body_add_collision_exception_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._softBodyAddCollisionException(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            bodyB: Godot.RID(godotExtensionPointer: args[1]!)
        )}
        let _soft_body_remove_collision_exception_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._softBodyRemoveCollisionException(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            bodyB: Godot.RID(godotExtensionPointer: args[1]!)
        )}
        let _soft_body_get_collision_exceptions_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._softBodyGetCollisionExceptions(
            body: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _soft_body_set_state_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._softBodySetState(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            state: args[1]!.load(as: Godot.PhysicsServer3D.BodyState.self),
            variant: Godot.Variant(godotExtensionPointer: args[2]!)
        )}
        let _soft_body_get_state_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._softBodyGetState(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            state: args[1]!.load(as: Godot.PhysicsServer3D.BodyState.self)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _soft_body_set_transform_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._softBodySetTransform(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            transform: args[1]!.load(as: Godot.Transform3D.self)
        )}
        let _soft_body_set_simulation_precision_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._softBodySetSimulationPrecision(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            simulationPrecision: args[1]!.load(as: Int32.self)
        )}
        let _soft_body_get_simulation_precision_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._softBodyGetSimulationPrecision(
            body: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: Int32.self).pointee = returnValue}
        let _soft_body_set_total_mass_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._softBodySetTotalMass(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            totalMass: args[1]!.load(as: Double.self)
        )}
        let _soft_body_get_total_mass_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._softBodyGetTotalMass(
            body: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: Double.self).pointee = returnValue}
        let _soft_body_set_linear_stiffness_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._softBodySetLinearStiffness(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            linearStiffness: args[1]!.load(as: Double.self)
        )}
        let _soft_body_get_linear_stiffness_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._softBodyGetLinearStiffness(
            body: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: Double.self).pointee = returnValue}
        let _soft_body_set_pressure_coefficient_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._softBodySetPressureCoefficient(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            pressureCoefficient: args[1]!.load(as: Double.self)
        )}
        let _soft_body_get_pressure_coefficient_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._softBodyGetPressureCoefficient(
            body: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: Double.self).pointee = returnValue}
        let _soft_body_set_damping_coefficient_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._softBodySetDampingCoefficient(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            dampingCoefficient: args[1]!.load(as: Double.self)
        )}
        let _soft_body_get_damping_coefficient_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._softBodyGetDampingCoefficient(
            body: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: Double.self).pointee = returnValue}
        let _soft_body_set_drag_coefficient_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._softBodySetDragCoefficient(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            dragCoefficient: args[1]!.load(as: Double.self)
        )}
        let _soft_body_get_drag_coefficient_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._softBodyGetDragCoefficient(
            body: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: Double.self).pointee = returnValue}
        let _soft_body_set_mesh_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._softBodySetMesh(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            mesh: Godot.RID(godotExtensionPointer: args[1]!)
        )}
        let _soft_body_get_bounds_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._softBodyGetBounds(
            body: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: Godot.AABB.self).pointee = returnValue}
        let _soft_body_move_point_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._softBodyMovePoint(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            pointIndex: args[1]!.load(as: Int32.self),
            globalPosition: args[2]!.load(as: Godot.Vector3.self)
        )}
        let _soft_body_get_point_global_position_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._softBodyGetPointGlobalPosition(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            pointIndex: args[1]!.load(as: Int32.self)
        )
        returnPtr!.assumingMemoryBound(to: Godot.Vector3.self).pointee = returnValue}
        let _soft_body_remove_all_pinned_points_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._softBodyRemoveAllPinnedPoints(
            body: Godot.RID(godotExtensionPointer: args[0]!)
        )}
        let _soft_body_pin_point_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._softBodyPinPoint(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            pointIndex: args[1]!.load(as: Int32.self),
            pin: args[2]!.load(as: Bool.self)
        )}
        let _soft_body_is_point_pinned_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._softBodyIsPointPinned(
            body: Godot.RID(godotExtensionPointer: args[0]!),
            pointIndex: args[1]!.load(as: Int32.self)
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _joint_create_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._jointCreate()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _joint_clear_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._jointClear(
            joint: Godot.RID(godotExtensionPointer: args[0]!)
        )}
        let _joint_make_pin_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._jointMakePin(
            joint: Godot.RID(godotExtensionPointer: args[0]!),
            bodyA: Godot.RID(godotExtensionPointer: args[1]!),
            localA: args[2]!.load(as: Godot.Vector3.self),
            bodyB: Godot.RID(godotExtensionPointer: args[3]!),
            localB: args[4]!.load(as: Godot.Vector3.self)
        )}
        let _pin_joint_set_param_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._pinJointSetParam(
            joint: Godot.RID(godotExtensionPointer: args[0]!),
            param: args[1]!.load(as: Godot.PhysicsServer3D.PinJointParam.self),
            value: args[2]!.load(as: Double.self)
        )}
        let _pin_joint_get_param_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._pinJointGetParam(
            joint: Godot.RID(godotExtensionPointer: args[0]!),
            param: args[1]!.load(as: Godot.PhysicsServer3D.PinJointParam.self)
        )
        returnPtr!.assumingMemoryBound(to: Double.self).pointee = returnValue}
        let _pin_joint_set_local_a_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._pinJointSetLocalA(
            joint: Godot.RID(godotExtensionPointer: args[0]!),
            localA: args[1]!.load(as: Godot.Vector3.self)
        )}
        let _pin_joint_get_local_a_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._pinJointGetLocalA(
            joint: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: Godot.Vector3.self).pointee = returnValue}
        let _pin_joint_set_local_b_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._pinJointSetLocalB(
            joint: Godot.RID(godotExtensionPointer: args[0]!),
            localB: args[1]!.load(as: Godot.Vector3.self)
        )}
        let _pin_joint_get_local_b_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._pinJointGetLocalB(
            joint: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: Godot.Vector3.self).pointee = returnValue}
        let _joint_make_hinge_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._jointMakeHinge(
            joint: Godot.RID(godotExtensionPointer: args[0]!),
            bodyA: Godot.RID(godotExtensionPointer: args[1]!),
            hingeA: args[2]!.load(as: Godot.Transform3D.self),
            bodyB: Godot.RID(godotExtensionPointer: args[3]!),
            hingeB: args[4]!.load(as: Godot.Transform3D.self)
        )}
        let _joint_make_hinge_simple_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._jointMakeHingeSimple(
            joint: Godot.RID(godotExtensionPointer: args[0]!),
            bodyA: Godot.RID(godotExtensionPointer: args[1]!),
            pivotA: args[2]!.load(as: Godot.Vector3.self),
            axisA: args[3]!.load(as: Godot.Vector3.self),
            bodyB: Godot.RID(godotExtensionPointer: args[4]!),
            pivotB: args[5]!.load(as: Godot.Vector3.self),
            axisB: args[6]!.load(as: Godot.Vector3.self)
        )}
        let _hinge_joint_set_param_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._hingeJointSetParam(
            joint: Godot.RID(godotExtensionPointer: args[0]!),
            param: args[1]!.load(as: Godot.PhysicsServer3D.HingeJointParam.self),
            value: args[2]!.load(as: Double.self)
        )}
        let _hinge_joint_get_param_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._hingeJointGetParam(
            joint: Godot.RID(godotExtensionPointer: args[0]!),
            param: args[1]!.load(as: Godot.PhysicsServer3D.HingeJointParam.self)
        )
        returnPtr!.assumingMemoryBound(to: Double.self).pointee = returnValue}
        let _hinge_joint_set_flag_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._hingeJointSetFlag(
            joint: Godot.RID(godotExtensionPointer: args[0]!),
            flag: args[1]!.load(as: Godot.PhysicsServer3D.HingeJointFlag.self),
            enabled: args[2]!.load(as: Bool.self)
        )}
        let _hinge_joint_get_flag_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._hingeJointGetFlag(
            joint: Godot.RID(godotExtensionPointer: args[0]!),
            flag: args[1]!.load(as: Godot.PhysicsServer3D.HingeJointFlag.self)
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _joint_make_slider_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._jointMakeSlider(
            joint: Godot.RID(godotExtensionPointer: args[0]!),
            bodyA: Godot.RID(godotExtensionPointer: args[1]!),
            localRefA: args[2]!.load(as: Godot.Transform3D.self),
            bodyB: Godot.RID(godotExtensionPointer: args[3]!),
            localRefB: args[4]!.load(as: Godot.Transform3D.self)
        )}
        let _slider_joint_set_param_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._sliderJointSetParam(
            joint: Godot.RID(godotExtensionPointer: args[0]!),
            param: args[1]!.load(as: Godot.PhysicsServer3D.SliderJointParam.self),
            value: args[2]!.load(as: Double.self)
        )}
        let _slider_joint_get_param_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._sliderJointGetParam(
            joint: Godot.RID(godotExtensionPointer: args[0]!),
            param: args[1]!.load(as: Godot.PhysicsServer3D.SliderJointParam.self)
        )
        returnPtr!.assumingMemoryBound(to: Double.self).pointee = returnValue}
        let _joint_make_cone_twist_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._jointMakeConeTwist(
            joint: Godot.RID(godotExtensionPointer: args[0]!),
            bodyA: Godot.RID(godotExtensionPointer: args[1]!),
            localRefA: args[2]!.load(as: Godot.Transform3D.self),
            bodyB: Godot.RID(godotExtensionPointer: args[3]!),
            localRefB: args[4]!.load(as: Godot.Transform3D.self)
        )}
        let _cone_twist_joint_set_param_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._coneTwistJointSetParam(
            joint: Godot.RID(godotExtensionPointer: args[0]!),
            param: args[1]!.load(as: Godot.PhysicsServer3D.ConeTwistJointParam.self),
            value: args[2]!.load(as: Double.self)
        )}
        let _cone_twist_joint_get_param_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._coneTwistJointGetParam(
            joint: Godot.RID(godotExtensionPointer: args[0]!),
            param: args[1]!.load(as: Godot.PhysicsServer3D.ConeTwistJointParam.self)
        )
        returnPtr!.assumingMemoryBound(to: Double.self).pointee = returnValue}
        let _joint_make_generic_6dof_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._jointMakeGeneric6dof(
            joint: Godot.RID(godotExtensionPointer: args[0]!),
            bodyA: Godot.RID(godotExtensionPointer: args[1]!),
            localRefA: args[2]!.load(as: Godot.Transform3D.self),
            bodyB: Godot.RID(godotExtensionPointer: args[3]!),
            localRefB: args[4]!.load(as: Godot.Transform3D.self)
        )}
        let _generic_6dof_joint_set_param_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._generic6dofJointSetParam(
            joint: Godot.RID(godotExtensionPointer: args[0]!),
            axis: args[1]!.load(as: Godot.Vector3.Axis.self),
            param: args[2]!.load(as: Godot.PhysicsServer3D.G6DOFJointAxisParam.self),
            value: args[3]!.load(as: Double.self)
        )}
        let _generic_6dof_joint_get_param_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._generic6dofJointGetParam(
            joint: Godot.RID(godotExtensionPointer: args[0]!),
            axis: args[1]!.load(as: Godot.Vector3.Axis.self),
            param: args[2]!.load(as: Godot.PhysicsServer3D.G6DOFJointAxisParam.self)
        )
        returnPtr!.assumingMemoryBound(to: Double.self).pointee = returnValue}
        let _generic_6dof_joint_set_flag_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._generic6dofJointSetFlag(
            joint: Godot.RID(godotExtensionPointer: args[0]!),
            axis: args[1]!.load(as: Godot.Vector3.Axis.self),
            flag: args[2]!.load(as: Godot.PhysicsServer3D.G6DOFJointAxisFlag.self),
            enable: args[3]!.load(as: Bool.self)
        )}
        let _generic_6dof_joint_get_flag_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._generic6dofJointGetFlag(
            joint: Godot.RID(godotExtensionPointer: args[0]!),
            axis: args[1]!.load(as: Godot.Vector3.Axis.self),
            flag: args[2]!.load(as: Godot.PhysicsServer3D.G6DOFJointAxisFlag.self)
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _joint_get_type_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._jointGetType(
            joint: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: Godot.PhysicsServer3D.JointType.self).pointee = returnValue}
        let _joint_set_solver_priority_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._jointSetSolverPriority(
            joint: Godot.RID(godotExtensionPointer: args[0]!),
            priority: args[1]!.load(as: Int32.self)
        )}
        let _joint_get_solver_priority_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._jointGetSolverPriority(
            joint: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: Int32.self).pointee = returnValue}
        let _joint_disable_collisions_between_bodies_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._jointDisableCollisionsBetweenBodies(
            joint: Godot.RID(godotExtensionPointer: args[0]!),
            disable: args[1]!.load(as: Bool.self)
        )}
        let _joint_is_disabled_collisions_between_bodies_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._jointIsDisabledCollisionsBetweenBodies(
            joint: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _free_rid_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._freeRid(
            Godot.RID(godotExtensionPointer: args[0]!)
        )}
        let _set_active_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._setActive(
            args[0]!.load(as: Bool.self)
        )}
        let _init_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._init()}
        let _step_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._step(
            args[0]!.load(as: Double.self)
        )}
        let _sync_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._sync()}
        let _flush_queries_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._flushQueries()}
        let _end_sync_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._endSync()}
        let _finish_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._finish()}
        let _is_flushing_queries_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._isFlushingQueries()
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _get_process_info_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsServer3DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getProcessInfo(
            args[0]!.load(as: Godot.PhysicsServer3D.ProcessInfo.self)
        )
        returnPtr!.assumingMemoryBound(to: Int32.self).pointee = returnValue}
        _virtualFunctions = [
            "_worldBoundaryShapeCreate" : ("_world_boundary_shape_create", _world_boundary_shape_create_call),
            "_separationRayShapeCreate" : ("_separation_ray_shape_create", _separation_ray_shape_create_call),
            "_sphereShapeCreate" : ("_sphere_shape_create", _sphere_shape_create_call),
            "_boxShapeCreate" : ("_box_shape_create", _box_shape_create_call),
            "_capsuleShapeCreate" : ("_capsule_shape_create", _capsule_shape_create_call),
            "_cylinderShapeCreate" : ("_cylinder_shape_create", _cylinder_shape_create_call),
            "_convexPolygonShapeCreate" : ("_convex_polygon_shape_create", _convex_polygon_shape_create_call),
            "_concavePolygonShapeCreate" : ("_concave_polygon_shape_create", _concave_polygon_shape_create_call),
            "_heightmapShapeCreate" : ("_heightmap_shape_create", _heightmap_shape_create_call),
            "_customShapeCreate" : ("_custom_shape_create", _custom_shape_create_call),
            "_shapeSetData" : ("_shape_set_data", _shape_set_data_call),
            "_shapeSetCustomSolverBias" : ("_shape_set_custom_solver_bias", _shape_set_custom_solver_bias_call),
            "_shapeSetMargin" : ("_shape_set_margin", _shape_set_margin_call),
            "_shapeGetMargin" : ("_shape_get_margin", _shape_get_margin_call),
            "_shapeGetType" : ("_shape_get_type", _shape_get_type_call),
            "_shapeGetData" : ("_shape_get_data", _shape_get_data_call),
            "_shapeGetCustomSolverBias" : ("_shape_get_custom_solver_bias", _shape_get_custom_solver_bias_call),
            "_spaceCreate" : ("_space_create", _space_create_call),
            "_spaceSetActive" : ("_space_set_active", _space_set_active_call),
            "_spaceIsActive" : ("_space_is_active", _space_is_active_call),
            "_spaceSetParam" : ("_space_set_param", _space_set_param_call),
            "_spaceGetParam" : ("_space_get_param", _space_get_param_call),
            "_spaceGetDirectState" : ("_space_get_direct_state", _space_get_direct_state_call),
            "_spaceSetDebugContacts" : ("_space_set_debug_contacts", _space_set_debug_contacts_call),
            "_spaceGetContacts" : ("_space_get_contacts", _space_get_contacts_call),
            "_spaceGetContactCount" : ("_space_get_contact_count", _space_get_contact_count_call),
            "_areaCreate" : ("_area_create", _area_create_call),
            "_areaSetSpace" : ("_area_set_space", _area_set_space_call),
            "_areaGetSpace" : ("_area_get_space", _area_get_space_call),
            "_areaAddShape" : ("_area_add_shape", _area_add_shape_call),
            "_areaSetShape" : ("_area_set_shape", _area_set_shape_call),
            "_areaSetShapeTransform" : ("_area_set_shape_transform", _area_set_shape_transform_call),
            "_areaSetShapeDisabled" : ("_area_set_shape_disabled", _area_set_shape_disabled_call),
            "_areaGetShapeCount" : ("_area_get_shape_count", _area_get_shape_count_call),
            "_areaGetShape" : ("_area_get_shape", _area_get_shape_call),
            "_areaGetShapeTransform" : ("_area_get_shape_transform", _area_get_shape_transform_call),
            "_areaRemoveShape" : ("_area_remove_shape", _area_remove_shape_call),
            "_areaClearShapes" : ("_area_clear_shapes", _area_clear_shapes_call),
            "_areaAttachObjectInstanceId" : ("_area_attach_object_instance_id", _area_attach_object_instance_id_call),
            "_areaGetObjectInstanceId" : ("_area_get_object_instance_id", _area_get_object_instance_id_call),
            "_areaSetParam" : ("_area_set_param", _area_set_param_call),
            "_areaSetTransform" : ("_area_set_transform", _area_set_transform_call),
            "_areaGetParam" : ("_area_get_param", _area_get_param_call),
            "_areaGetTransform" : ("_area_get_transform", _area_get_transform_call),
            "_areaSetCollisionLayer" : ("_area_set_collision_layer", _area_set_collision_layer_call),
            "_areaGetCollisionLayer" : ("_area_get_collision_layer", _area_get_collision_layer_call),
            "_areaSetCollisionMask" : ("_area_set_collision_mask", _area_set_collision_mask_call),
            "_areaGetCollisionMask" : ("_area_get_collision_mask", _area_get_collision_mask_call),
            "_areaSetMonitorable" : ("_area_set_monitorable", _area_set_monitorable_call),
            "_areaSetRayPickable" : ("_area_set_ray_pickable", _area_set_ray_pickable_call),
            "_areaSetMonitorCallback" : ("_area_set_monitor_callback", _area_set_monitor_callback_call),
            "_areaSetAreaMonitorCallback" : ("_area_set_area_monitor_callback", _area_set_area_monitor_callback_call),
            "_bodyCreate" : ("_body_create", _body_create_call),
            "_bodySetSpace" : ("_body_set_space", _body_set_space_call),
            "_bodyGetSpace" : ("_body_get_space", _body_get_space_call),
            "_bodySetMode" : ("_body_set_mode", _body_set_mode_call),
            "_bodyGetMode" : ("_body_get_mode", _body_get_mode_call),
            "_bodyAddShape" : ("_body_add_shape", _body_add_shape_call),
            "_bodySetShape" : ("_body_set_shape", _body_set_shape_call),
            "_bodySetShapeTransform" : ("_body_set_shape_transform", _body_set_shape_transform_call),
            "_bodySetShapeDisabled" : ("_body_set_shape_disabled", _body_set_shape_disabled_call),
            "_bodyGetShapeCount" : ("_body_get_shape_count", _body_get_shape_count_call),
            "_bodyGetShape" : ("_body_get_shape", _body_get_shape_call),
            "_bodyGetShapeTransform" : ("_body_get_shape_transform", _body_get_shape_transform_call),
            "_bodyRemoveShape" : ("_body_remove_shape", _body_remove_shape_call),
            "_bodyClearShapes" : ("_body_clear_shapes", _body_clear_shapes_call),
            "_bodyAttachObjectInstanceId" : ("_body_attach_object_instance_id", _body_attach_object_instance_id_call),
            "_bodyGetObjectInstanceId" : ("_body_get_object_instance_id", _body_get_object_instance_id_call),
            "_bodySetEnableContinuousCollisionDetection" : ("_body_set_enable_continuous_collision_detection", _body_set_enable_continuous_collision_detection_call),
            "_bodyIsContinuousCollisionDetectionEnabled" : ("_body_is_continuous_collision_detection_enabled", _body_is_continuous_collision_detection_enabled_call),
            "_bodySetCollisionLayer" : ("_body_set_collision_layer", _body_set_collision_layer_call),
            "_bodyGetCollisionLayer" : ("_body_get_collision_layer", _body_get_collision_layer_call),
            "_bodySetCollisionMask" : ("_body_set_collision_mask", _body_set_collision_mask_call),
            "_bodyGetCollisionMask" : ("_body_get_collision_mask", _body_get_collision_mask_call),
            "_bodySetCollisionPriority" : ("_body_set_collision_priority", _body_set_collision_priority_call),
            "_bodyGetCollisionPriority" : ("_body_get_collision_priority", _body_get_collision_priority_call),
            "_bodySetUserFlags" : ("_body_set_user_flags", _body_set_user_flags_call),
            "_bodyGetUserFlags" : ("_body_get_user_flags", _body_get_user_flags_call),
            "_bodySetParam" : ("_body_set_param", _body_set_param_call),
            "_bodyGetParam" : ("_body_get_param", _body_get_param_call),
            "_bodyResetMassProperties" : ("_body_reset_mass_properties", _body_reset_mass_properties_call),
            "_bodySetState" : ("_body_set_state", _body_set_state_call),
            "_bodyGetState" : ("_body_get_state", _body_get_state_call),
            "_bodyApplyCentralImpulse" : ("_body_apply_central_impulse", _body_apply_central_impulse_call),
            "_bodyApplyImpulse" : ("_body_apply_impulse", _body_apply_impulse_call),
            "_bodyApplyTorqueImpulse" : ("_body_apply_torque_impulse", _body_apply_torque_impulse_call),
            "_bodyApplyCentralForce" : ("_body_apply_central_force", _body_apply_central_force_call),
            "_bodyApplyForce" : ("_body_apply_force", _body_apply_force_call),
            "_bodyApplyTorque" : ("_body_apply_torque", _body_apply_torque_call),
            "_bodyAddConstantCentralForce" : ("_body_add_constant_central_force", _body_add_constant_central_force_call),
            "_bodyAddConstantForce" : ("_body_add_constant_force", _body_add_constant_force_call),
            "_bodyAddConstantTorque" : ("_body_add_constant_torque", _body_add_constant_torque_call),
            "_bodySetConstantForce" : ("_body_set_constant_force", _body_set_constant_force_call),
            "_bodyGetConstantForce" : ("_body_get_constant_force", _body_get_constant_force_call),
            "_bodySetConstantTorque" : ("_body_set_constant_torque", _body_set_constant_torque_call),
            "_bodyGetConstantTorque" : ("_body_get_constant_torque", _body_get_constant_torque_call),
            "_bodySetAxisVelocity" : ("_body_set_axis_velocity", _body_set_axis_velocity_call),
            "_bodySetAxisLock" : ("_body_set_axis_lock", _body_set_axis_lock_call),
            "_bodyIsAxisLocked" : ("_body_is_axis_locked", _body_is_axis_locked_call),
            "_bodyAddCollisionException" : ("_body_add_collision_exception", _body_add_collision_exception_call),
            "_bodyRemoveCollisionException" : ("_body_remove_collision_exception", _body_remove_collision_exception_call),
            "_bodyGetCollisionExceptions" : ("_body_get_collision_exceptions", _body_get_collision_exceptions_call),
            "_bodySetMaxContactsReported" : ("_body_set_max_contacts_reported", _body_set_max_contacts_reported_call),
            "_bodyGetMaxContactsReported" : ("_body_get_max_contacts_reported", _body_get_max_contacts_reported_call),
            "_bodySetContactsReportedDepthThreshold" : ("_body_set_contacts_reported_depth_threshold", _body_set_contacts_reported_depth_threshold_call),
            "_bodyGetContactsReportedDepthThreshold" : ("_body_get_contacts_reported_depth_threshold", _body_get_contacts_reported_depth_threshold_call),
            "_bodySetOmitForceIntegration" : ("_body_set_omit_force_integration", _body_set_omit_force_integration_call),
            "_bodyIsOmittingForceIntegration" : ("_body_is_omitting_force_integration", _body_is_omitting_force_integration_call),
            "_bodySetStateSyncCallback" : ("_body_set_state_sync_callback", _body_set_state_sync_callback_call),
            "_bodySetForceIntegrationCallback" : ("_body_set_force_integration_callback", _body_set_force_integration_callback_call),
            "_bodySetRayPickable" : ("_body_set_ray_pickable", _body_set_ray_pickable_call),
            "_bodyTestMotion" : ("_body_test_motion", _body_test_motion_call),
            "_bodyGetDirectState" : ("_body_get_direct_state", _body_get_direct_state_call),
            "_softBodyCreate" : ("_soft_body_create", _soft_body_create_call),
            "_softBodyUpdateRenderingServer" : ("_soft_body_update_rendering_server", _soft_body_update_rendering_server_call),
            "_softBodySetSpace" : ("_soft_body_set_space", _soft_body_set_space_call),
            "_softBodyGetSpace" : ("_soft_body_get_space", _soft_body_get_space_call),
            "_softBodySetRayPickable" : ("_soft_body_set_ray_pickable", _soft_body_set_ray_pickable_call),
            "_softBodySetCollisionLayer" : ("_soft_body_set_collision_layer", _soft_body_set_collision_layer_call),
            "_softBodyGetCollisionLayer" : ("_soft_body_get_collision_layer", _soft_body_get_collision_layer_call),
            "_softBodySetCollisionMask" : ("_soft_body_set_collision_mask", _soft_body_set_collision_mask_call),
            "_softBodyGetCollisionMask" : ("_soft_body_get_collision_mask", _soft_body_get_collision_mask_call),
            "_softBodyAddCollisionException" : ("_soft_body_add_collision_exception", _soft_body_add_collision_exception_call),
            "_softBodyRemoveCollisionException" : ("_soft_body_remove_collision_exception", _soft_body_remove_collision_exception_call),
            "_softBodyGetCollisionExceptions" : ("_soft_body_get_collision_exceptions", _soft_body_get_collision_exceptions_call),
            "_softBodySetState" : ("_soft_body_set_state", _soft_body_set_state_call),
            "_softBodyGetState" : ("_soft_body_get_state", _soft_body_get_state_call),
            "_softBodySetTransform" : ("_soft_body_set_transform", _soft_body_set_transform_call),
            "_softBodySetSimulationPrecision" : ("_soft_body_set_simulation_precision", _soft_body_set_simulation_precision_call),
            "_softBodyGetSimulationPrecision" : ("_soft_body_get_simulation_precision", _soft_body_get_simulation_precision_call),
            "_softBodySetTotalMass" : ("_soft_body_set_total_mass", _soft_body_set_total_mass_call),
            "_softBodyGetTotalMass" : ("_soft_body_get_total_mass", _soft_body_get_total_mass_call),
            "_softBodySetLinearStiffness" : ("_soft_body_set_linear_stiffness", _soft_body_set_linear_stiffness_call),
            "_softBodyGetLinearStiffness" : ("_soft_body_get_linear_stiffness", _soft_body_get_linear_stiffness_call),
            "_softBodySetPressureCoefficient" : ("_soft_body_set_pressure_coefficient", _soft_body_set_pressure_coefficient_call),
            "_softBodyGetPressureCoefficient" : ("_soft_body_get_pressure_coefficient", _soft_body_get_pressure_coefficient_call),
            "_softBodySetDampingCoefficient" : ("_soft_body_set_damping_coefficient", _soft_body_set_damping_coefficient_call),
            "_softBodyGetDampingCoefficient" : ("_soft_body_get_damping_coefficient", _soft_body_get_damping_coefficient_call),
            "_softBodySetDragCoefficient" : ("_soft_body_set_drag_coefficient", _soft_body_set_drag_coefficient_call),
            "_softBodyGetDragCoefficient" : ("_soft_body_get_drag_coefficient", _soft_body_get_drag_coefficient_call),
            "_softBodySetMesh" : ("_soft_body_set_mesh", _soft_body_set_mesh_call),
            "_softBodyGetBounds" : ("_soft_body_get_bounds", _soft_body_get_bounds_call),
            "_softBodyMovePoint" : ("_soft_body_move_point", _soft_body_move_point_call),
            "_softBodyGetPointGlobalPosition" : ("_soft_body_get_point_global_position", _soft_body_get_point_global_position_call),
            "_softBodyRemoveAllPinnedPoints" : ("_soft_body_remove_all_pinned_points", _soft_body_remove_all_pinned_points_call),
            "_softBodyPinPoint" : ("_soft_body_pin_point", _soft_body_pin_point_call),
            "_softBodyIsPointPinned" : ("_soft_body_is_point_pinned", _soft_body_is_point_pinned_call),
            "_jointCreate" : ("_joint_create", _joint_create_call),
            "_jointClear" : ("_joint_clear", _joint_clear_call),
            "_jointMakePin" : ("_joint_make_pin", _joint_make_pin_call),
            "_pinJointSetParam" : ("_pin_joint_set_param", _pin_joint_set_param_call),
            "_pinJointGetParam" : ("_pin_joint_get_param", _pin_joint_get_param_call),
            "_pinJointSetLocalA" : ("_pin_joint_set_local_a", _pin_joint_set_local_a_call),
            "_pinJointGetLocalA" : ("_pin_joint_get_local_a", _pin_joint_get_local_a_call),
            "_pinJointSetLocalB" : ("_pin_joint_set_local_b", _pin_joint_set_local_b_call),
            "_pinJointGetLocalB" : ("_pin_joint_get_local_b", _pin_joint_get_local_b_call),
            "_jointMakeHinge" : ("_joint_make_hinge", _joint_make_hinge_call),
            "_jointMakeHingeSimple" : ("_joint_make_hinge_simple", _joint_make_hinge_simple_call),
            "_hingeJointSetParam" : ("_hinge_joint_set_param", _hinge_joint_set_param_call),
            "_hingeJointGetParam" : ("_hinge_joint_get_param", _hinge_joint_get_param_call),
            "_hingeJointSetFlag" : ("_hinge_joint_set_flag", _hinge_joint_set_flag_call),
            "_hingeJointGetFlag" : ("_hinge_joint_get_flag", _hinge_joint_get_flag_call),
            "_jointMakeSlider" : ("_joint_make_slider", _joint_make_slider_call),
            "_sliderJointSetParam" : ("_slider_joint_set_param", _slider_joint_set_param_call),
            "_sliderJointGetParam" : ("_slider_joint_get_param", _slider_joint_get_param_call),
            "_jointMakeConeTwist" : ("_joint_make_cone_twist", _joint_make_cone_twist_call),
            "_coneTwistJointSetParam" : ("_cone_twist_joint_set_param", _cone_twist_joint_set_param_call),
            "_coneTwistJointGetParam" : ("_cone_twist_joint_get_param", _cone_twist_joint_get_param_call),
            "_jointMakeGeneric6dof" : ("_joint_make_generic_6dof", _joint_make_generic_6dof_call),
            "_generic6dofJointSetParam" : ("_generic_6dof_joint_set_param", _generic_6dof_joint_set_param_call),
            "_generic6dofJointGetParam" : ("_generic_6dof_joint_get_param", _generic_6dof_joint_get_param_call),
            "_generic6dofJointSetFlag" : ("_generic_6dof_joint_set_flag", _generic_6dof_joint_set_flag_call),
            "_generic6dofJointGetFlag" : ("_generic_6dof_joint_get_flag", _generic_6dof_joint_get_flag_call),
            "_jointGetType" : ("_joint_get_type", _joint_get_type_call),
            "_jointSetSolverPriority" : ("_joint_set_solver_priority", _joint_set_solver_priority_call),
            "_jointGetSolverPriority" : ("_joint_get_solver_priority", _joint_get_solver_priority_call),
            "_jointDisableCollisionsBetweenBodies" : ("_joint_disable_collisions_between_bodies", _joint_disable_collisions_between_bodies_call),
            "_jointIsDisabledCollisionsBetweenBodies" : ("_joint_is_disabled_collisions_between_bodies", _joint_is_disabled_collisions_between_bodies_call),
            "_freeRid" : ("_free_rid", _free_rid_call),
            "_setActive" : ("_set_active", _set_active_call),
            "_init" : ("_init", _init_call),
            "_step" : ("_step", _step_call),
            "_sync" : ("_sync", _sync_call),
            "_flushQueries" : ("_flush_queries", _flush_queries_call),
            "_endSync" : ("_end_sync", _end_sync_call),
            "_finish" : ("_finish", _finish_call),
            "_isFlushingQueries" : ("_is_flushing_queries", _is_flushing_queries_call),
            "_getProcessInfo" : ("_get_process_info", _get_process_info_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }