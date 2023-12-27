//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class Node: Object {
    public enum ProcessMode: UInt32, GodotEnum {
        case inherit = 0
        case pausable = 1
        case whenPaused = 2
        case always = 3
        case disabled = 4
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Inherit", 0),
            ("Pausable", 1),
            ("When Paused", 2),
            ("Always", 3),
            ("Disabled", 4),]
        }
    }
    public enum ProcessThreadGroup: UInt32, GodotEnum {
        case inherit = 0
        case mainThread = 1
        case subThread = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Inherit", 0),
            ("Main Thread", 1),
            ("Sub Thread", 2),]
        }
    }
    public struct ProcessThreadMessages: GodotOptionSet {
        public let rawValue: Int64

        public init(rawValue: Int64) {
            self.rawValue = rawValue
        }

        public static let flagProcessThreadMessages: Self = .init(rawValue: 1)
        public static let physics: Self = .init(rawValue: 2)
        public static let all: Self = .init(rawValue: 3)
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Flag Process Thread Messages", 1),
            ("Physics", 2),
            ("All", 3),]
        }
    }
    public enum DuplicateFlags: UInt32, GodotEnum {
        case signals = 1
        case groups = 2
        case scripts = 4
        case useInstantiation = 8
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Signals", 1),
            ("Groups", 2),
            ("Scripts", 4),
            ("Use Instantiation", 8),]
        }
    }
    public enum InternalMode: UInt32, GodotEnum {
        case disabled = 0
        case front = 1
        case back = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Disabled", 0),
            ("Front", 1),
            ("Back", 2),]
        }
    }

    public func ready() {
        readyConnector.emit()
    }

    public private (set) lazy var readyConnector: Godot.SignalConnector
    <> = {
        .init(self, "ready")
    }()


    public func renamed() {
        renamedConnector.emit()
    }

    public private (set) lazy var renamedConnector: Godot.SignalConnector
    <> = {
        .init(self, "renamed")
    }()


    public func treeEntered() {
        treeEnteredConnector.emit()
    }

    public private (set) lazy var treeEnteredConnector: Godot.SignalConnector
    <> = {
        .init(self, "tree_entered")
    }()


    public func treeExiting() {
        treeExitingConnector.emit()
    }

    public private (set) lazy var treeExitingConnector: Godot.SignalConnector
    <> = {
        .init(self, "tree_exiting")
    }()


    public func treeExited() {
        treeExitedConnector.emit()
    }

    public private (set) lazy var treeExitedConnector: Godot.SignalConnector
    <> = {
        .init(self, "tree_exited")
    }()


    public func childEnteredTree(node: Godot.Node?) {
        childEnteredTreeConnector.emit(node)
    }

    public private (set) lazy var childEnteredTreeConnector: Godot.SignalConnector<Godot.Node?> = {
        .init(self, "child_entered_tree")
    }()

    public func childExitingTree(node: Godot.Node?) {
        childExitingTreeConnector.emit(node)
    }

    public private (set) lazy var childExitingTreeConnector: Godot.SignalConnector<Godot.Node?> = {
        .init(self, "child_exiting_tree")
    }()

    public func childOrderChanged() {
        childOrderChangedConnector.emit()
    }

    public private (set) lazy var childOrderChangedConnector: Godot.SignalConnector
    <> = {
        .init(self, "child_order_changed")
    }()


    public func replacingBy(node: Godot.Node?) {
        replacingByConnector.emit(node)
    }

    public private (set) lazy var replacingByConnector: Godot.SignalConnector<Godot.Node?> = {
        .init(self, "replacing_by")
    }()

    open func _process(delta: Double) {
    }

    open func _physicsProcess(delta: Double) {
    }

    open func _enterTree() {
    }

    open func _exitTree() {
    }

    open func _ready() {
    }

    open func _getConfigurationWarnings() -> Godot.PackedStringArray {
        Godot.PackedStringArray()
    }

    open func _input(event: Godot.InputEvent?) {
    }

    open func _shortcutInput(event: Godot.InputEvent?) {
    }

    open func _unhandledInput(event: Godot.InputEvent?) {
    }

    open func _unhandledKeyInput(event: Godot.InputEvent?) {
    }

    private static var __method_binding_print_orphan_nodes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "print_orphan_nodes").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    static public func printOrphanNodes() {
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_print_orphan_nodes,
            nil,
            nil,
            nil
        )
    }

    private static var __method_binding_add_sibling: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_sibling").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2570952461)!
        }
        }
    }()
    public func addSibling(_ sibling: Godot.Node?, forceReadableName: Bool = false) {
        sibling.withGodotUnsafeRawPointer { __ptr_sibling in
        withUnsafePointer(to: __ptr_sibling) { _ptr___ptr_sibling in
        forceReadableName.withGodotUnsafeRawPointer { __ptr_forceReadableName in
        withUnsafeArgumentPackPointer(_ptr___ptr_sibling, __ptr_forceReadableName) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_sibling,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_set_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func setName(_ name: Godot.GodotString) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_name,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2002593661)!
        }
        }
    }()
    private func __getName() -> Godot.GodotStringName {
        Godot.GodotStringName.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_name,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_add_child: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_child").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3863233950)!
        }
        }
    }()
    public func addChild(_ node: Godot.Node?, forceReadableName: Bool = false, `internal`: Godot.Node.InternalMode = Node.InternalMode(rawValue: 0)!) {
        node.withGodotUnsafeRawPointer { __ptr_node in
        withUnsafePointer(to: __ptr_node) { _ptr___ptr_node in
        forceReadableName.withGodotUnsafeRawPointer { __ptr_forceReadableName in
        `internal`.withGodotUnsafeRawPointer { __ptr_internal in
        withUnsafeArgumentPackPointer(_ptr___ptr_node, __ptr_forceReadableName, __ptr_internal) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_child,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_remove_child: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_child").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1078189570)!
        }
        }
    }()
    public func removeChild(_ node: Godot.Node?) {
        node.withGodotUnsafeRawPointer { __ptr_node in
        withUnsafePointer(to: __ptr_node) { _ptr___ptr_node in
        withUnsafeArgumentPackPointer(_ptr___ptr_node) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_child,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_reparent: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "reparent").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3685795103)!
        }
        }
    }()
    public func reparent(newParent: Godot.Node?, keepGlobalTransform: Bool = true) {
        newParent.withGodotUnsafeRawPointer { __ptr_newParent in
        withUnsafePointer(to: __ptr_newParent) { _ptr___ptr_newParent in
        keepGlobalTransform.withGodotUnsafeRawPointer { __ptr_keepGlobalTransform in
        withUnsafeArgumentPackPointer(_ptr___ptr_newParent, __ptr_keepGlobalTransform) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_reparent,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_get_child_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_child_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 894402480)!
        }
        }
    }()
    public func childCount(includeInternal: Bool = false) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        includeInternal.withGodotUnsafeRawPointer { __ptr_includeInternal in
        withUnsafeArgumentPackPointer(__ptr_includeInternal) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_child_count,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_children: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_children").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 873284517)!
        }
        }
    }()
    public func children(includeInternal: Bool = false) -> Godot.GodotArray<Godot.Node?> {
        Godot.GodotArray<Godot.Node?>.fromMutatingGodotUnsafePointer { __temporary in
        includeInternal.withGodotUnsafeRawPointer { __ptr_includeInternal in
        withUnsafeArgumentPackPointer(__ptr_includeInternal) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_children,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_child: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_child").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 541253412)!
        }
        }
    }()
    public func child(idx: Int32, includeInternal: Bool = false) -> Godot.Node? {
        Godot.Node?.fromMutatingGodotUnsafePointer { __temporary in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        includeInternal.withGodotUnsafeRawPointer { __ptr_includeInternal in
        withUnsafeArgumentPackPointer(__ptr_idx, __ptr_includeInternal) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_child,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_has_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_node").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 861721659)!
        }
        }
    }()
    public func hasNode(path: Godot.NodePath) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        path.withGodotUnsafeRawPointer { __ptr_path in
        withUnsafeArgumentPackPointer(__ptr_path) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_node,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_node").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2734337346)!
        }
        }
    }()
    public func node(path: Godot.NodePath) -> Godot.Node? {
        Godot.Node?.fromMutatingGodotUnsafePointer { __temporary in
        path.withGodotUnsafeRawPointer { __ptr_path in
        withUnsafeArgumentPackPointer(__ptr_path) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_node,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_node_or_null: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_node_or_null").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2734337346)!
        }
        }
    }()
    public func nodeOrNull(path: Godot.NodePath) -> Godot.Node? {
        Godot.Node?.fromMutatingGodotUnsafePointer { __temporary in
        path.withGodotUnsafeRawPointer { __ptr_path in
        withUnsafeArgumentPackPointer(__ptr_path) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_node_or_null,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_parent: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_parent").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3160264692)!
        }
        }
    }()
    public func parent() -> Godot.Node? {
        Godot.Node?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_parent,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_find_child: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "find_child").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2008217037)!
        }
        }
    }()
    public func findChild(pattern: Godot.GodotString, recursive: Bool = true, owned: Bool = true) -> Godot.Node? {
        Godot.Node?.fromMutatingGodotUnsafePointer { __temporary in
        pattern.withGodotUnsafeRawPointer { __ptr_pattern in
        recursive.withGodotUnsafeRawPointer { __ptr_recursive in
        owned.withGodotUnsafeRawPointer { __ptr_owned in
        withUnsafeArgumentPackPointer(__ptr_pattern, __ptr_recursive, __ptr_owned) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_find_child,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_find_children: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "find_children").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2560337219)!
        }
        }
    }()
    public func findChildren(pattern: Godot.GodotString, type: Godot.GodotString = "", recursive: Bool = true, owned: Bool = true) -> Godot.GodotArray<Godot.Node?> {
        Godot.GodotArray<Godot.Node?>.fromMutatingGodotUnsafePointer { __temporary in
        pattern.withGodotUnsafeRawPointer { __ptr_pattern in
        type.withGodotUnsafeRawPointer { __ptr_type in
        recursive.withGodotUnsafeRawPointer { __ptr_recursive in
        owned.withGodotUnsafeRawPointer { __ptr_owned in
        withUnsafeArgumentPackPointer(__ptr_pattern, __ptr_type, __ptr_recursive, __ptr_owned) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_find_children,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}
    }

    private static var __method_binding_find_parent: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "find_parent").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1140089439)!
        }
        }
    }()
    public func findParent(pattern: Godot.GodotString) -> Godot.Node? {
        Godot.Node?.fromMutatingGodotUnsafePointer { __temporary in
        pattern.withGodotUnsafeRawPointer { __ptr_pattern in
        withUnsafeArgumentPackPointer(__ptr_pattern) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_find_parent,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_has_node_and_resource: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_node_and_resource").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 861721659)!
        }
        }
    }()
    public func hasNodeAndResource(path: Godot.NodePath) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        path.withGodotUnsafeRawPointer { __ptr_path in
        withUnsafeArgumentPackPointer(__ptr_path) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_node_and_resource,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_node_and_resource: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_node_and_resource").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 502563882)!
        }
        }
    }()
    public func nodeAndResource(path: Godot.NodePath) -> Godot.AnyGodotArray {
        Godot.AnyGodotArray.fromMutatingGodotUnsafePointer { __temporary in
        path.withGodotUnsafeRawPointer { __ptr_path in
        withUnsafeArgumentPackPointer(__ptr_path) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_node_and_resource,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_is_inside_tree: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_inside_tree").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func isInsideTree() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_inside_tree,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_is_ancestor_of: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_ancestor_of").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3093956946)!
        }
        }
    }()
    public func isAncestor(of node: Godot.Node?) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        node.withGodotUnsafeRawPointer { __ptr_node in
        withUnsafePointer(to: __ptr_node) { _ptr___ptr_node in
        withUnsafeArgumentPackPointer(_ptr___ptr_node) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_ancestor_of,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_is_greater_than: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_greater_than").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3093956946)!
        }
        }
    }()
    public func isGreaterThan(_ node: Godot.Node?) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        node.withGodotUnsafeRawPointer { __ptr_node in
        withUnsafePointer(to: __ptr_node) { _ptr___ptr_node in
        withUnsafeArgumentPackPointer(_ptr___ptr_node) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_greater_than,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_get_path: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_path").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4075236667)!
        }
        }
    }()
    public func path() -> Godot.NodePath {
        Godot.NodePath.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_path,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_path_to: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_path_to").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 498846349)!
        }
        }
    }()
    public func path(to node: Godot.Node?, useUniquePath: Bool = false) -> Godot.NodePath {
        Godot.NodePath.fromMutatingGodotUnsafePointer { __temporary in
        node.withGodotUnsafeRawPointer { __ptr_node in
        withUnsafePointer(to: __ptr_node) { _ptr___ptr_node in
        useUniquePath.withGodotUnsafeRawPointer { __ptr_useUniquePath in
        withUnsafeArgumentPackPointer(_ptr___ptr_node, __ptr_useUniquePath) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_path_to,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_add_to_group: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_to_group").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3683006648)!
        }
        }
    }()
    public func addToGroup(_ group: Godot.GodotStringName, persistent: Bool = false) {
        group.withGodotUnsafeRawPointer { __ptr_group in
        persistent.withGodotUnsafeRawPointer { __ptr_persistent in
        withUnsafeArgumentPackPointer(__ptr_group, __ptr_persistent) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_to_group,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_remove_from_group: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_from_group").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3304788590)!
        }
        }
    }()
    public func removeFromGroup(_ group: Godot.GodotStringName) {
        group.withGodotUnsafeRawPointer { __ptr_group in
        withUnsafeArgumentPackPointer(__ptr_group) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_from_group,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_in_group: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_in_group").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2619796661)!
        }
        }
    }()
    public func isInGroup(_ group: Godot.GodotStringName) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        group.withGodotUnsafeRawPointer { __ptr_group in
        withUnsafeArgumentPackPointer(__ptr_group) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_in_group,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_move_child: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "move_child").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3315886247)!
        }
        }
    }()
    public func moveChild(childNode: Godot.Node?, toIndex index: Int32) {
        childNode.withGodotUnsafeRawPointer { __ptr_childNode in
        withUnsafePointer(to: __ptr_childNode) { _ptr___ptr_childNode in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(_ptr___ptr_childNode, __ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_move_child,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_get_groups: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_groups").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()
    public func groups() -> Godot.GodotArray<Godot.GodotStringName> {
        Godot.GodotArray<Godot.GodotStringName>.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_groups,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_owner: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_owner").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1078189570)!
        }
        }
    }()
    private func __setOwner(_ owner: Godot.Node?) {
        owner.withGodotUnsafeRawPointer { __ptr_owner in
        withUnsafePointer(to: __ptr_owner) { _ptr___ptr_owner in
        withUnsafeArgumentPackPointer(_ptr___ptr_owner) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_owner,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_owner: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_owner").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3160264692)!
        }
        }
    }()
    private func __getOwner() -> Godot.Node? {
        Godot.Node?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_owner,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_index: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_index").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 894402480)!
        }
        }
    }()
    public func index(includeInternal: Bool = false) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        includeInternal.withGodotUnsafeRawPointer { __ptr_includeInternal in
        withUnsafeArgumentPackPointer(__ptr_includeInternal) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_index,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_print_tree: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "print_tree").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func printTree() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_print_tree,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_print_tree_pretty: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "print_tree_pretty").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func printTreePretty() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_print_tree_pretty,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_get_tree_string: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tree_string").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2841200299)!
        }
        }
    }()
    public func treeString() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_tree_string,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_tree_string_pretty: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tree_string_pretty").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2841200299)!
        }
        }
    }()
    public func treeStringPretty() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_tree_string_pretty,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_scene_file_path: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_scene_file_path").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    private func __setSceneFilePath(_ sceneFilePath: Godot.GodotString) {
        sceneFilePath.withGodotUnsafeRawPointer { __ptr_sceneFilePath in
        withUnsafeArgumentPackPointer(__ptr_sceneFilePath) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_scene_file_path,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_scene_file_path: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_scene_file_path").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    private func __getSceneFilePath() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_scene_file_path,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_propagate_notification: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "propagate_notification").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func propagateNotification(what: Int32) {
        what.withGodotUnsafeRawPointer { __ptr_what in
        withUnsafeArgumentPackPointer(__ptr_what) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_propagate_notification,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_propagate_call: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "propagate_call").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1871007965)!
        }
        }
    }()
    public func propagateCall<Value: VariantStorable>(method: Godot.GodotStringName, args: Godot.GodotArray<Value> = [], parentFirst: Bool = false) {
        method.withGodotUnsafeRawPointer { __ptr_method in
        args.withGodotUnsafeRawPointer { __ptr_args in
        parentFirst.withGodotUnsafeRawPointer { __ptr_parentFirst in
        withUnsafeArgumentPackPointer(__ptr_method, __ptr_args, __ptr_parentFirst) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_propagate_call,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_set_physics_process: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_physics_process").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    public func setPhysicsProcess(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_physics_process,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_physics_process_delta_time: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_physics_process_delta_time").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    public func physicsProcessDeltaTime() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_physics_process_delta_time,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_is_physics_processing: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_physics_processing").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func isPhysicsProcessing() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_physics_processing,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_process_delta_time: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_process_delta_time").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    public func processDeltaTime() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_process_delta_time,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_process: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_process").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    public func setProcess(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_process,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_process_priority: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_process_priority").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setProcessPriority(_ priority: Int32) {
        priority.withGodotUnsafeRawPointer { __ptr_priority in
        withUnsafeArgumentPackPointer(__ptr_priority) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_process_priority,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_process_priority: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_process_priority").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getProcessPriority() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_process_priority,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_physics_process_priority: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_physics_process_priority").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setPhysicsProcessPriority(_ priority: Int32) {
        priority.withGodotUnsafeRawPointer { __ptr_priority in
        withUnsafeArgumentPackPointer(__ptr_priority) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_physics_process_priority,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_physics_process_priority: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_physics_process_priority").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getPhysicsProcessPriority() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_physics_process_priority,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_is_processing: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_processing").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func isProcessing() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_processing,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_process_input: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_process_input").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    public func setProcessInput(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_process_input,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_processing_input: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_processing_input").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func isProcessingInput() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_processing_input,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_process_shortcut_input: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_process_shortcut_input").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    public func setProcessShortcutInput(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_process_shortcut_input,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_processing_shortcut_input: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_processing_shortcut_input").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func isProcessingShortcutInput() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_processing_shortcut_input,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_process_unhandled_input: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_process_unhandled_input").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    public func setProcessUnhandledInput(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_process_unhandled_input,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_processing_unhandled_input: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_processing_unhandled_input").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func isProcessingUnhandledInput() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_processing_unhandled_input,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_process_unhandled_key_input: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_process_unhandled_key_input").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    public func setProcessUnhandledKeyInput(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_process_unhandled_key_input,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_processing_unhandled_key_input: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_processing_unhandled_key_input").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func isProcessingUnhandledKeyInput() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_processing_unhandled_key_input,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_process_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_process_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1841290486)!
        }
        }
    }()
    private func __setProcessMode(_ mode: Godot.Node.ProcessMode) {
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_process_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_process_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_process_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 739966102)!
        }
        }
    }()
    private func __getProcessMode() -> Godot.Node.ProcessMode {
        Godot.Node.ProcessMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_process_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_can_process: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "can_process").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func canProcess() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_can_process,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_process_thread_group: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_process_thread_group").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2275442745)!
        }
        }
    }()
    private func __setProcessThreadGroup(mode: Godot.Node.ProcessThreadGroup) {
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_process_thread_group,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_process_thread_group: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_process_thread_group").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1866404740)!
        }
        }
    }()
    private func __getProcessThreadGroup() -> Godot.Node.ProcessThreadGroup {
        Godot.Node.ProcessThreadGroup.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_process_thread_group,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_process_thread_messages: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_process_thread_messages").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1357280998)!
        }
        }
    }()
    private func __setProcessThreadMessages(flags: Godot.Node.ProcessThreadMessages) {
        flags.withGodotUnsafeRawPointer { __ptr_flags in
        withUnsafeArgumentPackPointer(__ptr_flags) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_process_thread_messages,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_process_thread_messages: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_process_thread_messages").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4228993612)!
        }
        }
    }()
    private func __getProcessThreadMessages() -> Godot.Node.ProcessThreadMessages {
        Godot.Node.ProcessThreadMessages.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_process_thread_messages,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_process_thread_group_order: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_process_thread_group_order").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setProcessThreadGroupOrder(_ order: Int32) {
        order.withGodotUnsafeRawPointer { __ptr_order in
        withUnsafeArgumentPackPointer(__ptr_order) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_process_thread_group_order,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_process_thread_group_order: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_process_thread_group_order").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getProcessThreadGroupOrder() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_process_thread_group_order,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_display_folded: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_display_folded").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    public func setDisplayFolded(fold: Bool) {
        fold.withGodotUnsafeRawPointer { __ptr_fold in
        withUnsafeArgumentPackPointer(__ptr_fold) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_display_folded,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_displayed_folded: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_displayed_folded").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func isDisplayedFolded() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_displayed_folded,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_process_internal: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_process_internal").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    public func setProcessInternal(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_process_internal,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_processing_internal: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_processing_internal").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func isProcessingInternal() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_processing_internal,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_physics_process_internal: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_physics_process_internal").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    public func setPhysicsProcessInternal(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_physics_process_internal,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_physics_processing_internal: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_physics_processing_internal").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func isPhysicsProcessingInternal() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_physics_processing_internal,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_window: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_window").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1757182445)!
        }
        }
    }()
    public func window() -> Godot.Window? {
        Godot.Window?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_window,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_last_exclusive_window: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_last_exclusive_window").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1757182445)!
        }
        }
    }()
    public func lastExclusiveWindow() -> Godot.Window? {
        Godot.Window?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_last_exclusive_window,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_tree: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tree").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2958820483)!
        }
        }
    }()
    public func tree() -> Godot.SceneTree? {
        Godot.SceneTree?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_tree,
            __ptr_self,
            nil,
            __temporary
        )}}
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

    private static var __method_binding_duplicate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "duplicate").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3511555459)!
        }
        }
    }()
    public func duplicate(flags: Int32 = 15) -> Godot.Node? {
        Godot.Node?.fromMutatingGodotUnsafePointer { __temporary in
        flags.withGodotUnsafeRawPointer { __ptr_flags in
        withUnsafeArgumentPackPointer(__ptr_flags) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_duplicate,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_replace_by: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "replace_by").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2570952461)!
        }
        }
    }()
    public func replace(by node: Godot.Node?, keepGroups: Bool = false) {
        node.withGodotUnsafeRawPointer { __ptr_node in
        withUnsafePointer(to: __ptr_node) { _ptr___ptr_node in
        keepGroups.withGodotUnsafeRawPointer { __ptr_keepGroups in
        withUnsafeArgumentPackPointer(_ptr___ptr_node, __ptr_keepGroups) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_replace_by,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_set_scene_instance_load_placeholder: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_scene_instance_load_placeholder").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    public func setSceneInstanceLoadPlaceholder(_ loadPlaceholder: Bool) {
        loadPlaceholder.withGodotUnsafeRawPointer { __ptr_loadPlaceholder in
        withUnsafeArgumentPackPointer(__ptr_loadPlaceholder) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_scene_instance_load_placeholder,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_scene_instance_load_placeholder: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_scene_instance_load_placeholder").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func sceneInstanceLoadPlaceholder() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_scene_instance_load_placeholder,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_editable_instance: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_editable_instance").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2731852923)!
        }
        }
    }()
    public func setEditableInstance(_ node: Godot.Node?, isEditable: Bool) {
        node.withGodotUnsafeRawPointer { __ptr_node in
        withUnsafePointer(to: __ptr_node) { _ptr___ptr_node in
        isEditable.withGodotUnsafeRawPointer { __ptr_isEditable in
        withUnsafeArgumentPackPointer(_ptr___ptr_node, __ptr_isEditable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_editable_instance,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_is_editable_instance: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_editable_instance").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3093956946)!
        }
        }
    }()
    public func isEditableInstance(_ node: Godot.Node?) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        node.withGodotUnsafeRawPointer { __ptr_node in
        withUnsafePointer(to: __ptr_node) { _ptr___ptr_node in
        withUnsafeArgumentPackPointer(_ptr___ptr_node) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_editable_instance,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_get_viewport: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_viewport").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3596683776)!
        }
        }
    }()
    public func viewport() -> Godot.Viewport? {
        Godot.Viewport?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_viewport,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_queue_free: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "queue_free").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func queueFree() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_queue_free,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_request_ready: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "request_ready").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func requestReady() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_request_ready,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_is_node_ready: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_node_ready").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func isNodeReady() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_node_ready,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_multiplayer_authority: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_multiplayer_authority").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 972357352)!
        }
        }
    }()
    public func setMultiplayerAuthority(id: Int32, recursive: Bool = true) {
        id.withGodotUnsafeRawPointer { __ptr_id in
        recursive.withGodotUnsafeRawPointer { __ptr_recursive in
        withUnsafeArgumentPackPointer(__ptr_id, __ptr_recursive) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_multiplayer_authority,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_multiplayer_authority: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_multiplayer_authority").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func multiplayerAuthority() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_multiplayer_authority,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_is_multiplayer_authority: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_multiplayer_authority").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func isMultiplayerAuthority() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_multiplayer_authority,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_multiplayer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_multiplayer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 406750475)!
        }
        }
    }()
    private func __getMultiplayer() -> Godot.MultiplayerAPI? {
        Godot.MultiplayerAPI?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_multiplayer,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_rpc_config: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "rpc_config").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3776071444)!
        }
        }
    }()
    public func rpcConfig<Value: VariantStorableIn>(method: Godot.GodotStringName, config: Value) {
        method.withGodotUnsafeRawPointer { __ptr_method in
        Godot.Variant.withStorageUnsafeRawPointer(to: config) { __ptr_config in
        withUnsafeArgumentPackPointer(__ptr_method, __ptr_config) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_rpc_config,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_set_editor_description: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_editor_description").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    private func __setEditorDescription(_ editorDescription: Godot.GodotString) {
        editorDescription.withGodotUnsafeRawPointer { __ptr_editorDescription in
        withUnsafeArgumentPackPointer(__ptr_editorDescription) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_editor_description,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_editor_description: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_editor_description").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    private func __getEditorDescription() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_editor_description,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_unique_name_in_owner: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_unique_name_in_owner").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setUniqueNameInOwner(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_unique_name_in_owner,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_unique_name_in_owner: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_unique_name_in_owner").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isUniqueNameInOwner() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_unique_name_in_owner,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_rpc: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "rpc").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4047867050)!
        }
        }
    }()
    public func rpc<each VariantRest : VariantStorableIn>(method: Godot.GodotStringName, _ rest: repeat each VariantRest) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        Godot.Variant.withStorageUnsafeRawPointer(to: method) { __ptr_method in
        withUnsafeArgumentPackPointer(__ptr_method, varargs: repeat each rest) { packCount, __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindCall(
            Self.__method_binding_rpc,
            __ptr_self,
            __accessPtr,
            Int64(packCount),
            __temporary,
            nil
        )}}}}
    }
    public func rpc(method: Godot.GodotStringName) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        Godot.Variant.withStorageUnsafeRawPointer(to: method) { __ptr_method in
        withUnsafeArgumentPackPointer(__ptr_method) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindCall(
            Self.__method_binding_rpc,
            __ptr_self,
            __accessPtr,
            1,
            __temporary,
            nil
        )}}}}
    }

    private static var __method_binding_rpc_id: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "rpc_id").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 361499283)!
        }
        }
    }()
    public func rpcId<each VariantRest : VariantStorableIn>(peerId: Int, method: Godot.GodotStringName, _ rest: repeat each VariantRest) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        Godot.Variant.withStorageUnsafeRawPointer(to: peerId) { __ptr_peerId in
        Godot.Variant.withStorageUnsafeRawPointer(to: method) { __ptr_method in
        withUnsafeArgumentPackPointer(__ptr_peerId, __ptr_method, varargs: repeat each rest) { packCount, __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindCall(
            Self.__method_binding_rpc_id,
            __ptr_self,
            __accessPtr,
            Int64(packCount),
            __temporary,
            nil
        )}}}}}
    }
    public func rpcId(peerId: Int, method: Godot.GodotStringName) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        Godot.Variant.withStorageUnsafeRawPointer(to: peerId) { __ptr_peerId in
        Godot.Variant.withStorageUnsafeRawPointer(to: method) { __ptr_method in
        withUnsafeArgumentPackPointer(__ptr_peerId, __ptr_method) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindCall(
            Self.__method_binding_rpc_id,
            __ptr_self,
            __accessPtr,
            2,
            __temporary,
            nil
        )}}}}}
    }

    private static var __method_binding_update_configuration_warnings: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "update_configuration_warnings").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func updateConfigurationWarnings() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_update_configuration_warnings,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_call_deferred_thread_group: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "call_deferred_thread_group").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3400424181)!
        }
        }
    }()
    public func callDeferredThreadGroup<each VariantRest : VariantStorableIn>(method: Godot.GodotStringName, _ rest: repeat each VariantRest) -> Godot.Variant {
        Godot.Variant.fromMutatingGodotUnsafePointer { __temporary in
        Godot.Variant.withStorageUnsafeRawPointer(to: method) { __ptr_method in
        withUnsafeArgumentPackPointer(__ptr_method, varargs: repeat each rest) { packCount, __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindCall(
            Self.__method_binding_call_deferred_thread_group,
            __ptr_self,
            __accessPtr,
            Int64(packCount),
            __temporary,
            nil
        )}}}}
    }
    public func callDeferredThreadGroup(method: Godot.GodotStringName) -> Godot.Variant {
        Godot.Variant.fromMutatingGodotUnsafePointer { __temporary in
        Godot.Variant.withStorageUnsafeRawPointer(to: method) { __ptr_method in
        withUnsafeArgumentPackPointer(__ptr_method) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindCall(
            Self.__method_binding_call_deferred_thread_group,
            __ptr_self,
            __accessPtr,
            1,
            __temporary,
            nil
        )}}}}
    }

    private static var __method_binding_set_deferred_thread_group: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_deferred_thread_group").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3776071444)!
        }
        }
    }()
    public func setDeferredThreadGroup<Value: VariantStorableIn>(property: Godot.GodotStringName, value: Value) {
        property.withGodotUnsafeRawPointer { __ptr_property in
        Godot.Variant.withStorageUnsafeRawPointer(to: value) { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_property, __ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_deferred_thread_group,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_notify_deferred_thread_group: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "notify_deferred_thread_group").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func notifyDeferredThreadGroup(what: Int32) {
        what.withGodotUnsafeRawPointer { __ptr_what in
        withUnsafeArgumentPackPointer(__ptr_what) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_notify_deferred_thread_group,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_call_thread_safe: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "call_thread_safe").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3400424181)!
        }
        }
    }()
    public func callThreadSafe<each VariantRest : VariantStorableIn>(method: Godot.GodotStringName, _ rest: repeat each VariantRest) -> Godot.Variant {
        Godot.Variant.fromMutatingGodotUnsafePointer { __temporary in
        Godot.Variant.withStorageUnsafeRawPointer(to: method) { __ptr_method in
        withUnsafeArgumentPackPointer(__ptr_method, varargs: repeat each rest) { packCount, __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindCall(
            Self.__method_binding_call_thread_safe,
            __ptr_self,
            __accessPtr,
            Int64(packCount),
            __temporary,
            nil
        )}}}}
    }
    public func callThreadSafe(method: Godot.GodotStringName) -> Godot.Variant {
        Godot.Variant.fromMutatingGodotUnsafePointer { __temporary in
        Godot.Variant.withStorageUnsafeRawPointer(to: method) { __ptr_method in
        withUnsafeArgumentPackPointer(__ptr_method) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindCall(
            Self.__method_binding_call_thread_safe,
            __ptr_self,
            __accessPtr,
            1,
            __temporary,
            nil
        )}}}}
    }

    private static var __method_binding_set_thread_safe: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_thread_safe").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3776071444)!
        }
        }
    }()
    public func setThreadSafe<Value: VariantStorableIn>(property: Godot.GodotStringName, value: Value) {
        property.withGodotUnsafeRawPointer { __ptr_property in
        Godot.Variant.withStorageUnsafeRawPointer(to: value) { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_property, __ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_thread_safe,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_notify_thread_safe: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "notify_thread_safe").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func notifyThreadSafe(what: Int32) {
        what.withGodotUnsafeRawPointer { __ptr_what in
        withUnsafeArgumentPackPointer(__ptr_what) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_notify_thread_safe,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    public var name: Godot.GodotStringName {
        get {
            __getName()
        }
    }

    public var isUniqueNameInOwner: Bool {
        get {
            __isUniqueNameInOwner()
        }
        set {
            __setUniqueNameInOwner(
                enable: newValue
            )
        }
    }

    public var sceneFilePath: Godot.GodotString {
        get {
            __getSceneFilePath()
        }
        set {
            __setSceneFilePath(
                newValue
            )
        }
    }

    public var owner: Godot.Node? {
        get {
            __getOwner()
        }
        set {
            __setOwner(
                newValue
            )
        }
    }

    public var multiplayer: Godot.MultiplayerAPI? {
        get {
            __getMultiplayer()
        }
    }

    public var processMode: Godot.Node.ProcessMode {
        get {
            __getProcessMode()
        }
        set {
            __setProcessMode(
                newValue
            )
        }
    }

    public var processPriority: Int32 {
        get {
            __getProcessPriority()
        }
        set {
            __setProcessPriority(
                newValue
            )
        }
    }

    public var physicsProcessPriority: Int32 {
        get {
            __getPhysicsProcessPriority()
        }
        set {
            __setPhysicsProcessPriority(
                newValue
            )
        }
    }

    public var processThreadGroup: Godot.Node.ProcessThreadGroup {
        get {
            __getProcessThreadGroup()
        }
        set {
            __setProcessThreadGroup(
                mode: newValue
            )
        }
    }

    public var processThreadGroupOrder: Int32 {
        get {
            __getProcessThreadGroupOrder()
        }
        set {
            __setProcessThreadGroupOrder(
                newValue
            )
        }
    }

    public var processThreadMessages: Godot.Node.ProcessThreadMessages {
        get {
            __getProcessThreadMessages()
        }
        set {
            __setProcessThreadMessages(
                flags: newValue
            )
        }
    }

    public var editorDescription: Godot.GodotString {
        get {
            __getEditorDescription()
        }
        set {
            __setEditorDescription(
                newValue
            )
        }
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _process_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<Node>.fromOpaque(instancePtr).takeUnretainedValue()
        ._process(
            delta: Double.fromGodotUnsafePointer(args[0]!)
        )}
        let _physics_process_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<Node>.fromOpaque(instancePtr).takeUnretainedValue()
        ._physicsProcess(
            delta: Double.fromGodotUnsafePointer(args[0]!)
        )}
        let _enter_tree_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<Node>.fromOpaque(instancePtr).takeUnretainedValue()
        ._enterTree()}
        let _exit_tree_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<Node>.fromOpaque(instancePtr).takeUnretainedValue()
        ._exitTree()}
        let _ready_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<Node>.fromOpaque(instancePtr).takeUnretainedValue()
        ._ready()}
        let _get_configuration_warnings_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<Node>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getConfigurationWarnings()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _input_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<Node>.fromOpaque(instancePtr).takeUnretainedValue()
        ._input(
            event: Godot.InputEvent?.fromGodotUnsafePointer(args[0]!)
        )}
        let _shortcut_input_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<Node>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shortcutInput(
            event: Godot.InputEvent?.fromGodotUnsafePointer(args[0]!)
        )}
        let _unhandled_input_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<Node>.fromOpaque(instancePtr).takeUnretainedValue()
        ._unhandledInput(
            event: Godot.InputEvent?.fromGodotUnsafePointer(args[0]!)
        )}
        let _unhandled_key_input_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<Node>.fromOpaque(instancePtr).takeUnretainedValue()
        ._unhandledKeyInput(
            event: Godot.InputEvent?.fromGodotUnsafePointer(args[0]!)
        )}
        _virtualFunctions = [
            "_process" : ("_process", _process_call),
            "_physicsProcess" : ("_physics_process", _physics_process_call),
            "_enterTree" : ("_enter_tree", _enter_tree_call),
            "_exitTree" : ("_exit_tree", _exit_tree_call),
            "_ready" : ("_ready", _ready_call),
            "_getConfigurationWarnings" : ("_get_configuration_warnings", _get_configuration_warnings_call),
            "_input" : ("_input", _input_call),
            "_shortcutInput" : ("_shortcut_input", _shortcut_input_call),
            "_unhandledInput" : ("_unhandled_input", _unhandled_input_call),
            "_unhandledKeyInput" : ("_unhandled_key_input", _unhandled_key_input_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }