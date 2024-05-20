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

    internal static var __method_binding_set_hand: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_hand").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1849328560)!
        }
        }
    }()

    private func __setHand(
        _ hand: Godot.OpenXRHand.Hands
    ) {
        withTransferrableUnsafeRawPointer(to: hand) { __ptr_hand in
            withUnsafeArgumentPackPointer(__ptr_hand) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_hand,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_hand: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_hand").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2850644561)!
        }
        }
    }()

    private func __getHand() -> Godot.OpenXRHand.Hands {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_hand,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_hand_skeleton: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_hand_skeleton").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1348162250)!
        }
        }
    }()

    private func __setHandSkeleton(
        _ handSkeleton: Godot.NodePath
    ) {
        withTransferrableUnsafeRawPointer(to: handSkeleton) { __ptr_handSkeleton in
            withUnsafeArgumentPackPointer(__ptr_handSkeleton) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_hand_skeleton,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_hand_skeleton: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_hand_skeleton").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4075236667)!
        }
        }
    }()

    private func __getHandSkeleton() -> Godot.NodePath {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_hand_skeleton,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_motion_range: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_motion_range").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3326516003)!
        }
        }
    }()

    private func __setMotionRange(
        _ motionRange: Godot.OpenXRHand.MotionRange
    ) {
        withTransferrableUnsafeRawPointer(to: motionRange) { __ptr_motionRange in
            withUnsafeArgumentPackPointer(__ptr_motionRange) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_motion_range,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_motion_range: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_motion_range").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2191822314)!
        }
        }
    }()

    private func __getMotionRange() -> Godot.OpenXRHand.MotionRange {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_motion_range,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
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