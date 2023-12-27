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
            ("Vector2D", 3),
            ("Vector3D", 4),
            ("Vector4d", 5),
            ("Boolean", 6),
            ("Transform", 7),
            ("Max", 8),]
        }
    }

    private static var __method_binding_set_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3978014962)!
        }
        }
    }()
    public func setMode(_ mode: Godot.Shader.Mode) {
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_add_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_node").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1560769431)!
        }
        }
    }()
    public func addNode(type: Godot.VisualShader.GodotType, node: Godot.VisualShaderNode?, position: Godot.Vector2, id: Int32) {
        type.withGodotUnsafeRawPointer { __ptr_type in
        node.withGodotUnsafeRawPointer { __ptr_node in
        withUnsafePointer(to: __ptr_node) { _ptr___ptr_node in
        position.withGodotUnsafeRawPointer { __ptr_position in
        id.withGodotUnsafeRawPointer { __ptr_id in
        withUnsafeArgumentPackPointer(__ptr_type, _ptr___ptr_node, __ptr_position, __ptr_id) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_node,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    private static var __method_binding_get_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_node").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3784670312)!
        }
        }
    }()
    public func node(type: Godot.VisualShader.GodotType, id: Int32) -> Godot.VisualShaderNode? {
        Godot.VisualShaderNode?.fromMutatingGodotUnsafePointer { __temporary in
        type.withGodotUnsafeRawPointer { __ptr_type in
        id.withGodotUnsafeRawPointer { __ptr_id in
        withUnsafeArgumentPackPointer(__ptr_type, __ptr_id) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_node,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_set_node_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_node_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2726660721)!
        }
        }
    }()
    public func setNodePosition(type: Godot.VisualShader.GodotType, id: Int32, position: Godot.Vector2) {
        type.withGodotUnsafeRawPointer { __ptr_type in
        id.withGodotUnsafeRawPointer { __ptr_id in
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_type, __ptr_id, __ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_node_position,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_get_node_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_node_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2175036082)!
        }
        }
    }()
    public func nodePosition(type: Godot.VisualShader.GodotType, id: Int32) -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        type.withGodotUnsafeRawPointer { __ptr_type in
        id.withGodotUnsafeRawPointer { __ptr_id in
        withUnsafeArgumentPackPointer(__ptr_type, __ptr_id) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_node_position,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_get_node_list: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_node_list").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2370592410)!
        }
        }
    }()
    public func nodeList(type: Godot.VisualShader.GodotType) -> Godot.PackedInt32Array {
        Godot.PackedInt32Array.fromMutatingGodotUnsafePointer { __temporary in
        type.withGodotUnsafeRawPointer { __ptr_type in
        withUnsafeArgumentPackPointer(__ptr_type) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_node_list,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_valid_node_id: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_valid_node_id").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 629467342)!
        }
        }
    }()
    public func validNodeId(type: Godot.VisualShader.GodotType) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        type.withGodotUnsafeRawPointer { __ptr_type in
        withUnsafeArgumentPackPointer(__ptr_type) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_valid_node_id,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_remove_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_node").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 844050912)!
        }
        }
    }()
    public func removeNode(type: Godot.VisualShader.GodotType, id: Int32) {
        type.withGodotUnsafeRawPointer { __ptr_type in
        id.withGodotUnsafeRawPointer { __ptr_id in
        withUnsafeArgumentPackPointer(__ptr_type, __ptr_id) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_node,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_replace_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "replace_node").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3144735253)!
        }
        }
    }()
    public func replaceNode(type: Godot.VisualShader.GodotType, id: Int32, newClass: Godot.GodotStringName) {
        type.withGodotUnsafeRawPointer { __ptr_type in
        id.withGodotUnsafeRawPointer { __ptr_id in
        newClass.withGodotUnsafeRawPointer { __ptr_newClass in
        withUnsafeArgumentPackPointer(__ptr_type, __ptr_id, __ptr_newClass) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_replace_node,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_is_node_connection: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_node_connection").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3922381898)!
        }
        }
    }()
    public func isNodeConnection(type: Godot.VisualShader.GodotType, fromNode: Int32, fromPort: Int32, toNode: Int32, toPort: Int32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        type.withGodotUnsafeRawPointer { __ptr_type in
        fromNode.withGodotUnsafeRawPointer { __ptr_fromNode in
        fromPort.withGodotUnsafeRawPointer { __ptr_fromPort in
        toNode.withGodotUnsafeRawPointer { __ptr_toNode in
        toPort.withGodotUnsafeRawPointer { __ptr_toPort in
        withUnsafeArgumentPackPointer(__ptr_type, __ptr_fromNode, __ptr_fromPort, __ptr_toNode, __ptr_toPort) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_node_connection,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}
    }

    private static var __method_binding_can_connect_nodes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "can_connect_nodes").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3922381898)!
        }
        }
    }()
    public func canConnectNodes(type: Godot.VisualShader.GodotType, fromNode: Int32, fromPort: Int32, toNode: Int32, toPort: Int32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        type.withGodotUnsafeRawPointer { __ptr_type in
        fromNode.withGodotUnsafeRawPointer { __ptr_fromNode in
        fromPort.withGodotUnsafeRawPointer { __ptr_fromPort in
        toNode.withGodotUnsafeRawPointer { __ptr_toNode in
        toPort.withGodotUnsafeRawPointer { __ptr_toPort in
        withUnsafeArgumentPackPointer(__ptr_type, __ptr_fromNode, __ptr_fromPort, __ptr_toNode, __ptr_toPort) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_can_connect_nodes,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}
    }

    private static var __method_binding_connect_nodes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "connect_nodes").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3081049573)!
        }
        }
    }()
    public func connectNodes(type: Godot.VisualShader.GodotType, fromNode: Int32, fromPort: Int32, toNode: Int32, toPort: Int32) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        type.withGodotUnsafeRawPointer { __ptr_type in
        fromNode.withGodotUnsafeRawPointer { __ptr_fromNode in
        fromPort.withGodotUnsafeRawPointer { __ptr_fromPort in
        toNode.withGodotUnsafeRawPointer { __ptr_toNode in
        toPort.withGodotUnsafeRawPointer { __ptr_toPort in
        withUnsafeArgumentPackPointer(__ptr_type, __ptr_fromNode, __ptr_fromPort, __ptr_toNode, __ptr_toPort) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_connect_nodes,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}
    }

    private static var __method_binding_disconnect_nodes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "disconnect_nodes").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2268060358)!
        }
        }
    }()
    public func disconnectNodes(type: Godot.VisualShader.GodotType, fromNode: Int32, fromPort: Int32, toNode: Int32, toPort: Int32) {
        type.withGodotUnsafeRawPointer { __ptr_type in
        fromNode.withGodotUnsafeRawPointer { __ptr_fromNode in
        fromPort.withGodotUnsafeRawPointer { __ptr_fromPort in
        toNode.withGodotUnsafeRawPointer { __ptr_toNode in
        toPort.withGodotUnsafeRawPointer { __ptr_toPort in
        withUnsafeArgumentPackPointer(__ptr_type, __ptr_fromNode, __ptr_fromPort, __ptr_toNode, __ptr_toPort) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_disconnect_nodes,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    private static var __method_binding_connect_nodes_forced: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "connect_nodes_forced").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2268060358)!
        }
        }
    }()
    public func connectNodesForced(type: Godot.VisualShader.GodotType, fromNode: Int32, fromPort: Int32, toNode: Int32, toPort: Int32) {
        type.withGodotUnsafeRawPointer { __ptr_type in
        fromNode.withGodotUnsafeRawPointer { __ptr_fromNode in
        fromPort.withGodotUnsafeRawPointer { __ptr_fromPort in
        toNode.withGodotUnsafeRawPointer { __ptr_toNode in
        toPort.withGodotUnsafeRawPointer { __ptr_toPort in
        withUnsafeArgumentPackPointer(__ptr_type, __ptr_fromNode, __ptr_fromPort, __ptr_toNode, __ptr_toPort) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_connect_nodes_forced,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    private static var __method_binding_get_node_connections: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_node_connections").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1441964831)!
        }
        }
    }()
    public func nodeConnections(type: Godot.VisualShader.GodotType) -> Godot.GodotArray<Godot.AnyGodotDictionary> {
        Godot.GodotArray<Godot.AnyGodotDictionary>.fromMutatingGodotUnsafePointer { __temporary in
        type.withGodotUnsafeRawPointer { __ptr_type in
        withUnsafeArgumentPackPointer(__ptr_type) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_node_connections,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_graph_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_graph_offset").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 743155724)!
        }
        }
    }()
    private func __setGraphOffset(_ offset: Godot.Vector2) {
        offset.withGodotUnsafeRawPointer { __ptr_offset in
        withUnsafeArgumentPackPointer(__ptr_offset) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_graph_offset,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_graph_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_graph_offset").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()
    private func __getGraphOffset() -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_graph_offset,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_add_varying: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_varying").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2084110726)!
        }
        }
    }()
    public func addVarying(name: Godot.GodotString, mode: Godot.VisualShader.VaryingMode, type: Godot.VisualShader.VaryingType) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        type.withGodotUnsafeRawPointer { __ptr_type in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_mode, __ptr_type) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_varying,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_remove_varying: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_varying").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func removeVarying(name: Godot.GodotString) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_varying,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_has_varying: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_varying").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3927539163)!
        }
        }
    }()
    public func hasVarying(name: Godot.GodotString) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_varying,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
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