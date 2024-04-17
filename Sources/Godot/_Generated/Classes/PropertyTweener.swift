//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class PropertyTweener: Tweener {
    internal static var __method_binding_from: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "from").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4190193059)!
        }
        }
    }()

    public func from<Value: Variant.Storable>(
        value: Value
    ) -> Godot.PropertyTweener? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            Godot.Variant.withStorageUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_from,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_from_current: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "from_current").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4279177709)!
        }
        }
    }()

    public func fromCurrent() -> Godot.PropertyTweener? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_from_current,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_as_relative: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "as_relative").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4279177709)!
        }
        }
    }()

    public func asRelative() -> Godot.PropertyTweener? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_as_relative,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_trans: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_trans").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1899107404)!
        }
        }
    }()

    public func setTrans(
        _ trans: Godot.Tween.TransitionType
    ) -> Godot.PropertyTweener? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: trans) { __ptr_trans in
                withUnsafeArgumentPackPointer(__ptr_trans) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_trans,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_ease: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_ease").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1080455622)!
        }
        }
    }()

    public func setEase(
        _ ease: Godot.Tween.EaseType
    ) -> Godot.PropertyTweener? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: ease) { __ptr_ease in
                withUnsafeArgumentPackPointer(__ptr_ease) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_ease,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_delay: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_delay").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2171559331)!
        }
        }
    }()

    public func setDelay(
        _ delay: Double
    ) -> Godot.PropertyTweener? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: delay) { __ptr_delay in
                withUnsafeArgumentPackPointer(__ptr_delay) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_delay,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
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