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
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_locale").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    private func __setLocale(_ locale: Godot.GodotString) {
        locale.withGodotUnsafeRawPointer { __ptr_locale in
        withUnsafeArgumentPackPointer(__ptr_locale) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_locale,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_locale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_locale").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    private func __getLocale() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_locale,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_add_message: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_message").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3898530326)!
        }
        }
    }()
    public func addMessage(srcMessage: Godot.GodotStringName, xlatedMessage: Godot.GodotStringName, context: Godot.GodotStringName = "") {
        srcMessage.withGodotUnsafeRawPointer { __ptr_srcMessage in
        xlatedMessage.withGodotUnsafeRawPointer { __ptr_xlatedMessage in
        context.withGodotUnsafeRawPointer { __ptr_context in
        withUnsafeArgumentPackPointer(__ptr_srcMessage, __ptr_xlatedMessage, __ptr_context) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_message,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_add_plural_message: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_plural_message").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2356982266)!
        }
        }
    }()
    public func addPluralMessage(srcMessage: Godot.GodotStringName, xlatedMessages: Godot.PackedStringArray, context: Godot.GodotStringName = "") {
        srcMessage.withGodotUnsafeRawPointer { __ptr_srcMessage in
        xlatedMessages.withGodotUnsafeRawPointer { __ptr_xlatedMessages in
        context.withGodotUnsafeRawPointer { __ptr_context in
        withUnsafeArgumentPackPointer(__ptr_srcMessage, __ptr_xlatedMessages, __ptr_context) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_plural_message,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_get_message: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_message").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1829228469)!
        }
        }
    }()
    public func message(_ srcMessage: Godot.GodotStringName, context: Godot.GodotStringName = "") -> Godot.GodotStringName {
        Godot.GodotStringName.fromMutatingGodotUnsafePointer { __temporary in
        srcMessage.withGodotUnsafeRawPointer { __ptr_srcMessage in
        context.withGodotUnsafeRawPointer { __ptr_context in
        withUnsafeArgumentPackPointer(__ptr_srcMessage, __ptr_context) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_message,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_get_plural_message: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_plural_message").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 229954002)!
        }
        }
    }()
    public func pluralMessage(srcMessage: Godot.GodotStringName, srcPluralMessage: Godot.GodotStringName, n: Int32, context: Godot.GodotStringName = "") -> Godot.GodotStringName {
        Godot.GodotStringName.fromMutatingGodotUnsafePointer { __temporary in
        srcMessage.withGodotUnsafeRawPointer { __ptr_srcMessage in
        srcPluralMessage.withGodotUnsafeRawPointer { __ptr_srcPluralMessage in
        n.withGodotUnsafeRawPointer { __ptr_n in
        context.withGodotUnsafeRawPointer { __ptr_context in
        withUnsafeArgumentPackPointer(__ptr_srcMessage, __ptr_srcPluralMessage, __ptr_n, __ptr_context) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_plural_message,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}
    }

    private static var __method_binding_erase_message: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "erase_message").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3959009644)!
        }
        }
    }()
    public func eraseMessage(srcMessage: Godot.GodotStringName, context: Godot.GodotStringName = "") {
        srcMessage.withGodotUnsafeRawPointer { __ptr_srcMessage in
        context.withGodotUnsafeRawPointer { __ptr_context in
        withUnsafeArgumentPackPointer(__ptr_srcMessage, __ptr_context) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_erase_message,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_message_list: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_message_list").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1139954409)!
        }
        }
    }()
    public func messageList() -> Godot.PackedStringArray {
        Godot.PackedStringArray.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_message_list,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_translated_message_list: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_translated_message_list").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1139954409)!
        }
        }
    }()
    public func translatedMessageList() -> Godot.PackedStringArray {
        Godot.PackedStringArray.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_translated_message_list,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_message_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_message_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func messageCount() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_message_count,
            __ptr_self,
            nil,
            __temporary
        )}}
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
            Unmanaged<Translation>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getPluralMessage(
            srcMessage: Godot.GodotStringName.fromGodotUnsafePointer(args[0]!),
            srcPluralMessage: Godot.GodotStringName.fromGodotUnsafePointer(args[1]!),
            n: Int32.fromGodotUnsafePointer(args[2]!),
            context: Godot.GodotStringName.fromGodotUnsafePointer(args[3]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_message_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<Translation>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getMessage(
            srcMessage: Godot.GodotStringName.fromGodotUnsafePointer(args[0]!),
            context: Godot.GodotStringName.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
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