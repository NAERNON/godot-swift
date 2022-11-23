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
            
            Property(functionPointerName(with: function)).varDefined().private().type("GDNativePtrUtilityFunction?")
            
            function.code(functionPointerName: functionPointerName(with: function), translated: translated)
        }
    }
    
    private func functionPointerName(with function: ExtensionApi.UtilityFunction) -> String {
        function.name + "_functionPtr"
    }
}

