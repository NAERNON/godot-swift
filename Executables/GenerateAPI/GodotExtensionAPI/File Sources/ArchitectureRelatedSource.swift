
struct ArchitectureRelatedSource: FileSource {
    func fileCodeContent(
        for extensionAPI: GodotExtensionAPI,
        with configuration: BuildConfiguration
    ) throws -> Syntax {
        Syntax(separator: .newlines(2)) {
            variantOpaqueSizeDeclSyntax(extensionAPI, with: configuration)
            realDeclSyntax(type: configuration.floatingPointType)
            intVariantRepresentationDeclSyntax(architecture: configuration.architecture)
            uintVariantRepresentationDeclSyntax(architecture: configuration.architecture)
        }
    }
    
    private func variantOpaqueSizeDeclSyntax(
        _ extensionAPI: GodotExtensionAPI,
        with configuration: BuildConfiguration
    ) -> Syntax {
        guard let classSize = extensionAPI.builtinClassSizes.size(
            ofClass: .variant,
            for: configuration
        ) else {
            fatalError("Cannot retrieve variant class size")
        }
        
        return """
        extension Variant {
            internal static let opaqueSize: Int = \(classSize)
        }
        """
    }
    
    private func realDeclSyntax(
        type: BuildConfiguration.FloatingPointType
    ) -> Syntax {
        let floatingPointTypeString = switch type {
        case .float: "Float"
        case .double: "Double"
        }
        
        return "public typealias Scalar = \(floatingPointTypeString)"
    }
    
    private func intVariantRepresentationDeclSyntax(
        architecture: BuildConfiguration.Architecture
    ) -> Syntax {
        let type = switch architecture {
        case .arch32: ".int32"
        case .arch64: ".int64"
        }
        
        return """
        extension Int {
            public static let variantRepresentationType: Variant.RepresentationType = \(type)
        }
        """
    }
    
    private func uintVariantRepresentationDeclSyntax(
        architecture: BuildConfiguration.Architecture
    ) -> Syntax {
        let type = switch architecture {
        case .arch32: ".uint32"
        case .arch64: ".uint64"
        }
        
        return """
        extension UInt {
            public static let variantRepresentationType: Variant.RepresentationType = \(type)
        }
        """
    }
}
