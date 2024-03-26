//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class VisualShaderNodeCubemap: VisualShaderNode {
    public enum Source: UInt32, GodotEnum {
        case texture = 0
        case port = 1
        case max = 2

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Texture", 0),
            ("Port", 1),
            ("Max", 2),]
        }
    }

    public enum TextureType: UInt32, GodotEnum {
        case data = 0
        case color = 1
        case normalMap = 2
        case max = 3

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Data", 0),
            ("Color", 1),
            ("Normal Map", 2),
            ("Max", 3),]
        }
    }

    internal static var __method_binding_set_source: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_source").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1625400621)!
        }
        }
    }()

    private func __setSource(
        value: Godot.VisualShaderNodeCubemap.Source
    ) {
        value.withGodotUnsafeRawPointer { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_source,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_source: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_source").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2222048781)!
        }
        }
    }()

    private func __getSource() -> Godot.VisualShaderNodeCubemap.Source {
        Godot.VisualShaderNodeCubemap.Source.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_source,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_cube_map: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_cube_map").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2219800736)!
        }
        }
    }()

    private func __setCubeMap(
        value: Godot.Cubemap?
    ) {
        value.withGodotUnsafeRawPointer { __ptr_value in
        withUnsafePointer(to: __ptr_value) { _ptr___ptr_value in
        withUnsafeArgumentPackPointer(_ptr___ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_cube_map,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_cube_map: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_cube_map").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1772111058)!
        }
        }
    }()

    private func __getCubeMap() -> Godot.Cubemap? {
        Godot.Cubemap?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_cube_map,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_texture_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_texture_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1899718876)!
        }
        }
    }()

    private func __setTextureType(
        value: Godot.VisualShaderNodeCubemap.TextureType
    ) {
        value.withGodotUnsafeRawPointer { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_texture_type,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_texture_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3356498888)!
        }
        }
    }()

    private func __getTextureType() -> Godot.VisualShaderNodeCubemap.TextureType {
        Godot.VisualShaderNodeCubemap.TextureType.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_texture_type,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var source: Godot.VisualShaderNodeCubemap.Source {
        get {
            __getSource()
        }
        set {
            __setSource(
                value: newValue
            )
        }
    }

    public var cubeMap: Godot.Cubemap? {
        get {
            __getCubeMap()
        }
        set {
            __setCubeMap(
                value: newValue
            )
        }
    }

    public var textureType: Godot.VisualShaderNodeCubemap.TextureType {
        get {
            __getTextureType()
        }
        set {
            __setTextureType(
                value: newValue
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