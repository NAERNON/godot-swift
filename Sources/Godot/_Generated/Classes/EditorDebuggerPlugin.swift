//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class EditorDebuggerPlugin: RefCounted {
    open func _setupSession(
        sessionID: Int32
    ) {
    }

    open func _hasCapture(
        _ capture: Godot.GodotString
    ) -> Bool {
        Bool()
    }

    open func _capture(
        message: Godot.GodotString,
        data: Godot.AnyGodotArray,
        sessionID: Int32
    ) -> Bool {
        Bool()
    }

    internal static var __method_binding_get_session: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_session").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3061968499)!
        }
        }
    }()

    public func session(
        id: Int32
    ) -> Godot.EditorDebuggerSession? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: id) { __ptr_id in
                withUnsafeArgumentPackPointer(__ptr_id) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_session,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_sessions: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_sessions").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()

    public func sessions() -> Godot.AnyGodotArray {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_sessions,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
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
            Unmanaged<EditorDebuggerPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
        ._setupSession(
            sessionID: Int32.transferFromGodot(unsafePointer: args[0]!)
        )}
        let _has_capture_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorDebuggerPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
        ._hasCapture(
            Godot.GodotString.transferFromGodot(unsafePointer: args[0]!)
        )
        .transferToGodot(unsafePointer: returnPtr!)}
        let _capture_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorDebuggerPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
        ._capture(
            message: Godot.GodotString.transferFromGodot(unsafePointer: args[0]!),
            data: Godot.AnyGodotArray.transferFromGodot(unsafePointer: args[1]!),
            sessionID: Int32.transferFromGodot(unsafePointer: args[2]!)
        )
        .transferToGodot(unsafePointer: returnPtr!)}
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