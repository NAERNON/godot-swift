//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class RenderSceneBuffersExtension: RenderSceneBuffers {
    open func _configure(config: Godot.RenderSceneBuffersConfiguration?) {
    }

    open func _setFsrSharpness(_ fsrSharpness: Double) {
    }

    open func _setTextureMipmapBias(_ textureMipmapBias: Double) {
    }

    open func _setUseDebanding(_ useDebanding: Bool) {
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _configure_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<RenderSceneBuffersExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._configure(
            config: Godot.RenderSceneBuffersConfiguration?.fromGodotUnsafePointer(args[0]!)
        )}
        let _set_fsr_sharpness_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<RenderSceneBuffersExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._setFsrSharpness(
            Double.fromGodotUnsafePointer(args[0]!)
        )}
        let _set_texture_mipmap_bias_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<RenderSceneBuffersExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._setTextureMipmapBias(
            Double.fromGodotUnsafePointer(args[0]!)
        )}
        let _set_use_debanding_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<RenderSceneBuffersExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._setUseDebanding(
            Bool.fromGodotUnsafePointer(args[0]!)
        )}
        _virtualFunctions = [
            "_configure" : ("_configure", _configure_call),
            "_setFsrSharpness" : ("_set_fsr_sharpness", _set_fsr_sharpness_call),
            "_setTextureMipmapBias" : ("_set_texture_mipmap_bias", _set_texture_mipmap_bias_call),
            "_setUseDebanding" : ("_set_use_debanding", _set_use_debanding_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }