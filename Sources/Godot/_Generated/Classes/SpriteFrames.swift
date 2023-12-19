//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class SpriteFrames: Resource {
    private static var __method_binding_add_animation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_animation").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3304788590)!
        }
        }
    }()
    public func addAnimation(anim: Godot.GodotStringName) {
        anim.withGodotUnsafeRawPointer { __ptr_anim in
        withUnsafeArgumentPackPointer(__ptr_anim) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_animation,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_has_animation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_animation").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2619796661)!
        }
        }
    }()
    public func hasAnimation(anim: Godot.GodotStringName) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        anim.withGodotUnsafeRawPointer { __ptr_anim in
        withUnsafeArgumentPackPointer(__ptr_anim) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_has_animation,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_remove_animation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_animation").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3304788590)!
        }
        }
    }()
    public func removeAnimation(anim: Godot.GodotStringName) {
        anim.withGodotUnsafeRawPointer { __ptr_anim in
        withUnsafeArgumentPackPointer(__ptr_anim) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_remove_animation,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_rename_animation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "rename_animation").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3740211285)!
        }
        }
    }()
    public func renameAnimation(anim: Godot.GodotStringName, newname: Godot.GodotStringName) {
        anim.withGodotUnsafeRawPointer { __ptr_anim in
        newname.withGodotUnsafeRawPointer { __ptr_newname in
        withUnsafeArgumentPackPointer(__ptr_anim, __ptr_newname) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_rename_animation,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_animation_names: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_animation_names").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1139954409)!
        }
        }
    }()
    public func animationNames() -> Godot.PackedStringArray {
        Godot.PackedStringArray.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_animation_names,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_animation_speed: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_animation_speed").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4135858297)!
        }
        }
    }()
    public func setAnimationSpeed(anim: Godot.GodotStringName, fps: Double) {
        anim.withGodotUnsafeRawPointer { __ptr_anim in
        fps.withGodotUnsafeRawPointer { __ptr_fps in
        withUnsafeArgumentPackPointer(__ptr_anim, __ptr_fps) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_animation_speed,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_animation_speed: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_animation_speed").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2349060816)!
        }
        }
    }()
    public func animationSpeed(anim: Godot.GodotStringName) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        anim.withGodotUnsafeRawPointer { __ptr_anim in
        withUnsafeArgumentPackPointer(__ptr_anim) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_animation_speed,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_animation_loop: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_animation_loop").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2524380260)!
        }
        }
    }()
    public func setAnimationLoop(anim: Godot.GodotStringName, loop: Bool) {
        anim.withGodotUnsafeRawPointer { __ptr_anim in
        loop.withGodotUnsafeRawPointer { __ptr_loop in
        withUnsafeArgumentPackPointer(__ptr_anim, __ptr_loop) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_animation_loop,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_animation_loop: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_animation_loop").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2619796661)!
        }
        }
    }()
    public func animationLoop(anim: Godot.GodotStringName) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        anim.withGodotUnsafeRawPointer { __ptr_anim in
        withUnsafeArgumentPackPointer(__ptr_anim) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_animation_loop,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_add_frame: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_frame").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1351332740)!
        }
        }
    }()
    public func addFrame(anim: Godot.GodotStringName, texture: Godot.Texture2D?, duration: Double = 1.0, atPosition position: Int32 = -1) {
        anim.withGodotUnsafeRawPointer { __ptr_anim in
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafePointer(to: __ptr_texture) { _ptr___ptr_texture in
        duration.withGodotUnsafeRawPointer { __ptr_duration in
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_anim, _ptr___ptr_texture, __ptr_duration, __ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_frame,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    private static var __method_binding_set_frame: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_frame").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 56804795)!
        }
        }
    }()
    public func setFrame(anim: Godot.GodotStringName, idx: Int32, texture: Godot.Texture2D?, duration: Double = 1.0) {
        anim.withGodotUnsafeRawPointer { __ptr_anim in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafePointer(to: __ptr_texture) { _ptr___ptr_texture in
        duration.withGodotUnsafeRawPointer { __ptr_duration in
        withUnsafeArgumentPackPointer(__ptr_anim, __ptr_idx, _ptr___ptr_texture, __ptr_duration) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_frame,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    private static var __method_binding_remove_frame: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_frame").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2415702435)!
        }
        }
    }()
    public func removeFrame(anim: Godot.GodotStringName, idx: Int32) {
        anim.withGodotUnsafeRawPointer { __ptr_anim in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        withUnsafeArgumentPackPointer(__ptr_anim, __ptr_idx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_remove_frame,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_frame_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_frame_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2458036349)!
        }
        }
    }()
    public func frameCount(anim: Godot.GodotStringName) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        anim.withGodotUnsafeRawPointer { __ptr_anim in
        withUnsafeArgumentPackPointer(__ptr_anim) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_frame_count,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_frame_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_frame_texture").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2900517879)!
        }
        }
    }()
    public func frameTexture(anim: Godot.GodotStringName, idx: Int32) -> Godot.Texture2D? {
        Godot.Texture2D?.fromMutatingGodotUnsafePointer { __temporary in
        anim.withGodotUnsafeRawPointer { __ptr_anim in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        withUnsafeArgumentPackPointer(__ptr_anim, __ptr_idx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_frame_texture,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_get_frame_duration: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_frame_duration").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1129309260)!
        }
        }
    }()
    public func frameDuration(anim: Godot.GodotStringName, idx: Int32) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        anim.withGodotUnsafeRawPointer { __ptr_anim in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        withUnsafeArgumentPackPointer(__ptr_anim, __ptr_idx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_frame_duration,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_clear: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3304788590)!
        }
        }
    }()
    public func clear(anim: Godot.GodotStringName) {
        anim.withGodotUnsafeRawPointer { __ptr_anim in
        withUnsafeArgumentPackPointer(__ptr_anim) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_clear,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_clear_all: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_all").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func clearAll() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_clear_all,
            __ptr_self,
            nil,
            nil
        )}
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