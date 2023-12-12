//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class NavigationPathQueryResult2D: RefCounted {
    public enum PathSegmentType: UInt32, GodotEnum {
        case region = 0
        case link = 1
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Region", 0),
            ("Link", 1),]
        }
    }

    private static var __method_binding_set_path: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_path").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1509147220)!
        }
        }
    }()
    private func __setPath(_ path: Godot.PackedVector2Array) {
        path.withGodotUnsafeRawPointer { __ptr_path in
        withUnsafeArgumentPackPointer(__ptr_path) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_path,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_path: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_path").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2961356807)!
        }
        }
    }()
    private func __getPath() -> Godot.PackedVector2Array {
        Godot.PackedVector2Array.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_path,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_path_types: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_path_types").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3614634198)!
        }
        }
    }()
    private func __setPathTypes(_ pathTypes: Godot.PackedInt32Array) {
        pathTypes.withGodotUnsafeRawPointer { __ptr_pathTypes in
        withUnsafeArgumentPackPointer(__ptr_pathTypes) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_path_types,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_path_types: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_path_types").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1930428628)!
        }
        }
    }()
    private func __getPathTypes() -> Godot.PackedInt32Array {
        Godot.PackedInt32Array.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_path_types,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_path_rids: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_path_rids").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()
    private func __setPathRids(_ pathRids: Godot.GodotArray<Godot.RID>) {
        pathRids.withGodotUnsafeRawPointer { __ptr_pathRids in
        withUnsafeArgumentPackPointer(__ptr_pathRids) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_path_rids,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_path_rids: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_path_rids").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()
    private func __getPathRids() -> Godot.GodotArray<Godot.RID> {
        Godot.GodotArray<Godot.RID> .fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_path_rids,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_path_owner_ids: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_path_owner_ids").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3709968205)!
        }
        }
    }()
    private func __setPathOwnerIds(_ pathOwnerIds: Godot.PackedInt64Array) {
        pathOwnerIds.withGodotUnsafeRawPointer { __ptr_pathOwnerIds in
        withUnsafeArgumentPackPointer(__ptr_pathOwnerIds) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_path_owner_ids,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_path_owner_ids: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_path_owner_ids").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 235988956)!
        }
        }
    }()
    private func __getPathOwnerIds() -> Godot.PackedInt64Array {
        Godot.PackedInt64Array.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_path_owner_ids,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_reset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "reset").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func reset() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_reset,
            __ptr_self,
            nil,
            nil
        )}
    }

    public var path: Godot.PackedVector2Array {
        get {
            __getPath()
        }
        set {
            __setPath(
                newValue
            )
        }
    }

    public var pathTypes: Godot.PackedInt32Array {
        get {
            __getPathTypes()
        }
        set {
            __setPathTypes(
                newValue
            )
        }
    }

    public var pathRids: Godot.GodotArray<Godot.RID> {
        get {
            __getPathRids()
        }
        set {
            __setPathRids(
                newValue
            )
        }
    }

    public var pathOwnerIds: Godot.PackedInt64Array {
        get {
            __getPathOwnerIds()
        }
        set {
            __setPathOwnerIds(
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