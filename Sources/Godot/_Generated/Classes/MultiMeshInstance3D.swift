//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class MultiMeshInstance3D: GeometryInstance3D {
    private static var __method_binding_set_multimesh: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_multimesh").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2246127404)!
        }
        }
    }()
    private func __setMultimesh(_ multimesh: Godot.MultiMesh?) {
        multimesh.withGodotUnsafeRawPointer { __ptr_multimesh in
        withUnsafePointer(to: __ptr_multimesh) { _ptr___ptr_multimesh in
        withUnsafeArgumentPackPointer(_ptr___ptr_multimesh) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_multimesh,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_multimesh: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_multimesh").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1385450523)!
        }
        }
    }()
    private func __getMultimesh() -> Godot.MultiMesh? {
        Godot.MultiMesh?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_multimesh,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var multimesh: Godot.MultiMesh? {
        get {
            __getMultimesh()
        }
        set {
            __setMultimesh(
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