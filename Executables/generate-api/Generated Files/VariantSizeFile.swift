import SwiftSyntax

extension GeneratedFile {
    static func variantSize(
        _ extensionAPI: GodotExtensionAPI,
        with configuration: BuildConfiguration
    ) -> GeneratedFile {
        guard let classSize = extensionAPI.builtinClassSizes.size(
            ofClass: .variant,
            for: configuration
        ) else {
            fatalError("Cannot rtreive variant class size.")
        }
        
        return .init(path: "VariantSize.swift") {
            DeclSyntax("""
            extension Variant {
                internal static let opaqueSize: Int = \(raw: classSize)
            }
            """)
        }
    }
}
