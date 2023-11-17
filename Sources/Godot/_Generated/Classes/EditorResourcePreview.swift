//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class EditorResourcePreview: Node {
    @Emitter(signal: "preview_invalidated", args: ("path", Godot.GodotString))
    public struct PreviewInvalidated {
    }

    private static var __method_binding_queue_resource_preview: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "queue_resource_preview").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 233177534)!
        }
        }
    }()
    public func queueResourcePreview<Variant1 : VariantEncodable>(path: Godot.GodotString, receiver: Godot.Object?, receiverFunc: Godot.GodotStringName, userdata: Variant1) {
        path.withUnsafeRawPointer { (__ptr_path) in
            receiver.withUnsafeRawPointer { (__ptr_receiver) in
                withUnsafePointer(to: __ptr_receiver) { (_ptr___ptr_receiver) in
                    receiverFunc.withUnsafeRawPointer { (__ptr_receiverFunc) in
                        Godot.Variant.Storage(userdata).withUnsafeRawPointer { (__ptr_userdata) in
                            withUnsafeArgumentPackPointer(__ptr_path, _ptr___ptr_receiver, __ptr_receiverFunc, __ptr_userdata) { (__accessPtr) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_queue_resource_preview,
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
    }

    private static var __method_binding_queue_edited_resource_preview: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "queue_edited_resource_preview").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1608376650)!
        }
        }
    }()
    public func queueEditedResourcePreview<Variant1 : VariantEncodable>(resource: Godot.Resource?, receiver: Godot.Object?, receiverFunc: Godot.GodotStringName, userdata: Variant1) {
        resource.withUnsafeRawPointer { (__ptr_resource) in
            withUnsafePointer(to: __ptr_resource) { (_ptr___ptr_resource) in
                receiver.withUnsafeRawPointer { (__ptr_receiver) in
                    withUnsafePointer(to: __ptr_receiver) { (_ptr___ptr_receiver) in
                        receiverFunc.withUnsafeRawPointer { (__ptr_receiverFunc) in
                            Godot.Variant.Storage(userdata).withUnsafeRawPointer { (__ptr_userdata) in
                                withUnsafeArgumentPackPointer(_ptr___ptr_resource, _ptr___ptr_receiver, __ptr_receiverFunc, __ptr_userdata) { (__accessPtr) in
                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                        gdextension_interface_object_method_bind_ptrcall(
                                            Self.__method_binding_queue_edited_resource_preview,
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
        }
    }

    private static var __method_binding_add_preview_generator: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_preview_generator").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 332288124)!
        }
        }
    }()
    public func addPreviewGenerator(_ generator: Godot.EditorResourcePreviewGenerator?) {
        generator.withUnsafeRawPointer { (__ptr_generator) in
            withUnsafePointer(to: __ptr_generator) { (_ptr___ptr_generator) in
                withUnsafeArgumentPackPointer(_ptr___ptr_generator) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_add_preview_generator,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_remove_preview_generator: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_preview_generator").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 332288124)!
        }
        }
    }()
    public func removePreviewGenerator(_ generator: Godot.EditorResourcePreviewGenerator?) {
        generator.withUnsafeRawPointer { (__ptr_generator) in
            withUnsafePointer(to: __ptr_generator) { (_ptr___ptr_generator) in
                withUnsafeArgumentPackPointer(_ptr___ptr_generator) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_remove_preview_generator,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_check_for_invalidation: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "check_for_invalidation").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func checkForInvalidation(path: Godot.GodotString) {
        path.withUnsafeRawPointer { (__ptr_path) in
            withUnsafeArgumentPackPointer(__ptr_path) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_check_for_invalidation,
                        __ptr_self,
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