//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class JSON: Resource {
    private static var __method_binding_stringify: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "stringify").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2656701787)!
        }
        }
    }()
    static public func stringify<Variant1 : VariantEncodable>(data: Variant1, indent: Godot.GodotString = "", sortKeys: Bool = true, fullPrecision: Bool = false) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        Godot.Variant.Storage(data).withUnsafeRawPointer { (__ptr_data) in
            indent.withUnsafeRawPointer { (__ptr_indent) in
                withUnsafePointer(to: sortKeys) { (__ptr_sortKeys) in
                    withUnsafePointer(to: fullPrecision) { (__ptr_fullPrecision) in
                        withUnsafeArgumentPackPointer(__ptr_data, __ptr_indent, __ptr_sortKeys, __ptr_fullPrecision) { (__accessPtr) in
                            __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_stringify,
                                    nil,
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

    private static var __method_binding_parse_string: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "parse_string").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 309047738)!
        }
        }
    }()
    static public func parseString(jsonString: Godot.GodotString) -> Godot.Variant {
        let __temporary = Godot.Variant()
        jsonString.withUnsafeRawPointer { (__ptr_jsonString) in
            withUnsafeArgumentPackPointer(__ptr_jsonString) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_parse_string,
                        nil,
                        __accessPtr,
                        __ptr___temporary
                    )
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_parse: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "parse").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 885841341)!
        }
        }
    }()
    public func parse(jsonText: Godot.GodotString, keepText: Bool = false) -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        jsonText.withUnsafeRawPointer { (__ptr_jsonText) in
            withUnsafePointer(to: keepText) { (__ptr_keepText) in
                withUnsafeArgumentPackPointer(__ptr_jsonText, __ptr_keepText) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_parse,
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

    private static var __method_binding_get_data: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_data").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1214101251)!
        }
        }
    }()
    private func __getData() -> Godot.Variant {
        let __temporary = Godot.Variant()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_data,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_data: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_data").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1114965689)!
        }
        }
    }()
    private func __setData<Variant1 : VariantEncodable>(_ data: Variant1) {
        Godot.Variant.Storage(data).withUnsafeRawPointer { (__ptr_data) in
            withUnsafeArgumentPackPointer(__ptr_data) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_data,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_parsed_text: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_parsed_text").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    public func parsedText() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_parsed_text,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_error_line: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_error_line").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func errorLine() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_error_line,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_error_message: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_error_message").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    public func errorMessage() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_error_message,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    public var data: Godot.Variant {
        get {
            __getData()
        }
        set {
            __setData(
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