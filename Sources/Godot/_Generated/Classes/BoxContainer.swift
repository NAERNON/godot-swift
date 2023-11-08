//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class BoxContainer: Container {
    public enum AlignmentMode: UInt32, GodotEnum {
        case begin = 0
        case center = 1
        case end = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Begin", 0),
            ("Center", 1),
            ("End", 2),]
        }
    }

    private static var __method_binding_add_spacer: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_spacer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1326660695)!
        }
        }
    }()
    public func addSpacer(begin: Bool) -> Godot.Control? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafePointer(to: begin) { (__ptr_begin) in
            withUnsafeArgumentPackPointer(__ptr_begin) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_add_spacer,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.Control.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_set_alignment: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_alignment").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2456745134)!
        }
        }
    }()
    private func __setAlignment(_ alignment: Godot.BoxContainer.AlignmentMode) {
        withUnsafePointer(to: alignment) { (__ptr_alignment) in
            withUnsafeArgumentPackPointer(__ptr_alignment) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_alignment,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_alignment: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_alignment").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1915476527)!
        }
        }
    }()
    private func __getAlignment() -> Godot.BoxContainer.AlignmentMode {
        var __temporary = Godot.BoxContainer.AlignmentMode.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_alignment,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.BoxContainer.AlignmentMode(rawValue: __temporary)!
    }

    private static var __method_binding_set_vertical: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_vertical").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setVertical(_ vertical: Bool) {
        withUnsafePointer(to: vertical) { (__ptr_vertical) in
            withUnsafeArgumentPackPointer(__ptr_vertical) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_vertical,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_is_vertical: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_vertical").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isVertical() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_vertical,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    public var alignment: Godot.BoxContainer.AlignmentMode {
        get {
            __getAlignment()
        }
        set {
            __setAlignment(
                newValue
            )
        }
    }

    public var isVertical: Bool {
        get {
            __isVertical()
        }
        set {
            __setVertical(
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