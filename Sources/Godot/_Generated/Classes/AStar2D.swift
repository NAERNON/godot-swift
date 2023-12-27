//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class AStar2D: RefCounted {
    open func _estimateCost(fromId: Int64, toId: Int64) -> Double {
        Double()
    }

    open func _computeCost(fromId: Int64, toId: Int64) -> Double {
        Double()
    }

    private static var __method_binding_get_available_point_id: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_available_point_id").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func availablePointId() -> Int64 {
        Int64.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_available_point_id,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_add_point: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_point").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4074201818)!
        }
        }
    }()
    public func addPoint(id: Int64, position: Godot.Vector2, weightScale: Double = 1.0) {
        id.withGodotUnsafeRawPointer { __ptr_id in
        position.withGodotUnsafeRawPointer { __ptr_position in
        weightScale.withGodotUnsafeRawPointer { __ptr_weightScale in
        withUnsafeArgumentPackPointer(__ptr_id, __ptr_position, __ptr_weightScale) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_point,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_get_point_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_point_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2299179447)!
        }
        }
    }()
    public func pointPosition(id: Int64) -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        id.withGodotUnsafeRawPointer { __ptr_id in
        withUnsafeArgumentPackPointer(__ptr_id) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_point_position,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_point_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_point_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 163021252)!
        }
        }
    }()
    public func setPointPosition(id: Int64, position: Godot.Vector2) {
        id.withGodotUnsafeRawPointer { __ptr_id in
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_id, __ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_point_position,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_point_weight_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_point_weight_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2339986948)!
        }
        }
    }()
    public func pointWeightScale(id: Int64) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        id.withGodotUnsafeRawPointer { __ptr_id in
        withUnsafeArgumentPackPointer(__ptr_id) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_point_weight_scale,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_point_weight_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_point_weight_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1602489585)!
        }
        }
    }()
    public func setPointWeightScale(id: Int64, weightScale: Double) {
        id.withGodotUnsafeRawPointer { __ptr_id in
        weightScale.withGodotUnsafeRawPointer { __ptr_weightScale in
        withUnsafeArgumentPackPointer(__ptr_id, __ptr_weightScale) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_point_weight_scale,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_remove_point: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_point").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func removePoint(id: Int64) {
        id.withGodotUnsafeRawPointer { __ptr_id in
        withUnsafeArgumentPackPointer(__ptr_id) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_point,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_has_point: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_point").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func hasPoint(id: Int64) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        id.withGodotUnsafeRawPointer { __ptr_id in
        withUnsafeArgumentPackPointer(__ptr_id) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_point,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_point_connections: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_point_connections").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2865087369)!
        }
        }
    }()
    public func pointConnections(id: Int64) -> Godot.PackedInt64Array {
        Godot.PackedInt64Array.fromMutatingGodotUnsafePointer { __temporary in
        id.withGodotUnsafeRawPointer { __ptr_id in
        withUnsafeArgumentPackPointer(__ptr_id) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_point_connections,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_point_ids: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_point_ids").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3851388692)!
        }
        }
    }()
    public func pointIds() -> Godot.PackedInt64Array {
        Godot.PackedInt64Array.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_point_ids,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_point_disabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_point_disabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 972357352)!
        }
        }
    }()
    public func setPointDisabled(id: Int64, disabled: Bool = true) {
        id.withGodotUnsafeRawPointer { __ptr_id in
        disabled.withGodotUnsafeRawPointer { __ptr_disabled in
        withUnsafeArgumentPackPointer(__ptr_id, __ptr_disabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_point_disabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_is_point_disabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_point_disabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func isPointDisabled(id: Int64) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        id.withGodotUnsafeRawPointer { __ptr_id in
        withUnsafeArgumentPackPointer(__ptr_id) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_point_disabled,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_connect_points: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "connect_points").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3710494224)!
        }
        }
    }()
    public func connectPoints(id: Int64, toId: Int64, bidirectional: Bool = true) {
        id.withGodotUnsafeRawPointer { __ptr_id in
        toId.withGodotUnsafeRawPointer { __ptr_toId in
        bidirectional.withGodotUnsafeRawPointer { __ptr_bidirectional in
        withUnsafeArgumentPackPointer(__ptr_id, __ptr_toId, __ptr_bidirectional) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_connect_points,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_disconnect_points: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "disconnect_points").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3710494224)!
        }
        }
    }()
    public func disconnectPoints(id: Int64, toId: Int64, bidirectional: Bool = true) {
        id.withGodotUnsafeRawPointer { __ptr_id in
        toId.withGodotUnsafeRawPointer { __ptr_toId in
        bidirectional.withGodotUnsafeRawPointer { __ptr_bidirectional in
        withUnsafeArgumentPackPointer(__ptr_id, __ptr_toId, __ptr_bidirectional) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_disconnect_points,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_are_points_connected: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "are_points_connected").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2288175859)!
        }
        }
    }()
    public func arePointsConnected(id: Int64, toId: Int64, bidirectional: Bool = true) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        id.withGodotUnsafeRawPointer { __ptr_id in
        toId.withGodotUnsafeRawPointer { __ptr_toId in
        bidirectional.withGodotUnsafeRawPointer { __ptr_bidirectional in
        withUnsafeArgumentPackPointer(__ptr_id, __ptr_toId, __ptr_bidirectional) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_are_points_connected,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_get_point_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_point_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func pointCount() -> Int64 {
        Int64.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_point_count,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_point_capacity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_point_capacity").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func pointCapacity() -> Int64 {
        Int64.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_point_capacity,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_reserve_space: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "reserve_space").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func reserveSpace(numNodes: Int64) {
        numNodes.withGodotUnsafeRawPointer { __ptr_numNodes in
        withUnsafeArgumentPackPointer(__ptr_numNodes) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_reserve_space,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_clear: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func clear() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_clear,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_get_closest_point: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_closest_point").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2300324924)!
        }
        }
    }()
    public func closestPoint(toPosition position: Godot.Vector2, includeDisabled: Bool = false) -> Int64 {
        Int64.fromMutatingGodotUnsafePointer { __temporary in
        position.withGodotUnsafeRawPointer { __ptr_position in
        includeDisabled.withGodotUnsafeRawPointer { __ptr_includeDisabled in
        withUnsafeArgumentPackPointer(__ptr_position, __ptr_includeDisabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_closest_point,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_get_closest_position_in_segment: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_closest_position_in_segment").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2656412154)!
        }
        }
    }()
    public func closestPositionInSegment(toPosition position: Godot.Vector2) -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_closest_position_in_segment,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_point_path: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_point_path").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 281625055)!
        }
        }
    }()
    public func pointPath(fromId: Int64, toId: Int64) -> Godot.PackedVector2Array {
        Godot.PackedVector2Array.fromMutatingGodotUnsafePointer { __temporary in
        fromId.withGodotUnsafeRawPointer { __ptr_fromId in
        toId.withGodotUnsafeRawPointer { __ptr_toId in
        withUnsafeArgumentPackPointer(__ptr_fromId, __ptr_toId) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_point_path,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_get_id_path: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_id_path").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3404614526)!
        }
        }
    }()
    public func idPath(fromId: Int64, toId: Int64) -> Godot.PackedInt64Array {
        Godot.PackedInt64Array.fromMutatingGodotUnsafePointer { __temporary in
        fromId.withGodotUnsafeRawPointer { __ptr_fromId in
        toId.withGodotUnsafeRawPointer { __ptr_toId in
        withUnsafeArgumentPackPointer(__ptr_fromId, __ptr_toId) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_id_path,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _estimate_cost_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<AStar2D>.fromOpaque(instancePtr).takeUnretainedValue()
        ._estimateCost(
            fromId: Int64.fromGodotUnsafePointer(args[0]!),
            toId: Int64.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _compute_cost_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<AStar2D>.fromOpaque(instancePtr).takeUnretainedValue()
        ._computeCost(
            fromId: Int64.fromGodotUnsafePointer(args[0]!),
            toId: Int64.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        _virtualFunctions = [
            "_estimateCost" : ("_estimate_cost", _estimate_cost_call),
            "_computeCost" : ("_compute_cost", _compute_cost_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }