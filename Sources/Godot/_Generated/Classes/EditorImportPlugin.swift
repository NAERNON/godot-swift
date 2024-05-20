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

    open func _getPresetName(
        presetIndex: Int32
    ) -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _getRecognizedExtensions() -> Godot.PackedStringArray {
        Godot.PackedStringArray()
    }

    open func _getImportOptions(
        path: Godot.GodotString,
        presetIndex: Int32
    ) -> Godot.GodotArray<Godot.AnyGodotDictionary> {
        Godot.GodotArray<Godot.AnyGodotDictionary>()
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

    open func _getOptionVisibility(
        path: Godot.GodotString,
        optionName: Godot.GodotStringName,
        options: Godot.AnyGodotDictionary
    ) -> Bool {
        Bool()
    }

    open func _import(
        sourceFile: Godot.GodotString,
        savePath: Godot.GodotString,
        options: Godot.AnyGodotDictionary,
        platformVariants: Godot.GodotArray<Godot.GodotString>,
        genFiles: Godot.GodotArray<Godot.GodotString>
    ) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    internal static var __method_binding_append_import_external_resource: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "append_import_external_resource").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 320493106)!
        }
        }
    }()

    public func appendImportExternalResource<Value1: Variant.Storable, Value2: Variant.Storable, Value3: Variant.Storable>(
        path: Godot.GodotString,
        customOptions: Godot.GodotDictionary<Value1, Value2> = [:],
        customImporter: Godot.GodotString = "",
        generatorParameters: Value3 = Variant()
    ) -> Godot.ErrorType {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: path) { __ptr_path in
                withTransferrableUnsafeRawPointer(to: customOptions) { __ptr_customOptions in
                    withTransferrableUnsafeRawPointer(to: customImporter) { __ptr_customImporter in
                        Godot.Variant.withStorageUnsafeRawPointer(to: generatorParameters) { __ptr_generatorParameters in
                            withUnsafeArgumentPackPointer(__ptr_path, __ptr_customOptions, __ptr_customImporter, __ptr_generatorParameters) { __accessPtr in
                                self.withUnsafeMutableRawPointer { __ptr_self in
                                    GodotExtension.Interface.objectMethodBindPtrcall(
                                        Self.__method_binding_append_import_external_resource,
                                        __ptr_self,
                                        __accessPtr,
                                        __temporary
                                    )
                                }
                            }
                        }
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
        let _get_importer_name_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<EditorImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getImporterName()
        .transferToGodot(unsafePointer: returnPtr!)}
        let _get_visible_name_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<EditorImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getVisibleName()
        .transferToGodot(unsafePointer: returnPtr!)}
        let _get_preset_count_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<EditorImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getPresetCount()
        .transferToGodot(unsafePointer: returnPtr!)}
        let _get_preset_name_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getPresetName(
            presetIndex: Int32.transferFromGodot(unsafePointer: args[0]!)
        )
        .transferToGodot(unsafePointer: returnPtr!)}
        let _get_recognized_extensions_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<EditorImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getRecognizedExtensions()
        .transferToGodot(unsafePointer: returnPtr!)}
        let _get_import_options_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getImportOptions(
            path: Godot.GodotString.transferFromGodot(unsafePointer: args[0]!),
            presetIndex: Int32.transferFromGodot(unsafePointer: args[1]!)
        )
        .transferToGodot(unsafePointer: returnPtr!)}
        let _get_save_extension_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<EditorImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getSaveExtension()
        .transferToGodot(unsafePointer: returnPtr!)}
        let _get_resource_type_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<EditorImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getResourceType()
        .transferToGodot(unsafePointer: returnPtr!)}
        let _get_priority_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<EditorImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getPriority()
        .transferToGodot(unsafePointer: returnPtr!)}
        let _get_import_order_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<EditorImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getImportOrder()
        .transferToGodot(unsafePointer: returnPtr!)}
        let _get_option_visibility_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getOptionVisibility(
            path: Godot.GodotString.transferFromGodot(unsafePointer: args[0]!),
            optionName: Godot.GodotStringName.transferFromGodot(unsafePointer: args[1]!),
            options: Godot.AnyGodotDictionary.transferFromGodot(unsafePointer: args[2]!)
        )
        .transferToGodot(unsafePointer: returnPtr!)}
        let _import_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
        ._import(
            sourceFile: Godot.GodotString.transferFromGodot(unsafePointer: args[0]!),
            savePath: Godot.GodotString.transferFromGodot(unsafePointer: args[1]!),
            options: Godot.AnyGodotDictionary.transferFromGodot(unsafePointer: args[2]!),
            platformVariants: Godot.GodotArray<Godot.GodotString> .transferFromGodot(unsafePointer: args[3]!),
            genFiles: Godot.GodotArray<Godot.GodotString> .transferFromGodot(unsafePointer: args[4]!)
        )
        .transferToGodot(unsafePointer: returnPtr!)}
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