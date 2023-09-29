//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class ClassDB: Object {
    private static var __method_binding_get_class_list: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_class_list").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1139954409)!
        }
        }
    }()
    public func classList() -> Godot.PackedStringArray {
        let __temporary = Godot.PackedStringArray()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_class_list,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_inheriters_from_class: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_inheriters_from_class").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1761182771)!
        }
        }
    }()
    public func inheritersFromClass(_ `class`: Godot.GodotStringName) -> Godot.PackedStringArray {
        let __temporary = Godot.PackedStringArray()
        `class`.withUnsafeRawPointer { (__ptr_class) in
            withUnsafeArgumentPackPointer(__ptr_class) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_inheriters_from_class,
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

    private static var __method_binding_get_parent_class: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_parent_class").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1965194235)!
        }
        }
    }()
    public func parentClass(_ `class`: Godot.GodotStringName) -> Godot.GodotStringName {
        let __temporary = Godot.GodotStringName()
        `class`.withUnsafeRawPointer { (__ptr_class) in
            withUnsafeArgumentPackPointer(__ptr_class) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_parent_class,
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

    private static var __method_binding_class_exists: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "class_exists").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2619796661)!
        }
        }
    }()
    public func classExists(`class`: Godot.GodotStringName) -> Bool {
        var __temporary = Bool()
        `class`.withUnsafeRawPointer { (__ptr_class) in
            withUnsafeArgumentPackPointer(__ptr_class) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_class_exists,
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

    private static var __method_binding_is_parent_class: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_parent_class").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 471820014)!
        }
        }
    }()
    public func isParentClass(_ `class`: Godot.GodotStringName, inherits: Godot.GodotStringName) -> Bool {
        var __temporary = Bool()
        `class`.withUnsafeRawPointer { (__ptr_class) in
            inherits.withUnsafeRawPointer { (__ptr_inherits) in
                withUnsafeArgumentPackPointer(__ptr_class, __ptr_inherits) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_is_parent_class,
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

    private static var __method_binding_can_instantiate: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "can_instantiate").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2619796661)!
        }
        }
    }()
    public func canInstantiate(`class`: Godot.GodotStringName) -> Bool {
        var __temporary = Bool()
        `class`.withUnsafeRawPointer { (__ptr_class) in
            withUnsafeArgumentPackPointer(__ptr_class) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_can_instantiate,
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

    private static var __method_binding_instantiate: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "instantiate").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2760726917)!
        }
        }
    }()
    public func instantiate(`class`: Godot.GodotStringName) -> Godot.Variant {
        let __temporary = Godot.Variant()
        `class`.withUnsafeRawPointer { (__ptr_class) in
            withUnsafeArgumentPackPointer(__ptr_class) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
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
        return __temporary
    }

    private static var __method_binding_class_has_signal: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "class_has_signal").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 471820014)!
        }
        }
    }()
    public func classHasSignal(`class`: Godot.GodotStringName, signal: Godot.GodotStringName) -> Bool {
        var __temporary = Bool()
        `class`.withUnsafeRawPointer { (__ptr_class) in
            signal.withUnsafeRawPointer { (__ptr_signal) in
                withUnsafeArgumentPackPointer(__ptr_class, __ptr_signal) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_class_has_signal,
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

    private static var __method_binding_class_get_signal: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "class_get_signal").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3061114238)!
        }
        }
    }()
    public func classGetSignal(`class`: Godot.GodotStringName, signal: Godot.GodotStringName) -> Godot.GodotDictionary {
        let __temporary = Godot.GodotDictionary()
        `class`.withUnsafeRawPointer { (__ptr_class) in
            signal.withUnsafeRawPointer { (__ptr_signal) in
                withUnsafeArgumentPackPointer(__ptr_class, __ptr_signal) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_class_get_signal,
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

    private static var __method_binding_class_get_signal_list: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "class_get_signal_list").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3504980660)!
        }
        }
    }()
    public func classGetSignalList(`class`: Godot.GodotStringName, noInheritance: Bool = false) -> Godot.GodotTypedArray<Godot.GodotDictionary> {
        let __temporary = Godot.GodotTypedArray<Godot.GodotDictionary>()
        `class`.withUnsafeRawPointer { (__ptr_class) in
            withUnsafePointer(to: noInheritance) { (__ptr_noInheritance) in
                withUnsafeArgumentPackPointer(__ptr_class, __ptr_noInheritance) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_class_get_signal_list,
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

    private static var __method_binding_class_get_property_list: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "class_get_property_list").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3504980660)!
        }
        }
    }()
    public func classGetPropertyList(`class`: Godot.GodotStringName, noInheritance: Bool = false) -> Godot.GodotTypedArray<Godot.GodotDictionary> {
        let __temporary = Godot.GodotTypedArray<Godot.GodotDictionary>()
        `class`.withUnsafeRawPointer { (__ptr_class) in
            withUnsafePointer(to: noInheritance) { (__ptr_noInheritance) in
                withUnsafeArgumentPackPointer(__ptr_class, __ptr_noInheritance) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_class_get_property_list,
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

    private static var __method_binding_class_get_property: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "class_get_property").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2498641674)!
        }
        }
    }()
    public func classGetProperty(object: Godot.Object?, property: Godot.GodotStringName) -> Godot.Variant {
        let __temporary = Godot.Variant()
        object.withUnsafeRawPointer { (__ptr_object) in
            withUnsafePointer(to: __ptr_object) { (_ptr___ptr_object) in
                property.withUnsafeRawPointer { (__ptr_property) in
                    withUnsafeArgumentPackPointer(_ptr___ptr_object, __ptr_property) { (__accessPtr) in
                        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_class_get_property,
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
        return __temporary
    }

    private static var __method_binding_class_set_property: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "class_set_property").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1690314931)!
        }
        }
    }()
    public func classSetProperty<Variant1 : ConvertibleToVariant>(object: Godot.Object?, property: Godot.GodotStringName, value: Variant1) -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        object.withUnsafeRawPointer { (__ptr_object) in
            withUnsafePointer(to: __ptr_object) { (_ptr___ptr_object) in
                property.withUnsafeRawPointer { (__ptr_property) in
                    value.makeVariant().withUnsafeRawPointer { (__ptr_value) in
                        withUnsafeArgumentPackPointer(_ptr___ptr_object, __ptr_property, __ptr_value) { (__accessPtr) in
                            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_class_set_property,
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
        return Godot.ErrorType(rawValue: __temporary)!
    }

    private static var __method_binding_class_has_method: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "class_has_method").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3860701026)!
        }
        }
    }()
    public func classHasMethod(`class`: Godot.GodotStringName, method: Godot.GodotStringName, noInheritance: Bool = false) -> Bool {
        var __temporary = Bool()
        `class`.withUnsafeRawPointer { (__ptr_class) in
            method.withUnsafeRawPointer { (__ptr_method) in
                withUnsafePointer(to: noInheritance) { (__ptr_noInheritance) in
                    withUnsafeArgumentPackPointer(__ptr_class, __ptr_method, __ptr_noInheritance) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_class_has_method,
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
        return __temporary
    }

    private static var __method_binding_class_get_method_list: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "class_get_method_list").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3504980660)!
        }
        }
    }()
    public func classGetMethodList(`class`: Godot.GodotStringName, noInheritance: Bool = false) -> Godot.GodotTypedArray<Godot.GodotDictionary> {
        let __temporary = Godot.GodotTypedArray<Godot.GodotDictionary>()
        `class`.withUnsafeRawPointer { (__ptr_class) in
            withUnsafePointer(to: noInheritance) { (__ptr_noInheritance) in
                withUnsafeArgumentPackPointer(__ptr_class, __ptr_noInheritance) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_class_get_method_list,
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

    private static var __method_binding_class_get_integer_constant_list: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "class_get_integer_constant_list").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3031669221)!
        }
        }
    }()
    public func classGetIntegerConstantList(`class`: Godot.GodotStringName, noInheritance: Bool = false) -> Godot.PackedStringArray {
        let __temporary = Godot.PackedStringArray()
        `class`.withUnsafeRawPointer { (__ptr_class) in
            withUnsafePointer(to: noInheritance) { (__ptr_noInheritance) in
                withUnsafeArgumentPackPointer(__ptr_class, __ptr_noInheritance) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_class_get_integer_constant_list,
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

    private static var __method_binding_class_has_integer_constant: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "class_has_integer_constant").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 471820014)!
        }
        }
    }()
    public func classHasIntegerConstant(`class`: Godot.GodotStringName, name: Godot.GodotStringName) -> Bool {
        var __temporary = Bool()
        `class`.withUnsafeRawPointer { (__ptr_class) in
            name.withUnsafeRawPointer { (__ptr_name) in
                withUnsafeArgumentPackPointer(__ptr_class, __ptr_name) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_class_has_integer_constant,
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

    private static var __method_binding_class_get_integer_constant: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "class_get_integer_constant").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2419549490)!
        }
        }
    }()
    public func classGetIntegerConstant(`class`: Godot.GodotStringName, name: Godot.GodotStringName) -> Int64 {
        var __temporary = Int64()
        `class`.withUnsafeRawPointer { (__ptr_class) in
            name.withUnsafeRawPointer { (__ptr_name) in
                withUnsafeArgumentPackPointer(__ptr_class, __ptr_name) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_class_get_integer_constant,
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

    private static var __method_binding_class_has_enum: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "class_has_enum").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3860701026)!
        }
        }
    }()
    public func classHasEnum(`class`: Godot.GodotStringName, name: Godot.GodotStringName, noInheritance: Bool = false) -> Bool {
        var __temporary = Bool()
        `class`.withUnsafeRawPointer { (__ptr_class) in
            name.withUnsafeRawPointer { (__ptr_name) in
                withUnsafePointer(to: noInheritance) { (__ptr_noInheritance) in
                    withUnsafeArgumentPackPointer(__ptr_class, __ptr_name, __ptr_noInheritance) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_class_has_enum,
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
        return __temporary
    }

    private static var __method_binding_class_get_enum_list: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "class_get_enum_list").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3031669221)!
        }
        }
    }()
    public func classGetEnumList(`class`: Godot.GodotStringName, noInheritance: Bool = false) -> Godot.PackedStringArray {
        let __temporary = Godot.PackedStringArray()
        `class`.withUnsafeRawPointer { (__ptr_class) in
            withUnsafePointer(to: noInheritance) { (__ptr_noInheritance) in
                withUnsafeArgumentPackPointer(__ptr_class, __ptr_noInheritance) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_class_get_enum_list,
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

    private static var __method_binding_class_get_enum_constants: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "class_get_enum_constants").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 661528303)!
        }
        }
    }()
    public func classGetEnumConstants(`class`: Godot.GodotStringName, `enum`: Godot.GodotStringName, noInheritance: Bool = false) -> Godot.PackedStringArray {
        let __temporary = Godot.PackedStringArray()
        `class`.withUnsafeRawPointer { (__ptr_class) in
            `enum`.withUnsafeRawPointer { (__ptr_enum) in
                withUnsafePointer(to: noInheritance) { (__ptr_noInheritance) in
                    withUnsafeArgumentPackPointer(__ptr_class, __ptr_enum, __ptr_noInheritance) { (__accessPtr) in
                        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_class_get_enum_constants,
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
        return __temporary
    }

    private static var __method_binding_class_get_integer_constant_enum: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "class_get_integer_constant_enum").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2457504236)!
        }
        }
    }()
    public func classGetIntegerConstantEnum(`class`: Godot.GodotStringName, name: Godot.GodotStringName, noInheritance: Bool = false) -> Godot.GodotStringName {
        let __temporary = Godot.GodotStringName()
        `class`.withUnsafeRawPointer { (__ptr_class) in
            name.withUnsafeRawPointer { (__ptr_name) in
                withUnsafePointer(to: noInheritance) { (__ptr_noInheritance) in
                    withUnsafeArgumentPackPointer(__ptr_class, __ptr_name, __ptr_noInheritance) { (__accessPtr) in
                        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_class_get_integer_constant_enum,
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
        return __temporary
    }

    private static var __method_binding_is_class_enabled: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_class_enabled").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2619796661)!
        }
        }
    }()
    public func isClassEnabled(`class`: Godot.GodotStringName) -> Bool {
        var __temporary = Bool()
        `class`.withUnsafeRawPointer { (__ptr_class) in
            withUnsafeArgumentPackPointer(__ptr_class) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_is_class_enabled,
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