//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class OpenXRHand: Node3D {
    public enum Hands: UInt32, GodotEnum {
        case left = 0
        case right = 1
        case max = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Left", 0),
            ("Right", 1),
            ("Max", 2),]
        }
    }
    public enum MotionRange: UInt32, GodotEnum {
        case unobstructed = 0
        case conformToController = 1
        case max = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Unobstructed", 0),
            ("Conform To Controller", 1),
            ("Max", 2),]
        }
    }

    private static var __method_binding_set_hand: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_hand").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1849328560)!
        }
        }
    }()
    private func __setHand(_ hand: Godot.OpenXRHand.Hands) {
        withUnsafePointer(to: hand) { (__ptr_hand) in
            withUnsafeArgumentPackPointer(__ptr_hand) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_hand,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_hand: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_hand").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2850644561)!
        }
        }
    }()
    private func __getHand() -> Godot.OpenXRHand.Hands {
        var __temporary = Godot.OpenXRHand.Hands.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_hand,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.OpenXRHand.Hands(rawValue: __temporary)!
    }

    private static var __method_binding_set_hand_skeleton: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_hand_skeleton").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1348162250)!
        }
        }
    }()
    private func __setHandSkeleton(_ handSkeleton: Godot.NodePath) {
        handSkeleton.withUnsafeRawPointer { (__ptr_handSkeleton) in
            withUnsafeArgumentPackPointer(__ptr_handSkeleton) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_hand_skeleton,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_hand_skeleton: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_hand_skeleton").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4075236667)!
        }
        }
    }()
    private func __getHandSkeleton() -> Godot.NodePath {
        let __temporary = Godot.NodePath()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_hand_skeleton,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_motion_range: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_motion_range").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3326516003)!
        }
        }
    }()
    private func __setMotionRange(_ motionRange: Godot.OpenXRHand.MotionRange) {
        withUnsafePointer(to: motionRange) { (__ptr_motionRange) in
            withUnsafeArgumentPackPointer(__ptr_motionRange) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_motion_range,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_motion_range: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_motion_range").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2191822314)!
        }
        }
    }()
    private func __getMotionRange() -> Godot.OpenXRHand.MotionRange {
        var __temporary = Godot.OpenXRHand.MotionRange.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_motion_range,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.OpenXRHand.MotionRange(rawValue: __temporary)!
    }

    public var hand: Godot.OpenXRHand.Hands {
        get {
            __getHand()
        }
        set {
            __setHand(
                newValue
            )
        }
    }

    public var motionRange: Godot.OpenXRHand.MotionRange {
        get {
            __getMotionRange()
        }
        set {
            __setMotionRange(
                newValue
            )
        }
    }

    public var handSkeleton: Godot.NodePath {
        get {
            __getHandSkeleton()
        }
        set {
            __setHandSkeleton(
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