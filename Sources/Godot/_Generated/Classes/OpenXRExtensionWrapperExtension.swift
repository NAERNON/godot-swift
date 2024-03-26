//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotClass
open class OpenXRExtensionWrapperExtension: Object {
    open func _getRequestedExtensions() -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary()
    }

    open func _setSystemPropertiesAndGetNextPointer(
        _ nextPointer: UnsafeMutableRawPointer
    ) -> UInt64 {
        UInt64()
    }

    open func _setInstanceCreateInfoAndGetNextPointer(
        _ nextPointer: UnsafeMutableRawPointer
    ) -> UInt64 {
        UInt64()
    }

    open func _setSessionCreateAndGetNextPointer(
        _ nextPointer: UnsafeMutableRawPointer
    ) -> UInt64 {
        UInt64()
    }

    open func _setSwapchainCreateInfoAndGetNextPointer(
        _ nextPointer: UnsafeMutableRawPointer
    ) -> UInt64 {
        UInt64()
    }

    open func _onRegisterMetadata() {
    }

    open func _onBeforeInstanceCreated() {
    }

    open func _onInstanceCreated(
        instance: UInt64
    ) {
    }

    open func _onInstanceDestroyed() {
    }

    open func _onSessionCreated(
        session: UInt64
    ) {
    }

    open func _onProcess() {
    }

    open func _onPreRender() {
    }

    open func _onSessionDestroyed() {
    }

    open func _onStateIdle() {
    }

    open func _onStateReady() {
    }

    open func _onStateSynchronized() {
    }

    open func _onStateVisible() {
    }

    open func _onStateFocused() {
    }

    open func _onStateStopping() {
    }

    open func _onStateLossPending() {
    }

    open func _onStateExiting() {
    }

    open func _onEventPolled(
        event: UnsafeRawPointer
    ) -> Bool {
        Bool()
    }

    internal static var __method_binding_get_openxr_api: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_openxr_api").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1637791613)!
        }
        }
    }()

    public func openxrApi() -> Godot.OpenXRAPIExtension? {
        Godot.OpenXRAPIExtension?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_openxr_api,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_register_extension_wrapper: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "register_extension_wrapper").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func registerExtensionWrapper() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_register_extension_wrapper,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil

    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _get_requested_extensions_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<OpenXRExtensionWrapperExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getRequestedExtensions()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _set_system_properties_and_get_next_pointer_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<OpenXRExtensionWrapperExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._setSystemPropertiesAndGetNextPointer(
            UnsafeMutableRawPointer.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _set_instance_create_info_and_get_next_pointer_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<OpenXRExtensionWrapperExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._setInstanceCreateInfoAndGetNextPointer(
            UnsafeMutableRawPointer.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _set_session_create_and_get_next_pointer_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<OpenXRExtensionWrapperExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._setSessionCreateAndGetNextPointer(
            UnsafeMutableRawPointer.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _set_swapchain_create_info_and_get_next_pointer_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<OpenXRExtensionWrapperExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._setSwapchainCreateInfoAndGetNextPointer(
            UnsafeMutableRawPointer.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _on_register_metadata_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<OpenXRExtensionWrapperExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._onRegisterMetadata()}
        let _on_before_instance_created_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<OpenXRExtensionWrapperExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._onBeforeInstanceCreated()}
        let _on_instance_created_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<OpenXRExtensionWrapperExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._onInstanceCreated(
            instance: UInt64.fromGodotUnsafePointer(args[0]!)
        )}
        let _on_instance_destroyed_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<OpenXRExtensionWrapperExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._onInstanceDestroyed()}
        let _on_session_created_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<OpenXRExtensionWrapperExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._onSessionCreated(
            session: UInt64.fromGodotUnsafePointer(args[0]!)
        )}
        let _on_process_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<OpenXRExtensionWrapperExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._onProcess()}
        let _on_pre_render_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<OpenXRExtensionWrapperExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._onPreRender()}
        let _on_session_destroyed_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<OpenXRExtensionWrapperExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._onSessionDestroyed()}
        let _on_state_idle_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<OpenXRExtensionWrapperExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._onStateIdle()}
        let _on_state_ready_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<OpenXRExtensionWrapperExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._onStateReady()}
        let _on_state_synchronized_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<OpenXRExtensionWrapperExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._onStateSynchronized()}
        let _on_state_visible_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<OpenXRExtensionWrapperExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._onStateVisible()}
        let _on_state_focused_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<OpenXRExtensionWrapperExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._onStateFocused()}
        let _on_state_stopping_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<OpenXRExtensionWrapperExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._onStateStopping()}
        let _on_state_loss_pending_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<OpenXRExtensionWrapperExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._onStateLossPending()}
        let _on_state_exiting_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<OpenXRExtensionWrapperExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._onStateExiting()}
        let _on_event_polled_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<OpenXRExtensionWrapperExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._onEventPolled(
            event: UnsafeRawPointer.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        _virtualFunctions = [
            "_getRequestedExtensions" : ("_get_requested_extensions", _get_requested_extensions_call),
            "_setSystemPropertiesAndGetNextPointer" : ("_set_system_properties_and_get_next_pointer", _set_system_properties_and_get_next_pointer_call),
            "_setInstanceCreateInfoAndGetNextPointer" : ("_set_instance_create_info_and_get_next_pointer", _set_instance_create_info_and_get_next_pointer_call),
            "_setSessionCreateAndGetNextPointer" : ("_set_session_create_and_get_next_pointer", _set_session_create_and_get_next_pointer_call),
            "_setSwapchainCreateInfoAndGetNextPointer" : ("_set_swapchain_create_info_and_get_next_pointer", _set_swapchain_create_info_and_get_next_pointer_call),
            "_onRegisterMetadata" : ("_on_register_metadata", _on_register_metadata_call),
            "_onBeforeInstanceCreated" : ("_on_before_instance_created", _on_before_instance_created_call),
            "_onInstanceCreated" : ("_on_instance_created", _on_instance_created_call),
            "_onInstanceDestroyed" : ("_on_instance_destroyed", _on_instance_destroyed_call),
            "_onSessionCreated" : ("_on_session_created", _on_session_created_call),
            "_onProcess" : ("_on_process", _on_process_call),
            "_onPreRender" : ("_on_pre_render", _on_pre_render_call),
            "_onSessionDestroyed" : ("_on_session_destroyed", _on_session_destroyed_call),
            "_onStateIdle" : ("_on_state_idle", _on_state_idle_call),
            "_onStateReady" : ("_on_state_ready", _on_state_ready_call),
            "_onStateSynchronized" : ("_on_state_synchronized", _on_state_synchronized_call),
            "_onStateVisible" : ("_on_state_visible", _on_state_visible_call),
            "_onStateFocused" : ("_on_state_focused", _on_state_focused_call),
            "_onStateStopping" : ("_on_state_stopping", _on_state_stopping_call),
            "_onStateLossPending" : ("_on_state_loss_pending", _on_state_loss_pending_call),
            "_onStateExiting" : ("_on_state_exiting", _on_state_exiting_call),
            "_onEventPolled" : ("_on_event_polled", _on_event_polled_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }
}