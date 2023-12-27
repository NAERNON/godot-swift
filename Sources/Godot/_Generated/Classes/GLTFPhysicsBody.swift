//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class GLTFPhysicsBody: Resource {
    private static var __method_binding_from_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "from_node").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 420544174)!
        }
        }
    }()
    static public func fromNode(bodyNode: Godot.CollisionObject3D?) -> Godot.GLTFPhysicsBody? {
        Godot.GLTFPhysicsBody?.fromMutatingGodotUnsafePointer { __temporary in
        bodyNode.withGodotUnsafeRawPointer { __ptr_bodyNode in
        withUnsafePointer(to: __ptr_bodyNode) { _ptr___ptr_bodyNode in
        withUnsafeArgumentPackPointer(_ptr___ptr_bodyNode) { __accessPtr in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_from_node,
            nil,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_to_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "to_node").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3224013656)!
        }
        }
    }()
    public func toNode() -> Godot.CollisionObject3D? {
        Godot.CollisionObject3D?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_to_node,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_from_dictionary: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "from_dictionary").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1177544336)!
        }
        }
    }()
    static public func fromDictionary<Value1: VariantStorable, Value2: VariantStorable>(_ dictionary: Godot.GodotDictionary<Value1, Value2>) -> Godot.GLTFPhysicsBody? {
        Godot.GLTFPhysicsBody?.fromMutatingGodotUnsafePointer { __temporary in
        dictionary.withGodotUnsafeRawPointer { __ptr_dictionary in
        withUnsafeArgumentPackPointer(__ptr_dictionary) { __accessPtr in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_from_dictionary,
            nil,
            __accessPtr,
            __temporary
        )}}}
    }

    private static var __method_binding_to_dictionary: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "to_dictionary").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3102165223)!
        }
        }
    }()
    public func toDictionary() -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_to_dictionary,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_body_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_body_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    private func __getBodyType() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_body_type,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_body_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_body_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    private func __setBodyType(_ bodyType: Godot.GodotString) {
        bodyType.withGodotUnsafeRawPointer { __ptr_bodyType in
        withUnsafeArgumentPackPointer(__ptr_bodyType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_body_type,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_mass: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_mass").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getMass() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_mass,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_mass: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_mass").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setMass(_ mass: Double) {
        mass.withGodotUnsafeRawPointer { __ptr_mass in
        withUnsafeArgumentPackPointer(__ptr_mass) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_mass,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_linear_velocity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_linear_velocity").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    private func __getLinearVelocity() -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_linear_velocity,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_linear_velocity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_linear_velocity").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    private func __setLinearVelocity(_ linearVelocity: Godot.Vector3) {
        linearVelocity.withGodotUnsafeRawPointer { __ptr_linearVelocity in
        withUnsafeArgumentPackPointer(__ptr_linearVelocity) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_linear_velocity,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_angular_velocity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_angular_velocity").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    private func __getAngularVelocity() -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_angular_velocity,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_angular_velocity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_angular_velocity").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    private func __setAngularVelocity(_ angularVelocity: Godot.Vector3) {
        angularVelocity.withGodotUnsafeRawPointer { __ptr_angularVelocity in
        withUnsafeArgumentPackPointer(__ptr_angularVelocity) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_angular_velocity,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_center_of_mass: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_center_of_mass").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    private func __getCenterOfMass() -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_center_of_mass,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_center_of_mass: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_center_of_mass").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    private func __setCenterOfMass(_ centerOfMass: Godot.Vector3) {
        centerOfMass.withGodotUnsafeRawPointer { __ptr_centerOfMass in
        withUnsafeArgumentPackPointer(__ptr_centerOfMass) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_center_of_mass,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_inertia_tensor: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_inertia_tensor").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2716978435)!
        }
        }
    }()
    private func __getInertiaTensor() -> Godot.Basis {
        Godot.Basis.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_inertia_tensor,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_inertia_tensor: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_inertia_tensor").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1055510324)!
        }
        }
    }()
    private func __setInertiaTensor(_ inertiaTensor: Godot.Basis) {
        inertiaTensor.withGodotUnsafeRawPointer { __ptr_inertiaTensor in
        withUnsafeArgumentPackPointer(__ptr_inertiaTensor) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_inertia_tensor,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    public var bodyType: Godot.GodotString {
        get {
            __getBodyType()
        }
        set {
            __setBodyType(
                newValue
            )
        }
    }

    public var mass: Double {
        get {
            __getMass()
        }
        set {
            __setMass(
                newValue
            )
        }
    }

    public var linearVelocity: Godot.Vector3 {
        get {
            __getLinearVelocity()
        }
        set {
            __setLinearVelocity(
                newValue
            )
        }
    }

    public var angularVelocity: Godot.Vector3 {
        get {
            __getAngularVelocity()
        }
        set {
            __setAngularVelocity(
                newValue
            )
        }
    }

    public var centerOfMass: Godot.Vector3 {
        get {
            __getCenterOfMass()
        }
        set {
            __setCenterOfMass(
                newValue
            )
        }
    }

    public var inertiaTensor: Godot.Basis {
        get {
            __getInertiaTensor()
        }
        set {
            __setInertiaTensor(
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