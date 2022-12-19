import Foundation

struct GlobalEnumsFile: GeneratedSwiftFile {
    let path = "GlobalEnums.swift"
    let enums: [ExtensionApi.Enum]

    init(enums: [ExtensionApi.Enum]) {
        self.enums = enums
    }

    var code: some SwiftCode {
        Import.foundation

        ForEach(enums) { enumCode in
            Spacer()
            
            if let scope = enumCode.name.scope {
                // We do not generate the enums for the Variant type since
                // they are already generated.
                if scope.toSwift() != "Variant" {
                    Extension(scope.toSwift()) {
                        enumCode.code()
                    }
                }
            } else {
                enumCode.code()
            }
        }
    }
}
