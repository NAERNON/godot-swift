//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class Translation: Resource {
    open func _getPluralMessage(srcMessage: Godot.GodotStringName, srcPluralMessage: Godot.GodotStringName, n: Int32, context: Godot.GodotStringName) -> Godot.GodotStringName {
        Godot.GodotStringName()
    }

    open func _getMessage(srcMessage: Godot.GodotStringName, context: Godot.GodotStringName) -> Godot.GodotStringName {
        Godot.GodotStringName()
    }

    private static var __method_binding_set_locale: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_locale").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    private func __setLocale(_ locale: Godot.GodotString) {
        locale.withUnsafeRawPointer { (__ptr_locale) in
            withUnsafeArgumentPackPointer(__ptr_locale) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_locale,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_locale: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_locale").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    private func __getLocale() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_locale,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_add_message: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_message").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 971803314)!
        }
        }
    }()
    public func addMessage(srcMessage: Godot.GodotStringName, xlatedMessage: Godot.GodotStringName, context: Godot.GodotStringName = "") {
        srcMessage.withUnsafeRawPointer { (__ptr_srcMessage) in
            xlatedMessage.withUnsafeRawPointer { (__ptr_xlatedMessage) in
                context.withUnsafeRawPointer { (__ptr_context) in
                    withUnsafeArgumentPackPointer(__ptr_srcMessage, __ptr_xlatedMessage, __ptr_context) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_add_message,
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

    private static var __method_binding_add_plural_message: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_plural_message").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 360316719)!
        }
        }
    }()
    public func addPluralMessage(srcMessage: Godot.GodotStringName, xlatedMessages: Godot.PackedStringArray, context: Godot.GodotStringName = "") {
        srcMessage.withUnsafeRawPointer { (__ptr_srcMessage) in
            xlatedMessages.withUnsafeRawPointer { (__ptr_xlatedMessages) in
                context.withUnsafeRawPointer { (__ptr_context) in
                    withUnsafeArgumentPackPointer(__ptr_srcMessage, __ptr_xlatedMessages, __ptr_context) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_add_plural_message,
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

    private static var __method_binding_get_message: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_message").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 58037827)!
        }
        }
    }()
    public func message(_ srcMessage: Godot.GodotStringName, context: Godot.GodotStringName = "") -> Godot.GodotStringName {
        let __temporary = Godot.GodotStringName()
        srcMessage.withUnsafeRawPointer { (__ptr_srcMessage) in
            context.withUnsafeRawPointer { (__ptr_context) in
                withUnsafeArgumentPackPointer(__ptr_srcMessage, __ptr_context) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_get_message,
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

    private static var __method_binding_get_plural_message: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_plural_message").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1333931916)!
        }
        }
    }()
    public func pluralMessage(srcMessage: Godot.GodotStringName, srcPluralMessage: Godot.GodotStringName, n: Int32, context: Godot.GodotStringName = "") -> Godot.GodotStringName {
        let __temporary = Godot.GodotStringName()
        srcMessage.withUnsafeRawPointer { (__ptr_srcMessage) in
            srcPluralMessage.withUnsafeRawPointer { (__ptr_srcPluralMessage) in
                withUnsafePointer(to: n) { (__ptr_n) in
                    context.withUnsafeRawPointer { (__ptr_context) in
                        withUnsafeArgumentPackPointer(__ptr_srcMessage, __ptr_srcPluralMessage, __ptr_n, __ptr_context) { (__accessPtr) in
                            __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_get_plural_message,
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
        return __temporary
    }

    private static var __method_binding_erase_message: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "erase_message").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3919944288)!
        }
        }
    }()
    public func eraseMessage(srcMessage: Godot.GodotStringName, context: Godot.GodotStringName = "") {
        srcMessage.withUnsafeRawPointer { (__ptr_srcMessage) in
            context.withUnsafeRawPointer { (__ptr_context) in
                withUnsafeArgumentPackPointer(__ptr_srcMessage, __ptr_context) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_erase_message,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_message_list: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_message_list").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1139954409)!
        }
        }
    }()
    public func messageList() -> Godot.PackedStringArray {
        let __temporary = Godot.PackedStringArray()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_message_list,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_translated_message_list: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_translated_message_list").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1139954409)!
        }
        }
    }()
    public func translatedMessageList() -> Godot.PackedStringArray {
        let __temporary = Godot.PackedStringArray()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_translated_message_list,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_message_count: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_message_count").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func messageCount() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_message_count,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    public var locale: Godot.GodotString {
        get {
            __getLocale()
        }
        set {
            __setLocale(
                newValue
            )
        }
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _get_plural_message_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<Translation> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getPluralMessage(
            srcMessage: Godot.GodotStringName(godotExtensionPointer: args[0]!),
            srcPluralMessage: Godot.GodotStringName(godotExtensionPointer: args[1]!),
            n: args[2]!.load(as: Int32.self),
            context: Godot.GodotStringName(godotExtensionPointer: args[3]!)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_message_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<Translation> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getMessage(
            srcMessage: Godot.GodotStringName(godotExtensionPointer: args[0]!),
            context: Godot.GodotStringName(godotExtensionPointer: args[1]!)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        _virtualFunctions = [
            "_getPluralMessage" : ("_get_plural_message", _get_plural_message_call),
            "_getMessage" : ("_get_message", _get_message_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }