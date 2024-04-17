//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class AnimationNodeBlendTree: AnimationRootNode {
    public struct NodeChangedSignalInput: Godot.SignalInput {
        public let nodeName: Godot.GodotStringName

        fileprivate init(
            nodeName: Godot.GodotStringName
        ) {
            self.nodeName = nodeName
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.nodeName)]
        }
    }

    public func nodeChanged(
        nodeName: Godot.GodotStringName
    ) {
        _ = nodeChangedSignal.emit(.init(nodeName: nodeName))
    }

    public lazy var nodeChangedSignal: Godot.SignalEmitter<NodeChangedSignalInput> = {
        .init(object: self, signalName: "node_changed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<NodeChangedSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(nodeName: Godot.GodotStringName.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<NodeChangedSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<NodeChangedSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public static let connectionOk: Int = 0

    public static let connectionErrorNoInput: Int = 1

    public static let connectionErrorNoInputIndex: Int = 2

    public static let connectionErrorNoOutput: Int = 3

    public static let connectionErrorSameNode: Int = 4

    public static let connectionErrorConnectionExists: Int = 5

    internal static var __method_binding_add_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_node").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1980270704)!
        }
        }
    }()

    public func addNode(
        name: Godot.GodotStringName,
        node: Godot.AnimationNode?,
        position: Godot.Vector2 = Vector2(x: 0, y: 0)
    ) {
        withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
            withTransferrableUnsafeRawPointer(to: node) { __ptr_node in
                withUnsafePointer(to: __ptr_node) { _ptr___ptr_node in
                    withTransferrableUnsafeRawPointer(to: position) { __ptr_position in
                        withUnsafeArgumentPackPointer(__ptr_name, _ptr___ptr_node, __ptr_position) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_add_node,
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

    internal static var __method_binding_get_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_node").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 625644256)!
        }
        }
    }()

    public func node(
        name: Godot.GodotStringName
    ) -> Godot.AnimationNode? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
                withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_node,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_remove_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_node").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3304788590)!
        }
        }
    }()

    public func removeNode(
        name: Godot.GodotStringName
    ) {
        withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
            withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_remove_node,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_rename_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "rename_node").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3740211285)!
        }
        }
    }()

    public func renameNode(
        name: Godot.GodotStringName,
        newName: Godot.GodotStringName
    ) {
        withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
            withTransferrableUnsafeRawPointer(to: newName) { __ptr_newName in
                withUnsafeArgumentPackPointer(__ptr_name, __ptr_newName) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_rename_node,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_has_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_node").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2619796661)!
        }
        }
    }()

    public func hasNode(
        name: Godot.GodotStringName
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
                withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_has_node,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_connect_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "connect_node").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2168001410)!
        }
        }
    }()

    public func connectNode(
        inputNode: Godot.GodotStringName,
        inputIndex: Int32,
        outputNode: Godot.GodotStringName
    ) {
        withTransferrableUnsafeRawPointer(to: inputNode) { __ptr_inputNode in
            withTransferrableUnsafeRawPointer(to: inputIndex) { __ptr_inputIndex in
                withTransferrableUnsafeRawPointer(to: outputNode) { __ptr_outputNode in
                    withUnsafeArgumentPackPointer(__ptr_inputNode, __ptr_inputIndex, __ptr_outputNode) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_connect_node,
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

    internal static var __method_binding_disconnect_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "disconnect_node").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2415702435)!
        }
        }
    }()

    public func disconnectNode(
        inputNode: Godot.GodotStringName,
        inputIndex: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: inputNode) { __ptr_inputNode in
            withTransferrableUnsafeRawPointer(to: inputIndex) { __ptr_inputIndex in
                withUnsafeArgumentPackPointer(__ptr_inputNode, __ptr_inputIndex) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_disconnect_node,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_node_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_node_position").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1999414630)!
        }
        }
    }()

    public func setNodePosition(
        name: Godot.GodotStringName,
        position: Godot.Vector2
    ) {
        withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
            withTransferrableUnsafeRawPointer(to: position) { __ptr_position in
                withUnsafeArgumentPackPointer(__ptr_name, __ptr_position) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_node_position,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_node_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_node_position").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3100822709)!
        }
        }
    }()

    public func nodePosition(
        name: Godot.GodotStringName
    ) -> Godot.Vector2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
                withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_node_position,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_graph_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_graph_offset").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 743155724)!
        }
        }
    }()

    private func __setGraphOffset(
        _ offset: Godot.Vector2
    ) {
        withTransferrableUnsafeRawPointer(to: offset) { __ptr_offset in
            withUnsafeArgumentPackPointer(__ptr_offset) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_graph_offset,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_graph_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_graph_offset").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()

    private func __getGraphOffset() -> Godot.Vector2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_graph_offset,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    public var graphOffset: Godot.Vector2 {
        get {
            __getGraphOffset()
        }
        set {
            __setGraphOffset(
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