//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class Texture3DRD: Texture3D {
    internal static var __method_binding_set_texture_rd_rid: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_texture_rd_rid").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2722037293)!
        }
        }
    }()

    private func __setTextureRdRID(
        _ textureRdRID: Godot.RID
    ) {
        textureRdRID.withGodotUnsafeRawPointer { __ptr_textureRdRID in
        withUnsafeArgumentPackPointer(__ptr_textureRdRID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_texture_rd_rid,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_texture_rd_rid: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture_rd_rid").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2944877500)!
        }
        }
    }()

    private func __getTextureRdRID() -> Godot.RID {
        Godot.RID.fromInitializingMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_texture_rd_rid,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var textureRdRID: Godot.RID {
        get {
            __getTextureRdRID()
        }
        set {
            __setTextureRdRID(
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