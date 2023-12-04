import SwiftSyntax

extension GeneratedFile {
    static func architectureRelated(
        _ extensionAPI: GodotExtensionAPI,
        with configuration: BuildConfiguration
    ) -> GeneratedFile {
        .init(path: "ArchitectureRelated.swift") {
            try variantOpaqueSizeDeclSyntax(extensionAPI, with: configuration)
                .with(\.trailingTrivia, .newlines(2))
            
            realDeclSyntax(type: configuration.floatingPointType)
                .with(\.trailingTrivia, .newlines(2))
            
            try intVariantRepresentationDeclSyntax(architecture: configuration.architecture)
                .with(\.trailingTrivia, .newlines(2))
            
            try uintVariantRepresentationDeclSyntax(architecture: configuration.architecture)
                .with(\.trailingTrivia, .newlines(2))
        }
    }
    
    private static func variantOpaqueSizeDeclSyntax(
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
    
    private static func realDeclSyntax(
        type: BuildConfiguration.FloatingPointType
    ) -> DeclSyntax {
        let floatingPointTypeString = switch type {
        case .float: "Float"
        case .double: "Double"
        }
        
        return """
            /// A floating-point value type that depends on the Godot build configuration.
            ///
            /// This typealias represents either a `Float` or a `Double`,
            /// depending on the build configuration.
            ///
            /// > important: Generating the APIs with a different build configuration might
            /// change the `Real` type and break related code.
            public typealias Real = \(raw: floatingPointTypeString)
            """
    }
    
    private static func intVariantRepresentationDeclSyntax(
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
    
    private static func uintVariantRepresentationDeclSyntax(
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
