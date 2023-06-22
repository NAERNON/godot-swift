import SwiftSyntax

extension GeneratedFile {
    private enum VariantSizeFileError: Error {
        case cannotRetreiveVariantClassSize
    }
    
    static func variantSize(
        _ extensionAPI: GodotExtensionAPI,
        for configuration: BuildConfiguration
    ) throws -> GeneratedFile {
        guard let classSize = extensionAPI.builtinClassSizes.size(
            ofClass: .variant,
            for: configuration
        ) else {
            throw VariantSizeFileError.cannotRetreiveVariantClassSize
        }
        
        return try .init(path: "VariantSize.swift") {
            DeclSyntax("""
            extension Variant {
                internal static let opaqueSize: Int = \(raw: classSize)
            }
            """)
        }
    }
}
