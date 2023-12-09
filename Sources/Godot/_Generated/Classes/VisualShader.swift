//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class VisualShader: Shader {
    public enum GodotType: UInt32, GodotEnum {
        case vertex = 0
        case fragment = 1
        case light = 2
        case start = 3
        case process = 4
        case collide = 5
        case startCustom = 6
        case processCustom = 7
        case sky = 8
        case fog = 9
        case max = 10
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Vertex", 0),
            ("Fragment", 1),
            ("Light", 2),
            ("Start", 3),
            ("Process", 4),
            ("Collide", 5),
            ("Start Custom", 6),
            ("Process Custom", 7),
            ("Sky", 8),
            ("Fog", 9),
            ("Max", 10),]
        }
    }
    public enum VaryingMode: UInt32, GodotEnum {
        case vertexToFragLight = 0
        case fragToLight = 1
        case max = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Vertex To Frag Light", 0),
            ("Frag To Light", 1),
            ("Max", 2),]
        }
    }
    public enum VaryingType: UInt32, GodotEnum {
        case float = 0
        case int = 1
        case uint = 2
        case vector2D = 3
        case vector3D = 4
        case vector4d = 5
        case boolean = 6
        case transform = 7
        case max = 8
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Float", 0),
            ("Int", 1),
            ("Uint", 2),
            ("Vector2 D", 3),
            ("Vector3 D", 4),
            ("Vector4d", 5),
            ("Boolean", 6),
            ("Transform", 7),
            ("Max", 8),]
        }
    }

    private static var __method_binding_set_mode: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_mode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3978014962)!
        }
        }
    }()
    public func setMode(_ mode: Godot.Shader.Mode) {
        withUnsafePointer(to: mode) { (__ptr_mode) in
            withUnsafeArgumentPackPointer(__ptr_mode) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_mode,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_add_node: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_node").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1560769431)!
        }
        }
    }()
    public func addNode(type: Godot.VisualShader.GodotType, node: Godot.VisualShaderNode?, position: Godot.Vector2, id: Int32) {
        withUnsafePointer(to: type) { (__ptr_type) in
            node.withUnsafeRawPointer { (__ptr_node) in
                withUnsafePointer(to: __ptr_node) { (_ptr___ptr_node) in
                    withUnsafePointer(to: position) { (__ptr_position) in
                        withUnsafePointer(to: id) { (__ptr_id) in
                            withUnsafeArgumentPackPointer(__ptr_type, _ptr___ptr_node, __ptr_position, __ptr_id) { (__accessPtr) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
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
    }

    private static var __method_binding_get_node: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_node").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3784670312)!
        }
        }
    }()
    public func node(type: Godot.VisualShader.GodotType, id: Int32) -> Godot.VisualShaderNode? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafePointer(to: type) { (__ptr_type) in
            withUnsafePointer(to: id) { (__ptr_id) in
                withUnsafeArgumentPackPointer(__ptr_type, __ptr_id) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_get_node,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return Godot.VisualShaderNode.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_set_node_position: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_node_position").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2726660721)!
        }
        }
    }()
    public func setNodePosition(type: Godot.VisualShader.GodotType, id: Int32, position: Godot.Vector2) {
        withUnsafePointer(to: type) { (__ptr_type) in
            withUnsafePointer(to: id) { (__ptr_id) in
                withUnsafePointer(to: position) { (__ptr_position) in
                    withUnsafeArgumentPackPointer(__ptr_type, __ptr_id, __ptr_position) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
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
    }

    private static var __method_binding_get_node_position: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_node_position").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2175036082)!
        }
        }
    }()
    public func nodePosition(type: Godot.VisualShader.GodotType, id: Int32) -> Godot.Vector2 {
        var __temporary = Godot.Vector2()
        withUnsafePointer(to: type) { (__ptr_type) in
            withUnsafePointer(to: id) { (__ptr_id) in
                withUnsafeArgumentPackPointer(__ptr_type, __ptr_id) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_get_node_position,
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

    private static var __method_binding_get_node_list: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_node_list").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2370592410)!
        }
        }
    }()
    public func nodeList(type: Godot.VisualShader.GodotType) -> Godot.PackedInt32Array {
        let __temporary = Godot.PackedInt32Array()
        withUnsafePointer(to: type) { (__ptr_type) in
            withUnsafeArgumentPackPointer(__ptr_type) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_node_list,
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

    private static var __method_binding_get_valid_node_id: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_valid_node_id").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 629467342)!
        }
        }
    }()
    public func validNodeId(type: Godot.VisualShader.GodotType) -> Int32 {
        var __temporary = Int32()
        withUnsafePointer(to: type) { (__ptr_type) in
            withUnsafeArgumentPackPointer(__ptr_type) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_valid_node_id,
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

    private static var __method_binding_remove_node: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_node").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 844050912)!
        }
        }
    }()
    public func removeNode(type: Godot.VisualShader.GodotType, id: Int32) {
        withUnsafePointer(to: type) { (__ptr_type) in
            withUnsafePointer(to: id) { (__ptr_id) in
                withUnsafeArgumentPackPointer(__ptr_type, __ptr_id) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_remove_node,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_replace_node: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "replace_node").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3144735253)!
        }
        }
    }()
    public func replaceNode(type: Godot.VisualShader.GodotType, id: Int32, newClass: Godot.GodotStringName) {
        withUnsafePointer(to: type) { (__ptr_type) in
            withUnsafePointer(to: id) { (__ptr_id) in
                newClass.withUnsafeRawPointer { (__ptr_newClass) in
                    withUnsafeArgumentPackPointer(__ptr_type, __ptr_id, __ptr_newClass) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_replace_node,
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

    private static var __method_binding_is_node_connection: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_node_connection").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3922381898)!
        }
        }
    }()
    public func isNodeConnection(type: Godot.VisualShader.GodotType, fromNode: Int32, fromPort: Int32, toNode: Int32, toPort: Int32) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: type) { (__ptr_type) in
            withUnsafePointer(to: fromNode) { (__ptr_fromNode) in
                withUnsafePointer(to: fromPort) { (__ptr_fromPort) in
                    withUnsafePointer(to: toNode) { (__ptr_toNode) in
                        withUnsafePointer(to: toPort) { (__ptr_toPort) in
                            withUnsafeArgumentPackPointer(__ptr_type, __ptr_fromNode, __ptr_fromPort, __ptr_toNode, __ptr_toPort) { (__accessPtr) in
                                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                        gdextension_interface_object_method_bind_ptrcall(
                                            Self.__method_binding_is_node_connection,
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
        return __temporary
    }

    private static var __method_binding_can_connect_nodes: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "can_connect_nodes").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3922381898)!
        }
        }
    }()
    public func canConnectNodes(type: Godot.VisualShader.GodotType, fromNode: Int32, fromPort: Int32, toNode: Int32, toPort: Int32) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: type) { (__ptr_type) in
            withUnsafePointer(to: fromNode) { (__ptr_fromNode) in
                withUnsafePointer(to: fromPort) { (__ptr_fromPort) in
                    withUnsafePointer(to: toNode) { (__ptr_toNode) in
                        withUnsafePointer(to: toPort) { (__ptr_toPort) in
                            withUnsafeArgumentPackPointer(__ptr_type, __ptr_fromNode, __ptr_fromPort, __ptr_toNode, __ptr_toPort) { (__accessPtr) in
                                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                        gdextension_interface_object_method_bind_ptrcall(
                                            Self.__method_binding_can_connect_nodes,
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
        return __temporary
    }

    private static var __method_binding_connect_nodes: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "connect_nodes").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3081049573)!
        }
        }
    }()
    public func connectNodes(type: Godot.VisualShader.GodotType, fromNode: Int32, fromPort: Int32, toNode: Int32, toPort: Int32) -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        withUnsafePointer(to: type) { (__ptr_type) in
            withUnsafePointer(to: fromNode) { (__ptr_fromNode) in
                withUnsafePointer(to: fromPort) { (__ptr_fromPort) in
                    withUnsafePointer(to: toNode) { (__ptr_toNode) in
                        withUnsafePointer(to: toPort) { (__ptr_toPort) in
                            withUnsafeArgumentPackPointer(__ptr_type, __ptr_fromNode, __ptr_fromPort, __ptr_toNode, __ptr_toPort) { (__accessPtr) in
                                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                        gdextension_interface_object_method_bind_ptrcall(
                                            Self.__method_binding_connect_nodes,
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
        return Godot.ErrorType(rawValue: __temporary)!
    }

    private static var __method_binding_disconnect_nodes: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "disconnect_nodes").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2268060358)!
        }
        }
    }()
    public func disconnectNodes(type: Godot.VisualShader.GodotType, fromNode: Int32, fromPort: Int32, toNode: Int32, toPort: Int32) {
        withUnsafePointer(to: type) { (__ptr_type) in
            withUnsafePointer(to: fromNode) { (__ptr_fromNode) in
                withUnsafePointer(to: fromPort) { (__ptr_fromPort) in
                    withUnsafePointer(to: toNode) { (__ptr_toNode) in
                        withUnsafePointer(to: toPort) { (__ptr_toPort) in
                            withUnsafeArgumentPackPointer(__ptr_type, __ptr_fromNode, __ptr_fromPort, __ptr_toNode, __ptr_toPort) { (__accessPtr) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_disconnect_nodes,
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

    private static var __method_binding_connect_nodes_forced: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "connect_nodes_forced").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2268060358)!
        }
        }
    }()
    public func connectNodesForced(type: Godot.VisualShader.GodotType, fromNode: Int32, fromPort: Int32, toNode: Int32, toPort: Int32) {
        withUnsafePointer(to: type) { (__ptr_type) in
            withUnsafePointer(to: fromNode) { (__ptr_fromNode) in
                withUnsafePointer(to: fromPort) { (__ptr_fromPort) in
                    withUnsafePointer(to: toNode) { (__ptr_toNode) in
                        withUnsafePointer(to: toPort) { (__ptr_toPort) in
                            withUnsafeArgumentPackPointer(__ptr_type, __ptr_fromNode, __ptr_fromPort, __ptr_toNode, __ptr_toPort) { (__accessPtr) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_connect_nodes_forced,
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

    private static var __method_binding_get_node_connections: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_node_connections").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1441964831)!
        }
        }
    }()
    public func nodeConnections(type: Godot.VisualShader.GodotType) -> Godot.GodotArray<Godot.GodotDictionary<Variant, Variant>> {
        let __temporary = Godot.GodotArray<Godot.GodotDictionary<Variant, Variant>>()
        withUnsafePointer(to: type) { (__ptr_type) in
            withUnsafeArgumentPackPointer(__ptr_type) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_node_connections,
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

    private static var __method_binding_set_graph_offset: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_graph_offset").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 743155724)!
        }
        }
    }()
    private func __setGraphOffset(_ offset: Godot.Vector2) {
        withUnsafePointer(to: offset) { (__ptr_offset) in
            withUnsafeArgumentPackPointer(__ptr_offset) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_graph_offset,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_graph_offset: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_graph_offset").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()
    private func __getGraphOffset() -> Godot.Vector2 {
        var __temporary = Godot.Vector2()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_graph_offset,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_add_varying: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_varying").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2084110726)!
        }
        }
    }()
    public func addVarying(name: Godot.GodotString, mode: Godot.VisualShader.VaryingMode, type: Godot.VisualShader.VaryingType) {
        name.withUnsafeRawPointer { (__ptr_name) in
            withUnsafePointer(to: mode) { (__ptr_mode) in
                withUnsafePointer(to: type) { (__ptr_type) in
                    withUnsafeArgumentPackPointer(__ptr_name, __ptr_mode, __ptr_type) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_add_varying,
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

    private static var __method_binding_remove_varying: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_varying").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func removeVarying(name: Godot.GodotString) {
        name.withUnsafeRawPointer { (__ptr_name) in
            withUnsafeArgumentPackPointer(__ptr_name) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_remove_varying,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_has_varying: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_varying").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3927539163)!
        }
        }
    }()
    public func hasVarying(name: Godot.GodotString) -> Bool {
        var __temporary = Bool()
        name.withUnsafeRawPointer { (__ptr_name) in
            withUnsafeArgumentPackPointer(__ptr_name) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_has_varying,
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