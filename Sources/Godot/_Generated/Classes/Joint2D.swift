//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotClass
open class Joint2D: Node2D {
    internal static var __method_binding_set_node_a: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_node_a").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1348162250)!
        }
        }
    }()

    private func __setNodeA(
        node: Godot.NodePath
    ) {
        withTransferrableUnsafeRawPointer(to: node) { __ptr_node in
            withUnsafeArgumentPackPointer(__ptr_node) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_node_a,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_node_a: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_node_a").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4075236667)!
        }
        }
    }()

    private func __getNodeA() -> Godot.NodePath {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_node_a,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_node_b: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_node_b").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1348162250)!
        }
        }
    }()

    private func __setNodeB(
        node: Godot.NodePath
    ) {
        withTransferrableUnsafeRawPointer(to: node) { __ptr_node in
            withUnsafeArgumentPackPointer(__ptr_node) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_node_b,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_node_b: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_node_b").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4075236667)!
        }
        }
    }()

    private func __getNodeB() -> Godot.NodePath {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_node_b,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_bias: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_bias").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setBias(
        _ bias: Double
    ) {
        withTransferrableUnsafeRawPointer(to: bias) { __ptr_bias in
            withUnsafeArgumentPackPointer(__ptr_bias) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_bias,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_bias: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_bias").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getBias() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_bias,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_exclude_nodes_from_collision: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_exclude_nodes_from_collision").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setExcludeNodesFromCollision(
        enable: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: enable) { __ptr_enable in
            withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_exclude_nodes_from_collision,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_exclude_nodes_from_collision: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_exclude_nodes_from_collision").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __getExcludeNodesFromCollision() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_exclude_nodes_from_collision,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_rid: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_rid").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2944877500)!
        }
        }
    }()

    public func rid() -> Godot.RID {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_rid,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    public var nodeA: Godot.NodePath {
        get {
            __getNodeA()
        }
        set {
            __setNodeA(
                node: newValue
            )
        }
    }

    public var nodeB: Godot.NodePath {
        get {
            __getNodeB()
        }
        set {
            __setNodeB(
                node: newValue
            )
        }
    }

    public var bias: Double {
        get {
            __getBias()
        }
        set {
            __setBias(
                newValue
            )
        }
    }

    public var excludeNodesFromCollision: Bool {
        get {
            __getExcludeNodesFromCollision()
        }
        set {
            __setExcludeNodesFromCollision(
                enable: newValue
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