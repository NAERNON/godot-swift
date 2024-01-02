//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class SceneTree: MainLoop {
    public enum GroupCallFlags: UInt32, GodotEnum {
        case `default` = 0
        case reverse = 1
        case deferred = 2
        case unique = 4
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Default", 0),
            ("Reverse", 1),
            ("Deferred", 2),
            ("Unique", 4),]
        }
    }

    public func treeChanged() {
        _ = treeChangedSignal.emit()
    }
    public lazy var treeChangedSignal: Godot.EmptySignalEmitter = {
        .init(object: self, signalName: "tree_changed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.EmptySignalReceiver>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call()
        } freeFunc: { callablePtr in
            Unmanaged<Godot.EmptySignalReceiver>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.EmptySignalReceiver>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func treeProcessModeChanged() {
        _ = treeProcessModeChangedSignal.emit()
    }
    public lazy var treeProcessModeChangedSignal: Godot.EmptySignalEmitter = {
        .init(object: self, signalName: "tree_process_mode_changed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.EmptySignalReceiver>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call()
        } freeFunc: { callablePtr in
            Unmanaged<Godot.EmptySignalReceiver>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.EmptySignalReceiver>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct NodeAddedSignalInput: Godot.SignalInput {
        public let node: Godot.Node?
        fileprivate init(node: Godot.Node?) {
            self.node = node
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, node)
        }
    }
    public func nodeAdded(node: Godot.Node?) {
        _ = nodeAddedSignal.emit(.init(node: node))
    }
    public lazy var nodeAddedSignal: Godot.SignalEmitter<NodeAddedSignalInput> = {
        .init(object: self, signalName: "node_added") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<NodeAddedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(node: Godot.Node?.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<NodeAddedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<NodeAddedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct NodeRemovedSignalInput: Godot.SignalInput {
        public let node: Godot.Node?
        fileprivate init(node: Godot.Node?) {
            self.node = node
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, node)
        }
    }
    public func nodeRemoved(node: Godot.Node?) {
        _ = nodeRemovedSignal.emit(.init(node: node))
    }
    public lazy var nodeRemovedSignal: Godot.SignalEmitter<NodeRemovedSignalInput> = {
        .init(object: self, signalName: "node_removed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<NodeRemovedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(node: Godot.Node?.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<NodeRemovedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<NodeRemovedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct NodeRenamedSignalInput: Godot.SignalInput {
        public let node: Godot.Node?
        fileprivate init(node: Godot.Node?) {
            self.node = node
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, node)
        }
    }
    public func nodeRenamed(node: Godot.Node?) {
        _ = nodeRenamedSignal.emit(.init(node: node))
    }
    public lazy var nodeRenamedSignal: Godot.SignalEmitter<NodeRenamedSignalInput> = {
        .init(object: self, signalName: "node_renamed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<NodeRenamedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(node: Godot.Node?.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<NodeRenamedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<NodeRenamedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct NodeConfigurationWarningChangedSignalInput: Godot.SignalInput {
        public let node: Godot.Node?
        fileprivate init(node: Godot.Node?) {
            self.node = node
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, node)
        }
    }
    public func nodeConfigurationWarningChanged(node: Godot.Node?) {
        _ = nodeConfigurationWarningChangedSignal.emit(.init(node: node))
    }
    public lazy var nodeConfigurationWarningChangedSignal: Godot.SignalEmitter<NodeConfigurationWarningChangedSignalInput> = {
        .init(object: self, signalName: "node_configuration_warning_changed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<NodeConfigurationWarningChangedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(node: Godot.Node?.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<NodeConfigurationWarningChangedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<NodeConfigurationWarningChangedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func processFrame() {
        _ = processFrameSignal.emit()
    }
    public lazy var processFrameSignal: Godot.EmptySignalEmitter = {
        .init(object: self, signalName: "process_frame") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.EmptySignalReceiver>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call()
        } freeFunc: { callablePtr in
            Unmanaged<Godot.EmptySignalReceiver>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.EmptySignalReceiver>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func physicsFrame() {
        _ = physicsFrameSignal.emit()
    }
    public lazy var physicsFrameSignal: Godot.EmptySignalEmitter = {
        .init(object: self, signalName: "physics_frame") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.EmptySignalReceiver>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call()
        } freeFunc: { callablePtr in
            Unmanaged<Godot.EmptySignalReceiver>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.EmptySignalReceiver>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    private static var __method_binding_get_root: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_root").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1757182445)!
        }
        }
    }()
    private func __getRoot() -> Godot.Window? {
        Godot.Window?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_root,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_has_group: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_group").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2619796661)!
        }
        }
    }()
    public func hasGroup(name: Godot.GodotStringName) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_group,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_is_auto_accept_quit: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_auto_accept_quit").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isAutoAcceptQuit() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_auto_accept_quit,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_auto_accept_quit: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_auto_accept_quit").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setAutoAcceptQuit(enabled: Bool) {
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_auto_accept_quit,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_quit_on_go_back: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_quit_on_go_back").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isQuitOnGoBack() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_quit_on_go_back,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_quit_on_go_back: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_quit_on_go_back").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setQuitOnGoBack(enabled: Bool) {
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_quit_on_go_back,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_debug_collisions_hint: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_debug_collisions_hint").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setDebugCollisionsHint(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_debug_collisions_hint,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_debugging_collisions_hint: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_debugging_collisions_hint").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isDebuggingCollisionsHint() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_debugging_collisions_hint,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_debug_paths_hint: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_debug_paths_hint").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setDebugPathsHint(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_debug_paths_hint,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_debugging_paths_hint: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_debugging_paths_hint").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isDebuggingPathsHint() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_debugging_paths_hint,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_debug_navigation_hint: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_debug_navigation_hint").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setDebugNavigationHint(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_debug_navigation_hint,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_debugging_navigation_hint: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_debugging_navigation_hint").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isDebuggingNavigationHint() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_debugging_navigation_hint,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_edited_scene_root: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_edited_scene_root").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1078189570)!
        }
        }
    }()
    private func __setEditedSceneRoot(scene: Godot.Node?) {
        scene.withGodotUnsafeRawPointer { __ptr_scene in
        withUnsafePointer(to: __ptr_scene) { _ptr___ptr_scene in
        withUnsafeArgumentPackPointer(_ptr___ptr_scene) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_edited_scene_root,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_edited_scene_root: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_edited_scene_root").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3160264692)!
        }
        }
    }()
    private func __getEditedSceneRoot() -> Godot.Node? {
        Godot.Node?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_edited_scene_root,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_pause: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_pause").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setPause(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_pause,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_paused: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_paused").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isPaused() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_paused,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_create_timer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_timer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2709170273)!
        }
        }
    }()
    public func createTimer(timeSec: Double, processAlways: Bool = true, processInPhysics: Bool = false, ignoreTimeScale: Bool = false) -> Godot.SceneTreeTimer? {
        Godot.SceneTreeTimer?.fromMutatingGodotUnsafePointer { __temporary in
        timeSec.withGodotUnsafeRawPointer { __ptr_timeSec in
        processAlways.withGodotUnsafeRawPointer { __ptr_processAlways in
        processInPhysics.withGodotUnsafeRawPointer { __ptr_processInPhysics in
        ignoreTimeScale.withGodotUnsafeRawPointer { __ptr_ignoreTimeScale in
        withUnsafeArgumentPackPointer(__ptr_timeSec, __ptr_processAlways, __ptr_processInPhysics, __ptr_ignoreTimeScale) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_create_timer,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}
    }

    private static var __method_binding_create_tween: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_tween").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3426978995)!
        }
        }
    }()
    public func createTween() -> Godot.Tween? {
        Godot.Tween?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_create_tween,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_processed_tweens: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_processed_tweens").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()
    public func processedTweens() -> Godot.GodotArray<Godot.Tween?> {
        Godot.GodotArray<Godot.Tween?>.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_processed_tweens,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_node_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_node_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func nodeCount() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_node_count,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_frame: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_frame").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func frame() -> Int64 {
        Int64.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_frame,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_quit: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "quit").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1995695955)!
        }
        }
    }()
    public func quit(exitCode: Int32 = 0) {
        exitCode.withGodotUnsafeRawPointer { __ptr_exitCode in
        withUnsafeArgumentPackPointer(__ptr_exitCode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_quit,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_queue_delete: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "queue_delete").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3975164845)!
        }
        }
    }()
    public func queueDelete(obj: Godot.Object?) {
        obj.withGodotUnsafeRawPointer { __ptr_obj in
        withUnsafePointer(to: __ptr_obj) { _ptr___ptr_obj in
        withUnsafeArgumentPackPointer(_ptr___ptr_obj) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_queue_delete,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_call_group_flags: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "call_group_flags").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1527739229)!
        }
        }
    }()
    public func callGroupFlags<each VariantRest : VariantStorableIn>(_ flags: Int, group: Godot.GodotStringName, method: Godot.GodotStringName, _ rest: repeat each VariantRest) {
        Godot.Variant.withStorageUnsafeRawPointer(to: flags) { __ptr_flags in
        Godot.Variant.withStorageUnsafeRawPointer(to: group) { __ptr_group in
        Godot.Variant.withStorageUnsafeRawPointer(to: method) { __ptr_method in
        withUnsafeArgumentPackPointer(__ptr_flags, __ptr_group, __ptr_method, varargs: repeat each rest) { packCount, __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindCall(
            Self.__method_binding_call_group_flags,
            __ptr_self,
            __accessPtr,
            Int64(packCount),
            nil,
            nil
        )}}}}}
    }
    public func callGroupFlags(_ flags: Int, group: Godot.GodotStringName, method: Godot.GodotStringName) {
        Godot.Variant.withStorageUnsafeRawPointer(to: flags) { __ptr_flags in
        Godot.Variant.withStorageUnsafeRawPointer(to: group) { __ptr_group in
        Godot.Variant.withStorageUnsafeRawPointer(to: method) { __ptr_method in
        withUnsafeArgumentPackPointer(__ptr_flags, __ptr_group, __ptr_method) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindCall(
            Self.__method_binding_call_group_flags,
            __ptr_self,
            __accessPtr,
            3,
            nil,
            nil
        )}}}}}
    }

    private static var __method_binding_notify_group_flags: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "notify_group_flags").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1245489420)!
        }
        }
    }()
    public func notifyGroupFlags(callFlags: UInt32, group: Godot.GodotStringName, notification: Int32) {
        callFlags.withGodotUnsafeRawPointer { __ptr_callFlags in
        group.withGodotUnsafeRawPointer { __ptr_group in
        notification.withGodotUnsafeRawPointer { __ptr_notification in
        withUnsafeArgumentPackPointer(__ptr_callFlags, __ptr_group, __ptr_notification) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_notify_group_flags,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_set_group_flags: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_group_flags").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3497599527)!
        }
        }
    }()
    public func setGroupFlags<Value: VariantStorableIn>(callFlags: UInt32, group: Godot.GodotStringName, property: Godot.GodotString, value: Value) {
        callFlags.withGodotUnsafeRawPointer { __ptr_callFlags in
        group.withGodotUnsafeRawPointer { __ptr_group in
        property.withGodotUnsafeRawPointer { __ptr_property in
        Godot.Variant.withStorageUnsafeRawPointer(to: value) { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_callFlags, __ptr_group, __ptr_property, __ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_group_flags,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_call_group: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "call_group").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1257962832)!
        }
        }
    }()
    public func callGroup<each VariantRest : VariantStorableIn>(_ group: Godot.GodotStringName, method: Godot.GodotStringName, _ rest: repeat each VariantRest) {
        Godot.Variant.withStorageUnsafeRawPointer(to: group) { __ptr_group in
        Godot.Variant.withStorageUnsafeRawPointer(to: method) { __ptr_method in
        withUnsafeArgumentPackPointer(__ptr_group, __ptr_method, varargs: repeat each rest) { packCount, __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindCall(
            Self.__method_binding_call_group,
            __ptr_self,
            __accessPtr,
            Int64(packCount),
            nil,
            nil
        )}}}}
    }
    public func callGroup(_ group: Godot.GodotStringName, method: Godot.GodotStringName) {
        Godot.Variant.withStorageUnsafeRawPointer(to: group) { __ptr_group in
        Godot.Variant.withStorageUnsafeRawPointer(to: method) { __ptr_method in
        withUnsafeArgumentPackPointer(__ptr_group, __ptr_method) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindCall(
            Self.__method_binding_call_group,
            __ptr_self,
            __accessPtr,
            2,
            nil,
            nil
        )}}}}
    }

    private static var __method_binding_notify_group: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "notify_group").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2415702435)!
        }
        }
    }()
    public func notifyGroup(_ group: Godot.GodotStringName, notification: Int32) {
        group.withGodotUnsafeRawPointer { __ptr_group in
        notification.withGodotUnsafeRawPointer { __ptr_notification in
        withUnsafeArgumentPackPointer(__ptr_group, __ptr_notification) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_notify_group,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_set_group: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_group").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1279312029)!
        }
        }
    }()
    public func setGroup<Value: VariantStorableIn>(_ group: Godot.GodotStringName, property: Godot.GodotString, value: Value) {
        group.withGodotUnsafeRawPointer { __ptr_group in
        property.withGodotUnsafeRawPointer { __ptr_property in
        Godot.Variant.withStorageUnsafeRawPointer(to: value) { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_group, __ptr_property, __ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_group,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_get_nodes_in_group: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_nodes_in_group").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 689397652)!
        }
        }
    }()
    public func nodesInGroup(_ group: Godot.GodotStringName) -> Godot.GodotArray<Godot.Node?> {
        Godot.GodotArray<Godot.Node?>.fromMutatingGodotUnsafePointer { __temporary in
        group.withGodotUnsafeRawPointer { __ptr_group in
        withUnsafeArgumentPackPointer(__ptr_group) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_nodes_in_group,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_first_node_in_group: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_first_node_in_group").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4071044623)!
        }
        }
    }()
    public func firstNodeInGroup(_ group: Godot.GodotStringName) -> Godot.Node? {
        Godot.Node?.fromMutatingGodotUnsafePointer { __temporary in
        group.withGodotUnsafeRawPointer { __ptr_group in
        withUnsafeArgumentPackPointer(__ptr_group) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_first_node_in_group,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_current_scene: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_current_scene").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1078189570)!
        }
        }
    }()
    private func __setCurrentScene(childNode: Godot.Node?) {
        childNode.withGodotUnsafeRawPointer { __ptr_childNode in
        withUnsafePointer(to: __ptr_childNode) { _ptr___ptr_childNode in
        withUnsafeArgumentPackPointer(_ptr___ptr_childNode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_current_scene,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_current_scene: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_current_scene").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3160264692)!
        }
        }
    }()
    private func __getCurrentScene() -> Godot.Node? {
        Godot.Node?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_current_scene,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_change_scene_to_file: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "change_scene_to_file").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 166001499)!
        }
        }
    }()
    public func changeSceneToFile(path: Godot.GodotString) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        path.withGodotUnsafeRawPointer { __ptr_path in
        withUnsafeArgumentPackPointer(__ptr_path) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_change_scene_to_file,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_change_scene_to_packed: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "change_scene_to_packed").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 107349098)!
        }
        }
    }()
    public func changeSceneToPacked(packedScene: Godot.PackedScene?) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        packedScene.withGodotUnsafeRawPointer { __ptr_packedScene in
        withUnsafePointer(to: __ptr_packedScene) { _ptr___ptr_packedScene in
        withUnsafeArgumentPackPointer(_ptr___ptr_packedScene) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_change_scene_to_packed,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_reload_current_scene: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "reload_current_scene").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 166280745)!
        }
        }
    }()
    public func reloadCurrentScene() -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_reload_current_scene,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_unload_current_scene: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "unload_current_scene").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func unloadCurrentScene() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_unload_current_scene,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_set_multiplayer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_multiplayer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2385607013)!
        }
        }
    }()
    public func setMultiplayer(_ multiplayer: Godot.MultiplayerAPI?, rootPath: Godot.NodePath = NodePath(string: "")) {
        multiplayer.withGodotUnsafeRawPointer { __ptr_multiplayer in
        withUnsafePointer(to: __ptr_multiplayer) { _ptr___ptr_multiplayer in
        rootPath.withGodotUnsafeRawPointer { __ptr_rootPath in
        withUnsafeArgumentPackPointer(_ptr___ptr_multiplayer, __ptr_rootPath) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_multiplayer,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_get_multiplayer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_multiplayer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3453401404)!
        }
        }
    }()
    public func multiplayer(forPath path: Godot.NodePath = NodePath(string: "")) -> Godot.MultiplayerAPI? {
        Godot.MultiplayerAPI?.fromMutatingGodotUnsafePointer { __temporary in
        path.withGodotUnsafeRawPointer { __ptr_path in
        withUnsafeArgumentPackPointer(__ptr_path) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_multiplayer,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_multiplayer_poll_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_multiplayer_poll_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setMultiplayerPollEnabled(_ enabled: Bool) {
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_multiplayer_poll_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_multiplayer_poll_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_multiplayer_poll_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isMultiplayerPollEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_multiplayer_poll_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var isAutoAcceptQuit: Bool {
        get {
            __isAutoAcceptQuit()
        }
        set {
            __setAutoAcceptQuit(
                enabled: newValue
            )
        }
    }

    public var isQuitOnGoBack: Bool {
        get {
            __isQuitOnGoBack()
        }
        set {
            __setQuitOnGoBack(
                enabled: newValue
            )
        }
    }

    public var isDebuggingCollisionsHint: Bool {
        get {
            __isDebuggingCollisionsHint()
        }
        set {
            __setDebugCollisionsHint(
                enable: newValue
            )
        }
    }

    public var isDebuggingPathsHint: Bool {
        get {
            __isDebuggingPathsHint()
        }
        set {
            __setDebugPathsHint(
                enable: newValue
            )
        }
    }

    public var isDebuggingNavigationHint: Bool {
        get {
            __isDebuggingNavigationHint()
        }
        set {
            __setDebugNavigationHint(
                enable: newValue
            )
        }
    }

    public var isPaused: Bool {
        get {
            __isPaused()
        }
        set {
            __setPause(
                enable: newValue
            )
        }
    }

    public var editedSceneRoot: Godot.Node? {
        get {
            __getEditedSceneRoot()
        }
        set {
            __setEditedSceneRoot(
                scene: newValue
            )
        }
    }

    public var currentScene: Godot.Node? {
        get {
            __getCurrentScene()
        }
        set {
            __setCurrentScene(
                childNode: newValue
            )
        }
    }

    public var root: Godot.Window? {
        get {
            __getRoot()
        }
    }

    public var isMultiplayerPollEnabled: Bool {
        get {
            __isMultiplayerPollEnabled()
        }
        set {
            __setMultiplayerPollEnabled(
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