//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class VisualShaderNodeTexture: VisualShaderNode {
    public enum Source: UInt32, GodotEnum {
        case texture = 0
        case screen = 1
        case source2DTexture = 2
        case source2DNormal = 3
        case depth = 4
        case port = 5
        case source3DNormal = 6
        case roughness = 7
        case max = 8
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Texture", 0),
            ("Screen", 1),
            ("Source2D Texture", 2),
            ("Source2D Normal", 3),
            ("Depth", 4),
            ("Port", 5),
            ("Source3D Normal", 6),
            ("Roughness", 7),
            ("Max", 8),]
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

    private static var __method_binding_set_source: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_source").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 905262939)!
        }
        }
    }()
    private func __setSource(value: Godot.VisualShaderNodeTexture.Source) {
        value.withGodotUnsafeRawPointer { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_source,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_source: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_source").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2896297444)!
        }
        }
    }()
    private func __getSource() -> Godot.VisualShaderNodeTexture.Source {
        Godot.VisualShaderNodeTexture.Source.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_source,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_texture").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4051416890)!
        }
        }
    }()
    private func __setTexture(value: Godot.Texture2D?) {
        value.withGodotUnsafeRawPointer { __ptr_value in
        withUnsafePointer(to: __ptr_value) { _ptr___ptr_value in
        withUnsafeArgumentPackPointer(_ptr___ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_texture,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3635182373)!
        }
        }
    }()
    private func __getTexture() -> Godot.Texture2D? {
        Godot.Texture2D?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_texture,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_texture_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_texture_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 986314081)!
        }
        }
    }()
    private func __setTextureType(value: Godot.VisualShaderNodeTexture.TextureType) {
        value.withGodotUnsafeRawPointer { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_texture_type,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_texture_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3290430153)!
        }
        }
    }()
    private func __getTextureType() -> Godot.VisualShaderNodeTexture.TextureType {
        Godot.VisualShaderNodeTexture.TextureType.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_texture_type,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var source: Godot.VisualShaderNodeTexture.Source {
        get {
            __getSource()
        }
        set {
            __setSource(
                value: newValue
            )
        }
    }

    public var texture: Godot.Texture2D? {
        get {
            __getTexture()
        }
        set {
            __setTexture(
                value: newValue
            )
        }
    }

    public var textureType: Godot.VisualShaderNodeTexture.TextureType {
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