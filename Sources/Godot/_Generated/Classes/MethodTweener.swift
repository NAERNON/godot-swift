//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class MethodTweener: Tweener {
    private static var __method_binding_set_delay: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_delay").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 266477812)!
        }
        }
    }()
    public func setDelay(_ delay: Double) -> Godot.MethodTweener? {
        Godot.MethodTweener?.fromMutatingGodotUnsafePointer { __temporary in
        delay.withGodotUnsafeRawPointer { __ptr_delay in
        withUnsafeArgumentPackPointer(__ptr_delay) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_delay,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_trans: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_trans").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3740975367)!
        }
        }
    }()
    public func setTrans(_ trans: Godot.Tween.TransitionType) -> Godot.MethodTweener? {
        Godot.MethodTweener?.fromMutatingGodotUnsafePointer { __temporary in
        trans.withGodotUnsafeRawPointer { __ptr_trans in
        withUnsafeArgumentPackPointer(__ptr_trans) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_trans,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_ease: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_ease").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 315540545)!
        }
        }
    }()
    public func setEase(_ ease: Godot.Tween.EaseType) -> Godot.MethodTweener? {
        Godot.MethodTweener?.fromMutatingGodotUnsafePointer { __temporary in
        ease.withGodotUnsafeRawPointer { __ptr_ease in
        withUnsafeArgumentPackPointer(__ptr_ease) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_ease,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
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