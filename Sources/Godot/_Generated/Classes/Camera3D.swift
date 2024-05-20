//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotClass
open class Camera3D: Node3D {
    public enum ProjectionType: UInt32, GodotEnum {
        case perspective = 0
        case orthogonal = 1
        case frustum = 2

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Perspective", 0),
            ("Orthogonal", 1),
            ("Frustum", 2),]
        }
    }

    public enum KeepAspect: UInt32, GodotEnum {
        case width = 0
        case height = 1

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Width", 0),
            ("Height", 1),]
        }
    }

    public enum DopplerTracking: UInt32, GodotEnum {
        case disabled = 0
        case idleStep = 1
        case physicsStep = 2

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Disabled", 0),
            ("Idle Step", 1),
            ("Physics Step", 2),]
        }
    }

    internal static var __method_binding_project_ray_normal: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "project_ray_normal").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1718073306)!
        }
        }
    }()

    public func projectRayNormal(
        screenPoint: Godot.Vector2
    ) -> Godot.Vector3 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: screenPoint) { __ptr_screenPoint in
                withUnsafeArgumentPackPointer(__ptr_screenPoint) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_project_ray_normal,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_project_local_ray_normal: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "project_local_ray_normal").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1718073306)!
        }
        }
    }()

    public func projectLocalRayNormal(
        screenPoint: Godot.Vector2
    ) -> Godot.Vector3 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: screenPoint) { __ptr_screenPoint in
                withUnsafeArgumentPackPointer(__ptr_screenPoint) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_project_local_ray_normal,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_project_ray_origin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "project_ray_origin").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1718073306)!
        }
        }
    }()

    public func projectRayOrigin(
        screenPoint: Godot.Vector2
    ) -> Godot.Vector3 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: screenPoint) { __ptr_screenPoint in
                withUnsafeArgumentPackPointer(__ptr_screenPoint) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_project_ray_origin,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_unproject_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "unproject_position").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3758901831)!
        }
        }
    }()

    public func unprojectPosition(
        worldPoint: Godot.Vector3
    ) -> Godot.Vector2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: worldPoint) { __ptr_worldPoint in
                withUnsafeArgumentPackPointer(__ptr_worldPoint) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_unproject_position,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_is_position_behind: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_position_behind").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3108956480)!
        }
        }
    }()

    public func isPositionBehind(
        worldPoint: Godot.Vector3
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: worldPoint) { __ptr_worldPoint in
                withUnsafeArgumentPackPointer(__ptr_worldPoint) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_is_position_behind,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_project_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "project_position").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2171975744)!
        }
        }
    }()

    public func projectPosition(
        screenPoint: Godot.Vector2,
        zDepth: Double
    ) -> Godot.Vector3 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: screenPoint) { __ptr_screenPoint in
                withTransferrableUnsafeRawPointer(to: zDepth) { __ptr_zDepth in
                    withUnsafeArgumentPackPointer(__ptr_screenPoint, __ptr_zDepth) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_project_position,
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

    internal static var __method_binding_set_perspective: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_perspective").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2385087082)!
        }
        }
    }()

    public func setPerspective(
        fov: Double,
        zNear: Double,
        zFar: Double
    ) {
        withTransferrableUnsafeRawPointer(to: fov) { __ptr_fov in
            withTransferrableUnsafeRawPointer(to: zNear) { __ptr_zNear in
                withTransferrableUnsafeRawPointer(to: zFar) { __ptr_zFar in
                    withUnsafeArgumentPackPointer(__ptr_fov, __ptr_zNear, __ptr_zFar) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_set_perspective,
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

    internal static var __method_binding_set_orthogonal: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_orthogonal").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2385087082)!
        }
        }
    }()

    public func setOrthogonal(
        size: Double,
        zNear: Double,
        zFar: Double
    ) {
        withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
            withTransferrableUnsafeRawPointer(to: zNear) { __ptr_zNear in
                withTransferrableUnsafeRawPointer(to: zFar) { __ptr_zFar in
                    withUnsafeArgumentPackPointer(__ptr_size, __ptr_zNear, __ptr_zFar) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_set_orthogonal,
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

    internal static var __method_binding_set_frustum: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_frustum").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 354890663)!
        }
        }
    }()

    public func setFrustum(
        size: Double,
        offset: Godot.Vector2,
        zNear: Double,
        zFar: Double
    ) {
        withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
            withTransferrableUnsafeRawPointer(to: offset) { __ptr_offset in
                withTransferrableUnsafeRawPointer(to: zNear) { __ptr_zNear in
                    withTransferrableUnsafeRawPointer(to: zFar) { __ptr_zFar in
                        withUnsafeArgumentPackPointer(__ptr_size, __ptr_offset, __ptr_zNear, __ptr_zFar) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_set_frustum,
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

    internal static var __method_binding_make_current: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "make_current").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func makeCurrent() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_make_current,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    internal static var __method_binding_clear_current: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_current").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3216645846)!
        }
        }
    }()

    public func clearCurrent(
        enableNext: Bool = true
    ) {
        withTransferrableUnsafeRawPointer(to: enableNext) { __ptr_enableNext in
            withUnsafeArgumentPackPointer(__ptr_enableNext) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_clear_current,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_set_current: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_current").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setCurrent(
        enabled: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: enabled) { __ptr_enabled in
            withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_current,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_is_current: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_current").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isCurrent() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_current,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_camera_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_camera_transform").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3229777777)!
        }
        }
    }()

    public func cameraTransform() -> Godot.Transform3D {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_camera_transform,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_camera_projection: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_camera_projection").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2910717950)!
        }
        }
    }()

    public func cameraProjection() -> Godot.Projection {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_camera_projection,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_fov: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_fov").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getFov() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_fov,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_frustum_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_frustum_offset").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()

    private func __getFrustumOffset() -> Godot.Vector2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_frustum_offset,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_size").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getSize() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_size,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_far: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_far").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getFar() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_far,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_near: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_near").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getNear() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_near,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_fov: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_fov").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setFov(
        _ fov: Double
    ) {
        withTransferrableUnsafeRawPointer(to: fov) { __ptr_fov in
            withUnsafeArgumentPackPointer(__ptr_fov) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_fov,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_set_frustum_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_frustum_offset").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 743155724)!
        }
        }
    }()

    private func __setFrustumOffset(
        _ offset: Godot.Vector2
    ) {
        withTransferrableUnsafeRawPointer(to: offset) { __ptr_offset in
            withUnsafeArgumentPackPointer(__ptr_offset) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_frustum_offset,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_set_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_size").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setSize(
        _ size: Double
    ) {
        withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
            withUnsafeArgumentPackPointer(__ptr_size) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_size,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_set_far: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_far").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setFar(
        _ far: Double
    ) {
        withTransferrableUnsafeRawPointer(to: far) { __ptr_far in
            withUnsafeArgumentPackPointer(__ptr_far) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_far,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_set_near: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_near").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setNear(
        _ near: Double
    ) {
        withTransferrableUnsafeRawPointer(to: near) { __ptr_near in
            withUnsafeArgumentPackPointer(__ptr_near) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_near,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_projection: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_projection").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2624185235)!
        }
        }
    }()

    private func __getProjection() -> Godot.Camera3D.ProjectionType {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_projection,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_projection: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_projection").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4218540108)!
        }
        }
    }()

    private func __setProjection(
        mode: Godot.Camera3D.ProjectionType
    ) {
        withTransferrableUnsafeRawPointer(to: mode) { __ptr_mode in
            withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_projection,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_set_h_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_h_offset").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setHOffset(
        _ offset: Double
    ) {
        withTransferrableUnsafeRawPointer(to: offset) { __ptr_offset in
            withUnsafeArgumentPackPointer(__ptr_offset) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_h_offset,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_h_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_h_offset").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getHOffset() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_h_offset,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_v_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_v_offset").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setVOffset(
        _ offset: Double
    ) {
        withTransferrableUnsafeRawPointer(to: offset) { __ptr_offset in
            withUnsafeArgumentPackPointer(__ptr_offset) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_v_offset,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_v_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_v_offset").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getVOffset() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_v_offset,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_cull_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_cull_mask").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    private func __setCullMask(
        _ mask: UInt32
    ) {
        withTransferrableUnsafeRawPointer(to: mask) { __ptr_mask in
            withUnsafeArgumentPackPointer(__ptr_mask) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_cull_mask,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_cull_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_cull_mask").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    private func __getCullMask() -> UInt32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_cull_mask,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_environment: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_environment").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4143518816)!
        }
        }
    }()

    private func __setEnvironment(
        env: Godot.Environment?
    ) {
        withTransferrableUnsafeRawPointer(to: env) { __ptr_env in
            withUnsafePointer(to: __ptr_env) { _ptr___ptr_env in
                withUnsafeArgumentPackPointer(_ptr___ptr_env) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_environment,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_environment: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_environment").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3082064660)!
        }
        }
    }()

    private func __getEnvironment() -> Godot.Environment? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_environment,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_attributes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_attributes").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2817810567)!
        }
        }
    }()

    private func __setAttributes(
        env: Godot.CameraAttributes?
    ) {
        withTransferrableUnsafeRawPointer(to: env) { __ptr_env in
            withUnsafePointer(to: __ptr_env) { _ptr___ptr_env in
                withUnsafeArgumentPackPointer(_ptr___ptr_env) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_attributes,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_attributes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_attributes").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3921283215)!
        }
        }
    }()

    private func __getAttributes() -> Godot.CameraAttributes? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_attributes,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_keep_aspect_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_keep_aspect_mode").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740651252)!
        }
        }
    }()

    private func __setKeepAspectMode(
        _ mode: Godot.Camera3D.KeepAspect
    ) {
        withTransferrableUnsafeRawPointer(to: mode) { __ptr_mode in
            withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_keep_aspect_mode,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_keep_aspect_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_keep_aspect_mode").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2790278316)!
        }
        }
    }()

    private func __getKeepAspectMode() -> Godot.Camera3D.KeepAspect {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_keep_aspect_mode,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_doppler_tracking: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_doppler_tracking").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3109431270)!
        }
        }
    }()

    private func __setDopplerTracking(
        mode: Godot.Camera3D.DopplerTracking
    ) {
        withTransferrableUnsafeRawPointer(to: mode) { __ptr_mode in
            withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_doppler_tracking,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_doppler_tracking: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_doppler_tracking").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1584483649)!
        }
        }
    }()

    private func __getDopplerTracking() -> Godot.Camera3D.DopplerTracking {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_doppler_tracking,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_frustum: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_frustum").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()

    public func frustum() -> Godot.GodotArray<Godot.Plane> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_frustum,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_is_position_in_frustum: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_position_in_frustum").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3108956480)!
        }
        }
    }()

    public func isPositionInFrustum(
        worldPoint: Godot.Vector3
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: worldPoint) { __ptr_worldPoint in
                withUnsafeArgumentPackPointer(__ptr_worldPoint) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_is_position_in_frustum,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_camera_rid: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_camera_rid").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2944877500)!
        }
        }
    }()

    public func cameraRID() -> Godot.RID {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_camera_rid,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_pyramid_shape_rid: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_pyramid_shape_rid").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()

    public func pyramidShapeRID() -> Godot.RID {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_pyramid_shape_rid,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_cull_mask_value: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_cull_mask_value").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()

    public func setCullMaskValue(
        layerNumber: Int32,
        value: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: layerNumber) { __ptr_layerNumber in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_layerNumber, __ptr_value) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_cull_mask_value,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_cull_mask_value: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_cull_mask_value").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()

    public func cullMaskValue(
        layerNumber: Int32
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: layerNumber) { __ptr_layerNumber in
                withUnsafeArgumentPackPointer(__ptr_layerNumber) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_cull_mask_value,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    public var keepAspectMode: Godot.Camera3D.KeepAspect {
        get {
            __getKeepAspectMode()
        }
        set {
            __setKeepAspectMode(
                newValue
            )
        }
    }

    public var cullMask: UInt32 {
        get {
            __getCullMask()
        }
        set {
            __setCullMask(
                newValue
            )
        }
    }

    public var environment: Godot.Environment? {
        get {
            __getEnvironment()
        }
        set {
            __setEnvironment(
                env: newValue
            )
        }
    }

    public var attributes: Godot.CameraAttributes? {
        get {
            __getAttributes()
        }
        set {
            __setAttributes(
                env: newValue
            )
        }
    }

    public var hOffset: Double {
        get {
            __getHOffset()
        }
        set {
            __setHOffset(
                newValue
            )
        }
    }

    public var vOffset: Double {
        get {
            __getVOffset()
        }
        set {
            __setVOffset(
                newValue
            )
        }
    }

    public var dopplerTracking: Godot.Camera3D.DopplerTracking {
        get {
            __getDopplerTracking()
        }
        set {
            __setDopplerTracking(
                mode: newValue
            )
        }
    }

    public var projection: Godot.Camera3D.ProjectionType {
        get {
            __getProjection()
        }
        set {
            __setProjection(
                mode: newValue
            )
        }
    }

    public var isCurrent: Bool {
        get {
            __isCurrent()
        }
        set {
            __setCurrent(
                enabled: newValue
            )
        }
    }

    public var fov: Double {
        get {
            __getFov()
        }
        set {
            __setFov(
                newValue
            )
        }
    }

    public var size: Double {
        get {
            __getSize()
        }
        set {
            __setSize(
                newValue
            )
        }
    }

    public var frustumOffset: Godot.Vector2 {
        get {
            __getFrustumOffset()
        }
        set {
            __setFrustumOffset(
                newValue
            )
        }
    }

    public var near: Double {
        get {
            __getNear()
        }
        set {
            __setNear(
                newValue
            )
        }
    }

    public var far: Double {
        get {
            __getFar()
        }
        set {
            __setFar(
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