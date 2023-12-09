//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class EditorImportPlugin: ResourceImporter {
    open func _getImporterName() -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _getVisibleName() -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _getPresetCount() -> Int32 {
        Int32()
    }

    open func _getPresetName(presetIndex: Int32) -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _getRecognizedExtensions() -> Godot.PackedStringArray {
        Godot.PackedStringArray()
    }

    open func _getImportOptions(path: Godot.GodotString, presetIndex: Int32) -> Godot.GodotArray<Godot.GodotDictionary<Variant, Variant>> {
        Godot.GodotArray<Godot.GodotDictionary<Variant, Variant>>()
    }

    open func _getSaveExtension() -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _getResourceType() -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _getPriority() -> Double {
        Double()
    }

    open func _getImportOrder() -> Int32 {
        Int32()
    }

    open func _getOptionVisibility(path: Godot.GodotString, optionName: Godot.GodotStringName, options: Godot.GodotDictionary<Variant, Variant>) -> Bool {
        Bool()
    }

    open func _import(sourceFile: Godot.GodotString, savePath: Godot.GodotString, options: Godot.GodotDictionary<Variant, Variant>, platformVariants: Godot.GodotArray<Godot.GodotString>, genFiles: Godot.GodotArray<Godot.GodotString>) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    private static var __method_binding_append_import_external_resource: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "append_import_external_resource").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3645925746)!
        }
        }
    }()
    public func appendImportExternalResource<Value1: VariantStorable, Value2: VariantStorable, Value3: VariantStorableIn>(path: Godot.GodotString, customOptions: Godot.GodotDictionary<Value1, Value2> = [:], customImporter: Godot.GodotString = "", generatorParameters: Value3 = Variant()) -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        path.withUnsafeRawPointer { (__ptr_path) in
            customOptions.withUnsafeRawPointer { (__ptr_customOptions) in
                customImporter.withUnsafeRawPointer { (__ptr_customImporter) in
                    Godot.Variant.withStorageUnsafeRawPointer(to: generatorParameters) { (__ptr_generatorParameters) in
                        withUnsafeArgumentPackPointer(__ptr_path, __ptr_customOptions, __ptr_customImporter, __ptr_generatorParameters) { (__accessPtr) in
                            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_append_import_external_resource,
                                        __ptr_self,
                                        __accessPtr,
                                        __ptr___temporary
                                    )
                                }
                            }
                        }
                    }
                }
            }
        }
        return Godot.ErrorType(rawValue: __temporary)!
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _get_importer_name_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<EditorImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getImporterName()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_visible_name_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<EditorImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getVisibleName()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_preset_count_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<EditorImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getPresetCount()
        returnPtr!.assumingMemoryBound(to: Int32.self).pointee = returnValue}
        let _get_preset_name_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getPresetName(
            presetIndex: args[0]!.load(as: Int32.self)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_recognized_extensions_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<EditorImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getRecognizedExtensions()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_import_options_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getImportOptions(
            path: Godot.GodotString(godotExtensionPointer: args[0]!),
            presetIndex: args[1]!.load(as: Int32.self)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_save_extension_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<EditorImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getSaveExtension()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_resource_type_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<EditorImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getResourceType()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_priority_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<EditorImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getPriority()
        returnPtr!.assumingMemoryBound(to: Double.self).pointee = returnValue}
        let _get_import_order_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<EditorImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getImportOrder()
        returnPtr!.assumingMemoryBound(to: Int32.self).pointee = returnValue}
        let _get_option_visibility_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getOptionVisibility(
            path: Godot.GodotString(godotExtensionPointer: args[0]!),
            optionName: Godot.GodotStringName(godotExtensionPointer: args[1]!),
            options: Godot.GodotDictionary<Variant, Variant>(godotExtensionPointer: args[2]!)
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _import_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._import(
            sourceFile: Godot.GodotString(godotExtensionPointer: args[0]!),
            savePath: Godot.GodotString(godotExtensionPointer: args[1]!),
            options: Godot.GodotDictionary<Variant, Variant>(godotExtensionPointer: args[2]!),
            platformVariants: Godot.GodotArray<Godot.GodotString>(godotExtensionPointer: args[3]!),
            genFiles: Godot.GodotArray<Godot.GodotString>(godotExtensionPointer: args[4]!)
        )
        returnPtr!.assumingMemoryBound(to: Godot.ErrorType.self).pointee = returnValue}
        _virtualFunctions = [
            "_getImporterName" : ("_get_importer_name", _get_importer_name_call),
            "_getVisibleName" : ("_get_visible_name", _get_visible_name_call),
            "_getPresetCount" : ("_get_preset_count", _get_preset_count_call),
            "_getPresetName" : ("_get_preset_name", _get_preset_name_call),
            "_getRecognizedExtensions" : ("_get_recognized_extensions", _get_recognized_extensions_call),
            "_getImportOptions" : ("_get_import_options", _get_import_options_call),
            "_getSaveExtension" : ("_get_save_extension", _get_save_extension_call),
            "_getResourceType" : ("_get_resource_type", _get_resource_type_call),
            "_getPriority" : ("_get_priority", _get_priority_call),
            "_getImportOrder" : ("_get_import_order", _get_import_order_call),
            "_getOptionVisibility" : ("_get_option_visibility", _get_option_visibility_call),
            "_import" : ("_import", _import_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }