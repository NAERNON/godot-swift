import Foundation
import CodeGenerator

struct GlobalEnumsFile: GeneratedFile {
    let path = "GlobalEnums.swift"
    let enums: [ExtensionApi.Enum]

    init(enums: [ExtensionApi.Enum]) {
        self.enums = enums
    }

    var code: some Code {
        Import.foundation

        ForEach(enums) { `enum` in
            if let scope = `enum`.name.firstScopeType() {
                // We do not generate the enums for the Variant type since
                // they are already generated.
                if scope != "Variant" {
                    Extension(scope.toSwift()) {
                        `enum`.code()
                    }
                }
            } else {
                `enum`.code()
            }
        }
    }
}
