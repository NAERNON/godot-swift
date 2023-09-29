//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class GLTFDocument: Resource {
    private static var __method_binding_append_from_file: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "append_from_file").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1862991421)!
        }
        }
    }()
    public func appendFromFile(path: Godot.GodotString, state: Godot.GLTFState?, flags: UInt32 = 0, basePath: Godot.GodotString = "") -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        path.withUnsafeRawPointer { (__ptr_path) in
            state.withUnsafeRawPointer { (__ptr_state) in
                withUnsafePointer(to: __ptr_state) { (_ptr___ptr_state) in
                    withUnsafePointer(to: flags) { (__ptr_flags) in
                        basePath.withUnsafeRawPointer { (__ptr_basePath) in
                            withUnsafeArgumentPackPointer(__ptr_path, _ptr___ptr_state, __ptr_flags, __ptr_basePath) { (__accessPtr) in
                                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                        gdextension_interface_object_method_bind_ptrcall(
                                            Self.__method_binding_append_from_file,
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
        return Godot.ErrorType(rawValue: __temporary)!
    }

    private static var __method_binding_append_from_buffer: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "append_from_buffer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2818062664)!
        }
        }
    }()
    public func appendFromBuffer(bytes: Godot.PackedByteArray, basePath: Godot.GodotString, state: Godot.GLTFState?, flags: UInt32 = 0) -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        bytes.withUnsafeRawPointer { (__ptr_bytes) in
            basePath.withUnsafeRawPointer { (__ptr_basePath) in
                state.withUnsafeRawPointer { (__ptr_state) in
                    withUnsafePointer(to: __ptr_state) { (_ptr___ptr_state) in
                        withUnsafePointer(to: flags) { (__ptr_flags) in
                            withUnsafeArgumentPackPointer(__ptr_bytes, __ptr_basePath, _ptr___ptr_state, __ptr_flags) { (__accessPtr) in
                                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                        gdextension_interface_object_method_bind_ptrcall(
                                            Self.__method_binding_append_from_buffer,
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
        return Godot.ErrorType(rawValue: __temporary)!
    }

    private static var __method_binding_append_from_scene: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "append_from_scene").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 374125375)!
        }
        }
    }()
    public func appendFromScene(node: Godot.Node?, state: Godot.GLTFState?, flags: UInt32 = 0) -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        node.withUnsafeRawPointer { (__ptr_node) in
            withUnsafePointer(to: __ptr_node) { (_ptr___ptr_node) in
                state.withUnsafeRawPointer { (__ptr_state) in
                    withUnsafePointer(to: __ptr_state) { (_ptr___ptr_state) in
                        withUnsafePointer(to: flags) { (__ptr_flags) in
                            withUnsafeArgumentPackPointer(_ptr___ptr_node, _ptr___ptr_state, __ptr_flags) { (__accessPtr) in
                                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                        gdextension_interface_object_method_bind_ptrcall(
                                            Self.__method_binding_append_from_scene,
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
        return Godot.ErrorType(rawValue: __temporary)!
    }

    private static var __method_binding_generate_scene: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "generate_scene").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2770277081)!
        }
        }
    }()
    public func generateScene(state: Godot.GLTFState?, bakeFps: Double = 30, trimming: Bool = false, removeImmutableTracks: Bool = true) -> Godot.Node? {
        var __temporary: GDExtensionObjectPtr!
        state.withUnsafeRawPointer { (__ptr_state) in
            withUnsafePointer(to: __ptr_state) { (_ptr___ptr_state) in
                withUnsafePointer(to: bakeFps) { (__ptr_bakeFps) in
                    withUnsafePointer(to: trimming) { (__ptr_trimming) in
                        withUnsafePointer(to: removeImmutableTracks) { (__ptr_removeImmutableTracks) in
                            withUnsafeArgumentPackPointer(_ptr___ptr_state, __ptr_bakeFps, __ptr_trimming, __ptr_removeImmutableTracks) { (__accessPtr) in
                                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                        gdextension_interface_object_method_bind_ptrcall(
                                            Self.__method_binding_generate_scene,
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
        return Godot.Node.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_generate_buffer: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "generate_buffer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 741783455)!
        }
        }
    }()
    public func generateBuffer(state: Godot.GLTFState?) -> Godot.PackedByteArray {
        let __temporary = Godot.PackedByteArray()
        state.withUnsafeRawPointer { (__ptr_state) in
            withUnsafePointer(to: __ptr_state) { (_ptr___ptr_state) in
                withUnsafeArgumentPackPointer(_ptr___ptr_state) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_generate_buffer,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_write_to_filesystem: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "write_to_filesystem").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1784551478)!
        }
        }
    }()
    public func writeToFilesystem(state: Godot.GLTFState?, path: Godot.GodotString) -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        state.withUnsafeRawPointer { (__ptr_state) in
            withUnsafePointer(to: __ptr_state) { (_ptr___ptr_state) in
                path.withUnsafeRawPointer { (__ptr_path) in
                    withUnsafeArgumentPackPointer(_ptr___ptr_state, __ptr_path) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_write_to_filesystem,
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
        return Godot.ErrorType(rawValue: __temporary)!
    }

    private static var __method_binding_register_gltf_document_extension: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "register_gltf_document_extension").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3752678331)!
        }
        }
    }()
    static public func registerGltfDocumentExtension(_ `extension`: Godot.GLTFDocumentExtension?, firstPriority: Bool = false) {
        `extension`.withUnsafeRawPointer { (__ptr_extension) in
            withUnsafePointer(to: __ptr_extension) { (_ptr___ptr_extension) in
                withUnsafePointer(to: firstPriority) { (__ptr_firstPriority) in
                    withUnsafeArgumentPackPointer(_ptr___ptr_extension, __ptr_firstPriority) { (__accessPtr) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_register_gltf_document_extension,
                            nil,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_unregister_gltf_document_extension: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "unregister_gltf_document_extension").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2684415758)!
        }
        }
    }()
    static public func unregisterGltfDocumentExtension(_ `extension`: Godot.GLTFDocumentExtension?) {
        `extension`.withUnsafeRawPointer { (__ptr_extension) in
            withUnsafePointer(to: __ptr_extension) { (_ptr___ptr_extension) in
                withUnsafeArgumentPackPointer(_ptr___ptr_extension) { (__accessPtr) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_unregister_gltf_document_extension,
                        nil,
                        __accessPtr,
                        nil
                    )
                }
            }
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