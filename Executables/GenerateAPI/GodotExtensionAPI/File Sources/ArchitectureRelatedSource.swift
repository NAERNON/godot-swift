import SwiftSyntax

struct ArchitectureRelatedSource: FileSource {
    func fileCodeContent(
        for extensionAPI: GodotExtensionAPI,
        with configuration: BuildConfiguration
    ) throws -> CodeBlockItemListSyntax {
        try variantOpaqueSizeDeclSyntax(extensionAPI, with: configuration)
        realDeclSyntax(type: configuration.floatingPointType)
        try intVariantRepresentationDeclSyntax(architecture: configuration.architecture)
        try uintVariantRepresentationDeclSyntax(architecture: configuration.architecture)
    }
    
    private func variantOpaqueSizeDeclSyntax(
        _ extensionAPI: GodotExtensionAPI,
        with configuration: BuildConfiguration
    ) throws -> ExtensionDeclSyntax {
        guard let classSize = extensionAPI.builtinClassSizes.size(
            ofClass: .variant,
            for: configuration
        ) else {
            fatalError("Cannot retrieve variant class size.")
        }
        
        return try ExtensionDeclSyntax("extension Variant") {
            "internal static let opaqueSize: Int = \(raw: classSize)"
        }
    }
    
    private func realDeclSyntax(
        type: BuildConfiguration.FloatingPointType
    ) -> DeclSyntax {
        let floatingPointTypeString = switch type {
        case .float: "Float"
        case .double: "Double"
        }
        
        return """
            public typealias Scalar = \(raw: floatingPointTypeString)
            """
    }
    
    private func intVariantRepresentationDeclSyntax(
        architecture: BuildConfiguration.Architecture
    ) throws -> ExtensionDeclSyntax {
        let type = switch architecture {
        case .arch32: ".int32"
        case .arch64: ".int64"
        }
        
        return try ExtensionDeclSyntax("extension Int") {
            "public static let variantRepresentationType: Variant.RepresentationType = \(raw: type)"
        }
    }
    
    private func uintVariantRepresentationDeclSyntax(
        architecture: BuildConfiguration.Architecture
    ) throws -> ExtensionDeclSyntax {
        let type = switch architecture {
        case .arch32: ".uint32"
        case .arch64: ".uint64"
        }
        
        return try ExtensionDeclSyntax("extension UInt") {
            "public static let variantRepresentationType: Variant.RepresentationType = \(raw: type)"
        }
    }
}
