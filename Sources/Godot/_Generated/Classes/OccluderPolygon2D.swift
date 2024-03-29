//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class OccluderPolygon2D: Resource {
    public enum CullMode: UInt32 {
        case disabled = 0
        case clockwise = 1
        case counterClockwise = 2
    }

    private static var __method_binding_set_closed: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_closed").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setClosed(_ closed: Bool) {
        withUnsafePointer(to: closed) { (__ptr_closed) in
            withUnsafeArgumentPackPointer(__ptr_closed) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_closed,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_is_closed: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "is_closed").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isClosed() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_closed,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_cull_mode: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_cull_mode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3500863002)!
        }
        }
    }()
    private func __setCullMode(_ cullMode: Godot.OccluderPolygon2D.CullMode) {
        withUnsafePointer(to: cullMode) { (__ptr_cullMode) in
            withUnsafeArgumentPackPointer(__ptr_cullMode) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_cull_mode,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_cull_mode: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_cull_mode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 33931036)!
        }
        }
    }()
    private func __getCullMode() -> Godot.OccluderPolygon2D.CullMode {
        var __temporary = Godot.OccluderPolygon2D.CullMode.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_cull_mode,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.OccluderPolygon2D.CullMode(rawValue: __temporary)!
    }

    private static var __method_binding_set_polygon: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_polygon").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1509147220)!
        }
        }
    }()
    private func __setPolygon(_ polygon: Godot.PackedVector2Array) {
        polygon.withUnsafeRawPointer { (__ptr_polygon) in
            withUnsafeArgumentPackPointer(__ptr_polygon) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_polygon,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_polygon: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_polygon").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2961356807)!
        }
        }
    }()
    private func __getPolygon() -> Godot.PackedVector2Array {
        let __temporary = Godot.PackedVector2Array()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_polygon,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    public var isClosed: Bool {
        get {
            __isClosed()
        }
        set {
            __setClosed(
                newValue
            )
        }
    }

    public var cullMode: Godot.OccluderPolygon2D.CullMode {
        get {
            __getCullMode()
        }
        set {
            __setCullMode(
                newValue
            )
        }
    }

    public var polygon: Godot.PackedVector2Array {
        get {
            __getPolygon()
        }
        set {
            __setPolygon(
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