//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class NavigationMeshGenerator: Object {
    internal static var __method_binding_bake: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "bake").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1401173477)!
        }
        }
    }()
    public func bake(navigationMesh: Godot.NavigationMesh?, rootNode: Godot.Node?) {
        navigationMesh.withGodotUnsafeRawPointer { __ptr_navigationMesh in
        withUnsafePointer(to: __ptr_navigationMesh) { _ptr___ptr_navigationMesh in
        rootNode.withGodotUnsafeRawPointer { __ptr_rootNode in
        withUnsafePointer(to: __ptr_rootNode) { _ptr___ptr_rootNode in
        withUnsafeArgumentPackPointer(_ptr___ptr_navigationMesh, _ptr___ptr_rootNode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_bake,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    internal static var __method_binding_clear: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2923361153)!
        }
        }
    }()
    public func clear(navigationMesh: Godot.NavigationMesh?) {
        navigationMesh.withGodotUnsafeRawPointer { __ptr_navigationMesh in
        withUnsafePointer(to: __ptr_navigationMesh) { _ptr___ptr_navigationMesh in
        withUnsafeArgumentPackPointer(_ptr___ptr_navigationMesh) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_clear,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_parse_source_geometry_data: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "parse_source_geometry_data").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 685862123)!
        }
        }
    }()
    public func parseSourceGeometryData(navigationMesh: Godot.NavigationMesh?, sourceGeometryData: Godot.NavigationMeshSourceGeometryData3D?, rootNode: Godot.Node?, callback: Godot.Callable = Callable()) {
        navigationMesh.withGodotUnsafeRawPointer { __ptr_navigationMesh in
        withUnsafePointer(to: __ptr_navigationMesh) { _ptr___ptr_navigationMesh in
        sourceGeometryData.withGodotUnsafeRawPointer { __ptr_sourceGeometryData in
        withUnsafePointer(to: __ptr_sourceGeometryData) { _ptr___ptr_sourceGeometryData in
        rootNode.withGodotUnsafeRawPointer { __ptr_rootNode in
        withUnsafePointer(to: __ptr_rootNode) { _ptr___ptr_rootNode in
        callback.withGodotUnsafeRawPointer { __ptr_callback in
        withUnsafeArgumentPackPointer(_ptr___ptr_navigationMesh, _ptr___ptr_sourceGeometryData, _ptr___ptr_rootNode, __ptr_callback) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_parse_source_geometry_data,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}}
    }

    internal static var __method_binding_bake_from_source_geometry_data: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "bake_from_source_geometry_data").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2469318639)!
        }
        }
    }()
    public func bakeFromSourceGeometryData(navigationMesh: Godot.NavigationMesh?, sourceGeometryData: Godot.NavigationMeshSourceGeometryData3D?, callback: Godot.Callable = Callable()) {
        navigationMesh.withGodotUnsafeRawPointer { __ptr_navigationMesh in
        withUnsafePointer(to: __ptr_navigationMesh) { _ptr___ptr_navigationMesh in
        sourceGeometryData.withGodotUnsafeRawPointer { __ptr_sourceGeometryData in
        withUnsafePointer(to: __ptr_sourceGeometryData) { _ptr___ptr_sourceGeometryData in
        callback.withGodotUnsafeRawPointer { __ptr_callback in
        withUnsafeArgumentPackPointer(_ptr___ptr_navigationMesh, _ptr___ptr_sourceGeometryData, __ptr_callback) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_bake_from_source_geometry_data,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
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