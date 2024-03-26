//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class SyntaxHighlighter: Resource {
    open func _getLineSyntaxHighlighting(
        line: Int32
    ) -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary()
    }

    open func _clearHighlightingCache() {
    }

    open func _updateCache() {
    }

    internal static var __method_binding_get_line_syntax_highlighting: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_line_syntax_highlighting").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3554694381)!
        }
        }
    }()

    public func lineSyntaxHighlighting(
        line: Int32
    ) -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary.fromMutatingGodotUnsafePointer { __temporary in
        line.withGodotUnsafeRawPointer { __ptr_line in
        withUnsafeArgumentPackPointer(__ptr_line) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_line_syntax_highlighting,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_update_cache: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "update_cache").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func updateCache() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_update_cache,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_clear_highlighting_cache: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_highlighting_cache").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func clearHighlightingCache() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_clear_highlighting_cache,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_get_text_edit: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_text_edit").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1893027089)!
        }
        }
    }()

    public func textEdit() -> Godot.TextEdit? {
        Godot.TextEdit?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_text_edit,
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
        let _get_line_syntax_highlighting_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<SyntaxHighlighter>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getLineSyntaxHighlighting(
            line: Int32.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _clear_highlighting_cache_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<SyntaxHighlighter>.fromOpaque(instancePtr).takeUnretainedValue()
        ._clearHighlightingCache()}
        let _update_cache_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<SyntaxHighlighter>.fromOpaque(instancePtr).takeUnretainedValue()
        ._updateCache()}
        _virtualFunctions = [
            "_getLineSyntaxHighlighting" : ("_get_line_syntax_highlighting", _get_line_syntax_highlighting_call),
            "_clearHighlightingCache" : ("_clear_highlighting_cache", _clear_highlighting_cache_call),
            "_updateCache" : ("_update_cache", _update_cache_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }
}