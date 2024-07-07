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
               ("Replace Combine", 4),
            ]
        }
    }
    
    public struct BodyShapeEnteredSignalInput: Godot.SignalInput {
        public let bodyRID: Godot.RID
        public let body: Godot.Node2D?
        public let bodyShapeIndex: Int
        public let localShapeIndex: Int
        fileprivate init(bodyRID: Godot.RID, body: Godot.Node2D?, bodyShapeIndex: Int, localShapeIndex: Int) {
            self.bodyRID = bodyRID
            self.body = body
            self.bodyShapeIndex = bodyShapeIndex
            self.localShapeIndex = localShapeIndex
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.bodyRID), Variant(input.body), Variant(input.bodyShapeIndex), Variant(input.localShapeIndex)]
        }
    }
    public func bodyShapeEntered(bodyRID: Godot.RID, body: Godot.Node2D?, bodyShapeIndex: Int, localShapeIndex: Int) {
        _ = bodyShapeEnteredSignal.emit(.init(bodyRID: bodyRID,
                body: body,
                bodyShapeIndex: bodyShapeIndex,
                localShapeIndex: localShapeIndex))
    }
    public lazy var bodyShapeEnteredSignal: Godot.SignalEmitter<BodyShapeEnteredSignalInput> = {
        .init(object: self, signalName: "body_shape_entered") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<BodyShapeEnteredSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(bodyRID: Godot.RID.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!),
                    body: Godot.Node2D?.convertFromStorage(unsafePointer: args!.advanced(by: 1).pointee!),
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
        public let body: Godot.Node2D?
        public let bodyShapeIndex: Int
        public let localShapeIndex: Int
        fileprivate init(bodyRID: Godot.RID, body: Godot.Node2D?, bodyShapeIndex: Int, localShapeIndex: Int) {
            self.bodyRID = bodyRID
            self.body = body
            self.bodyShapeIndex = bodyShapeIndex
            self.localShapeIndex = localShapeIndex
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.bodyRID), Variant(input.body), Variant(input.bodyShapeIndex), Variant(input.localShapeIndex)]
        }
    }
    public func bodyShapeExited(bodyRID: Godot.RID, body: Godot.Node2D?, bodyShapeIndex: Int, localShapeIndex: Int) {
        _ = bodyShapeExitedSignal.emit(.init(bodyRID: bodyRID,
                body: body,
                bodyShapeIndex: bodyShapeIndex,
                localShapeIndex: localShapeIndex))
    }
    public lazy var bodyShapeExitedSignal: Godot.SignalEmitter<BodyShapeExitedSignalInput> = {
        .init(object: self, signalName: "body_shape_exited") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<BodyShapeExitedSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(bodyRID: Godot.RID.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!),
                    body: Godot.Node2D?.convertFromStorage(unsafePointer: args!.advanced(by: 1).pointee!),
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
        public let body: Godot.Node2D?
        fileprivate init(body: Godot.Node2D?) {
            self.body = body
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.body)]
        }
    }
    public func bodyEntered(body: Godot.Node2D?) {
        _ = bodyEnteredSignal.emit(.init(body: body))
    }
    public lazy var bodyEnteredSignal: Godot.SignalEmitter<BodyEnteredSignalInput> = {
        .init(object: self, signalName: "body_entered") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<BodyEnteredSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(body: Godot.Node2D?.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!)))
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
        public let body: Godot.Node2D?
        fileprivate init(body: Godot.Node2D?) {
            self.body = body
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.body)]
        }
    }
    public func bodyExited(body: Godot.Node2D?) {
        _ = bodyExitedSignal.emit(.init(body: body))
    }
    public lazy var bodyExitedSignal: Godot.SignalEmitter<BodyExitedSignalInput> = {
        .init(object: self, signalName: "body_exited") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<BodyExitedSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(body: Godot.Node2D?.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!)))
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
    
    public struct AreaShapeEnteredSignalInput: Godot.SignalInput {
        public let areaRID: Godot.RID
        public let area: Godot.Area2D?
        public let areaShapeIndex: Int
        public let localShapeIndex: Int
        fileprivate init(areaRID: Godot.RID, area: Godot.Area2D?, areaShapeIndex: Int, localShapeIndex: Int) {
            self.areaRID = areaRID
            self.area = area
            self.areaShapeIndex = areaShapeIndex
            self.localShapeIndex = localShapeIndex
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.areaRID), Variant(input.area), Variant(input.areaShapeIndex), Variant(input.localShapeIndex)]
        }
    }
    public func areaShapeEntered(areaRID: Godot.RID, area: Godot.Area2D?, areaShapeIndex: Int, localShapeIndex: Int) {
        _ = areaShapeEnteredSignal.emit(.init(areaRID: areaRID,
                area: area,
                areaShapeIndex: areaShapeIndex,
                localShapeIndex: localShapeIndex))
    }
    public lazy var areaShapeEnteredSignal: Godot.SignalEmitter<AreaShapeEnteredSignalInput> = {
        .init(object: self, signalName: "area_shape_entered") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<AreaShapeEnteredSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(areaRID: Godot.RID.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!),
                    area: Godot.Area2D?.convertFromStorage(unsafePointer: args!.advanced(by: 1).pointee!),
                    areaShapeIndex: Int.convertFromStorage(unsafePointer: args!.advanced(by: 2).pointee!),
                    localShapeIndex: Int.convertFromStorage(unsafePointer: args!.advanced(by: 3).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<AreaShapeEnteredSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<AreaShapeEnteredSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()
    
    public struct AreaShapeExitedSignalInput: Godot.SignalInput {
        public let areaRID: Godot.RID
        public let area: Godot.Area2D?
        public let areaShapeIndex: Int
        public let localShapeIndex: Int
        fileprivate init(areaRID: Godot.RID, area: Godot.Area2D?, areaShapeIndex: Int, localShapeIndex: Int) {
            self.areaRID = areaRID
            self.area = area
            self.areaShapeIndex = areaShapeIndex
            self.localShapeIndex = localShapeIndex
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.areaRID), Variant(input.area), Variant(input.areaShapeIndex), Variant(input.localShapeIndex)]
        }
    }
    public func areaShapeExited(areaRID: Godot.RID, area: Godot.Area2D?, areaShapeIndex: Int, localShapeIndex: Int) {
        _ = areaShapeExitedSignal.emit(.init(areaRID: areaRID,
                area: area,
                areaShapeIndex: areaShapeIndex,
                localShapeIndex: localShapeIndex))
    }
    public lazy var areaShapeExitedSignal: Godot.SignalEmitter<AreaShapeExitedSignalInput> = {
        .init(object: self, signalName: "area_shape_exited") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<AreaShapeExitedSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(areaRID: Godot.RID.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!),
                    area: Godot.Area2D?.convertFromStorage(unsafePointer: args!.advanced(by: 1).pointee!),
                    areaShapeIndex: Int.convertFromStorage(unsafePointer: args!.advanced(by: 2).pointee!),
                    localShapeIndex: Int.convertFromStorage(unsafePointer: args!.advanced(by: 3).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<AreaShapeExitedSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<AreaShapeExitedSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()
    
    public struct AreaEnteredSignalInput: Godot.SignalInput {
        public let area: Godot.Area2D?
        fileprivate init(area: Godot.Area2D?) {
            self.area = area
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.area)]
        }
    }
    public func areaEntered(area: Godot.Area2D?) {
        _ = areaEnteredSignal.emit(.init(area: area))
    }
    public lazy var areaEnteredSignal: Godot.SignalEmitter<AreaEnteredSignalInput> = {
        .init(object: self, signalName: "area_entered") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<AreaEnteredSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(area: Godot.Area2D?.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<AreaEnteredSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<AreaEnteredSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()
    
    public struct AreaExitedSignalInput: Godot.SignalInput {
        public let area: Godot.Area2D?
        fileprivate init(area: Godot.Area2D?) {
            self.area = area
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.area)]
        }
    }
    public func areaExited(area: Godot.Area2D?) {
        _ = areaExitedSignal.emit(.init(area: area))
    }
    public lazy var areaExitedSignal: Godot.SignalEmitter<AreaExitedSignalInput> = {
        .init(object: self, signalName: "area_exited") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<AreaExitedSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(area: Godot.Area2D?.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<AreaExitedSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<AreaExitedSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()
    
    internal static var __method_binding_set_gravity_space_override_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_gravity_space_override_mode").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2879900038)!
            }
        }
    }()
    
    private func __setGravitySpaceOverrideMode(
        _ spaceOverrideMode: Godot.Area2D.SpaceOverride
    ) {
        withTransferrableUnsafeRawPointer(to: spaceOverrideMode) { __ptr_spaceOverrideMode in
            withUnsafeArgumentPackPointer(__ptr_spaceOverrideMode) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_gravity_space_override_mode,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_gravity_space_override_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_gravity_space_override_mode").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3990256304)!
            }
        }
    }()
    
    private func __getGravitySpaceOverrideMode() -> Godot.Area2D.SpaceOverride {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_gravity_space_override_mode,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_gravity_is_point: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_gravity_is_point").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
            }
        }
    }()
    
    private func __setGravityIsPoint(
        enable: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: enable) { __ptr_enable in
            withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_gravity_is_point,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_is_gravity_a_point: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "is_gravity_a_point").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
            }
        }
    }()
    
    private func __isGravityAPoint() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_gravity_a_point,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_gravity_point_unit_distance: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_gravity_point_unit_distance").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
            }
        }
    }()
    
    private func __setGravityPointUnitDistance(
        distanceScale: Double
    ) {
        withTransferrableUnsafeRawPointer(to: distanceScale) { __ptr_distanceScale in
            withUnsafeArgumentPackPointer(__ptr_distanceScale) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_gravity_point_unit_distance,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_gravity_point_unit_distance: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_gravity_point_unit_distance").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
            }
        }
    }()
    
    private func __getGravityPointUnitDistance() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_gravity_point_unit_distance,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_gravity_point_center: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_gravity_point_center").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 743155724)!
            }
        }
    }()
    
    private func __setGravityPointCenter(
        _ center: Godot.Vector2
    ) {
        withTransferrableUnsafeRawPointer(to: center) { __ptr_center in
            withUnsafeArgumentPackPointer(__ptr_center) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_gravity_point_center,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_gravity_point_center: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_gravity_point_center").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3341600327)!
            }
        }
    }()
    
    private func __getGravityPointCenter() -> Godot.Vector2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_gravity_point_center,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_gravity_direction: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_gravity_direction").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 743155724)!
            }
        }
    }()
    
    private func __setGravityDirection(
        _ direction: Godot.Vector2
    ) {
        withTransferrableUnsafeRawPointer(to: direction) { __ptr_direction in
            withUnsafeArgumentPackPointer(__ptr_direction) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_gravity_direction,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_gravity_direction: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_gravity_direction").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3341600327)!
            }
        }
    }()
    
    private func __getGravityDirection() -> Godot.Vector2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_gravity_direction,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_gravity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_gravity").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
            }
        }
    }()
    
    private func __setGravity(
        _ gravity: Double
    ) {
        withTransferrableUnsafeRawPointer(to: gravity) { __ptr_gravity in
            withUnsafeArgumentPackPointer(__ptr_gravity) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_gravity,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_gravity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_gravity").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
            }
        }
    }()
    
    private func __getGravity() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_gravity,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_linear_damp_space_override_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_linear_damp_space_override_mode").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2879900038)!
            }
        }
    }()
    
    private func __setLinearDampSpaceOverrideMode(
        _ spaceOverrideMode: Godot.Area2D.SpaceOverride
    ) {
        withTransferrableUnsafeRawPointer(to: spaceOverrideMode) { __ptr_spaceOverrideMode in
            withUnsafeArgumentPackPointer(__ptr_spaceOverrideMode) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_linear_damp_space_override_mode,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_linear_damp_space_override_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_linear_damp_space_override_mode").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3990256304)!
            }
        }
    }()
    
    private func __getLinearDampSpaceOverrideMode() -> Godot.Area2D.SpaceOverride {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_linear_damp_space_override_mode,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_angular_damp_space_override_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_angular_damp_space_override_mode").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2879900038)!
            }
        }
    }()
    
    private func __setAngularDampSpaceOverrideMode(
        _ spaceOverrideMode: Godot.Area2D.SpaceOverride
    ) {
        withTransferrableUnsafeRawPointer(to: spaceOverrideMode) { __ptr_spaceOverrideMode in
            withUnsafeArgumentPackPointer(__ptr_spaceOverrideMode) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_angular_damp_space_override_mode,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_angular_damp_space_override_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_angular_damp_space_override_mode").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3990256304)!
            }
        }
    }()
    
    private func __getAngularDampSpaceOverrideMode() -> Godot.Area2D.SpaceOverride {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_angular_damp_space_override_mode,
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
    
    internal static var __method_binding_set_priority: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_priority").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
            }
        }
    }()
    
    private func __setPriority(
        _ priority: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: priority) { __ptr_priority in
            withUnsafeArgumentPackPointer(__ptr_priority) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_priority,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_priority: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_priority").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
            }
        }
    }()
    
    private func __getPriority() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_priority,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_monitoring: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_monitoring").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
            }
        }
    }()
    
    private func __setMonitoring(
        enable: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: enable) { __ptr_enable in
            withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_monitoring,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_is_monitoring: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "is_monitoring").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
            }
        }
    }()
    
    private func __isMonitoring() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_monitoring,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_monitorable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_monitorable").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
            }
        }
    }()
    
    private func __setMonitorable(
        enable: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: enable) { __ptr_enable in
            withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_monitorable,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_is_monitorable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "is_monitorable").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
            }
        }
    }()
    
    private func __isMonitorable() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_monitorable,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_get_overlapping_bodies: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_overlapping_bodies").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3995934104)!
            }
        }
    }()
    
    public func overlappingBodies() -> Godot.GodotArray<Godot.Node2D> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_overlapping_bodies,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_get_overlapping_areas: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_overlapping_areas").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3995934104)!
            }
        }
    }()
    
    public func overlappingAreas() -> Godot.GodotArray<Godot.Area2D> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_overlapping_areas,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_has_overlapping_bodies: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "has_overlapping_bodies").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
            }
        }
    }()
    
    public func hasOverlappingBodies() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_has_overlapping_bodies,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_has_overlapping_areas: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "has_overlapping_areas").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
            }
        }
    }()
    
    public func hasOverlappingAreas() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_has_overlapping_areas,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_overlaps_body: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "overlaps_body").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3093956946)!
            }
        }
    }()
    
    public func overlapsBody(
        _ body: Godot.Node?
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: body) { __ptr_body in
                withUnsafePointer(to: __ptr_body) { _ptr___ptr_body in
                    withUnsafeArgumentPackPointer(_ptr___ptr_body) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_overlaps_body,
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
    
    internal static var __method_binding_overlaps_area: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "overlaps_area").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3093956946)!
            }
        }
    }()
    
    public func overlapsArea(
        _ area: Godot.Node?
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: area) { __ptr_area in
                withUnsafePointer(to: __ptr_area) { _ptr___ptr_area in
                    withUnsafeArgumentPackPointer(_ptr___ptr_area) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_overlaps_area,
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
    
    internal static var __method_binding_set_audio_bus_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_audio_bus_name").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3304788590)!
            }
        }
    }()
    
    private func __setAudioBusName(
        _ name: Godot.GodotStringName
    ) {
        withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
            withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_audio_bus_name,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_audio_bus_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_audio_bus_name").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2002593661)!
            }
        }
    }()
    
    private func __getAudioBusName() -> Godot.GodotStringName {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_audio_bus_name,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_audio_bus_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_audio_bus_override").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
            }
        }
    }()
    
    private func __setAudioBusOverride(
        enable: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: enable) { __ptr_enable in
            withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_audio_bus_override,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_is_overriding_audio_bus: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "is_overriding_audio_bus").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
            }
        }
    }()
    
    private func __isOverridingAudioBus() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_overriding_audio_bus,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    public var isMonitoring: Bool {
        get {
            __isMonitoring()
        }
        set(newValue) {
            __setMonitoring(
                enable: newValue
            )
        }
    }
    
    public var isMonitorable: Bool {
        get {
            __isMonitorable()
        }
        set(newValue) {
            __setMonitorable(
                enable: newValue
            )
        }
    }
    
    public var priority: Int32 {
        get {
            __getPriority()
        }
        set(newValue) {
            __setPriority(
                newValue
            )
        }
    }
    
    public var gravitySpaceOverrideMode: Godot.Area2D.SpaceOverride {
        get {
            __getGravitySpaceOverrideMode()
        }
        set(newValue) {
            __setGravitySpaceOverrideMode(
                newValue
            )
        }
    }
    
    public var isGravityAPoint: Bool {
        get {
            __isGravityAPoint()
        }
        set(newValue) {
            __setGravityIsPoint(
                enable: newValue
            )
        }
    }
    
    public var gravityPointUnitDistance: Double {
        get {
            __getGravityPointUnitDistance()
        }
        set(newValue) {
            __setGravityPointUnitDistance(
                distanceScale: newValue
            )
        }
    }
    
    public var gravityPointCenter: Godot.Vector2 {
        get {
            __getGravityPointCenter()
        }
        set(newValue) {
            __setGravityPointCenter(
                newValue
            )
        }
    }
    
    public var gravityDirection: Godot.Vector2 {
        get {
            __getGravityDirection()
        }
        set(newValue) {
            __setGravityDirection(
                newValue
            )
        }
    }
    
    public var gravity: Double {
        get {
            __getGravity()
        }
        set(newValue) {
            __setGravity(
                newValue
            )
        }
    }
    
    public var linearDampSpaceOverrideMode: Godot.Area2D.SpaceOverride {
        get {
            __getLinearDampSpaceOverrideMode()
        }
        set(newValue) {
            __setLinearDampSpaceOverrideMode(
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
    
    public var angularDampSpaceOverrideMode: Godot.Area2D.SpaceOverride {
        get {
            __getAngularDampSpaceOverrideMode()
        }
        set(newValue) {
            __setAngularDampSpaceOverrideMode(
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
    
    public var isOverridingAudioBus: Bool {
        get {
            __isOverridingAudioBus()
        }
        set(newValue) {
            __setAudioBusOverride(
                enable: newValue
            )
        }
    }
    
    public var audioBusName: Godot.GodotStringName {
        get {
            __getAudioBusName()
        }
        set(newValue) {
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
        _virtualFunctions = [:]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions![key] = value
        }
        return _virtualFunctions!
    }
}