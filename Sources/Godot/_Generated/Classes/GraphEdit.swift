//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class GraphEdit: Control {
    public enum PanningScheme: UInt32, GodotEnum {
        case zooms = 0
        case pans = 1
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Zooms", 0),
            ("Pans", 1),]
        }
    }

    @Emitter(signal: "connection_request", args: ("fromNode", Godot.GodotStringName), ("fromPort", Int), ("toNode", Godot.GodotStringName), ("toPort", Int))
    public struct ConnectionRequest {
    }

    @Emitter(signal: "disconnection_request", args: ("fromNode", Godot.GodotStringName), ("fromPort", Int), ("toNode", Godot.GodotStringName), ("toPort", Int))
    public struct DisconnectionRequest {
    }

    @Emitter(signal: "popup_request", args: ("position", Godot.Vector2))
    public struct PopupRequest {
    }

    @Emitter(signal: "duplicate_nodes_request")
    public struct DuplicateNodesRequest {
    }

    @Emitter(signal: "copy_nodes_request")
    public struct CopyNodesRequest {
    }

    @Emitter(signal: "paste_nodes_request")
    public struct PasteNodesRequest {
    }

    @Emitter(signal: "node_selected", args: ("node", Godot.Node?))
    public struct NodeSelected {
    }

    @Emitter(signal: "node_deselected", args: ("node", Godot.Node?))
    public struct NodeDeselected {
    }

    @Emitter(signal: "connection_to_empty", args: ("fromNode", Godot.GodotStringName), ("fromPort", Int), ("releasePosition", Godot.Vector2))
    public struct ConnectionToEmpty {
    }

    @Emitter(signal: "connection_from_empty", args: ("toNode", Godot.GodotStringName), ("toPort", Int), ("releasePosition", Godot.Vector2))
    public struct ConnectionFromEmpty {
    }

    @Emitter(signal: "delete_nodes_request", args: ("nodes", Godot.GodotArray<Godot.GodotStringName>))
    public struct DeleteNodesRequest {
    }

    @Emitter(signal: "begin_node_move")
    public struct BeginNodeMove {
    }

    @Emitter(signal: "end_node_move")
    public struct EndNodeMove {
    }

    @Emitter(signal: "scroll_offset_changed", args: ("offset", Godot.Vector2))
    public struct ScrollOffsetChanged {
    }

    @Emitter(signal: "connection_drag_started", args: ("fromNode", Godot.GodotStringName), ("fromPort", Int), ("isOutput", Bool))
    public struct ConnectionDragStarted {
    }

    @Emitter(signal: "connection_drag_ended")
    public struct ConnectionDragEnded {
    }

    open func _isInInputHotzone(inNode node: Godot.Object?, inPort port: Int32, mousePosition: Godot.Vector2) -> Bool {
        Bool()
    }

    open func _isInOutputHotzone(inNode node: Godot.Object?, inPort port: Int32, mousePosition: Godot.Vector2) -> Bool {
        Bool()
    }

    open func _getConnectionLine(fromPosition: Godot.Vector2, toPosition: Godot.Vector2) -> Godot.PackedVector2Array {
        Godot.PackedVector2Array()
    }

    open func _isNodeHoverValid(fromNode: Godot.GodotStringName, fromPort: Int32, toNode: Godot.GodotStringName, toPort: Int32) -> Bool {
        Bool()
    }

    private static var __method_binding_connect_node: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "connect_node").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 195065850)!
        }
        }
    }()
    public func connectNode(_ fromNode: Godot.GodotStringName, fromPort: Int32, toNode: Godot.GodotStringName, toPort: Int32) -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        fromNode.withUnsafeRawPointer { (__ptr_fromNode) in
            withUnsafePointer(to: fromPort) { (__ptr_fromPort) in
                toNode.withUnsafeRawPointer { (__ptr_toNode) in
                    withUnsafePointer(to: toPort) { (__ptr_toPort) in
                        withUnsafeArgumentPackPointer(__ptr_fromNode, __ptr_fromPort, __ptr_toNode, __ptr_toPort) { (__accessPtr) in
                            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_connect_node,
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
        return Godot.ErrorType(rawValue: __temporary)!
    }

    private static var __method_binding_is_node_connected: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_node_connected").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4216241294)!
        }
        }
    }()
    public func isNodeConnected(fromNode: Godot.GodotStringName, fromPort: Int32, toNode: Godot.GodotStringName, toPort: Int32) -> Bool {
        var __temporary = Bool()
        fromNode.withUnsafeRawPointer { (__ptr_fromNode) in
            withUnsafePointer(to: fromPort) { (__ptr_fromPort) in
                toNode.withUnsafeRawPointer { (__ptr_toNode) in
                    withUnsafePointer(to: toPort) { (__ptr_toPort) in
                        withUnsafeArgumentPackPointer(__ptr_fromNode, __ptr_fromPort, __ptr_toNode, __ptr_toPort) { (__accessPtr) in
                            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_is_node_connected,
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
        return __temporary
    }

    private static var __method_binding_disconnect_node: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "disconnect_node").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1933654315)!
        }
        }
    }()
    public func disconnectNode(_ fromNode: Godot.GodotStringName, fromPort: Int32, toNode: Godot.GodotStringName, toPort: Int32) {
        fromNode.withUnsafeRawPointer { (__ptr_fromNode) in
            withUnsafePointer(to: fromPort) { (__ptr_fromPort) in
                toNode.withUnsafeRawPointer { (__ptr_toNode) in
                    withUnsafePointer(to: toPort) { (__ptr_toPort) in
                        withUnsafeArgumentPackPointer(__ptr_fromNode, __ptr_fromPort, __ptr_toNode, __ptr_toPort) { (__accessPtr) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
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
        }
    }

    private static var __method_binding_set_connection_activity: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_connection_activity").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1141899943)!
        }
        }
    }()
    public func setConnectionActivity(fromNode: Godot.GodotStringName, fromPort: Int32, toNode: Godot.GodotStringName, toPort: Int32, amount: Double) {
        fromNode.withUnsafeRawPointer { (__ptr_fromNode) in
            withUnsafePointer(to: fromPort) { (__ptr_fromPort) in
                toNode.withUnsafeRawPointer { (__ptr_toNode) in
                    withUnsafePointer(to: toPort) { (__ptr_toPort) in
                        withUnsafePointer(to: amount) { (__ptr_amount) in
                            withUnsafeArgumentPackPointer(__ptr_fromNode, __ptr_fromPort, __ptr_toNode, __ptr_toPort, __ptr_amount) { (__accessPtr) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_set_connection_activity,
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

    private static var __method_binding_get_connection_list: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_connection_list").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()
    public func connectionList() -> Godot.GodotArray<Godot.GodotDictionary> {
        let __temporary = Godot.GodotArray<Godot.GodotDictionary>()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_connection_list,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_clear_connections: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_connections").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func clearConnections() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_clear_connections,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_force_connection_drag_end: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "force_connection_drag_end").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func forceConnectionDragEnd() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_force_connection_drag_end,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_get_scroll_ofs: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_scroll_ofs").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()
    private func __getScrollOfs() -> Godot.Vector2 {
        var __temporary = Godot.Vector2()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_scroll_ofs,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_scroll_ofs: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_scroll_ofs").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 743155724)!
        }
        }
    }()
    private func __setScrollOfs(offset: Godot.Vector2) {
        withUnsafePointer(to: offset) { (__ptr_offset) in
            withUnsafeArgumentPackPointer(__ptr_offset) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_scroll_ofs,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_add_valid_right_disconnect_type: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_valid_right_disconnect_type").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func addValidRightDisconnectType(_ type: Int32) {
        withUnsafePointer(to: type) { (__ptr_type) in
            withUnsafeArgumentPackPointer(__ptr_type) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_add_valid_right_disconnect_type,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_remove_valid_right_disconnect_type: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_valid_right_disconnect_type").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func removeValidRightDisconnectType(_ type: Int32) {
        withUnsafePointer(to: type) { (__ptr_type) in
            withUnsafeArgumentPackPointer(__ptr_type) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_remove_valid_right_disconnect_type,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_add_valid_left_disconnect_type: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_valid_left_disconnect_type").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func addValidLeftDisconnectType(_ type: Int32) {
        withUnsafePointer(to: type) { (__ptr_type) in
            withUnsafeArgumentPackPointer(__ptr_type) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_add_valid_left_disconnect_type,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_remove_valid_left_disconnect_type: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_valid_left_disconnect_type").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func removeValidLeftDisconnectType(_ type: Int32) {
        withUnsafePointer(to: type) { (__ptr_type) in
            withUnsafeArgumentPackPointer(__ptr_type) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_remove_valid_left_disconnect_type,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_add_valid_connection_type: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_valid_connection_type").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func addValidConnectionType(_ fromType: Int32, toType: Int32) {
        withUnsafePointer(to: fromType) { (__ptr_fromType) in
            withUnsafePointer(to: toType) { (__ptr_toType) in
                withUnsafeArgumentPackPointer(__ptr_fromType, __ptr_toType) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_add_valid_connection_type,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_remove_valid_connection_type: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_valid_connection_type").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func removeValidConnectionType(_ fromType: Int32, toType: Int32) {
        withUnsafePointer(to: fromType) { (__ptr_fromType) in
            withUnsafePointer(to: toType) { (__ptr_toType) in
                withUnsafeArgumentPackPointer(__ptr_fromType, __ptr_toType) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_remove_valid_connection_type,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_is_valid_connection_type: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_valid_connection_type").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2522259332)!
        }
        }
    }()
    public func isValidConnectionType(_ fromType: Int32, toType: Int32) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: fromType) { (__ptr_fromType) in
            withUnsafePointer(to: toType) { (__ptr_toType) in
                withUnsafeArgumentPackPointer(__ptr_fromType, __ptr_toType) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_is_valid_connection_type,
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

    private static var __method_binding_get_connection_line: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_connection_line").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1562168077)!
        }
        }
    }()
    public func connectionLine(fromNode: Godot.Vector2, toNode: Godot.Vector2) -> Godot.PackedVector2Array {
        let __temporary = Godot.PackedVector2Array()
        withUnsafePointer(to: fromNode) { (__ptr_fromNode) in
            withUnsafePointer(to: toNode) { (__ptr_toNode) in
                withUnsafeArgumentPackPointer(__ptr_fromNode, __ptr_toNode) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_get_connection_line,
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

    private static var __method_binding_set_panning_scheme: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_panning_scheme").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 18893313)!
        }
        }
    }()
    private func __setPanningScheme(_ scheme: Godot.GraphEdit.PanningScheme) {
        withUnsafePointer(to: scheme) { (__ptr_scheme) in
            withUnsafeArgumentPackPointer(__ptr_scheme) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_panning_scheme,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_panning_scheme: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_panning_scheme").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 549924446)!
        }
        }
    }()
    private func __getPanningScheme() -> Godot.GraphEdit.PanningScheme {
        var __temporary = Godot.GraphEdit.PanningScheme.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_panning_scheme,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.GraphEdit.PanningScheme(rawValue: __temporary)!
    }

    private static var __method_binding_set_zoom: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_zoom").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setZoom(_ zoom: Double) {
        withUnsafePointer(to: zoom) { (__ptr_zoom) in
            withUnsafeArgumentPackPointer(__ptr_zoom) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_zoom,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_zoom: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_zoom").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getZoom() -> Double {
        var __temporary = Double()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_zoom,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_zoom_min: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_zoom_min").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setZoomMin(_ zoomMin: Double) {
        withUnsafePointer(to: zoomMin) { (__ptr_zoomMin) in
            withUnsafeArgumentPackPointer(__ptr_zoomMin) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_zoom_min,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_zoom_min: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_zoom_min").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getZoomMin() -> Double {
        var __temporary = Double()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_zoom_min,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_zoom_max: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_zoom_max").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setZoomMax(_ zoomMax: Double) {
        withUnsafePointer(to: zoomMax) { (__ptr_zoomMax) in
            withUnsafeArgumentPackPointer(__ptr_zoomMax) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_zoom_max,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_zoom_max: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_zoom_max").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getZoomMax() -> Double {
        var __temporary = Double()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_zoom_max,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_zoom_step: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_zoom_step").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setZoomStep(_ zoomStep: Double) {
        withUnsafePointer(to: zoomStep) { (__ptr_zoomStep) in
            withUnsafeArgumentPackPointer(__ptr_zoomStep) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_zoom_step,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_zoom_step: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_zoom_step").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getZoomStep() -> Double {
        var __temporary = Double()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_zoom_step,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_show_zoom_label: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_show_zoom_label").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setShowZoomLabel(enable: Bool) {
        withUnsafePointer(to: enable) { (__ptr_enable) in
            withUnsafeArgumentPackPointer(__ptr_enable) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_show_zoom_label,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_is_showing_zoom_label: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_showing_zoom_label").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isShowingZoomLabel() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_showing_zoom_label,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_snap: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_snap").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setSnap(pixels: Int32) {
        withUnsafePointer(to: pixels) { (__ptr_pixels) in
            withUnsafeArgumentPackPointer(__ptr_pixels) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_snap,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_snap: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_snap").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getSnap() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_snap,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_use_snap: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_use_snap").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setUseSnap(enable: Bool) {
        withUnsafePointer(to: enable) { (__ptr_enable) in
            withUnsafeArgumentPackPointer(__ptr_enable) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_use_snap,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_is_using_snap: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_using_snap").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isUsingSnap() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_using_snap,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_connection_lines_curvature: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_connection_lines_curvature").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setConnectionLinesCurvature(_ curvature: Double) {
        withUnsafePointer(to: curvature) { (__ptr_curvature) in
            withUnsafeArgumentPackPointer(__ptr_curvature) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_connection_lines_curvature,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_connection_lines_curvature: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_connection_lines_curvature").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getConnectionLinesCurvature() -> Double {
        var __temporary = Double()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_connection_lines_curvature,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_connection_lines_thickness: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_connection_lines_thickness").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setConnectionLinesThickness(pixels: Double) {
        withUnsafePointer(to: pixels) { (__ptr_pixels) in
            withUnsafeArgumentPackPointer(__ptr_pixels) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_connection_lines_thickness,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_connection_lines_thickness: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_connection_lines_thickness").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getConnectionLinesThickness() -> Double {
        var __temporary = Double()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_connection_lines_thickness,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_connection_lines_antialiased: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_connection_lines_antialiased").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setConnectionLinesAntialiased(pixels: Bool) {
        withUnsafePointer(to: pixels) { (__ptr_pixels) in
            withUnsafeArgumentPackPointer(__ptr_pixels) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_connection_lines_antialiased,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_is_connection_lines_antialiased: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_connection_lines_antialiased").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isConnectionLinesAntialiased() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_connection_lines_antialiased,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_minimap_size: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_minimap_size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 743155724)!
        }
        }
    }()
    private func __setMinimapSize(_ size: Godot.Vector2) {
        withUnsafePointer(to: size) { (__ptr_size) in
            withUnsafeArgumentPackPointer(__ptr_size) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_minimap_size,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_minimap_size: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_minimap_size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()
    private func __getMinimapSize() -> Godot.Vector2 {
        var __temporary = Godot.Vector2()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_minimap_size,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_minimap_opacity: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_minimap_opacity").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setMinimapOpacity(_ opacity: Double) {
        withUnsafePointer(to: opacity) { (__ptr_opacity) in
            withUnsafeArgumentPackPointer(__ptr_opacity) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_minimap_opacity,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_minimap_opacity: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_minimap_opacity").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getMinimapOpacity() -> Double {
        var __temporary = Double()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_minimap_opacity,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_minimap_enabled: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_minimap_enabled").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setMinimapEnabled(enable: Bool) {
        withUnsafePointer(to: enable) { (__ptr_enable) in
            withUnsafeArgumentPackPointer(__ptr_enable) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_minimap_enabled,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_is_minimap_enabled: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_minimap_enabled").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isMinimapEnabled() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_minimap_enabled,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_arrange_nodes_button_hidden: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_arrange_nodes_button_hidden").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setArrangeNodesButtonHidden(enable: Bool) {
        withUnsafePointer(to: enable) { (__ptr_enable) in
            withUnsafeArgumentPackPointer(__ptr_enable) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_arrange_nodes_button_hidden,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_is_arrange_nodes_button_hidden: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_arrange_nodes_button_hidden").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isArrangeNodesButtonHidden() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_arrange_nodes_button_hidden,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_right_disconnects: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_right_disconnects").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setRightDisconnects(enable: Bool) {
        withUnsafePointer(to: enable) { (__ptr_enable) in
            withUnsafeArgumentPackPointer(__ptr_enable) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_right_disconnects,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_is_right_disconnects_enabled: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_right_disconnects_enabled").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isRightDisconnectsEnabled() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_right_disconnects_enabled,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_zoom_hbox: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_zoom_hbox").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3590609951)!
        }
        }
    }()
    public func zoomHbox() -> Godot.HBoxContainer? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_zoom_hbox,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.HBoxContainer.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_arrange_nodes: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "arrange_nodes").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func arrangeNodes() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_arrange_nodes,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_set_selected: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_selected").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1078189570)!
        }
        }
    }()
    public func setSelected(node: Godot.Node?) {
        node.withUnsafeRawPointer { (__ptr_node) in
            withUnsafePointer(to: __ptr_node) { (_ptr___ptr_node) in
                withUnsafeArgumentPackPointer(_ptr___ptr_node) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_selected,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    public var isRightDisconnectsEnabled: Bool {
        get {
            __isRightDisconnectsEnabled()
        }
        set {
            __setRightDisconnects(
                enable: newValue
            )
        }
    }

    public var scrollOfs: Godot.Vector2 {
        get {
            __getScrollOfs()
        }
        set {
            __setScrollOfs(
                offset: newValue
            )
        }
    }

    public var snap: Int32 {
        get {
            __getSnap()
        }
        set {
            __setSnap(
                pixels: newValue
            )
        }
    }

    public var isUsingSnap: Bool {
        get {
            __isUsingSnap()
        }
        set {
            __setUseSnap(
                enable: newValue
            )
        }
    }

    public var panningScheme: Godot.GraphEdit.PanningScheme {
        get {
            __getPanningScheme()
        }
        set {
            __setPanningScheme(
                newValue
            )
        }
    }

    public var connectionLinesCurvature: Double {
        get {
            __getConnectionLinesCurvature()
        }
        set {
            __setConnectionLinesCurvature(
                newValue
            )
        }
    }

    public var connectionLinesThickness: Double {
        get {
            __getConnectionLinesThickness()
        }
        set {
            __setConnectionLinesThickness(
                pixels: newValue
            )
        }
    }

    public var isConnectionLinesAntialiased: Bool {
        get {
            __isConnectionLinesAntialiased()
        }
        set {
            __setConnectionLinesAntialiased(
                pixels: newValue
            )
        }
    }

    public var zoom: Double {
        get {
            __getZoom()
        }
        set {
            __setZoom(
                newValue
            )
        }
    }

    public var zoomMin: Double {
        get {
            __getZoomMin()
        }
        set {
            __setZoomMin(
                newValue
            )
        }
    }

    public var zoomMax: Double {
        get {
            __getZoomMax()
        }
        set {
            __setZoomMax(
                newValue
            )
        }
    }

    public var zoomStep: Double {
        get {
            __getZoomStep()
        }
        set {
            __setZoomStep(
                newValue
            )
        }
    }

    public var isShowingZoomLabel: Bool {
        get {
            __isShowingZoomLabel()
        }
        set {
            __setShowZoomLabel(
                enable: newValue
            )
        }
    }

    public var isMinimapEnabled: Bool {
        get {
            __isMinimapEnabled()
        }
        set {
            __setMinimapEnabled(
                enable: newValue
            )
        }
    }

    public var minimapSize: Godot.Vector2 {
        get {
            __getMinimapSize()
        }
        set {
            __setMinimapSize(
                newValue
            )
        }
    }

    public var minimapOpacity: Double {
        get {
            __getMinimapOpacity()
        }
        set {
            __setMinimapOpacity(
                newValue
            )
        }
    }

    public var isArrangeNodesButtonHidden: Bool {
        get {
            __isArrangeNodesButtonHidden()
        }
        set {
            __setArrangeNodesButtonHidden(
                enable: newValue
            )
        }
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _is_in_input_hotzone_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<GraphEdit> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._isInInputHotzone(
            inNode: Godot.Object.retrievedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!)),
            inPort: args[1]!.load(as: Int32.self),
            mousePosition: args[2]!.load(as: Godot.Vector2.self)
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _is_in_output_hotzone_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<GraphEdit> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._isInOutputHotzone(
            inNode: Godot.Object.retrievedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!)),
            inPort: args[1]!.load(as: Int32.self),
            mousePosition: args[2]!.load(as: Godot.Vector2.self)
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _get_connection_line_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<GraphEdit> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getConnectionLine(
            fromPosition: args[0]!.load(as: Godot.Vector2.self),
            toPosition: args[1]!.load(as: Godot.Vector2.self)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _is_node_hover_valid_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<GraphEdit> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._isNodeHoverValid(
            fromNode: Godot.GodotStringName(godotExtensionPointer: args[0]!),
            fromPort: args[1]!.load(as: Int32.self),
            toNode: Godot.GodotStringName(godotExtensionPointer: args[2]!),
            toPort: args[3]!.load(as: Int32.self)
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        _virtualFunctions = [
            "_isInInputHotzone" : ("_is_in_input_hotzone", _is_in_input_hotzone_call),
            "_isInOutputHotzone" : ("_is_in_output_hotzone", _is_in_output_hotzone_call),
            "_getConnectionLine" : ("_get_connection_line", _get_connection_line_call),
            "_isNodeHoverValid" : ("_is_node_hover_valid", _is_node_hover_valid_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }