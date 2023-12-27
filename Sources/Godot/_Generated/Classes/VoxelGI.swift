//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class VoxelGI: VisualInstance3D {
    public enum Subdiv: UInt32, GodotEnum {
        case subdiv64 = 0
        case subdiv128 = 1
        case subdiv256 = 2
        case subdiv512 = 3
        case max = 4
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Subdiv64", 0),
            ("Subdiv128", 1),
            ("Subdiv256", 2),
            ("Subdiv512", 3),
            ("Max", 4),]
        }
    }

    private static var __method_binding_set_probe_data: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_probe_data").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1637849675)!
        }
        }
    }()
    private func __setProbeData(_ data: Godot.VoxelGIData?) {
        data.withGodotUnsafeRawPointer { __ptr_data in
        withUnsafePointer(to: __ptr_data) { _ptr___ptr_data in
        withUnsafeArgumentPackPointer(_ptr___ptr_data) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_probe_data,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_probe_data: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_probe_data").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1730645405)!
        }
        }
    }()
    private func __getProbeData() -> Godot.VoxelGIData? {
        Godot.VoxelGIData?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_probe_data,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_subdiv: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_subdiv").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2240898472)!
        }
        }
    }()
    private func __setSubdiv(_ subdiv: Godot.VoxelGI.Subdiv) {
        subdiv.withGodotUnsafeRawPointer { __ptr_subdiv in
        withUnsafeArgumentPackPointer(__ptr_subdiv) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_subdiv,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_subdiv: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_subdiv").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4261647950)!
        }
        }
    }()
    private func __getSubdiv() -> Godot.VoxelGI.Subdiv {
        Godot.VoxelGI.Subdiv.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_subdiv,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    private func __setSize(_ size: Godot.Vector3) {
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_size,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    private func __getSize() -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_size,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_camera_attributes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_camera_attributes").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2817810567)!
        }
        }
    }()
    private func __setCameraAttributes(_ cameraAttributes: Godot.CameraAttributes?) {
        cameraAttributes.withGodotUnsafeRawPointer { __ptr_cameraAttributes in
        withUnsafePointer(to: __ptr_cameraAttributes) { _ptr___ptr_cameraAttributes in
        withUnsafeArgumentPackPointer(_ptr___ptr_cameraAttributes) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_camera_attributes,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_camera_attributes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_camera_attributes").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3921283215)!
        }
        }
    }()
    private func __getCameraAttributes() -> Godot.CameraAttributes? {
        Godot.CameraAttributes?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_camera_attributes,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_bake: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "bake").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2781551026)!
        }
        }
    }()
    public func bake(fromNode node: Godot.Node? = nil, createVisualDebug: Bool = false) {
        node.withGodotUnsafeRawPointer { __ptr_node in
        withUnsafePointer(to: __ptr_node) { _ptr___ptr_node in
        createVisualDebug.withGodotUnsafeRawPointer { __ptr_createVisualDebug in
        withUnsafeArgumentPackPointer(_ptr___ptr_node, __ptr_createVisualDebug) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_bake,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_debug_bake: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "debug_bake").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func debugBake() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_debug_bake,
            __ptr_self,
            nil,
            nil
        )}
    }

    public var subdiv: Godot.VoxelGI.Subdiv {
        get {
            __getSubdiv()
        }
        set {
            __setSubdiv(
                newValue
            )
        }
    }

    public var size: Godot.Vector3 {
        get {
            __getSize()
        }
        set {
            __setSize(
                newValue
            )
        }
    }

    public var cameraAttributes: Godot.CameraAttributes? {
        get {
            __getCameraAttributes()
        }
        set {
            __setCameraAttributes(
                newValue
            )
        }
    }

    public var probeData: Godot.VoxelGIData? {
        get {
            __getProbeData()
        }
        set {
            __setProbeData(
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