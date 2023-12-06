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

    open func _getChildNodes() -> Godot.GodotDictionary {
        Godot.GodotDictionary()
    }

    open func _getParameterList() -> Godot.GodotArray {
        Godot.GodotArray()
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
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_input").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2323990056)!
        }
        }
    }()
    public func addInput(name: Godot.GodotString) -> Bool {
        var __temporary = Bool()
        name.withUnsafeRawPointer { (__ptr_name) in
            withUnsafeArgumentPackPointer(__ptr_name) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_add_input,
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

    private static var __method_binding_remove_input: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_input").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func removeInput(index: Int32) {
        withUnsafePointer(to: index) { (__ptr_index) in
            withUnsafeArgumentPackPointer(__ptr_index) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_remove_input,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_set_input_name: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_input_name").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 215573526)!
        }
        }
    }()
    public func setInputName(input: Int32, name: Godot.GodotString) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: input) { (__ptr_input) in
            name.withUnsafeRawPointer { (__ptr_name) in
                withUnsafeArgumentPackPointer(__ptr_input, __ptr_name) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_set_input_name,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_input_name: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_input_name").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 844755477)!
        }
        }
    }()
    public func inputName(input: Int32) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        withUnsafePointer(to: input) { (__ptr_input) in
            withUnsafeArgumentPackPointer(__ptr_input) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_input_name,
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

    private static var __method_binding_get_input_count: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_input_count").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func inputCount() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_input_count,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_find_input: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "find_input").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1321353865)!
        }
        }
    }()
    public func findInput(name: Godot.GodotString) -> Int32 {
        var __temporary = Int32()
        name.withUnsafeRawPointer { (__ptr_name) in
            withUnsafeArgumentPackPointer(__ptr_name) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_find_input,
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

    private static var __method_binding_set_filter_path: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_filter_path").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3868023870)!
        }
        }
    }()
    public func setFilterPath(_ path: Godot.NodePath, enable: Bool) {
        path.withUnsafeRawPointer { (__ptr_path) in
            withUnsafePointer(to: enable) { (__ptr_enable) in
                withUnsafeArgumentPackPointer(__ptr_path, __ptr_enable) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_filter_path,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_is_path_filtered: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_path_filtered").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 861721659)!
        }
        }
    }()
    public func isPathFiltered(path: Godot.NodePath) -> Bool {
        var __temporary = Bool()
        path.withUnsafeRawPointer { (__ptr_path) in
            withUnsafeArgumentPackPointer(__ptr_path) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_is_path_filtered,
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

    private static var __method_binding_set_filter_enabled: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_filter_enabled").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setFilterEnabled(enable: Bool) {
        withUnsafePointer(to: enable) { (__ptr_enable) in
            withUnsafeArgumentPackPointer(__ptr_enable) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_filter_enabled,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_is_filter_enabled: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_filter_enabled").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isFilterEnabled() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_filter_enabled,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_blend_animation: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "blend_animation").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 11797022)!
        }
        }
    }()
    public func blendAnimation(_ animation: Godot.GodotStringName, time: Double, delta: Double, seeked: Bool, isExternalSeeking: Bool, blend: Double, loopedFlag: Godot.Animation.LoopedFlag = Animation.LoopedFlag(rawValue: 0)!) {
        animation.withUnsafeRawPointer { (__ptr_animation) in
            withUnsafePointer(to: time) { (__ptr_time) in
                withUnsafePointer(to: delta) { (__ptr_delta) in
                    withUnsafePointer(to: seeked) { (__ptr_seeked) in
                        withUnsafePointer(to: isExternalSeeking) { (__ptr_isExternalSeeking) in
                            withUnsafePointer(to: blend) { (__ptr_blend) in
                                withUnsafePointer(to: loopedFlag) { (__ptr_loopedFlag) in
                                    withUnsafeArgumentPackPointer(__ptr_animation, __ptr_time, __ptr_delta, __ptr_seeked, __ptr_isExternalSeeking, __ptr_blend, __ptr_loopedFlag) { (__accessPtr) in
                                        `self`.withUnsafeRawPointer { (__ptr_self) in
                                            gdextension_interface_object_method_bind_ptrcall(
                                                Self.__method_binding_blend_animation,
                                                __ptr_self,
                                                __accessPtr,
                                                nil
                                            )
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_blend_node: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "blend_node").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 263389446)!
        }
        }
    }()
    public func blendNode(name: Godot.GodotStringName, node: Godot.AnimationNode?, time: Double, seek: Bool, isExternalSeeking: Bool, blend: Double, filter: Godot.AnimationNode.FilterAction = AnimationNode.FilterAction(rawValue: 0)!, sync: Bool = true, testOnly: Bool = false) -> Double {
        var __temporary = Double()
        name.withUnsafeRawPointer { (__ptr_name) in
            node.withUnsafeRawPointer { (__ptr_node) in
                withUnsafePointer(to: __ptr_node) { (_ptr___ptr_node) in
                    withUnsafePointer(to: time) { (__ptr_time) in
                        withUnsafePointer(to: seek) { (__ptr_seek) in
                            withUnsafePointer(to: isExternalSeeking) { (__ptr_isExternalSeeking) in
                                withUnsafePointer(to: blend) { (__ptr_blend) in
                                    withUnsafePointer(to: filter) { (__ptr_filter) in
                                        withUnsafePointer(to: sync) { (__ptr_sync) in
                                            withUnsafePointer(to: testOnly) { (__ptr_testOnly) in
                                                withUnsafeArgumentPackPointer(__ptr_name, _ptr___ptr_node, __ptr_time, __ptr_seek, __ptr_isExternalSeeking, __ptr_blend, __ptr_filter, __ptr_sync, __ptr_testOnly) { (__accessPtr) in
                                                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                                        `self`.withUnsafeRawPointer { (__ptr_self) in
                                                            gdextension_interface_object_method_bind_ptrcall(
                                                                Self.__method_binding_blend_node,
                                                                __ptr_self,
                                                                __accessPtr,
                                                                __ptr___temporary
                                                            )
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_blend_input: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "blend_input").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2709059328)!
        }
        }
    }()
    public func blendInput(inputIndex: Int32, time: Double, seek: Bool, isExternalSeeking: Bool, blend: Double, filter: Godot.AnimationNode.FilterAction = AnimationNode.FilterAction(rawValue: 0)!, sync: Bool = true, testOnly: Bool = false) -> Double {
        var __temporary = Double()
        withUnsafePointer(to: inputIndex) { (__ptr_inputIndex) in
            withUnsafePointer(to: time) { (__ptr_time) in
                withUnsafePointer(to: seek) { (__ptr_seek) in
                    withUnsafePointer(to: isExternalSeeking) { (__ptr_isExternalSeeking) in
                        withUnsafePointer(to: blend) { (__ptr_blend) in
                            withUnsafePointer(to: filter) { (__ptr_filter) in
                                withUnsafePointer(to: sync) { (__ptr_sync) in
                                    withUnsafePointer(to: testOnly) { (__ptr_testOnly) in
                                        withUnsafeArgumentPackPointer(__ptr_inputIndex, __ptr_time, __ptr_seek, __ptr_isExternalSeeking, __ptr_blend, __ptr_filter, __ptr_sync, __ptr_testOnly) { (__accessPtr) in
                                            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                                    gdextension_interface_object_method_bind_ptrcall(
                                                        Self.__method_binding_blend_input,
                                                        __ptr_self,
                                                        __accessPtr,
                                                        __ptr___temporary
                                                    )
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_set_parameter: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_parameter").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3776071444)!
        }
        }
    }()
    public func setParameter<Variant1 : VariantEncodable>(name: Godot.GodotStringName, value: Variant1) {
        name.withUnsafeRawPointer { (__ptr_name) in
            Godot.Variant.withStorageUnsafeRawPointer(to: value) { (__ptr_value) in
                withUnsafeArgumentPackPointer(__ptr_name, __ptr_value) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_parameter,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_parameter: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_parameter").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2760726917)!
        }
        }
    }()
    public func parameter(name: Godot.GodotStringName) -> Godot.Variant {
        let __temporary = Godot.Variant()
        name.withUnsafeRawPointer { (__ptr_name) in
            withUnsafeArgumentPackPointer(__ptr_name) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_parameter,
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
            let instance = Unmanaged<AnimationNode> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getChildNodes()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_parameter_list_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<AnimationNode> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getParameterList()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_child_by_name_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<AnimationNode> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getChildByName(
            Godot.GodotStringName(godotExtensionPointer: args[0]!)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_parameter_default_value_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<AnimationNode> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getParameterDefaultValue(
            parameter: Godot.GodotStringName(godotExtensionPointer: args[0]!)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _is_parameter_read_only_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<AnimationNode> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._isParameterReadOnly(
            parameter: Godot.GodotStringName(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _process_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<AnimationNode> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._process(
            time: args[0]!.load(as: Double.self),
            seek: args[1]!.load(as: Bool.self),
            isExternalSeeking: args[2]!.load(as: Bool.self),
            testOnly: args[3]!.load(as: Bool.self)
        )
        returnPtr!.assumingMemoryBound(to: Double.self).pointee = returnValue}
        let _get_caption_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<AnimationNode> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getCaption()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _has_filter_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<AnimationNode> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._hasFilter()
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
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