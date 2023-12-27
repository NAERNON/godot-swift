//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class MeshLibrary: Resource {
    private static var __method_binding_create_item: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_item").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func createItem(id: Int32) {
        id.withGodotUnsafeRawPointer { __ptr_id in
        withUnsafeArgumentPackPointer(__ptr_id) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_create_item,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_item_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_item_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 501894301)!
        }
        }
    }()
    public func setItemName(id: Int32, name: Godot.GodotString) {
        id.withGodotUnsafeRawPointer { __ptr_id in
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_id, __ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_item_name,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_set_item_mesh: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_item_mesh").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 969122797)!
        }
        }
    }()
    public func setItemMesh(id: Int32, mesh: Godot.Mesh?) {
        id.withGodotUnsafeRawPointer { __ptr_id in
        mesh.withGodotUnsafeRawPointer { __ptr_mesh in
        withUnsafePointer(to: __ptr_mesh) { _ptr___ptr_mesh in
        withUnsafeArgumentPackPointer(__ptr_id, _ptr___ptr_mesh) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_item_mesh,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_set_item_mesh_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_item_mesh_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3616898986)!
        }
        }
    }()
    public func setItemMeshTransform(id: Int32, meshTransform: Godot.Transform3D) {
        id.withGodotUnsafeRawPointer { __ptr_id in
        meshTransform.withGodotUnsafeRawPointer { __ptr_meshTransform in
        withUnsafeArgumentPackPointer(__ptr_id, __ptr_meshTransform) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_item_mesh_transform,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_set_item_navigation_mesh: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_item_navigation_mesh").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3483353960)!
        }
        }
    }()
    public func setItemNavigationMesh(id: Int32, navigationMesh: Godot.NavigationMesh?) {
        id.withGodotUnsafeRawPointer { __ptr_id in
        navigationMesh.withGodotUnsafeRawPointer { __ptr_navigationMesh in
        withUnsafePointer(to: __ptr_navigationMesh) { _ptr___ptr_navigationMesh in
        withUnsafeArgumentPackPointer(__ptr_id, _ptr___ptr_navigationMesh) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_item_navigation_mesh,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_set_item_navigation_mesh_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_item_navigation_mesh_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3616898986)!
        }
        }
    }()
    public func setItemNavigationMeshTransform(id: Int32, navigationMesh: Godot.Transform3D) {
        id.withGodotUnsafeRawPointer { __ptr_id in
        navigationMesh.withGodotUnsafeRawPointer { __ptr_navigationMesh in
        withUnsafeArgumentPackPointer(__ptr_id, __ptr_navigationMesh) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_item_navigation_mesh_transform,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_set_item_navigation_layers: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_item_navigation_layers").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func setItemNavigationLayers(id: Int32, navigationLayers: UInt32) {
        id.withGodotUnsafeRawPointer { __ptr_id in
        navigationLayers.withGodotUnsafeRawPointer { __ptr_navigationLayers in
        withUnsafeArgumentPackPointer(__ptr_id, __ptr_navigationLayers) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_item_navigation_layers,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_set_item_shapes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_item_shapes").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 537221740)!
        }
        }
    }()
    public func setItemShapes<Value: VariantStorable>(id: Int32, shapes: Godot.GodotArray<Value>) {
        id.withGodotUnsafeRawPointer { __ptr_id in
        shapes.withGodotUnsafeRawPointer { __ptr_shapes in
        withUnsafeArgumentPackPointer(__ptr_id, __ptr_shapes) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_item_shapes,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_set_item_preview: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_item_preview").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 666127730)!
        }
        }
    }()
    public func setItemPreview(id: Int32, texture: Godot.Texture2D?) {
        id.withGodotUnsafeRawPointer { __ptr_id in
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafePointer(to: __ptr_texture) { _ptr___ptr_texture in
        withUnsafeArgumentPackPointer(__ptr_id, _ptr___ptr_texture) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_item_preview,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_get_item_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_item_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 844755477)!
        }
        }
    }()
    public func itemName(id: Int32) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        id.withGodotUnsafeRawPointer { __ptr_id in
        withUnsafeArgumentPackPointer(__ptr_id) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_item_name,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_item_mesh: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_item_mesh").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1576363275)!
        }
        }
    }()
    public func itemMesh(id: Int32) -> Godot.Mesh? {
        Godot.Mesh?.fromMutatingGodotUnsafePointer { __temporary in
        id.withGodotUnsafeRawPointer { __ptr_id in
        withUnsafeArgumentPackPointer(__ptr_id) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_item_mesh,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_item_mesh_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_item_mesh_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1965739696)!
        }
        }
    }()
    public func itemMeshTransform(id: Int32) -> Godot.Transform3D {
        Godot.Transform3D.fromMutatingGodotUnsafePointer { __temporary in
        id.withGodotUnsafeRawPointer { __ptr_id in
        withUnsafeArgumentPackPointer(__ptr_id) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_item_mesh_transform,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_item_navigation_mesh: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_item_navigation_mesh").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2729647406)!
        }
        }
    }()
    public func itemNavigationMesh(id: Int32) -> Godot.NavigationMesh? {
        Godot.NavigationMesh?.fromMutatingGodotUnsafePointer { __temporary in
        id.withGodotUnsafeRawPointer { __ptr_id in
        withUnsafeArgumentPackPointer(__ptr_id) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_item_navigation_mesh,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_item_navigation_mesh_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_item_navigation_mesh_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1965739696)!
        }
        }
    }()
    public func itemNavigationMeshTransform(id: Int32) -> Godot.Transform3D {
        Godot.Transform3D.fromMutatingGodotUnsafePointer { __temporary in
        id.withGodotUnsafeRawPointer { __ptr_id in
        withUnsafeArgumentPackPointer(__ptr_id) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_item_navigation_mesh_transform,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_item_navigation_layers: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_item_navigation_layers").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()
    public func itemNavigationLayers(id: Int32) -> UInt32 {
        UInt32.fromMutatingGodotUnsafePointer { __temporary in
        id.withGodotUnsafeRawPointer { __ptr_id in
        withUnsafeArgumentPackPointer(__ptr_id) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_item_navigation_layers,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_item_shapes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_item_shapes").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 663333327)!
        }
        }
    }()
    public func itemShapes(id: Int32) -> Godot.AnyGodotArray {
        Godot.AnyGodotArray.fromMutatingGodotUnsafePointer { __temporary in
        id.withGodotUnsafeRawPointer { __ptr_id in
        withUnsafeArgumentPackPointer(__ptr_id) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_item_shapes,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_item_preview: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_item_preview").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3536238170)!
        }
        }
    }()
    public func itemPreview(id: Int32) -> Godot.Texture2D? {
        Godot.Texture2D?.fromMutatingGodotUnsafePointer { __temporary in
        id.withGodotUnsafeRawPointer { __ptr_id in
        withUnsafeArgumentPackPointer(__ptr_id) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_item_preview,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_remove_item: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_item").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func removeItem(id: Int32) {
        id.withGodotUnsafeRawPointer { __ptr_id in
        withUnsafeArgumentPackPointer(__ptr_id) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_item,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_find_item_by_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "find_item_by_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1321353865)!
        }
        }
    }()
    public func findItemByName(_ name: Godot.GodotString) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_find_item_by_name,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
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

    private static var __method_binding_get_item_list: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_item_list").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1930428628)!
        }
        }
    }()
    public func itemList() -> Godot.PackedInt32Array {
        Godot.PackedInt32Array.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_item_list,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_last_unused_item_id: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_last_unused_item_id").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func lastUnusedItemId() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_last_unused_item_id,
            __ptr_self,
            nil,
            __temporary
        )}}
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