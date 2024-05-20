//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class Curve2D: Resource {
    internal static var __method_binding_get_point_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_point_count").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    private func __getPointCount() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_point_count,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_point_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_point_count").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    private func __setPointCount(
        _ count: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: count) { __ptr_count in
            withUnsafeArgumentPackPointer(__ptr_count) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_point_count,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_add_point: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_point").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4175465202)!
        }
        }
    }()

    public func addPoint(
        position: Godot.Vector2,
        `in`: Godot.Vector2 = Vector2(x: 0, y: 0),
        out: Godot.Vector2 = Vector2(x: 0, y: 0),
        index: Int32 = -1
    ) {
        withTransferrableUnsafeRawPointer(to: position) { __ptr_position in
            withTransferrableUnsafeRawPointer(to: `in`) { __ptr_in in
                withTransferrableUnsafeRawPointer(to: out) { __ptr_out in
                    withTransferrableUnsafeRawPointer(to: index) { __ptr_index in
                        withUnsafeArgumentPackPointer(__ptr_position, __ptr_in, __ptr_out, __ptr_index) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_add_point,
                                    __ptr_self,
                                    __accessPtr,
                                    nil
                                )
                            }
                        }
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_point_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_point_position").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 163021252)!
        }
        }
    }()

    public func setPointPosition(
        idx: Int32,
        position: Godot.Vector2
    ) {
        withTransferrableUnsafeRawPointer(to: idx) { __ptr_idx in
            withTransferrableUnsafeRawPointer(to: position) { __ptr_position in
                withUnsafeArgumentPackPointer(__ptr_idx, __ptr_position) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_point_position,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_point_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_point_position").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2299179447)!
        }
        }
    }()

    public func pointPosition(
        idx: Int32
    ) -> Godot.Vector2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: idx) { __ptr_idx in
                withUnsafeArgumentPackPointer(__ptr_idx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_point_position,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_point_in: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_point_in").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 163021252)!
        }
        }
    }()

    public func setPointIn(
        idx: Int32,
        position: Godot.Vector2
    ) {
        withTransferrableUnsafeRawPointer(to: idx) { __ptr_idx in
            withTransferrableUnsafeRawPointer(to: position) { __ptr_position in
                withUnsafeArgumentPackPointer(__ptr_idx, __ptr_position) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_point_in,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_point_in: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_point_in").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2299179447)!
        }
        }
    }()

    public func pointIn(
        idx: Int32
    ) -> Godot.Vector2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: idx) { __ptr_idx in
                withUnsafeArgumentPackPointer(__ptr_idx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_point_in,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_point_out: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_point_out").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 163021252)!
        }
        }
    }()

    public func setPointOut(
        idx: Int32,
        position: Godot.Vector2
    ) {
        withTransferrableUnsafeRawPointer(to: idx) { __ptr_idx in
            withTransferrableUnsafeRawPointer(to: position) { __ptr_position in
                withUnsafeArgumentPackPointer(__ptr_idx, __ptr_position) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_point_out,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_point_out: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_point_out").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2299179447)!
        }
        }
    }()

    public func pointOut(
        idx: Int32
    ) -> Godot.Vector2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: idx) { __ptr_idx in
                withUnsafeArgumentPackPointer(__ptr_idx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_point_out,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_remove_point: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_point").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    public func removePoint(
        idx: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: idx) { __ptr_idx in
            withUnsafeArgumentPackPointer(__ptr_idx) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_remove_point,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_clear_points: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_points").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func clearPoints() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_clear_points,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    internal static var __method_binding_sample: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "sample").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 26514310)!
        }
        }
    }()

    public func sample(
        idx: Int32,
        t: Double
    ) -> Godot.Vector2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: idx) { __ptr_idx in
                withTransferrableUnsafeRawPointer(to: t) { __ptr_t in
                    withUnsafeArgumentPackPointer(__ptr_idx, __ptr_t) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_sample,
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

    internal static var __method_binding_samplef: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "samplef").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3588506812)!
        }
        }
    }()

    public func samplef(
        fofs: Double
    ) -> Godot.Vector2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fofs) { __ptr_fofs in
                withUnsafeArgumentPackPointer(__ptr_fofs) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_samplef,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_bake_interval: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_bake_interval").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setBakeInterval(
        distance: Double
    ) {
        withTransferrableUnsafeRawPointer(to: distance) { __ptr_distance in
            withUnsafeArgumentPackPointer(__ptr_distance) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_bake_interval,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_bake_interval: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_bake_interval").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getBakeInterval() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_bake_interval,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_baked_length: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_baked_length").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    public func bakedLength() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_baked_length,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_sample_baked: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "sample_baked").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3464257706)!
        }
        }
    }()

    public func sampleBaked(
        offset: Double = 0.0,
        cubic: Bool = false
    ) -> Godot.Vector2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: offset) { __ptr_offset in
                withTransferrableUnsafeRawPointer(to: cubic) { __ptr_cubic in
                    withUnsafeArgumentPackPointer(__ptr_offset, __ptr_cubic) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_sample_baked,
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

    internal static var __method_binding_sample_baked_with_rotation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "sample_baked_with_rotation").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3296056341)!
        }
        }
    }()

    public func sampleBakedWithRotation(
        offset: Double = 0.0,
        cubic: Bool = false
    ) -> Godot.Transform2D {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: offset) { __ptr_offset in
                withTransferrableUnsafeRawPointer(to: cubic) { __ptr_cubic in
                    withUnsafeArgumentPackPointer(__ptr_offset, __ptr_cubic) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_sample_baked_with_rotation,
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

    internal static var __method_binding_get_baked_points: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_baked_points").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2961356807)!
        }
        }
    }()

    public func bakedPoints() -> Godot.PackedVector2Array {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_baked_points,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_closest_point: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_closest_point").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2656412154)!
        }
        }
    }()

    public func closestPoint(
        _ point: Godot.Vector2
    ) -> Godot.Vector2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: point) { __ptr_point in
                withUnsafeArgumentPackPointer(__ptr_point) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_closest_point,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_closest_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_closest_offset").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2276447920)!
        }
        }
    }()

    public func closestOffset(
        toPoint point: Godot.Vector2
    ) -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: point) { __ptr_point in
                withUnsafeArgumentPackPointer(__ptr_point) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_closest_offset,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_tessellate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "tessellate").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 958145977)!
        }
        }
    }()

    public func tessellate(
        maxStages: Int32 = 5,
        toleranceDegrees: Double = 4
    ) -> Godot.PackedVector2Array {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: maxStages) { __ptr_maxStages in
                withTransferrableUnsafeRawPointer(to: toleranceDegrees) { __ptr_toleranceDegrees in
                    withUnsafeArgumentPackPointer(__ptr_maxStages, __ptr_toleranceDegrees) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_tessellate,
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

    internal static var __method_binding_tessellate_even_length: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "tessellate_even_length").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2319761637)!
        }
        }
    }()

    public func tessellateEvenLength(
        maxStages: Int32 = 5,
        toleranceLength: Double = 20.0
    ) -> Godot.PackedVector2Array {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: maxStages) { __ptr_maxStages in
                withTransferrableUnsafeRawPointer(to: toleranceLength) { __ptr_toleranceLength in
                    withUnsafeArgumentPackPointer(__ptr_maxStages, __ptr_toleranceLength) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_tessellate_even_length,
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

    public var bakeInterval: Double {
        get {
            __getBakeInterval()
        }
        set {
            __setBakeInterval(
                distance: newValue
            )
        }
    }

    public var pointCount: Int32 {
        get {
            __getPointCount()
        }
        set {
            __setPointCount(
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