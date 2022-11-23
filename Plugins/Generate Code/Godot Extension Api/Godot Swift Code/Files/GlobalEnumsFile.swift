import Foundation

struct GlobalEnumsFile: SwiftFile {
    let path = "GlobalEnums.swift"
    let enums: [ExtensionApi.Enum]
    let translated: Bool

    init(enums: [ExtensionApi.Enum], translated: Bool) {
        self.enums = enums
        self.translated = translated
    }

    var code: some SwiftCode {
        Import.foundation

        ForEach(enums.filter { !$0.name.contains(".") }) { enumCode in
            Spacer()

            enumCode.code(translated: translated)
        }
    }
}
