//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class PackedScene: Resource {
    public enum GenEditState: UInt32, GodotEnum {
        case disabled = 0
        case instance = 1
        case main = 2
        case mainInherited = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Disabled", 0),
            ("Instance", 1),
            ("Main", 2),
            ("Main Inherited", 3),]
        }
    }

    private static var __method_binding_pack: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "pack").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2584678054)!
        }
        }
    }()
    public func pack(path: Godot.Node?) -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        path.withUnsafeRawPointer { (__ptr_path) in
            withUnsafePointer(to: __ptr_path) { (_ptr___ptr_path) in
                withUnsafeArgumentPackPointer(_ptr___ptr_path) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_pack,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return Godot.ErrorType(rawValue: __temporary)!
    }

    private static var __method_binding_instantiate: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "instantiate").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2628778455)!
        }
        }
    }()
    public func instantiate(editState: Godot.PackedScene.GenEditState = PackedScene.GenEditState(rawValue: 0)!) -> Godot.Node? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafePointer(to: editState) { (__ptr_editState) in
            withUnsafeArgumentPackPointer(__ptr_editState) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_instantiate,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.Node.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_can_instantiate: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "can_instantiate").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func canInstantiate() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_can_instantiate,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_state: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_state").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3479783971)!
        }
        }
    }()
    public func state() -> Godot.SceneState? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_state,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.SceneState.retrievedInstanceManagedByGodot(__temporary)
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