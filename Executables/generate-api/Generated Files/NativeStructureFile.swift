import SwiftSyntax
import SwiftSyntaxBuilder

extension GeneratedFile {
    static func nativeStructure(
        _ extensionAPI: GodotExtensionAPI,
        for nativeStructure: GodotNativeStructure
    ) -> GeneratedFile {
        .init(path: "Native Structs/" + nativeStructure.name + ".swift") {
            try StructDeclSyntax("public struct \(raw: nativeStructure.name)") {
                nativeStructure.propertiesSyntax()
            }
        }
    }
}
