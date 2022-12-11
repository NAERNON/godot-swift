import Foundation

struct GlobalEnumsFile: SwiftFile {
    let path = "GlobalEnums.swift"
    let enums: [ExtensionApi.Enum]

    init(enums: [ExtensionApi.Enum]) {
        self.enums = enums
    }

    var code: some SwiftCode {
        Import.foundation

        ForEach(enums.filter { !$0.name.contains(".") }) { enumCode in
            Spacer()

            enumCode.code()
        }
    }
}
