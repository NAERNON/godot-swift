import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics
import CodeTranslator

private enum ExposableOptionSetMacroDiagnostic: String, DiagnosticMessage {
    case notAStruct
    case caseNotLetAndExplicitType
    
    var severity: DiagnosticSeverity { .error }
    
    var message: String {
        switch self {
        case .notAStruct:
            "'@ExposableOptionSet' can only be applied to a 'struct'"
        case .caseNotLetAndExplicitType:
            "'@ExposableOptionSet' constrain every public static variables to be 'let', and to define an explicit Self type"
        }
    }
    
    var diagnosticID: MessageID {
        MessageID(domain: "GodotMacros", id: rawValue)
    }
}

public enum ExposableOptionSetMacro: ExtensionMacro, MemberMacro {
    public static func expansion(
        of node: AttributeSyntax,
        attachedTo declaration: some DeclGroupSyntax,
        providingExtensionsOf type: some TypeSyntaxProtocol,
        conformingTo protocols: [TypeSyntax],
        in context: some MacroExpansionContext
    ) throws -> [ExtensionDeclSyntax] {
        guard let structDecl = declaration.as(StructDeclSyntax.self) else {
            context.diagnose(Diagnostic(
                node: Syntax(declaration),
                message: ExposableOptionSetMacroDiagnostic.notAStruct
            ))
            return []
        }
        
        guard let cases = optionSetCases(for: structDecl, in: context) else {
            return []
        }
        
        let extensionDeclSyntax = try ExtensionDeclSyntax("extension \(type.trimmed): OptionSet, VariantConvertible") {
            """
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
            """
            
            try FunctionDeclSyntax("public static func godotExposableValues() -> [(GodotStringName, Int64)]") {
                "["
                for caseName in cases {
                    let snakeEnumName = NamingConvention.pascal.convert(
                        structDecl.name.trimmedDescription, to: .snake
                    )
                    
                    let snakeCaseName = NamingConvention.pascal.convert(
                        caseName, to: .snake
                    )
                    
                    let translatedCaseName = (snakeEnumName + "_" + snakeCaseName).uppercased()
                    
                    "(\(literal: translatedCaseName), Self.\(raw: caseName).rawValue),"
                }
                "]"
            }
        }
        
        return [extensionDeclSyntax]
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
    
    private static func optionSetCases(
        for structDecl: StructDeclSyntax,
        in context: some MacroExpansionContext
    ) -> [String]? {
        let members = structDecl.memberBlock.members
        let structName = structDecl.name.trimmedDescription
        
        var cases = [String]()
        var casesAreCorrect = true
        
        for member in members {
            if let variableDecl = member.decl.as(VariableDeclSyntax.self) {
                let isStatic = variableDecl.modifiers?.map(\.name.tokenKind).contains(where: {
                    $0 == .keyword(.static)
                }) == true
                
                let isPublic = variableDecl.modifiers?.map(\.name.tokenKind).contains(where: {
                    $0 == .keyword(.public)
                }) == true
                
                if isStatic && isPublic {
                    // Any public static value inside an ExposableOptionSet should
                    // be a let, with an explicit type to Self, or the name of the struct
                    guard variableDecl.bindingSpecifier.tokenKind == .keyword(.let),
                          let binding = variableDecl.bindings.first else {
                        context.diagnose(Diagnostic(
                            node: Syntax(variableDecl.bindingSpecifier),
                            message: ExposableOptionSetMacroDiagnostic.caseNotLetAndExplicitType
                        ))
                        casesAreCorrect = false
                        continue
                    }
                    
                    guard let typeSyntax = binding.typeAnnotation?.type.as(IdentifierTypeSyntax.self)?.name.tokenKind
                    else {
                        context.diagnose(Diagnostic(
                            node: Syntax(variableDecl.bindingSpecifier),
                            message: ExposableOptionSetMacroDiagnostic.caseNotLetAndExplicitType
                        ))
                        casesAreCorrect = false
                        continue
                    }
                    
                    // Check that the given type is either Self or the name of the struct
                    switch typeSyntax {
                    case .keyword(.Self), .identifier(structName):
                        cases.append(binding.pattern.trimmedDescription)
                    default:
                        context.diagnose(Diagnostic(
                            node: Syntax(variableDecl.bindingSpecifier),
                            message: ExposableOptionSetMacroDiagnostic.caseNotLetAndExplicitType
                        ))
                        casesAreCorrect = false
                        continue
                    }
                }
            }
        }
        
        guard casesAreCorrect else {
            return nil
        }
        
        return cases
    }
}
