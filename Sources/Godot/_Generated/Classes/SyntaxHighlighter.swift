//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class SyntaxHighlighter: Resource {
    open func _getLineSyntaxHighlighting(line: Int32) -> Godot.GodotDictionary<Variant, Variant> {
        Godot.GodotDictionary<Variant, Variant>()
    }

    open func _clearHighlightingCache() {
    }

    open func _updateCache() {
    }

    private static var __method_binding_get_line_syntax_highlighting: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_line_syntax_highlighting").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3554694381)!
        }
        }
    }()
    public func lineSyntaxHighlighting(line: Int32) -> Godot.GodotDictionary<Variant, Variant> {
        let __temporary = Godot.GodotDictionary<Variant, Variant>()
        withUnsafePointer(to: line) { (__ptr_line) in
            withUnsafeArgumentPackPointer(__ptr_line) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_line_syntax_highlighting,
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

    private static var __method_binding_update_cache: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "update_cache").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func updateCache() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_update_cache,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_clear_highlighting_cache: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_highlighting_cache").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func clearHighlightingCache() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_clear_highlighting_cache,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_get_text_edit: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_text_edit").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1893027089)!
        }
        }
    }()
    public func textEdit() -> Godot.TextEdit? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_text_edit,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.TextEdit.retrievedInstanceManagedByGodot(__temporary)
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
            let instance = Unmanaged<SyntaxHighlighter> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getLineSyntaxHighlighting(
            line: args[0]!.load(as: Int32.self)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _clear_highlighting_cache_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<SyntaxHighlighter> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._clearHighlightingCache()}
        let _update_cache_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<SyntaxHighlighter> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
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