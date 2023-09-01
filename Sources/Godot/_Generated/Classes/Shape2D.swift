//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class Shape2D: Resource {
    private static var __method_binding_set_custom_solver_bias: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_custom_solver_bias").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setCustomSolverBias(_ bias: Double) {
        withUnsafePointer(to: bias) { (__ptr_bias) in
            withUnsafeArgumentPackPointer(__ptr_bias) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_custom_solver_bias,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_custom_solver_bias: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_custom_solver_bias").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getCustomSolverBias() -> Double {
        var __temporary = Double()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_custom_solver_bias,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_collide: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "collide").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3709843132)!
        }
        }
    }()
    public func collide(localXform: Godot.Transform2D, withShape shape: Godot.Shape2D?, shapeXform: Godot.Transform2D) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: localXform) { (__ptr_localXform) in
            shape.withUnsafeRawPointer { (__ptr_shape) in
                withUnsafePointer(to: __ptr_shape) { (_ptr___ptr_shape) in
                    withUnsafePointer(to: shapeXform) { (__ptr_shapeXform) in
                        withUnsafeArgumentPackPointer(__ptr_localXform, _ptr___ptr_shape, __ptr_shapeXform) { (__accessPtr) in
                            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_collide,
                                        __ptr_self,
                                        __accessPtr,
                                        __ptr___temporary
                                    )
                                }
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_collide_with_motion: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "collide_with_motion").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2869556801)!
        }
        }
    }()
    public func collideWithMotion(localXform: Godot.Transform2D, localMotion: Godot.Vector2, withShape shape: Godot.Shape2D?, shapeXform: Godot.Transform2D, shapeMotion: Godot.Vector2) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: localXform) { (__ptr_localXform) in
            withUnsafePointer(to: localMotion) { (__ptr_localMotion) in
                shape.withUnsafeRawPointer { (__ptr_shape) in
                    withUnsafePointer(to: __ptr_shape) { (_ptr___ptr_shape) in
                        withUnsafePointer(to: shapeXform) { (__ptr_shapeXform) in
                            withUnsafePointer(to: shapeMotion) { (__ptr_shapeMotion) in
                                withUnsafeArgumentPackPointer(__ptr_localXform, __ptr_localMotion, _ptr___ptr_shape, __ptr_shapeXform, __ptr_shapeMotion) { (__accessPtr) in
                                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                        `self`.withUnsafeRawPointer { (__ptr_self) in
                                            gdextension_interface_object_method_bind_ptrcall(
                                                Self.__method_binding_collide_with_motion,
                                                __ptr_self,
                                                __accessPtr,
                                                __ptr___temporary
                                            )
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_collide_and_get_contacts: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "collide_and_get_contacts").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3056932662)!
        }
        }
    }()
    public func collideAndGetContacts(localXform: Godot.Transform2D, withShape shape: Godot.Shape2D?, shapeXform: Godot.Transform2D) -> Godot.PackedVector2Array {
        let __temporary = Godot.PackedVector2Array()
        withUnsafePointer(to: localXform) { (__ptr_localXform) in
            shape.withUnsafeRawPointer { (__ptr_shape) in
                withUnsafePointer(to: __ptr_shape) { (_ptr___ptr_shape) in
                    withUnsafePointer(to: shapeXform) { (__ptr_shapeXform) in
                        withUnsafeArgumentPackPointer(__ptr_localXform, _ptr___ptr_shape, __ptr_shapeXform) { (__accessPtr) in
                            __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_collide_and_get_contacts,
                                        __ptr_self,
                                        __accessPtr,
                                        __ptr___temporary
                                    )
                                }
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_collide_with_motion_and_get_contacts: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "collide_with_motion_and_get_contacts").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3620351573)!
        }
        }
    }()
    public func collideWithMotionAndGetContacts(localXform: Godot.Transform2D, localMotion: Godot.Vector2, withShape shape: Godot.Shape2D?, shapeXform: Godot.Transform2D, shapeMotion: Godot.Vector2) -> Godot.PackedVector2Array {
        let __temporary = Godot.PackedVector2Array()
        withUnsafePointer(to: localXform) { (__ptr_localXform) in
            withUnsafePointer(to: localMotion) { (__ptr_localMotion) in
                shape.withUnsafeRawPointer { (__ptr_shape) in
                    withUnsafePointer(to: __ptr_shape) { (_ptr___ptr_shape) in
                        withUnsafePointer(to: shapeXform) { (__ptr_shapeXform) in
                            withUnsafePointer(to: shapeMotion) { (__ptr_shapeMotion) in
                                withUnsafeArgumentPackPointer(__ptr_localXform, __ptr_localMotion, _ptr___ptr_shape, __ptr_shapeXform, __ptr_shapeMotion) { (__accessPtr) in
                                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                                        `self`.withUnsafeRawPointer { (__ptr_self) in
                                            gdextension_interface_object_method_bind_ptrcall(
                                                Self.__method_binding_collide_with_motion_and_get_contacts,
                                                __ptr_self,
                                                __accessPtr,
                                                __ptr___temporary
                                            )
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_draw: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "draw").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2948539648)!
        }
        }
    }()
    public func draw(canvasItem: Godot.RID, color: Godot.Color) {
        canvasItem.withUnsafeRawPointer { (__ptr_canvasItem) in
            withUnsafePointer(to: color) { (__ptr_color) in
                withUnsafeArgumentPackPointer(__ptr_canvasItem, __ptr_color) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_draw,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_rect: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_rect").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1639390495)!
        }
        }
    }()
    public func rect() -> Godot.Rect2 {
        var __temporary = Godot.Rect2()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_rect,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    public var customSolverBias: Double {
        get {
            __getCustomSolverBias()
        }
        set {
            __setCustomSolverBias(
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