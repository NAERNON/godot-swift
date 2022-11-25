import Foundation

struct UtilityFunctionsFile: SwiftFile {
    let path = "UtilityFunctions.swift"
    let functions: [ExtensionApi.UtilityFunction]
    let translated: Bool
    
    init(functions: [ExtensionApi.UtilityFunction], translated: Bool) {
        self.functions = functions
        self.translated = translated
    }
    
    var code: some SwiftCode {
        Import.foundation
        Import.godotExtension
        Import.godotExtensionHeaders
        
        ForEach(functions) { function in
            Spacer()
            function.code(functionPointerName: functionPointerName(with: function), translated: translated)
            Spacer()
            functionPointerDefinitionCode(with: function)
        }
    }
    
    private func functionPointerName(with function: ExtensionApi.UtilityFunction) -> String {
        function.name + "_functionPtr"
    }
    
    @CodeBuilder
    private func functionPointerDefinitionCode(with function: ExtensionApi.UtilityFunction) -> some SwiftCode {
        "private let \(functionPointerName(with: function)): GDNativePtrUtilityFunction? = {"
        Group {
            Property("functionPtr").varDefined().type("GDNativePtrUtilityFunction?")
            
            "\"\(function.name)\".withCString { cName in"
            Property("functionPtr")
                .assign(value: "GodotLibrary.main.interface?.variant_get_ptr_utility_function(cName, \(function.hash))")
                .indentation()
            "}"
            Return("functionPtr")
        }.indentation()
        "}()"
    }
}

