//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class PhysicsServer2DExtension: PhysicsServer2D {
    open func _worldBoundaryShapeCreate() -> Godot.RID {
        Godot.RID()
    }

    open func _separationRayShapeCreate() -> Godot.RID {
        Godot.RID()
    }

    open func _segmentShapeCreate() -> Godot.RID {
        Godot.RID()
    }

    open func _circleShapeCreate() -> Godot.RID {
        Godot.RID()
    }

    open func _rectangleShapeCreate() -> Godot.RID {
        Godot.RID()
    }

    open func _capsuleShapeCreate() -> Godot.RID {
        Godot.RID()
    }

    open func _convexPolygonShapeCreate() -> Godot.RID {
        Godot.RID()
    }

    open func _concavePolygonShapeCreate() -> Godot.RID {
        Godot.RID()
    }

    open func _shapeSetData(shape: Godot.RID, data: Godot.Variant) {
    }

    open func _shapeSetCustomSolverBias(shape: Godot.RID, bias: Double) {
    }

    open func _shapeGetType(shape: Godot.RID) -> Godot.PhysicsServer2D.ShapeType {
        Godot.PhysicsServer2D.ShapeType(rawValue: 0)!
    }

    open func _shapeGetData(shape: Godot.RID) -> Godot.Variant {
        Variant()
    }

    open func _shapeGetCustomSolverBias(shape: Godot.RID) -> Double {
        Double()
    }

    open func _shapeCollide(shapeA: Godot.RID, xformA: Godot.Transform2D, motionA: Godot.Vector2, shapeB: Godot.RID, xformB: Godot.Transform2D, motionB: Godot.Vector2, results: UnsafeMutableRawPointer, resultMax: Int32, resultCount: UnsafeMutablePointer<Int32>) -> Bool {
        Bool()
    }

    open func _spaceCreate() -> Godot.RID {
        Godot.RID()
    }

    open func _spaceSetActive(space: Godot.RID, active: Bool) {
    }

    open func _spaceIsActive(space: Godot.RID) -> Bool {
        Bool()
    }

    open func _spaceSetParam(space: Godot.RID, param: Godot.PhysicsServer2D.SpaceParameter, value: Double) {
    }

    open func _spaceGetParam(space: Godot.RID, param: Godot.PhysicsServer2D.SpaceParameter) -> Double {
        Double()
    }

    open func _spaceGetDirectState(space: Godot.RID) -> Godot.PhysicsDirectSpaceState2D? {
        nil
    }

    open func _spaceSetDebugContacts(space: Godot.RID, maxContacts: Int32) {
    }

    open func _spaceGetContacts(space: Godot.RID) -> Godot.PackedVector2Array {
        Godot.PackedVector2Array()
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

    open func _areaAddShape(area: Godot.RID, shape: Godot.RID, transform: Godot.Transform2D, disabled: Bool) {
    }

    open func _areaSetShape(area: Godot.RID, shapeIdx: Int32, shape: Godot.RID) {
    }

    open func _areaSetShapeTransform(area: Godot.RID, shapeIdx: Int32, transform: Godot.Transform2D) {
    }

    open func _areaSetShapeDisabled(area: Godot.RID, shapeIdx: Int32, disabled: Bool) {
    }

    open func _areaGetShapeCount(area: Godot.RID) -> Int32 {
        Int32()
    }

    open func _areaGetShape(area: Godot.RID, shapeIdx: Int32) -> Godot.RID {
        Godot.RID()
    }

    open func _areaGetShapeTransform(area: Godot.RID, shapeIdx: Int32) -> Godot.Transform2D {
        Godot.Transform2D()
    }

    open func _areaRemoveShape(area: Godot.RID, shapeIdx: Int32) {
    }

    open func _areaClearShapes(area: Godot.RID) {
    }

    open func _areaAttachObjectInstanceID(area: Godot.RID, id: UInt64) {
    }

    open func _areaGetObjectInstanceID(area: Godot.RID) -> UInt64 {
        UInt64()
    }

    open func _areaAttachCanvasInstanceID(area: Godot.RID, id: UInt64) {
    }

    open func _areaGetCanvasInstanceID(area: Godot.RID) -> UInt64 {
        UInt64()
    }

    open func _areaSetParam(area: Godot.RID, param: Godot.PhysicsServer2D.AreaParameter, value: Godot.Variant) {
    }

    open func _areaSetTransform(area: Godot.RID, transform: Godot.Transform2D) {
    }

    open func _areaGetParam(area: Godot.RID, param: Godot.PhysicsServer2D.AreaParameter) -> Godot.Variant {
        Variant()
    }

    open func _areaGetTransform(area: Godot.RID) -> Godot.Transform2D {
        Godot.Transform2D()
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

    open func _areaSetPickable(area: Godot.RID, pickable: Bool) {
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

    open func _bodySetMode(body: Godot.RID, mode: Godot.PhysicsServer2D.BodyMode) {
    }

    open func _bodyGetMode(body: Godot.RID) -> Godot.PhysicsServer2D.BodyMode {
        Godot.PhysicsServer2D.BodyMode(rawValue: 0)!
    }

    open func _bodyAddShape(body: Godot.RID, shape: Godot.RID, transform: Godot.Transform2D, disabled: Bool) {
    }

    open func _bodySetShape(body: Godot.RID, shapeIdx: Int32, shape: Godot.RID) {
    }

    open func _bodySetShapeTransform(body: Godot.RID, shapeIdx: Int32, transform: Godot.Transform2D) {
    }

    open func _bodyGetShapeCount(body: Godot.RID) -> Int32 {
        Int32()
    }

    open func _bodyGetShape(body: Godot.RID, shapeIdx: Int32) -> Godot.RID {
        Godot.RID()
    }

    open func _bodyGetShapeTransform(body: Godot.RID, shapeIdx: Int32) -> Godot.Transform2D {
        Godot.Transform2D()
    }

    open func _bodySetShapeDisabled(body: Godot.RID, shapeIdx: Int32, disabled: Bool) {
    }

    open func _bodySetShapeAsOneWayCollision(body: Godot.RID, shapeIdx: Int32, enable: Bool, margin: Double) {
    }

    open func _bodyRemoveShape(body: Godot.RID, shapeIdx: Int32) {
    }

    open func _bodyClearShapes(body: Godot.RID) {
    }

    open func _bodyAttachObjectInstanceID(body: Godot.RID, id: UInt64) {
    }

    open func _bodyGetObjectInstanceID(body: Godot.RID) -> UInt64 {
        UInt64()
    }

    open func _bodyAttachCanvasInstanceID(body: Godot.RID, id: UInt64) {
    }

    open func _bodyGetCanvasInstanceID(body: Godot.RID) -> UInt64 {
        UInt64()
    }

    open func _bodySetContinuousCollisionDetectionMode(body: Godot.RID, mode: Godot.PhysicsServer2D.CCDMode) {
    }

    open func _bodyGetContinuousCollisionDetectionMode(body: Godot.RID) -> Godot.PhysicsServer2D.CCDMode {
        Godot.PhysicsServer2D.CCDMode(rawValue: 0)!
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

    open func _bodySetParam(body: Godot.RID, param: Godot.PhysicsServer2D.BodyParameter, value: Godot.Variant) {
    }

    open func _bodyGetParam(body: Godot.RID, param: Godot.PhysicsServer2D.BodyParameter) -> Godot.Variant {
        Variant()
    }

    open func _bodyResetMassProperties(body: Godot.RID) {
    }

    open func _bodySetState(body: Godot.RID, state: Godot.PhysicsServer2D.BodyState, value: Godot.Variant) {
    }

    open func _bodyGetState(body: Godot.RID, state: Godot.PhysicsServer2D.BodyState) -> Godot.Variant {
        Variant()
    }

    open func _bodyApplyCentralImpulse(body: Godot.RID, impulse: Godot.Vector2) {
    }

    open func _bodyApplyTorqueImpulse(body: Godot.RID, impulse: Double) {
    }

    open func _bodyApplyImpulse(body: Godot.RID, impulse: Godot.Vector2, position: Godot.Vector2) {
    }

    open func _bodyApplyCentralForce(body: Godot.RID, force: Godot.Vector2) {
    }

    open func _bodyApplyForce(body: Godot.RID, force: Godot.Vector2, position: Godot.Vector2) {
    }

    open func _bodyApplyTorque(body: Godot.RID, torque: Double) {
    }

    open func _bodyAddConstantCentralForce(body: Godot.RID, force: Godot.Vector2) {
    }

    open func _bodyAddConstantForce(body: Godot.RID, force: Godot.Vector2, position: Godot.Vector2) {
    }

    open func _bodyAddConstantTorque(body: Godot.RID, torque: Double) {
    }

    open func _bodySetConstantForce(body: Godot.RID, force: Godot.Vector2) {
    }

    open func _bodyGetConstantForce(body: Godot.RID) -> Godot.Vector2 {
        Godot.Vector2()
    }

    open func _bodySetConstantTorque(body: Godot.RID, torque: Double) {
    }

    open func _bodyGetConstantTorque(body: Godot.RID) -> Double {
        Double()
    }

    open func _bodySetAxisVelocity(body: Godot.RID, axisVelocity: Godot.Vector2) {
    }

    open func _bodyAddCollisionException(body: Godot.RID, exceptedBody: Godot.RID) {
    }

    open func _bodyRemoveCollisionException(body: Godot.RID, exceptedBody: Godot.RID) {
    }

    open func _bodyGetCollisionExceptions(body: Godot.RID) -> Godot.GodotArray<Godot.RID> {
        Godot.GodotArray<Godot.RID>()
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

    open func _bodyCollideShape(body: Godot.RID, bodyShape: Int32, shape: Godot.RID, shapeXform: Godot.Transform2D, motion: Godot.Vector2, results: UnsafeMutableRawPointer, resultMax: Int32, resultCount: UnsafeMutablePointer<Int32>) -> Bool {
        Bool()
    }

    open func _bodySetPickable(body: Godot.RID, pickable: Bool) {
    }

    open func _bodyGetDirectState(body: Godot.RID) -> Godot.PhysicsDirectBodyState2D? {
        nil
    }

    open func _bodyTestMotion(body: Godot.RID, from: Godot.Transform2D, motion: Godot.Vector2, margin: Double, collideSeparationRay: Bool, recoveryAsCollision: Bool, result: UnsafeMutablePointer<PhysicsServer2DExtensionMotionResult>) -> Bool {
        Bool()
    }

    open func _jointCreate() -> Godot.RID {
        Godot.RID()
    }

    open func _jointClear(joint: Godot.RID) {
    }

    open func _jointSetParam(joint: Godot.RID, param: Godot.PhysicsServer2D.JointParam, value: Double) {
    }

    open func _jointGetParam(joint: Godot.RID, param: Godot.PhysicsServer2D.JointParam) -> Double {
        Double()
    }

    open func _jointDisableCollisionsBetweenBodies(joint: Godot.RID, disable: Bool) {
    }

    open func _jointIsDisabledCollisionsBetweenBodies(joint: Godot.RID) -> Bool {
        Bool()
    }

    open func _jointMakePin(joint: Godot.RID, anchor: Godot.Vector2, bodyA: Godot.RID, bodyB: Godot.RID) {
    }

    open func _jointMakeGroove(joint: Godot.RID, aGroove1: Godot.Vector2, aGroove2: Godot.Vector2, bAnchor: Godot.Vector2, bodyA: Godot.RID, bodyB: Godot.RID) {
    }

    open func _jointMakeDampedSpring(joint: Godot.RID, anchorA: Godot.Vector2, anchorB: Godot.Vector2, bodyA: Godot.RID, bodyB: Godot.RID) {
    }

    open func _pinJointSetFlag(joint: Godot.RID, flag: Godot.PhysicsServer2D.PinJointFlag, enabled: Bool) {
    }

    open func _pinJointGetFlag(joint: Godot.RID, flag: Godot.PhysicsServer2D.PinJointFlag) -> Bool {
        Bool()
    }

    open func _pinJointSetParam(joint: Godot.RID, param: Godot.PhysicsServer2D.PinJointParam, value: Double) {
    }

    open func _pinJointGetParam(joint: Godot.RID, param: Godot.PhysicsServer2D.PinJointParam) -> Double {
        Double()
    }

    open func _dampedSpringJointSetParam(joint: Godot.RID, param: Godot.PhysicsServer2D.DampedSpringParam, value: Double) {
    }

    open func _dampedSpringJointGetParam(joint: Godot.RID, param: Godot.PhysicsServer2D.DampedSpringParam) -> Double {
        Double()
    }

    open func _jointGetType(joint: Godot.RID) -> Godot.PhysicsServer2D.JointType {
        Godot.PhysicsServer2D.JointType(rawValue: 0)!
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

    open func _getProcessInfo(_ processInfo: Godot.PhysicsServer2D.ProcessInfo) -> Int32 {
        Int32()
    }

    internal static var __method_binding_body_test_motion_is_excluding_body: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_test_motion_is_excluding_body").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func bodyTestMotionIsExcludingBody(_ body: Godot.RID) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        body.withGodotUnsafeRawPointer { __ptr_body in
        withUnsafeArgumentPackPointer(__ptr_body) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_test_motion_is_excluding_body,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_body_test_motion_is_excluding_object: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "body_test_motion_is_excluding_object").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func bodyTestMotionIsExcludingObject(_ object: UInt64) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        object.withGodotUnsafeRawPointer { __ptr_object in
        withUnsafeArgumentPackPointer(__ptr_object) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_body_test_motion_is_excluding_object,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
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
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._worldBoundaryShapeCreate()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _separation_ray_shape_create_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._separationRayShapeCreate()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _segment_shape_create_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._segmentShapeCreate()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _circle_shape_create_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._circleShapeCreate()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _rectangle_shape_create_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._rectangleShapeCreate()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _capsule_shape_create_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._capsuleShapeCreate()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _convex_polygon_shape_create_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._convexPolygonShapeCreate()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _concave_polygon_shape_create_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._concavePolygonShapeCreate()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shape_set_data_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapeSetData(
            shape: Godot.RID.fromGodotUnsafePointer(args[0]!),
            data: Godot.Variant.fromGodotUnsafePointer(args[1]!)
        )}
        let _shape_set_custom_solver_bias_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapeSetCustomSolverBias(
            shape: Godot.RID.fromGodotUnsafePointer(args[0]!),
            bias: Double.fromGodotUnsafePointer(args[1]!)
        )}
        let _shape_get_type_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapeGetType(
            shape: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shape_get_data_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapeGetData(
            shape: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shape_get_custom_solver_bias_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapeGetCustomSolverBias(
            shape: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shape_collide_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapeCollide(
            shapeA: Godot.RID.fromGodotUnsafePointer(args[0]!),
            xformA: Godot.Transform2D.fromGodotUnsafePointer(args[1]!),
            motionA: Godot.Vector2.fromGodotUnsafePointer(args[2]!),
            shapeB: Godot.RID.fromGodotUnsafePointer(args[3]!),
            xformB: Godot.Transform2D.fromGodotUnsafePointer(args[4]!),
            motionB: Godot.Vector2.fromGodotUnsafePointer(args[5]!),
            results: UnsafeMutableRawPointer.fromGodotUnsafePointer(args[6]!),
            resultMax: Int32.fromGodotUnsafePointer(args[7]!),
            resultCount: UnsafeMutablePointer<Int32>.fromGodotUnsafePointer(args[8]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _space_create_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._spaceCreate()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _space_set_active_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._spaceSetActive(
            space: Godot.RID.fromGodotUnsafePointer(args[0]!),
            active: Bool.fromGodotUnsafePointer(args[1]!)
        )}
        let _space_is_active_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._spaceIsActive(
            space: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _space_set_param_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._spaceSetParam(
            space: Godot.RID.fromGodotUnsafePointer(args[0]!),
            param: Godot.PhysicsServer2D.SpaceParameter.fromGodotUnsafePointer(args[1]!),
            value: Double.fromGodotUnsafePointer(args[2]!)
        )}
        let _space_get_param_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._spaceGetParam(
            space: Godot.RID.fromGodotUnsafePointer(args[0]!),
            param: Godot.PhysicsServer2D.SpaceParameter.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _space_get_direct_state_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._spaceGetDirectState(
            space: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _space_set_debug_contacts_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._spaceSetDebugContacts(
            space: Godot.RID.fromGodotUnsafePointer(args[0]!),
            maxContacts: Int32.fromGodotUnsafePointer(args[1]!)
        )}
        let _space_get_contacts_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._spaceGetContacts(
            space: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _space_get_contact_count_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._spaceGetContactCount(
            space: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _area_create_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._areaCreate()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _area_set_space_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._areaSetSpace(
            area: Godot.RID.fromGodotUnsafePointer(args[0]!),
            space: Godot.RID.fromGodotUnsafePointer(args[1]!)
        )}
        let _area_get_space_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._areaGetSpace(
            area: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _area_add_shape_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._areaAddShape(
            area: Godot.RID.fromGodotUnsafePointer(args[0]!),
            shape: Godot.RID.fromGodotUnsafePointer(args[1]!),
            transform: Godot.Transform2D.fromGodotUnsafePointer(args[2]!),
            disabled: Bool.fromGodotUnsafePointer(args[3]!)
        )}
        let _area_set_shape_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._areaSetShape(
            area: Godot.RID.fromGodotUnsafePointer(args[0]!),
            shapeIdx: Int32.fromGodotUnsafePointer(args[1]!),
            shape: Godot.RID.fromGodotUnsafePointer(args[2]!)
        )}
        let _area_set_shape_transform_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._areaSetShapeTransform(
            area: Godot.RID.fromGodotUnsafePointer(args[0]!),
            shapeIdx: Int32.fromGodotUnsafePointer(args[1]!),
            transform: Godot.Transform2D.fromGodotUnsafePointer(args[2]!)
        )}
        let _area_set_shape_disabled_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._areaSetShapeDisabled(
            area: Godot.RID.fromGodotUnsafePointer(args[0]!),
            shapeIdx: Int32.fromGodotUnsafePointer(args[1]!),
            disabled: Bool.fromGodotUnsafePointer(args[2]!)
        )}
        let _area_get_shape_count_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._areaGetShapeCount(
            area: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _area_get_shape_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._areaGetShape(
            area: Godot.RID.fromGodotUnsafePointer(args[0]!),
            shapeIdx: Int32.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _area_get_shape_transform_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._areaGetShapeTransform(
            area: Godot.RID.fromGodotUnsafePointer(args[0]!),
            shapeIdx: Int32.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _area_remove_shape_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._areaRemoveShape(
            area: Godot.RID.fromGodotUnsafePointer(args[0]!),
            shapeIdx: Int32.fromGodotUnsafePointer(args[1]!)
        )}
        let _area_clear_shapes_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._areaClearShapes(
            area: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )}
        let _area_attach_object_instance_id_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._areaAttachObjectInstanceID(
            area: Godot.RID.fromGodotUnsafePointer(args[0]!),
            id: UInt64.fromGodotUnsafePointer(args[1]!)
        )}
        let _area_get_object_instance_id_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._areaGetObjectInstanceID(
            area: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _area_attach_canvas_instance_id_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._areaAttachCanvasInstanceID(
            area: Godot.RID.fromGodotUnsafePointer(args[0]!),
            id: UInt64.fromGodotUnsafePointer(args[1]!)
        )}
        let _area_get_canvas_instance_id_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._areaGetCanvasInstanceID(
            area: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _area_set_param_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._areaSetParam(
            area: Godot.RID.fromGodotUnsafePointer(args[0]!),
            param: Godot.PhysicsServer2D.AreaParameter.fromGodotUnsafePointer(args[1]!),
            value: Godot.Variant.fromGodotUnsafePointer(args[2]!)
        )}
        let _area_set_transform_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._areaSetTransform(
            area: Godot.RID.fromGodotUnsafePointer(args[0]!),
            transform: Godot.Transform2D.fromGodotUnsafePointer(args[1]!)
        )}
        let _area_get_param_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._areaGetParam(
            area: Godot.RID.fromGodotUnsafePointer(args[0]!),
            param: Godot.PhysicsServer2D.AreaParameter.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _area_get_transform_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._areaGetTransform(
            area: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _area_set_collision_layer_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._areaSetCollisionLayer(
            area: Godot.RID.fromGodotUnsafePointer(args[0]!),
            layer: UInt32.fromGodotUnsafePointer(args[1]!)
        )}
        let _area_get_collision_layer_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._areaGetCollisionLayer(
            area: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _area_set_collision_mask_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._areaSetCollisionMask(
            area: Godot.RID.fromGodotUnsafePointer(args[0]!),
            mask: UInt32.fromGodotUnsafePointer(args[1]!)
        )}
        let _area_get_collision_mask_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._areaGetCollisionMask(
            area: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _area_set_monitorable_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._areaSetMonitorable(
            area: Godot.RID.fromGodotUnsafePointer(args[0]!),
            monitorable: Bool.fromGodotUnsafePointer(args[1]!)
        )}
        let _area_set_pickable_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._areaSetPickable(
            area: Godot.RID.fromGodotUnsafePointer(args[0]!),
            pickable: Bool.fromGodotUnsafePointer(args[1]!)
        )}
        let _area_set_monitor_callback_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._areaSetMonitorCallback(
            area: Godot.RID.fromGodotUnsafePointer(args[0]!),
            callback: Godot.Callable.fromGodotUnsafePointer(args[1]!)
        )}
        let _area_set_area_monitor_callback_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._areaSetAreaMonitorCallback(
            area: Godot.RID.fromGodotUnsafePointer(args[0]!),
            callback: Godot.Callable.fromGodotUnsafePointer(args[1]!)
        )}
        let _body_create_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodyCreate()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _body_set_space_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodySetSpace(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!),
            space: Godot.RID.fromGodotUnsafePointer(args[1]!)
        )}
        let _body_get_space_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodyGetSpace(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _body_set_mode_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodySetMode(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!),
            mode: Godot.PhysicsServer2D.BodyMode.fromGodotUnsafePointer(args[1]!)
        )}
        let _body_get_mode_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodyGetMode(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _body_add_shape_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodyAddShape(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!),
            shape: Godot.RID.fromGodotUnsafePointer(args[1]!),
            transform: Godot.Transform2D.fromGodotUnsafePointer(args[2]!),
            disabled: Bool.fromGodotUnsafePointer(args[3]!)
        )}
        let _body_set_shape_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodySetShape(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!),
            shapeIdx: Int32.fromGodotUnsafePointer(args[1]!),
            shape: Godot.RID.fromGodotUnsafePointer(args[2]!)
        )}
        let _body_set_shape_transform_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodySetShapeTransform(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!),
            shapeIdx: Int32.fromGodotUnsafePointer(args[1]!),
            transform: Godot.Transform2D.fromGodotUnsafePointer(args[2]!)
        )}
        let _body_get_shape_count_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodyGetShapeCount(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _body_get_shape_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodyGetShape(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!),
            shapeIdx: Int32.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _body_get_shape_transform_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodyGetShapeTransform(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!),
            shapeIdx: Int32.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _body_set_shape_disabled_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodySetShapeDisabled(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!),
            shapeIdx: Int32.fromGodotUnsafePointer(args[1]!),
            disabled: Bool.fromGodotUnsafePointer(args[2]!)
        )}
        let _body_set_shape_as_one_way_collision_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodySetShapeAsOneWayCollision(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!),
            shapeIdx: Int32.fromGodotUnsafePointer(args[1]!),
            enable: Bool.fromGodotUnsafePointer(args[2]!),
            margin: Double.fromGodotUnsafePointer(args[3]!)
        )}
        let _body_remove_shape_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodyRemoveShape(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!),
            shapeIdx: Int32.fromGodotUnsafePointer(args[1]!)
        )}
        let _body_clear_shapes_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodyClearShapes(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )}
        let _body_attach_object_instance_id_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodyAttachObjectInstanceID(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!),
            id: UInt64.fromGodotUnsafePointer(args[1]!)
        )}
        let _body_get_object_instance_id_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodyGetObjectInstanceID(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _body_attach_canvas_instance_id_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodyAttachCanvasInstanceID(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!),
            id: UInt64.fromGodotUnsafePointer(args[1]!)
        )}
        let _body_get_canvas_instance_id_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodyGetCanvasInstanceID(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _body_set_continuous_collision_detection_mode_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodySetContinuousCollisionDetectionMode(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!),
            mode: Godot.PhysicsServer2D.CCDMode.fromGodotUnsafePointer(args[1]!)
        )}
        let _body_get_continuous_collision_detection_mode_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodyGetContinuousCollisionDetectionMode(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _body_set_collision_layer_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodySetCollisionLayer(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!),
            layer: UInt32.fromGodotUnsafePointer(args[1]!)
        )}
        let _body_get_collision_layer_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodyGetCollisionLayer(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _body_set_collision_mask_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodySetCollisionMask(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!),
            mask: UInt32.fromGodotUnsafePointer(args[1]!)
        )}
        let _body_get_collision_mask_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodyGetCollisionMask(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _body_set_collision_priority_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodySetCollisionPriority(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!),
            priority: Double.fromGodotUnsafePointer(args[1]!)
        )}
        let _body_get_collision_priority_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodyGetCollisionPriority(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _body_set_param_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodySetParam(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!),
            param: Godot.PhysicsServer2D.BodyParameter.fromGodotUnsafePointer(args[1]!),
            value: Godot.Variant.fromGodotUnsafePointer(args[2]!)
        )}
        let _body_get_param_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodyGetParam(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!),
            param: Godot.PhysicsServer2D.BodyParameter.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _body_reset_mass_properties_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodyResetMassProperties(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )}
        let _body_set_state_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodySetState(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!),
            state: Godot.PhysicsServer2D.BodyState.fromGodotUnsafePointer(args[1]!),
            value: Godot.Variant.fromGodotUnsafePointer(args[2]!)
        )}
        let _body_get_state_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodyGetState(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!),
            state: Godot.PhysicsServer2D.BodyState.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _body_apply_central_impulse_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodyApplyCentralImpulse(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!),
            impulse: Godot.Vector2.fromGodotUnsafePointer(args[1]!)
        )}
        let _body_apply_torque_impulse_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodyApplyTorqueImpulse(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!),
            impulse: Double.fromGodotUnsafePointer(args[1]!)
        )}
        let _body_apply_impulse_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodyApplyImpulse(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!),
            impulse: Godot.Vector2.fromGodotUnsafePointer(args[1]!),
            position: Godot.Vector2.fromGodotUnsafePointer(args[2]!)
        )}
        let _body_apply_central_force_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodyApplyCentralForce(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!),
            force: Godot.Vector2.fromGodotUnsafePointer(args[1]!)
        )}
        let _body_apply_force_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodyApplyForce(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!),
            force: Godot.Vector2.fromGodotUnsafePointer(args[1]!),
            position: Godot.Vector2.fromGodotUnsafePointer(args[2]!)
        )}
        let _body_apply_torque_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodyApplyTorque(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!),
            torque: Double.fromGodotUnsafePointer(args[1]!)
        )}
        let _body_add_constant_central_force_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodyAddConstantCentralForce(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!),
            force: Godot.Vector2.fromGodotUnsafePointer(args[1]!)
        )}
        let _body_add_constant_force_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodyAddConstantForce(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!),
            force: Godot.Vector2.fromGodotUnsafePointer(args[1]!),
            position: Godot.Vector2.fromGodotUnsafePointer(args[2]!)
        )}
        let _body_add_constant_torque_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodyAddConstantTorque(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!),
            torque: Double.fromGodotUnsafePointer(args[1]!)
        )}
        let _body_set_constant_force_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodySetConstantForce(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!),
            force: Godot.Vector2.fromGodotUnsafePointer(args[1]!)
        )}
        let _body_get_constant_force_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodyGetConstantForce(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _body_set_constant_torque_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodySetConstantTorque(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!),
            torque: Double.fromGodotUnsafePointer(args[1]!)
        )}
        let _body_get_constant_torque_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodyGetConstantTorque(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _body_set_axis_velocity_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodySetAxisVelocity(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!),
            axisVelocity: Godot.Vector2.fromGodotUnsafePointer(args[1]!)
        )}
        let _body_add_collision_exception_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodyAddCollisionException(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!),
            exceptedBody: Godot.RID.fromGodotUnsafePointer(args[1]!)
        )}
        let _body_remove_collision_exception_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodyRemoveCollisionException(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!),
            exceptedBody: Godot.RID.fromGodotUnsafePointer(args[1]!)
        )}
        let _body_get_collision_exceptions_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodyGetCollisionExceptions(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _body_set_max_contacts_reported_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodySetMaxContactsReported(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!),
            amount: Int32.fromGodotUnsafePointer(args[1]!)
        )}
        let _body_get_max_contacts_reported_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodyGetMaxContactsReported(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _body_set_contacts_reported_depth_threshold_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodySetContactsReportedDepthThreshold(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!),
            threshold: Double.fromGodotUnsafePointer(args[1]!)
        )}
        let _body_get_contacts_reported_depth_threshold_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodyGetContactsReportedDepthThreshold(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _body_set_omit_force_integration_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodySetOmitForceIntegration(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!),
            enable: Bool.fromGodotUnsafePointer(args[1]!)
        )}
        let _body_is_omitting_force_integration_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodyIsOmittingForceIntegration(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _body_set_state_sync_callback_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodySetStateSyncCallback(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!),
            callable: Godot.Callable.fromGodotUnsafePointer(args[1]!)
        )}
        let _body_set_force_integration_callback_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodySetForceIntegrationCallback(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!),
            callable: Godot.Callable.fromGodotUnsafePointer(args[1]!),
            userdata: Godot.Variant.fromGodotUnsafePointer(args[2]!)
        )}
        let _body_collide_shape_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodyCollideShape(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!),
            bodyShape: Int32.fromGodotUnsafePointer(args[1]!),
            shape: Godot.RID.fromGodotUnsafePointer(args[2]!),
            shapeXform: Godot.Transform2D.fromGodotUnsafePointer(args[3]!),
            motion: Godot.Vector2.fromGodotUnsafePointer(args[4]!),
            results: UnsafeMutableRawPointer.fromGodotUnsafePointer(args[5]!),
            resultMax: Int32.fromGodotUnsafePointer(args[6]!),
            resultCount: UnsafeMutablePointer<Int32>.fromGodotUnsafePointer(args[7]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _body_set_pickable_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodySetPickable(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!),
            pickable: Bool.fromGodotUnsafePointer(args[1]!)
        )}
        let _body_get_direct_state_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodyGetDirectState(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _body_test_motion_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._bodyTestMotion(
            body: Godot.RID.fromGodotUnsafePointer(args[0]!),
            from: Godot.Transform2D.fromGodotUnsafePointer(args[1]!),
            motion: Godot.Vector2.fromGodotUnsafePointer(args[2]!),
            margin: Double.fromGodotUnsafePointer(args[3]!),
            collideSeparationRay: Bool.fromGodotUnsafePointer(args[4]!),
            recoveryAsCollision: Bool.fromGodotUnsafePointer(args[5]!),
            result: UnsafeMutablePointer<PhysicsServer2DExtensionMotionResult>.fromGodotUnsafePointer(args[6]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _joint_create_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._jointCreate()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _joint_clear_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._jointClear(
            joint: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )}
        let _joint_set_param_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._jointSetParam(
            joint: Godot.RID.fromGodotUnsafePointer(args[0]!),
            param: Godot.PhysicsServer2D.JointParam.fromGodotUnsafePointer(args[1]!),
            value: Double.fromGodotUnsafePointer(args[2]!)
        )}
        let _joint_get_param_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._jointGetParam(
            joint: Godot.RID.fromGodotUnsafePointer(args[0]!),
            param: Godot.PhysicsServer2D.JointParam.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _joint_disable_collisions_between_bodies_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._jointDisableCollisionsBetweenBodies(
            joint: Godot.RID.fromGodotUnsafePointer(args[0]!),
            disable: Bool.fromGodotUnsafePointer(args[1]!)
        )}
        let _joint_is_disabled_collisions_between_bodies_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._jointIsDisabledCollisionsBetweenBodies(
            joint: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _joint_make_pin_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._jointMakePin(
            joint: Godot.RID.fromGodotUnsafePointer(args[0]!),
            anchor: Godot.Vector2.fromGodotUnsafePointer(args[1]!),
            bodyA: Godot.RID.fromGodotUnsafePointer(args[2]!),
            bodyB: Godot.RID.fromGodotUnsafePointer(args[3]!)
        )}
        let _joint_make_groove_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._jointMakeGroove(
            joint: Godot.RID.fromGodotUnsafePointer(args[0]!),
            aGroove1: Godot.Vector2.fromGodotUnsafePointer(args[1]!),
            aGroove2: Godot.Vector2.fromGodotUnsafePointer(args[2]!),
            bAnchor: Godot.Vector2.fromGodotUnsafePointer(args[3]!),
            bodyA: Godot.RID.fromGodotUnsafePointer(args[4]!),
            bodyB: Godot.RID.fromGodotUnsafePointer(args[5]!)
        )}
        let _joint_make_damped_spring_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._jointMakeDampedSpring(
            joint: Godot.RID.fromGodotUnsafePointer(args[0]!),
            anchorA: Godot.Vector2.fromGodotUnsafePointer(args[1]!),
            anchorB: Godot.Vector2.fromGodotUnsafePointer(args[2]!),
            bodyA: Godot.RID.fromGodotUnsafePointer(args[3]!),
            bodyB: Godot.RID.fromGodotUnsafePointer(args[4]!)
        )}
        let _pin_joint_set_flag_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._pinJointSetFlag(
            joint: Godot.RID.fromGodotUnsafePointer(args[0]!),
            flag: Godot.PhysicsServer2D.PinJointFlag.fromGodotUnsafePointer(args[1]!),
            enabled: Bool.fromGodotUnsafePointer(args[2]!)
        )}
        let _pin_joint_get_flag_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._pinJointGetFlag(
            joint: Godot.RID.fromGodotUnsafePointer(args[0]!),
            flag: Godot.PhysicsServer2D.PinJointFlag.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _pin_joint_set_param_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._pinJointSetParam(
            joint: Godot.RID.fromGodotUnsafePointer(args[0]!),
            param: Godot.PhysicsServer2D.PinJointParam.fromGodotUnsafePointer(args[1]!),
            value: Double.fromGodotUnsafePointer(args[2]!)
        )}
        let _pin_joint_get_param_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._pinJointGetParam(
            joint: Godot.RID.fromGodotUnsafePointer(args[0]!),
            param: Godot.PhysicsServer2D.PinJointParam.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _damped_spring_joint_set_param_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._dampedSpringJointSetParam(
            joint: Godot.RID.fromGodotUnsafePointer(args[0]!),
            param: Godot.PhysicsServer2D.DampedSpringParam.fromGodotUnsafePointer(args[1]!),
            value: Double.fromGodotUnsafePointer(args[2]!)
        )}
        let _damped_spring_joint_get_param_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._dampedSpringJointGetParam(
            joint: Godot.RID.fromGodotUnsafePointer(args[0]!),
            param: Godot.PhysicsServer2D.DampedSpringParam.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _joint_get_type_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._jointGetType(
            joint: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _free_rid_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._freeRid(
            Godot.RID.fromGodotUnsafePointer(args[0]!)
        )}
        let _set_active_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._setActive(
            Bool.fromGodotUnsafePointer(args[0]!)
        )}
        let _init_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._init()}
        let _step_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._step(
            Double.fromGodotUnsafePointer(args[0]!)
        )}
        let _sync_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._sync()}
        let _flush_queries_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._flushQueries()}
        let _end_sync_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._endSync()}
        let _finish_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._finish()}
        let _is_flushing_queries_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._isFlushingQueries()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_process_info_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsServer2DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getProcessInfo(
            Godot.PhysicsServer2D.ProcessInfo.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        _virtualFunctions = [
            "_worldBoundaryShapeCreate" : ("_world_boundary_shape_create", _world_boundary_shape_create_call),
            "_separationRayShapeCreate" : ("_separation_ray_shape_create", _separation_ray_shape_create_call),
            "_segmentShapeCreate" : ("_segment_shape_create", _segment_shape_create_call),
            "_circleShapeCreate" : ("_circle_shape_create", _circle_shape_create_call),
            "_rectangleShapeCreate" : ("_rectangle_shape_create", _rectangle_shape_create_call),
            "_capsuleShapeCreate" : ("_capsule_shape_create", _capsule_shape_create_call),
            "_convexPolygonShapeCreate" : ("_convex_polygon_shape_create", _convex_polygon_shape_create_call),
            "_concavePolygonShapeCreate" : ("_concave_polygon_shape_create", _concave_polygon_shape_create_call),
            "_shapeSetData" : ("_shape_set_data", _shape_set_data_call),
            "_shapeSetCustomSolverBias" : ("_shape_set_custom_solver_bias", _shape_set_custom_solver_bias_call),
            "_shapeGetType" : ("_shape_get_type", _shape_get_type_call),
            "_shapeGetData" : ("_shape_get_data", _shape_get_data_call),
            "_shapeGetCustomSolverBias" : ("_shape_get_custom_solver_bias", _shape_get_custom_solver_bias_call),
            "_shapeCollide" : ("_shape_collide", _shape_collide_call),
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
            "_areaAttachObjectInstanceID" : ("_area_attach_object_instance_id", _area_attach_object_instance_id_call),
            "_areaGetObjectInstanceID" : ("_area_get_object_instance_id", _area_get_object_instance_id_call),
            "_areaAttachCanvasInstanceID" : ("_area_attach_canvas_instance_id", _area_attach_canvas_instance_id_call),
            "_areaGetCanvasInstanceID" : ("_area_get_canvas_instance_id", _area_get_canvas_instance_id_call),
            "_areaSetParam" : ("_area_set_param", _area_set_param_call),
            "_areaSetTransform" : ("_area_set_transform", _area_set_transform_call),
            "_areaGetParam" : ("_area_get_param", _area_get_param_call),
            "_areaGetTransform" : ("_area_get_transform", _area_get_transform_call),
            "_areaSetCollisionLayer" : ("_area_set_collision_layer", _area_set_collision_layer_call),
            "_areaGetCollisionLayer" : ("_area_get_collision_layer", _area_get_collision_layer_call),
            "_areaSetCollisionMask" : ("_area_set_collision_mask", _area_set_collision_mask_call),
            "_areaGetCollisionMask" : ("_area_get_collision_mask", _area_get_collision_mask_call),
            "_areaSetMonitorable" : ("_area_set_monitorable", _area_set_monitorable_call),
            "_areaSetPickable" : ("_area_set_pickable", _area_set_pickable_call),
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
            "_bodyGetShapeCount" : ("_body_get_shape_count", _body_get_shape_count_call),
            "_bodyGetShape" : ("_body_get_shape", _body_get_shape_call),
            "_bodyGetShapeTransform" : ("_body_get_shape_transform", _body_get_shape_transform_call),
            "_bodySetShapeDisabled" : ("_body_set_shape_disabled", _body_set_shape_disabled_call),
            "_bodySetShapeAsOneWayCollision" : ("_body_set_shape_as_one_way_collision", _body_set_shape_as_one_way_collision_call),
            "_bodyRemoveShape" : ("_body_remove_shape", _body_remove_shape_call),
            "_bodyClearShapes" : ("_body_clear_shapes", _body_clear_shapes_call),
            "_bodyAttachObjectInstanceID" : ("_body_attach_object_instance_id", _body_attach_object_instance_id_call),
            "_bodyGetObjectInstanceID" : ("_body_get_object_instance_id", _body_get_object_instance_id_call),
            "_bodyAttachCanvasInstanceID" : ("_body_attach_canvas_instance_id", _body_attach_canvas_instance_id_call),
            "_bodyGetCanvasInstanceID" : ("_body_get_canvas_instance_id", _body_get_canvas_instance_id_call),
            "_bodySetContinuousCollisionDetectionMode" : ("_body_set_continuous_collision_detection_mode", _body_set_continuous_collision_detection_mode_call),
            "_bodyGetContinuousCollisionDetectionMode" : ("_body_get_continuous_collision_detection_mode", _body_get_continuous_collision_detection_mode_call),
            "_bodySetCollisionLayer" : ("_body_set_collision_layer", _body_set_collision_layer_call),
            "_bodyGetCollisionLayer" : ("_body_get_collision_layer", _body_get_collision_layer_call),
            "_bodySetCollisionMask" : ("_body_set_collision_mask", _body_set_collision_mask_call),
            "_bodyGetCollisionMask" : ("_body_get_collision_mask", _body_get_collision_mask_call),
            "_bodySetCollisionPriority" : ("_body_set_collision_priority", _body_set_collision_priority_call),
            "_bodyGetCollisionPriority" : ("_body_get_collision_priority", _body_get_collision_priority_call),
            "_bodySetParam" : ("_body_set_param", _body_set_param_call),
            "_bodyGetParam" : ("_body_get_param", _body_get_param_call),
            "_bodyResetMassProperties" : ("_body_reset_mass_properties", _body_reset_mass_properties_call),
            "_bodySetState" : ("_body_set_state", _body_set_state_call),
            "_bodyGetState" : ("_body_get_state", _body_get_state_call),
            "_bodyApplyCentralImpulse" : ("_body_apply_central_impulse", _body_apply_central_impulse_call),
            "_bodyApplyTorqueImpulse" : ("_body_apply_torque_impulse", _body_apply_torque_impulse_call),
            "_bodyApplyImpulse" : ("_body_apply_impulse", _body_apply_impulse_call),
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
            "_bodyCollideShape" : ("_body_collide_shape", _body_collide_shape_call),
            "_bodySetPickable" : ("_body_set_pickable", _body_set_pickable_call),
            "_bodyGetDirectState" : ("_body_get_direct_state", _body_get_direct_state_call),
            "_bodyTestMotion" : ("_body_test_motion", _body_test_motion_call),
            "_jointCreate" : ("_joint_create", _joint_create_call),
            "_jointClear" : ("_joint_clear", _joint_clear_call),
            "_jointSetParam" : ("_joint_set_param", _joint_set_param_call),
            "_jointGetParam" : ("_joint_get_param", _joint_get_param_call),
            "_jointDisableCollisionsBetweenBodies" : ("_joint_disable_collisions_between_bodies", _joint_disable_collisions_between_bodies_call),
            "_jointIsDisabledCollisionsBetweenBodies" : ("_joint_is_disabled_collisions_between_bodies", _joint_is_disabled_collisions_between_bodies_call),
            "_jointMakePin" : ("_joint_make_pin", _joint_make_pin_call),
            "_jointMakeGroove" : ("_joint_make_groove", _joint_make_groove_call),
            "_jointMakeDampedSpring" : ("_joint_make_damped_spring", _joint_make_damped_spring_call),
            "_pinJointSetFlag" : ("_pin_joint_set_flag", _pin_joint_set_flag_call),
            "_pinJointGetFlag" : ("_pin_joint_get_flag", _pin_joint_get_flag_call),
            "_pinJointSetParam" : ("_pin_joint_set_param", _pin_joint_set_param_call),
            "_pinJointGetParam" : ("_pin_joint_get_param", _pin_joint_get_param_call),
            "_dampedSpringJointSetParam" : ("_damped_spring_joint_set_param", _damped_spring_joint_set_param_call),
            "_dampedSpringJointGetParam" : ("_damped_spring_joint_get_param", _damped_spring_joint_get_param_call),
            "_jointGetType" : ("_joint_get_type", _joint_get_type_call),
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