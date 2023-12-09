//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class MeshLibrary: Resource {
    private static var __method_binding_create_item: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_item").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func createItem(id: Int32) {
        withUnsafePointer(to: id) { (__ptr_id) in
            withUnsafeArgumentPackPointer(__ptr_id) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_create_item,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_set_item_name: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_item_name").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 501894301)!
        }
        }
    }()
    public func setItemName(id: Int32, name: Godot.GodotString) {
        withUnsafePointer(to: id) { (__ptr_id) in
            name.withUnsafeRawPointer { (__ptr_name) in
                withUnsafeArgumentPackPointer(__ptr_id, __ptr_name) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_item_name,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_set_item_mesh: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_item_mesh").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 969122797)!
        }
        }
    }()
    public func setItemMesh(id: Int32, mesh: Godot.Mesh?) {
        withUnsafePointer(to: id) { (__ptr_id) in
            mesh.withUnsafeRawPointer { (__ptr_mesh) in
                withUnsafePointer(to: __ptr_mesh) { (_ptr___ptr_mesh) in
                    withUnsafeArgumentPackPointer(__ptr_id, _ptr___ptr_mesh) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_set_item_mesh,
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

    private static var __method_binding_set_item_mesh_transform: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_item_mesh_transform").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3616898986)!
        }
        }
    }()
    public func setItemMeshTransform(id: Int32, meshTransform: Godot.Transform3D) {
        withUnsafePointer(to: id) { (__ptr_id) in
            withUnsafePointer(to: meshTransform) { (__ptr_meshTransform) in
                withUnsafeArgumentPackPointer(__ptr_id, __ptr_meshTransform) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_item_mesh_transform,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_set_item_navigation_mesh: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_item_navigation_mesh").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3483353960)!
        }
        }
    }()
    public func setItemNavigationMesh(id: Int32, navigationMesh: Godot.NavigationMesh?) {
        withUnsafePointer(to: id) { (__ptr_id) in
            navigationMesh.withUnsafeRawPointer { (__ptr_navigationMesh) in
                withUnsafePointer(to: __ptr_navigationMesh) { (_ptr___ptr_navigationMesh) in
                    withUnsafeArgumentPackPointer(__ptr_id, _ptr___ptr_navigationMesh) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_set_item_navigation_mesh,
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

    private static var __method_binding_set_item_navigation_mesh_transform: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_item_navigation_mesh_transform").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3616898986)!
        }
        }
    }()
    public func setItemNavigationMeshTransform(id: Int32, navigationMesh: Godot.Transform3D) {
        withUnsafePointer(to: id) { (__ptr_id) in
            withUnsafePointer(to: navigationMesh) { (__ptr_navigationMesh) in
                withUnsafeArgumentPackPointer(__ptr_id, __ptr_navigationMesh) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_item_navigation_mesh_transform,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_set_item_navigation_layers: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_item_navigation_layers").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func setItemNavigationLayers(id: Int32, navigationLayers: UInt32) {
        withUnsafePointer(to: id) { (__ptr_id) in
            withUnsafePointer(to: navigationLayers) { (__ptr_navigationLayers) in
                withUnsafeArgumentPackPointer(__ptr_id, __ptr_navigationLayers) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_item_navigation_layers,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_set_item_shapes: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_item_shapes").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 537221740)!
        }
        }
    }()
    public func setItemShapes<Value: VariantStorable>(id: Int32, shapes: Godot.GodotArray<Value>) {
        withUnsafePointer(to: id) { (__ptr_id) in
            shapes.withUnsafeRawPointer { (__ptr_shapes) in
                withUnsafeArgumentPackPointer(__ptr_id, __ptr_shapes) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_item_shapes,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_set_item_preview: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_item_preview").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 666127730)!
        }
        }
    }()
    public func setItemPreview(id: Int32, texture: Godot.Texture2D?) {
        withUnsafePointer(to: id) { (__ptr_id) in
            texture.withUnsafeRawPointer { (__ptr_texture) in
                withUnsafePointer(to: __ptr_texture) { (_ptr___ptr_texture) in
                    withUnsafeArgumentPackPointer(__ptr_id, _ptr___ptr_texture) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_set_item_preview,
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

    private static var __method_binding_get_item_name: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_item_name").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 844755477)!
        }
        }
    }()
    public func itemName(id: Int32) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        withUnsafePointer(to: id) { (__ptr_id) in
            withUnsafeArgumentPackPointer(__ptr_id) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_item_name,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_item_mesh: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_item_mesh").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1576363275)!
        }
        }
    }()
    public func itemMesh(id: Int32) -> Godot.Mesh? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafePointer(to: id) { (__ptr_id) in
            withUnsafeArgumentPackPointer(__ptr_id) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_item_mesh,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.Mesh.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_get_item_mesh_transform: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_item_mesh_transform").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1965739696)!
        }
        }
    }()
    public func itemMeshTransform(id: Int32) -> Godot.Transform3D {
        var __temporary = Godot.Transform3D()
        withUnsafePointer(to: id) { (__ptr_id) in
            withUnsafeArgumentPackPointer(__ptr_id) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_item_mesh_transform,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_item_navigation_mesh: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_item_navigation_mesh").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2729647406)!
        }
        }
    }()
    public func itemNavigationMesh(id: Int32) -> Godot.NavigationMesh? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafePointer(to: id) { (__ptr_id) in
            withUnsafeArgumentPackPointer(__ptr_id) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_item_navigation_mesh,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.NavigationMesh.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_get_item_navigation_mesh_transform: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_item_navigation_mesh_transform").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1965739696)!
        }
        }
    }()
    public func itemNavigationMeshTransform(id: Int32) -> Godot.Transform3D {
        var __temporary = Godot.Transform3D()
        withUnsafePointer(to: id) { (__ptr_id) in
            withUnsafeArgumentPackPointer(__ptr_id) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_item_navigation_mesh_transform,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_item_navigation_layers: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_item_navigation_layers").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()
    public func itemNavigationLayers(id: Int32) -> UInt32 {
        var __temporary = UInt32()
        withUnsafePointer(to: id) { (__ptr_id) in
            withUnsafeArgumentPackPointer(__ptr_id) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_item_navigation_layers,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_item_shapes: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_item_shapes").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 663333327)!
        }
        }
    }()
    public func itemShapes(id: Int32) -> Godot.AnyGodotArray {
        let __temporary = Godot.AnyGodotArray()
        withUnsafePointer(to: id) { (__ptr_id) in
            withUnsafeArgumentPackPointer(__ptr_id) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_item_shapes,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_item_preview: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_item_preview").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3536238170)!
        }
        }
    }()
    public func itemPreview(id: Int32) -> Godot.Texture2D? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafePointer(to: id) { (__ptr_id) in
            withUnsafeArgumentPackPointer(__ptr_id) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_item_preview,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.Texture2D.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_remove_item: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_item").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func removeItem(id: Int32) {
        withUnsafePointer(to: id) { (__ptr_id) in
            withUnsafeArgumentPackPointer(__ptr_id) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_remove_item,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_find_item_by_name: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "find_item_by_name").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1321353865)!
        }
        }
    }()
    public func findItemByName(_ name: Godot.GodotString) -> Int32 {
        var __temporary = Int32()
        name.withUnsafeRawPointer { (__ptr_name) in
            withUnsafeArgumentPackPointer(__ptr_name) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_find_item_by_name,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_clear: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func clear() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_clear,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_get_item_list: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_item_list").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1930428628)!
        }
        }
    }()
    public func itemList() -> Godot.PackedInt32Array {
        let __temporary = Godot.PackedInt32Array()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_item_list,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_last_unused_item_id: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_last_unused_item_id").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func lastUnusedItemId() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_last_unused_item_id,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
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