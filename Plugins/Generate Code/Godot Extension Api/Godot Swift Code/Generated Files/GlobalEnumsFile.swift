import Foundation

struct GlobalEnumsFile: GeneratedSwiftFile {
    let path = "GlobalEnums.swift"
    let enums: [ExtensionApi.Enum]

    init(enums: [ExtensionApi.Enum]) {
        self.enums = enums
    }

    var code: some SwiftCode {
        Import.foundation

        ForEach(enums.filter { !$0.name.godotName.contains(".") }) { enumCode in
            Spacer()

            enumCode.code()
        }
    }
}
