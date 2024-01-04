//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class NavigationMeshSourceGeometryData2D: Resource {
    internal static var __method_binding_clear: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func clear() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_clear,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_has_data: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_data").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()
    public func hasData() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_data,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_traversable_outlines: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_traversable_outlines").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()
    private func __setTraversableOutlines(_ traversableOutlines: Godot.GodotArray<Godot.PackedVector2Array>) {
        traversableOutlines.withGodotUnsafeRawPointer { __ptr_traversableOutlines in
        withUnsafeArgumentPackPointer(__ptr_traversableOutlines) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_traversable_outlines,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_traversable_outlines: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_traversable_outlines").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()
    private func __getTraversableOutlines() -> Godot.GodotArray<Godot.PackedVector2Array> {
        Godot.GodotArray<Godot.PackedVector2Array>.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_traversable_outlines,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_obstruction_outlines: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_obstruction_outlines").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()
    private func __setObstructionOutlines(_ obstructionOutlines: Godot.GodotArray<Godot.PackedVector2Array>) {
        obstructionOutlines.withGodotUnsafeRawPointer { __ptr_obstructionOutlines in
        withUnsafeArgumentPackPointer(__ptr_obstructionOutlines) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_obstruction_outlines,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_obstruction_outlines: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_obstruction_outlines").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()
    private func __getObstructionOutlines() -> Godot.GodotArray<Godot.PackedVector2Array> {
        Godot.GodotArray<Godot.PackedVector2Array>.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_obstruction_outlines,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_add_traversable_outline: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_traversable_outline").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1509147220)!
        }
        }
    }()
    public func addTraversableOutline(shapeOutline: Godot.PackedVector2Array) {
        shapeOutline.withGodotUnsafeRawPointer { __ptr_shapeOutline in
        withUnsafeArgumentPackPointer(__ptr_shapeOutline) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_traversable_outline,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_add_obstruction_outline: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_obstruction_outline").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1509147220)!
        }
        }
    }()
    public func addObstructionOutline(shapeOutline: Godot.PackedVector2Array) {
        shapeOutline.withGodotUnsafeRawPointer { __ptr_shapeOutline in
        withUnsafeArgumentPackPointer(__ptr_shapeOutline) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_obstruction_outline,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    public var traversableOutlines: Godot.GodotArray<Godot.PackedVector2Array> {
        get {
            __getTraversableOutlines()
        }
        set {
            __setTraversableOutlines(
                newValue
            )
        }
    }

    public var obstructionOutlines: Godot.GodotArray<Godot.PackedVector2Array> {
        get {
            __getObstructionOutlines()
        }
        set {
            __setObstructionOutlines(
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