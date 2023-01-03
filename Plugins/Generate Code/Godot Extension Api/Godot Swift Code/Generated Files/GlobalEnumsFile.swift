import Foundation

struct GlobalEnumsFile: GeneratedSwiftFile {
    let path = "GlobalEnums.swift"
    let enums: [ExtensionApi.Enum]

    init(enums: [ExtensionApi.Enum]) {
        self.enums = enums
    }

    var code: some SwiftCode {
        Import.foundation

        ForEach(enums) { `enum` in
            if let scopeTypes = `enum`.name.scopeTypes,
               let scope = scopeTypes.first {
                // We do not generate the enums for the Variant type since
                // they are already generated.
                if scope != "Variant" {
                    Spacer()
                    
                    Extension(scope.toSwift()) {
                        `enum`.code()
                    }
                }
            } else {
                Spacer()
                
                `enum`.code()
            }
        }
    }
}
