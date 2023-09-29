//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class Material: Resource {
    open func _getShaderRid() -> Godot.RID {
        Godot.RID()
    }

    open func _getShaderMode() -> Godot.Shader.Mode {
        Godot.Shader.Mode(rawValue: 0)!
    }

    open func _canDoNextPass() -> Bool {
        Bool()
    }

    open func _canUseRenderPriority() -> Bool {
        Bool()
    }

    private static var __method_binding_set_next_pass: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_next_pass").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2757459619)!
        }
        }
    }()
    private func __setNextPass(_ nextPass: Godot.Material?) {
        nextPass.withUnsafeRawPointer { (__ptr_nextPass) in
            withUnsafePointer(to: __ptr_nextPass) { (_ptr___ptr_nextPass) in
                withUnsafeArgumentPackPointer(_ptr___ptr_nextPass) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_next_pass,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_next_pass: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_next_pass").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 5934680)!
        }
        }
    }()
    private func __getNextPass() -> Godot.Material? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_next_pass,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.Material.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_set_render_priority: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_render_priority").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setRenderPriority(_ priority: Int32) {
        withUnsafePointer(to: priority) { (__ptr_priority) in
            withUnsafeArgumentPackPointer(__ptr_priority) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_render_priority,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_render_priority: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_render_priority").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getRenderPriority() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_render_priority,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_inspect_native_shader_code: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "inspect_native_shader_code").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func inspectNativeShaderCode() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_inspect_native_shader_code,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_create_placeholder: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_placeholder").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 121922552)!
        }
        }
    }()
    public func createPlaceholder() -> Godot.Resource? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_create_placeholder,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.Resource.retrievedInstanceManagedByGodot(__temporary)
    }

    public var renderPriority: Int32 {
        get {
            __getRenderPriority()
        }
        set {
            __setRenderPriority(
                newValue
            )
        }
    }

    public var nextPass: Godot.Material? {
        get {
            __getNextPass()
        }
        set {
            __setNextPass(
                newValue
            )
        }
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _get_shader_rid_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<Material> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getShaderRid()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_shader_mode_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<Material> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getShaderMode()
        returnPtr!.assumingMemoryBound(to: Godot.Shader.Mode.self).pointee = returnValue}
        let _can_do_next_pass_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<Material> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._canDoNextPass()
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _can_use_render_priority_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<Material> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._canUseRenderPriority()
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        _virtualFunctions = [
            "_getShaderRid" : ("_get_shader_rid", _get_shader_rid_call),
            "_getShaderMode" : ("_get_shader_mode", _get_shader_mode_call),
            "_canDoNextPass" : ("_can_do_next_pass", _can_do_next_pass_call),
            "_canUseRenderPriority" : ("_can_use_render_priority", _can_use_render_priority_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }