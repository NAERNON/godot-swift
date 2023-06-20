import SwiftSyntax

extension GeneratedFile {
    private enum VariantSizeFileError: Error {
        case cannotRetreiveVariantClassSize
    }
    
    static func variantSize(
        builtinClassSizes: GodotBuiltinClassSizes,
        for configuration: BuildConfiguration
    ) throws -> GeneratedFile {
        guard let classSize = builtinClassSizes.size(
            ofClass: try .init(cTypeSyntax: "Variant"),
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
