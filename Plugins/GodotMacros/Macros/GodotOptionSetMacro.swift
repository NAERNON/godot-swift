import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics

private enum GodotOptionSetMacroDiagnostic: String, DiagnosticMessage {
    case notAStruct
    
    var severity: DiagnosticSeverity { .error }
    
    var message: String {
        switch self {
        case .notAStruct:
            "'@GodotOptionSet' can only be applied to a 'struct'"
        }
    }
    
    var diagnosticID: MessageID {
        MessageID(domain: "GodotMacros", id: rawValue)
    }
}

public enum GodotOptionSetMacro: ExtensionMacro, MemberMacro {
    public static func expansion(
        of node: AttributeSyntax,
        attachedTo declaration: some DeclGroupSyntax,
        providingExtensionsOf type: some TypeSyntaxProtocol,
        conformingTo protocols: [TypeSyntax],
        in context: some MacroExpansionContext
    ) throws -> [ExtensionDeclSyntax] {
        guard declaration.is(StructDeclSyntax.self) else {
            context.diagnose(Diagnostic(
                node: Syntax(declaration),
                message: GodotOptionSetMacroDiagnostic.notAStruct
            ))
            return []
        }
        
        let variantConvertibleExtension: DeclSyntax =
        """
        extension \(type.trimmed): OptionSet, VariantConvertible {
            public static let variantType: Variant.RepresentationType = RawValue.variantType
        
            public func makeVariant() -> Variant {
                rawValue.makeVariant()
            }
            
            public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
                Self(rawValue: RawValue.fromMatchingTypeVariant(variant))
            }
        
            public static func fromVariant(_ variant: Variant) throws -> Self {
                try variant.checkType(Self.variantType)
                
                return Self(rawValue: RawValue.fromMatchingTypeVariant(variant))
            }
        }
        """
        
        guard let extensionDecl = variantConvertibleExtension.as(ExtensionDeclSyntax.self) else {
            return []
        }
        
        return [extensionDecl]
    }
    
    public static func expansion(
        of attribute: AttributeSyntax,
        providingMembersOf declaration: some DeclGroupSyntax,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        guard declaration.is(StructDeclSyntax.self) else {
            return []
        }
        
        return [
        """
        public typealias RawValue = Int64
        
        public let rawValue: Int64
        
        public init(rawValue: Int64) {
            self.rawValue = rawValue
        }
        """
        ]
    }
}
