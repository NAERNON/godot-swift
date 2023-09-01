import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics
import CodeTranslator

public enum GodotOptionSetMacro: ExtensionMacro, MemberMacro {
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
                message: GodotDiagnostic("Godot option set must be a 'struct'")
            ))
            return []
        }
        
        guard let cases = optionSetCases(for: structDecl, in: context) else {
            return []
        }
        
        let extensionDeclSyntax = try ExtensionDeclSyntax("extension \(type.trimmed): OptionSet, Godot.VariantConvertible") {
            """
            public static let variantType: Godot.Variant.RepresentationType = RawValue.variantType
            
            public func makeVariant() -> Godot.Variant.Storage {
                rawValue.makeVariant()
            }
            
            public static func fromCompatibleVariant(_ variant: borrowing Godot.Variant.Storage) -> Self {
                Self(rawValue: RawValue.fromCompatibleVariant(variant))
            }
            
            public static func fromVariant(_ variant: borrowing Godot.Variant.Storage) throws -> Self {
                Self(rawValue: try RawValue.fromVariant(variant))
            }
            """
            
            try FunctionDeclSyntax("public static func godotExposableValues() -> [(Godot.GodotStringName, Int64)]") {
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
        
        let caseNotLetAndExplicitTypeDiagnostic = GodotDiagnostic("Expected 'Self' before '=' in Godot option set static variable")
        
        for member in members {
            if let variableDecl = member.decl.as(VariableDeclSyntax.self) {
                let isStatic = variableDecl.modifiers?.map(\.name.tokenKind).contains(where: {
                    $0 == .keyword(.static)
                }) == true
                
                let isPublic = variableDecl.modifiers?.map(\.name.tokenKind).contains(where: {
                    $0 == .keyword(.public)
                }) == true
                
                guard isStatic && isPublic else {
                    continue
                }
                
                // Any public static value inside an GodotOptionSet should
                // be a let, with an explicit type to Self, or the name of the struct
                guard variableDecl.bindingSpecifier.tokenKind == .keyword(.let),
                      let binding = variableDecl.bindings.first else {
                    context.diagnose(Diagnostic(
                        node: Syntax(variableDecl.bindingSpecifier),
                        message: caseNotLetAndExplicitTypeDiagnostic
                    ))
                    casesAreCorrect = false
                    continue
                }
                
                // Check that a type is explicitly defined
                guard let typeAnnotation = binding.typeAnnotation,
                      let typeSyntax = typeAnnotation.type.as(IdentifierTypeSyntax.self)?.name.tokenKind
                else {
                    // Provide fixit with the type Self added before the = of
                    // the static variable
                    let fixedBindingDecl = binding
                        .with(
                            \.typeAnnotation,
                             TypeAnnotationSyntax(
                                colon: .colonToken(leadingTrivia: [], trailingTrivia: .space),
                                type: IdentifierTypeSyntax(name: .keyword(.Self))
                             )
                             .with(\.trailingTrivia, .space)
                             .with(\.leadingTrivia, [])
                        )
                        .with(\.pattern.trailingTrivia, [])
                    let fixIt = FixIt(message: GodotDiagnostic("Insert 'Self'"), changes: [
                        .replace(
                            oldNode: Syntax(binding),
                            newNode: Syntax(fixedBindingDecl))
                    ])
                    
                    context.diagnose(Diagnostic(
                        node: Syntax(variableDecl.bindings),
                        message: caseNotLetAndExplicitTypeDiagnostic,
                        fixIt: fixIt
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
                        node: Syntax(typeAnnotation),
                        message: caseNotLetAndExplicitTypeDiagnostic
                    ))
                    casesAreCorrect = false
                    continue
                }
            }
        }
        
        guard casesAreCorrect else {
            return nil
        }
        
        return cases
    }
}
