//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class EditorDebuggerSession: RefCounted {
    public func started() {
        startedConnector.emit()
    }

    public private (set) lazy var startedConnector: Godot.SignalConnector
    <> = {
        .init(self, "started")
    }()


    public func stopped() {
        stoppedConnector.emit()
    }

    public private (set) lazy var stoppedConnector: Godot.SignalConnector
    <> = {
        .init(self, "stopped")
    }()


    public func breaked(canDebug: Bool) {
        breakedConnector.emit(canDebug)
    }

    public private (set) lazy var breakedConnector: Godot.SignalConnector<Bool> = {
        .init(self, "breaked")
    }()

    public func continued() {
        continuedConnector.emit()
    }

    public private (set) lazy var continuedConnector: Godot.SignalConnector
    <> = {
        .init(self, "continued")
    }()


    private static var __method_binding_send_message: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "send_message").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 85656714)!
        }
        }
    }()
    public func sendMessage<Value: VariantStorable>(_ message: Godot.GodotString, data: Godot.GodotArray<Value> = []) {
        message.withGodotUnsafeRawPointer { __ptr_message in
        data.withGodotUnsafeRawPointer { __ptr_data in
        withUnsafeArgumentPackPointer(__ptr_message, __ptr_data) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_send_message,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_toggle_profiler: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "toggle_profiler").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1198443697)!
        }
        }
    }()
    public func toggleProfiler<Value: VariantStorable>(_ profiler: Godot.GodotString, enable: Bool, data: Godot.GodotArray<Value> = []) {
        profiler.withGodotUnsafeRawPointer { __ptr_profiler in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        data.withGodotUnsafeRawPointer { __ptr_data in
        withUnsafeArgumentPackPointer(__ptr_profiler, __ptr_enable, __ptr_data) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_toggle_profiler,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_is_breaked: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_breaked").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()
    public func isBreaked() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_breaked,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_is_debuggable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_debuggable").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()
    public func isDebuggable() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_debuggable,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_is_active: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_active").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()
    public func isActive() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_active,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_add_session_tab: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_session_tab").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1496901182)!
        }
        }
    }()
    public func addSessionTab(control: Godot.Control?) {
        control.withGodotUnsafeRawPointer { __ptr_control in
        withUnsafePointer(to: __ptr_control) { _ptr___ptr_control in
        withUnsafeArgumentPackPointer(_ptr___ptr_control) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_session_tab,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_remove_session_tab: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_session_tab").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1496901182)!
        }
        }
    }()
    public func removeSessionTab(control: Godot.Control?) {
        control.withGodotUnsafeRawPointer { __ptr_control in
        withUnsafePointer(to: __ptr_control) { _ptr___ptr_control in
        withUnsafeArgumentPackPointer(_ptr___ptr_control) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_remove_session_tab,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
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