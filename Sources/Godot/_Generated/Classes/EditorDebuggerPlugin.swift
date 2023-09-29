//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class EditorDebuggerPlugin: RefCounted {
    open func _setupSession(sessionId: Int32) {
    }

    open func _hasCapture(_ capture: Godot.GodotString) -> Bool {
        Bool()
    }

    open func _capture(message: Godot.GodotString, data: Godot.GodotArray, sessionId: Int32) -> Bool {
        Bool()
    }

    private static var __method_binding_get_session: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_session").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3061968499)!
        }
        }
    }()
    public func session(id: Int32) -> Godot.EditorDebuggerSession? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafePointer(to: id) { (__ptr_id) in
            withUnsafeArgumentPackPointer(__ptr_id) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_session,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.EditorDebuggerSession.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_get_sessions: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_sessions").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()
    public func sessions() -> Godot.GodotArray {
        let __temporary = Godot.GodotArray()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_sessions,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _setup_session_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorDebuggerPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._setupSession(
            sessionId: args[0]!.load(as: Int32.self)
        )}
        let _has_capture_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorDebuggerPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._hasCapture(
            Godot.GodotString(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _capture_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorDebuggerPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._capture(
            message: Godot.GodotString(godotExtensionPointer: args[0]!),
            data: Godot.GodotArray(godotExtensionPointer: args[1]!),
            sessionId: args[2]!.load(as: Int32.self)
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        _virtualFunctions = [
            "_setupSession" : ("_setup_session", _setup_session_call),
            "_hasCapture" : ("_has_capture", _has_capture_call),
            "_capture" : ("_capture", _capture_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }