//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class AnimationNodeBlendSpace2D: AnimationRootNode {
    public enum BlendMode: UInt32, GodotEnum {
        case interpolated = 0
        case discrete = 1
        case discreteCarry = 2

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Interpolated", 0),
            ("Discrete", 1),
            ("Discrete Carry", 2),]
        }
    }

    public func trianglesUpdated() {
        _ = trianglesUpdatedSignal.emit()
    }

    public lazy var trianglesUpdatedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "triangles_updated") { callablePtr, args, _, _, _ in
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

    internal static var __method_binding_add_blend_point: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_blend_point").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 402261981)!
        }
        }
    }()

    public func addBlendPoint(
        node: Godot.AnimationRootNode?,
        pos: Godot.Vector2,
        atIndex index: Int32 = -1
    ) {
        withTransferrableUnsafeRawPointer(to: node) { __ptr_node in
            withUnsafePointer(to: __ptr_node) { _ptr___ptr_node in
                withTransferrableUnsafeRawPointer(to: pos) { __ptr_pos in
                    withTransferrableUnsafeRawPointer(to: index) { __ptr_index in
                        withUnsafeArgumentPackPointer(_ptr___ptr_node, __ptr_pos, __ptr_index) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_add_blend_point,
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

    internal static var __method_binding_set_blend_point_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_blend_point_position").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 163021252)!
        }
        }
    }()

    public func setBlendPointPosition(
        point: Int32,
        pos: Godot.Vector2
    ) {
        withTransferrableUnsafeRawPointer(to: point) { __ptr_point in
            withTransferrableUnsafeRawPointer(to: pos) { __ptr_pos in
                withUnsafeArgumentPackPointer(__ptr_point, __ptr_pos) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_blend_point_position,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_blend_point_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_blend_point_position").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2299179447)!
        }
        }
    }()

    public func blendPointPosition(
        point: Int32
    ) -> Godot.Vector2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: point) { __ptr_point in
                withUnsafeArgumentPackPointer(__ptr_point) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_blend_point_position,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_blend_point_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_blend_point_node").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4240341528)!
        }
        }
    }()

    public func setBlendPointNode(
        point: Int32,
        node: Godot.AnimationRootNode?
    ) {
        withTransferrableUnsafeRawPointer(to: point) { __ptr_point in
            withTransferrableUnsafeRawPointer(to: node) { __ptr_node in
                withUnsafePointer(to: __ptr_node) { _ptr___ptr_node in
                    withUnsafeArgumentPackPointer(__ptr_point, _ptr___ptr_node) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_set_blend_point_node,
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

    internal static var __method_binding_get_blend_point_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_blend_point_node").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 665599029)!
        }
        }
    }()

    public func blendPointNode(
        point: Int32
    ) -> Godot.AnimationRootNode? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: point) { __ptr_point in
                withUnsafeArgumentPackPointer(__ptr_point) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_blend_point_node,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_remove_blend_point: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_blend_point").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    public func removeBlendPoint(
        _ point: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: point) { __ptr_point in
            withUnsafeArgumentPackPointer(__ptr_point) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_remove_blend_point,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_blend_point_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_blend_point_count").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    public func blendPointCount() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_blend_point_count,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_add_triangle: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_triangle").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 753017335)!
        }
        }
    }()

    public func addTriangle(
        x: Int32,
        y: Int32,
        z: Int32,
        atIndex index: Int32 = -1
    ) {
        withTransferrableUnsafeRawPointer(to: x) { __ptr_x in
            withTransferrableUnsafeRawPointer(to: y) { __ptr_y in
                withTransferrableUnsafeRawPointer(to: z) { __ptr_z in
                    withTransferrableUnsafeRawPointer(to: index) { __ptr_index in
                        withUnsafeArgumentPackPointer(__ptr_x, __ptr_y, __ptr_z, __ptr_index) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_add_triangle,
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

    internal static var __method_binding_get_triangle_point: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_triangle_point").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 50157827)!
        }
        }
    }()

    public func trianglePoint(
        triangle: Int32,
        point: Int32
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: triangle) { __ptr_triangle in
                withTransferrableUnsafeRawPointer(to: point) { __ptr_point in
                    withUnsafeArgumentPackPointer(__ptr_triangle, __ptr_point) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_get_triangle_point,
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

    internal static var __method_binding_remove_triangle: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_triangle").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    public func removeTriangle(
        _ triangle: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: triangle) { __ptr_triangle in
            withUnsafeArgumentPackPointer(__ptr_triangle) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_remove_triangle,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_triangle_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_triangle_count").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    public func triangleCount() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_triangle_count,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_min_space: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_min_space").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 743155724)!
        }
        }
    }()

    private func __setMinSpace(
        _ minSpace: Godot.Vector2
    ) {
        withTransferrableUnsafeRawPointer(to: minSpace) { __ptr_minSpace in
            withUnsafeArgumentPackPointer(__ptr_minSpace) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_min_space,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_min_space: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_min_space").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()

    private func __getMinSpace() -> Godot.Vector2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_min_space,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_max_space: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_max_space").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 743155724)!
        }
        }
    }()

    private func __setMaxSpace(
        _ maxSpace: Godot.Vector2
    ) {
        withTransferrableUnsafeRawPointer(to: maxSpace) { __ptr_maxSpace in
            withUnsafeArgumentPackPointer(__ptr_maxSpace) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_max_space,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_max_space: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_max_space").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()

    private func __getMaxSpace() -> Godot.Vector2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_max_space,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_snap: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_snap").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 743155724)!
        }
        }
    }()

    private func __setSnap(
        _ snap: Godot.Vector2
    ) {
        withTransferrableUnsafeRawPointer(to: snap) { __ptr_snap in
            withUnsafeArgumentPackPointer(__ptr_snap) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_snap,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_snap: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_snap").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()

    private func __getSnap() -> Godot.Vector2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_snap,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_x_label: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_x_label").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()

    private func __setXLabel(
        text: Godot.GodotString
    ) {
        withTransferrableUnsafeRawPointer(to: text) { __ptr_text in
            withUnsafeArgumentPackPointer(__ptr_text) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_x_label,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_x_label: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_x_label").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()

    private func __getXLabel() -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_x_label,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_y_label: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_y_label").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()

    private func __setYLabel(
        text: Godot.GodotString
    ) {
        withTransferrableUnsafeRawPointer(to: text) { __ptr_text in
            withUnsafeArgumentPackPointer(__ptr_text) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_y_label,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_y_label: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_y_label").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()

    private func __getYLabel() -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_y_label,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_auto_triangles: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_auto_triangles").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setAutoTriangles(
        enable: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: enable) { __ptr_enable in
            withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_auto_triangles,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_auto_triangles: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_auto_triangles").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __getAutoTriangles() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_auto_triangles,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_blend_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_blend_mode").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 81193520)!
        }
        }
    }()

    private func __setBlendMode(
        _ mode: Godot.AnimationNodeBlendSpace2D.BlendMode
    ) {
        withTransferrableUnsafeRawPointer(to: mode) { __ptr_mode in
            withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_blend_mode,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_blend_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_blend_mode").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1398433632)!
        }
        }
    }()

    private func __getBlendMode() -> Godot.AnimationNodeBlendSpace2D.BlendMode {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_blend_mode,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_use_sync: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_use_sync").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setUseSync(
        enable: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: enable) { __ptr_enable in
            withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_use_sync,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_is_using_sync: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_using_sync").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isUsingSync() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_using_sync,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    public var autoTriangles: Bool {
        get {
            __getAutoTriangles()
        }
        set {
            __setAutoTriangles(
                enable: newValue
            )
        }
    }

    public var minSpace: Godot.Vector2 {
        get {
            __getMinSpace()
        }
        set {
            __setMinSpace(
                newValue
            )
        }
    }

    public var maxSpace: Godot.Vector2 {
        get {
            __getMaxSpace()
        }
        set {
            __setMaxSpace(
                newValue
            )
        }
    }

    public var snap: Godot.Vector2 {
        get {
            __getSnap()
        }
        set {
            __setSnap(
                newValue
            )
        }
    }

    public var xLabel: Godot.GodotString {
        get {
            __getXLabel()
        }
        set {
            __setXLabel(
                text: newValue
            )
        }
    }

    public var yLabel: Godot.GodotString {
        get {
            __getYLabel()
        }
        set {
            __setYLabel(
                text: newValue
            )
        }
    }

    public var blendMode: Godot.AnimationNodeBlendSpace2D.BlendMode {
        get {
            __getBlendMode()
        }
        set {
            __setBlendMode(
                newValue
            )
        }
    }

    public var isUsingSync: Bool {
        get {
            __isUsingSync()
        }
        set {
            __setUseSync(
                enable: newValue
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