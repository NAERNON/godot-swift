//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class AnimationNode: Resource {
    public enum FilterAction: UInt32, GodotEnum {
        case ignore = 0
        case pass = 1
        case stop = 2
        case blend = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Ignore", 0),
            ("Pass", 1),
            ("Stop", 2),
            ("Blend", 3),]
        }
    }

    @Emitter(signal: "tree_changed")
    public struct TreeChanged {
    }

    @Emitter(signal: "animation_node_renamed", args: ("objectId", Int), ("oldName", Godot.GodotString), ("newName", Godot.GodotString))
    public struct AnimationNodeRenamed {
    }

    @Emitter(signal: "animation_node_removed", args: ("objectId", Int), ("name", Godot.GodotString))
    public struct AnimationNodeRemoved {
    }

    open func _getChildNodes() -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary()
    }

    open func _getParameterList() -> Godot.AnyGodotArray {
        Godot.AnyGodotArray()
    }

    open func _getChildByName(_ name: Godot.GodotStringName) -> Godot.AnimationNode? {
        nil
    }

    open func _getParameterDefaultValue(parameter: Godot.GodotStringName) -> Godot.Variant {
        Variant()
    }

    open func _isParameterReadOnly(parameter: Godot.GodotStringName) -> Bool {
        Bool()
    }

    open func _process(time: Double, seek: Bool, isExternalSeeking: Bool, testOnly: Bool) -> Double {
        Double()
    }

    open func _getCaption() -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _hasFilter() -> Bool {
        Bool()
    }

    private static var __method_binding_add_input: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_input").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2323990056)!
        }
        }
    }()
    public func addInput(name: Godot.GodotString) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_input,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_remove_input: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_input").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func removeInput(index: Int32) {
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_remove_input,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_input_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_input_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 215573526)!
        }
        }
    }()
    public func setInputName(input: Int32, name: Godot.GodotString) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        input.withGodotUnsafeRawPointer { __ptr_input in
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_input, __ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_input_name,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_get_input_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_input_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 844755477)!
        }
        }
    }()
    public func inputName(input: Int32) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        input.withGodotUnsafeRawPointer { __ptr_input in
        withUnsafeArgumentPackPointer(__ptr_input) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_input_name,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_input_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_input_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func inputCount() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_input_count,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_find_input: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "find_input").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1321353865)!
        }
        }
    }()
    public func findInput(name: Godot.GodotString) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_find_input,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_filter_path: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_filter_path").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3868023870)!
        }
        }
    }()
    public func setFilterPath(_ path: Godot.NodePath, enable: Bool) {
        path.withGodotUnsafeRawPointer { __ptr_path in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_path, __ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_filter_path,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_is_path_filtered: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_path_filtered").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 861721659)!
        }
        }
    }()
    public func isPathFiltered(path: Godot.NodePath) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        path.withGodotUnsafeRawPointer { __ptr_path in
        withUnsafeArgumentPackPointer(__ptr_path) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_path_filtered,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_filter_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_filter_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setFilterEnabled(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_filter_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_filter_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_filter_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isFilterEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_filter_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_blend_animation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "blend_animation").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 11797022)!
        }
        }
    }()
    public func blendAnimation(_ animation: Godot.GodotStringName, time: Double, delta: Double, seeked: Bool, isExternalSeeking: Bool, blend: Double, loopedFlag: Godot.Animation.LoopedFlag = Animation.LoopedFlag(rawValue: 0)!) {
        animation.withGodotUnsafeRawPointer { __ptr_animation in
        time.withGodotUnsafeRawPointer { __ptr_time in
        delta.withGodotUnsafeRawPointer { __ptr_delta in
        seeked.withGodotUnsafeRawPointer { __ptr_seeked in
        isExternalSeeking.withGodotUnsafeRawPointer { __ptr_isExternalSeeking in
        blend.withGodotUnsafeRawPointer { __ptr_blend in
        loopedFlag.withGodotUnsafeRawPointer { __ptr_loopedFlag in
        withUnsafeArgumentPackPointer(__ptr_animation, __ptr_time, __ptr_delta, __ptr_seeked, __ptr_isExternalSeeking, __ptr_blend, __ptr_loopedFlag) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_blend_animation,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}}
    }

    private static var __method_binding_blend_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "blend_node").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 263389446)!
        }
        }
    }()
    public func blendNode(name: Godot.GodotStringName, node: Godot.AnimationNode?, time: Double, seek: Bool, isExternalSeeking: Bool, blend: Double, filter: Godot.AnimationNode.FilterAction = AnimationNode.FilterAction(rawValue: 0)!, sync: Bool = true, testOnly: Bool = false) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        node.withGodotUnsafeRawPointer { __ptr_node in
        withUnsafePointer(to: __ptr_node) { _ptr___ptr_node in
        time.withGodotUnsafeRawPointer { __ptr_time in
        seek.withGodotUnsafeRawPointer { __ptr_seek in
        isExternalSeeking.withGodotUnsafeRawPointer { __ptr_isExternalSeeking in
        blend.withGodotUnsafeRawPointer { __ptr_blend in
        filter.withGodotUnsafeRawPointer { __ptr_filter in
        sync.withGodotUnsafeRawPointer { __ptr_sync in
        testOnly.withGodotUnsafeRawPointer { __ptr_testOnly in
        withUnsafeArgumentPackPointer(__ptr_name, _ptr___ptr_node, __ptr_time, __ptr_seek, __ptr_isExternalSeeking, __ptr_blend, __ptr_filter, __ptr_sync, __ptr_testOnly) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_blend_node,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}}}}}}
    }

    private static var __method_binding_blend_input: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "blend_input").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2709059328)!
        }
        }
    }()
    public func blendInput(inputIndex: Int32, time: Double, seek: Bool, isExternalSeeking: Bool, blend: Double, filter: Godot.AnimationNode.FilterAction = AnimationNode.FilterAction(rawValue: 0)!, sync: Bool = true, testOnly: Bool = false) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        inputIndex.withGodotUnsafeRawPointer { __ptr_inputIndex in
        time.withGodotUnsafeRawPointer { __ptr_time in
        seek.withGodotUnsafeRawPointer { __ptr_seek in
        isExternalSeeking.withGodotUnsafeRawPointer { __ptr_isExternalSeeking in
        blend.withGodotUnsafeRawPointer { __ptr_blend in
        filter.withGodotUnsafeRawPointer { __ptr_filter in
        sync.withGodotUnsafeRawPointer { __ptr_sync in
        testOnly.withGodotUnsafeRawPointer { __ptr_testOnly in
        withUnsafeArgumentPackPointer(__ptr_inputIndex, __ptr_time, __ptr_seek, __ptr_isExternalSeeking, __ptr_blend, __ptr_filter, __ptr_sync, __ptr_testOnly) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_blend_input,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}}}}
    }

    private static var __method_binding_set_parameter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_parameter").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3776071444)!
        }
        }
    }()
    public func setParameter<Value: VariantStorableIn>(name: Godot.GodotStringName, value: Value) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        Godot.Variant.withStorageUnsafeRawPointer(to: value) { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_parameter,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_parameter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_parameter").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2760726917)!
        }
        }
    }()
    public func parameter(name: Godot.GodotStringName) -> Godot.Variant {
        Godot.Variant.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_parameter,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    public var isFilterEnabled: Bool {
        get {
            __isFilterEnabled()
        }
        set {
            __setFilterEnabled(
                enable: newValue
            )
        }
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _get_child_nodes_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<AnimationNode> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getChildNodes()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_parameter_list_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<AnimationNode> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getParameterList()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_child_by_name_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<AnimationNode> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getChildByName(
            Godot.GodotStringName.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_parameter_default_value_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<AnimationNode> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getParameterDefaultValue(
            parameter: Godot.GodotStringName.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _is_parameter_read_only_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<AnimationNode> .fromOpaque(instancePtr).takeUnretainedValue()
        ._isParameterReadOnly(
            parameter: Godot.GodotStringName.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _process_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<AnimationNode> .fromOpaque(instancePtr).takeUnretainedValue()
        ._process(
            time: Double.fromGodotUnsafePointer(args[0]!),
            seek: Bool.fromGodotUnsafePointer(args[1]!),
            isExternalSeeking: Bool.fromGodotUnsafePointer(args[2]!),
            testOnly: Bool.fromGodotUnsafePointer(args[3]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_caption_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<AnimationNode> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getCaption()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _has_filter_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<AnimationNode> .fromOpaque(instancePtr).takeUnretainedValue()
        ._hasFilter()
        .copyToGodot(unsafePointer: returnPtr!)}
        _virtualFunctions = [
            "_getChildNodes" : ("_get_child_nodes", _get_child_nodes_call),
            "_getParameterList" : ("_get_parameter_list", _get_parameter_list_call),
            "_getChildByName" : ("_get_child_by_name", _get_child_by_name_call),
            "_getParameterDefaultValue" : ("_get_parameter_default_value", _get_parameter_default_value_call),
            "_isParameterReadOnly" : ("_is_parameter_read_only", _is_parameter_read_only_call),
            "_process" : ("_process", _process_call),
            "_getCaption" : ("_get_caption", _get_caption_call),
            "_hasFilter" : ("_has_filter", _has_filter_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }