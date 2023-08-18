import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics

private enum GodotEnumMacroDiagnostic: String, DiagnosticMessage {
    case notAnEnum
    case notInt64
    
    var severity: DiagnosticSeverity { .error }
    
    var message: String {
        switch self {
        case .notAnEnum:
            "'@GodotEnum' can only be applied to an 'enum'"
        case .notInt64:
            "'@GodotEnum' can only be applied to an enum with an explicit 'Int64' raw type"
        }
    }
    
    var diagnosticID: MessageID {
        MessageID(domain: "GodotMacros", id: rawValue)
    }
}

private enum GodotEnumMacroFixItMessage: String, FixItMessage {
    case addInt64Type
    
    var message: String {
        switch self {
        case .addInt64Type:
            "Add 'Int64' type to the enum"
        }
    }
    
    var fixItID: MessageID {
        MessageID(domain: "GodotMacros", id: rawValue)
    }
}

public enum GodotEnumMacro: ExtensionMacro {
    public static func expansion(
        of node: AttributeSyntax,
        attachedTo declaration: some DeclGroupSyntax,
        providingExtensionsOf type: some TypeSyntaxProtocol,
        conformingTo protocols: [TypeSyntax],
        in context: some MacroExpansionContext
    ) throws -> [ExtensionDeclSyntax] {
        guard let enumDecl = declaration.as(EnumDeclSyntax.self) else {
            context.diagnose(Diagnostic(
                node: Syntax(declaration),
                message: GodotEnumMacroDiagnostic.notAnEnum
            ))
            return []
        }
        
        guard let inheritedType = enumDecl.inheritanceClause?.inheritedTypes.first else {
            let fixedEnumDecl = enumDecl.with(
                \.inheritanceClause,
                 InheritanceClauseSyntax(
                    colon: .colonToken(leadingTrivia: [], trailingTrivia: .space),
                    inheritedTypes: [InheritedTypeSyntax(type: IdentifierTypeSyntax(name: "Int64"))])
                    .with(\.trailingTrivia, .space)
                    .with(\.leadingTrivia, [])
            )
            let fixIt = FixIt(message: GodotEnumMacroFixItMessage.addInt64Type, changes: [
                .replace(
                    oldNode: Syntax(enumDecl),
                    newNode: Syntax(fixedEnumDecl))
            ])
            
            context.diagnose(Diagnostic(
                node: Syntax(declaration),
                message: GodotEnumMacroDiagnostic.notInt64,
                fixIt: fixIt
            ))
            return []
        }
        
        guard inheritedType.type.as(IdentifierTypeSyntax.self)?.name.tokenKind == .identifier("Int64") else {
            context.diagnose(Diagnostic(
                node: Syntax(inheritedType),
                message: GodotEnumMacroDiagnostic.notInt64
            ))
            return []
        }
        
        let variantConvertibleExtension: DeclSyntax =
        """
        extension \(type.trimmed): VariantConvertible {
            public static let variantType: Variant.RepresentationType = RawValue.variantType
        
            public func makeVariant() -> Variant {
                rawValue.makeVariant()
            }
            
            public static func fromMatchingTypeVariant(_ variant: Variant) -> Self {
                Self(rawValue: RawValue.fromMatchingTypeVariant(variant))!
            }
        
            public static func fromVariant(_ variant: Variant) throws -> Self {
                try variant.checkType(Self.variantType)
                
                enum Error: Swift.Error {
                    case incorrectRawValue
                    
                    var errorDescription: Swift.String {
                        "Incorrect raw value"
                    }
                }
                
                guard let value = Self(rawValue: RawValue.fromMatchingTypeVariant(variant)) else {
                    throw Error.incorrectRawValue
                }
                
                return value
            }
        }
        """
        
        guard let extensionDecl = variantConvertibleExtension.as(ExtensionDeclSyntax.self) else {
            return []
        }
        
        return [extensionDecl]
    }
}
