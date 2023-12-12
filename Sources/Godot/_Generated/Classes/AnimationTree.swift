//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class AnimationTree: Node {
    public enum AnimationProcessCallback: UInt32, GodotEnum {
        case physics = 0
        case idle = 1
        case manual = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Physics", 0),
            ("Idle", 1),
            ("Manual", 2),]
        }
    }

    @Emitter(signal: "animation_player_changed")
    public struct AnimationPlayerChanged {
    }

    @Emitter(signal: "animation_started", args: ("animName", Godot.GodotStringName))
    public struct AnimationStarted {
    }

    @Emitter(signal: "animation_finished", args: ("animName", Godot.GodotStringName))
    public struct AnimationFinished {
    }

    open func _postProcessKeyValue(animation: Godot.Animation?, track: Int32, value: Godot.Variant, object: Godot.Object?, objectIdx: Int32) -> Godot.Variant {
        Variant()
    }

    private static var __method_binding_set_active: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_active").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setActive(_ active: Bool) {
        active.withGodotUnsafeRawPointer { __ptr_active in
        withUnsafeArgumentPackPointer(__ptr_active) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_active,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_active: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_active").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isActive() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_active,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_tree_root: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tree_root").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 712869711)!
        }
        }
    }()
    private func __setTreeRoot(_ root: Godot.AnimationNode?) {
        root.withGodotUnsafeRawPointer { __ptr_root in
        withUnsafePointer(to: __ptr_root) { _ptr___ptr_root in
        withUnsafeArgumentPackPointer(_ptr___ptr_root) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_tree_root,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_tree_root: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tree_root").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1462070895)!
        }
        }
    }()
    private func __getTreeRoot() -> Godot.AnimationNode? {
        Godot.AnimationNode?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_tree_root,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_process_callback: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_process_callback").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1723352826)!
        }
        }
    }()
    private func __setProcessCallback(mode: Godot.AnimationTree.AnimationProcessCallback) {
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_process_callback,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_process_callback: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_process_callback").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 891317132)!
        }
        }
    }()
    private func __getProcessCallback() -> Godot.AnimationTree.AnimationProcessCallback {
        Godot.AnimationTree.AnimationProcessCallback.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_process_callback,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_animation_player: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_animation_player").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1348162250)!
        }
        }
    }()
    private func __setAnimationPlayer(root: Godot.NodePath) {
        root.withGodotUnsafeRawPointer { __ptr_root in
        withUnsafeArgumentPackPointer(__ptr_root) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_animation_player,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_animation_player: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_animation_player").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4075236667)!
        }
        }
    }()
    private func __getAnimationPlayer() -> Godot.NodePath {
        Godot.NodePath.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_animation_player,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_advance_expression_base_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_advance_expression_base_node").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1348162250)!
        }
        }
    }()
    private func __setAdvanceExpressionBaseNode(_ node: Godot.NodePath) {
        node.withGodotUnsafeRawPointer { __ptr_node in
        withUnsafeArgumentPackPointer(__ptr_node) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_advance_expression_base_node,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_advance_expression_base_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_advance_expression_base_node").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4075236667)!
        }
        }
    }()
    private func __getAdvanceExpressionBaseNode() -> Godot.NodePath {
        Godot.NodePath.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_advance_expression_base_node,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_root_motion_track: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_root_motion_track").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1348162250)!
        }
        }
    }()
    private func __setRootMotionTrack(path: Godot.NodePath) {
        path.withGodotUnsafeRawPointer { __ptr_path in
        withUnsafeArgumentPackPointer(__ptr_path) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_root_motion_track,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_root_motion_track: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_root_motion_track").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4075236667)!
        }
        }
    }()
    private func __getRootMotionTrack() -> Godot.NodePath {
        Godot.NodePath.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_root_motion_track,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_audio_max_polyphony: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_audio_max_polyphony").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setAudioMaxPolyphony(_ maxPolyphony: Int32) {
        maxPolyphony.withGodotUnsafeRawPointer { __ptr_maxPolyphony in
        withUnsafeArgumentPackPointer(__ptr_maxPolyphony) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_audio_max_polyphony,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_audio_max_polyphony: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_audio_max_polyphony").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getAudioMaxPolyphony() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_audio_max_polyphony,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_root_motion_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_root_motion_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    public func rootMotionPosition() -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_root_motion_position,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_root_motion_rotation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_root_motion_rotation").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1222331677)!
        }
        }
    }()
    public func rootMotionRotation() -> Godot.Quaternion {
        Godot.Quaternion.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_root_motion_rotation,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_root_motion_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_root_motion_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    public func rootMotionScale() -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_root_motion_scale,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_root_motion_position_accumulator: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_root_motion_position_accumulator").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    public func rootMotionPositionAccumulator() -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_root_motion_position_accumulator,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_root_motion_rotation_accumulator: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_root_motion_rotation_accumulator").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1222331677)!
        }
        }
    }()
    public func rootMotionRotationAccumulator() -> Godot.Quaternion {
        Godot.Quaternion.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_root_motion_rotation_accumulator,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_root_motion_scale_accumulator: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_root_motion_scale_accumulator").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    public func rootMotionScaleAccumulator() -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_root_motion_scale_accumulator,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_advance: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "advance").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    public func advance(delta: Double) {
        delta.withGodotUnsafeRawPointer { __ptr_delta in
        withUnsafeArgumentPackPointer(__ptr_delta) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_advance,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    public var treeRoot: Godot.AnimationNode? {
        get {
            __getTreeRoot()
        }
        set {
            __setTreeRoot(
                newValue
            )
        }
    }

    public var animationPlayer: Godot.NodePath {
        get {
            __getAnimationPlayer()
        }
        set {
            __setAnimationPlayer(
                root: newValue
            )
        }
    }

    public var advanceExpressionBaseNode: Godot.NodePath {
        get {
            __getAdvanceExpressionBaseNode()
        }
        set {
            __setAdvanceExpressionBaseNode(
                newValue
            )
        }
    }

    public var isActive: Bool {
        get {
            __isActive()
        }
        set {
            __setActive(
                newValue
            )
        }
    }

    public var processCallback: Godot.AnimationTree.AnimationProcessCallback {
        get {
            __getProcessCallback()
        }
        set {
            __setProcessCallback(
                mode: newValue
            )
        }
    }

    public var audioMaxPolyphony: Int32 {
        get {
            __getAudioMaxPolyphony()
        }
        set {
            __setAudioMaxPolyphony(
                newValue
            )
        }
    }

    public var rootMotionTrack: Godot.NodePath {
        get {
            __getRootMotionTrack()
        }
        set {
            __setRootMotionTrack(
                path: newValue
            )
        }
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _post_process_key_value_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<AnimationTree> .fromOpaque(instancePtr).takeUnretainedValue()
        ._postProcessKeyValue(
            animation: Godot.Animation?.fromGodotUnsafePointer(args[0]!),
            track: Int32.fromGodotUnsafePointer(args[1]!),
            value: Godot.Variant.fromGodotUnsafePointer(args[2]!),
            object: Godot.Object?.fromGodotUnsafePointer(args[3]!),
            objectIdx: Int32.fromGodotUnsafePointer(args[4]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        _virtualFunctions = [
            "_postProcessKeyValue" : ("_post_process_key_value", _post_process_key_value_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }