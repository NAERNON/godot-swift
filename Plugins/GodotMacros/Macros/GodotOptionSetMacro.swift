import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics
import Utils

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
        
        let cases = optionSetCases(for: structDecl, in: context)
        
        let accessModifier = structDecl.effectiveAccessModifier(minimum: .fileprivate)
        let extensionDeclSyntax = try ExtensionDeclSyntax("extension \(type.trimmed): Godot.GodotOptionSet, Godot.VariantConvertible") {
            """
            \(accessModifier) static let variantType: Godot.Variant.RepresentationType = RawValue.variantType
            
            \(accessModifier) func makeVariant() -> Godot.Variant.Storage {
                rawValue.makeVariant()
            }
            
            \(accessModifier) static func fromCompatibleVariant(_ variant: borrowing Godot.Variant.Storage) -> Self {
                Self(rawValue: RawValue.fromCompatibleVariant(variant))
            }
            
            \(accessModifier) static func fromVariant(_ variant: borrowing Godot.Variant.Storage) throws -> Self {
                Self(rawValue: try RawValue.fromVariant(variant))
            }
            """
            
            try FunctionDeclSyntax("\(accessModifier) static func hintValues() -> [(name: Swift.String, value: RawValue)]") {
                "["
                for caseName in cases {
                    let translatedName = NamingConvention.camel.makeSentence(caseName)
                    
                    "(\(literal: translatedName), Self.\(raw: caseName).rawValue),"
                }
                "]"
            }
            
            try FunctionDeclSyntax("fileprivate static func godotExposableValues() -> [(Godot.GodotStringName, Int64)]") {
                "["
                let snakeOptionSetName = structDecl.name.trimmedDescription
                    .translated(from: .pascal, to: .snake)
                
                for caseName in cases {
                    let snakeCaseName = caseName
                        .translated(from: .pascal, to: .snake)
                    
                    let translatedCaseName = (snakeOptionSetName + "_" + snakeCaseName).uppercased()
                    
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
        guard let structDecl = declaration.as(StructDeclSyntax.self) else {
            return []
        }
        
        let accessModifier = structDecl.effectiveAccessModifier(minimum: .fileprivate)
        return [
        """
        \(accessModifier) typealias RawValue = Int64
        
        \(accessModifier) let rawValue: Int64
        
        \(accessModifier) init(rawValue: Int64) {
            self.rawValue = rawValue
        }
        """
        ]
    }
    
    private static func optionSetCases(
        for structDecl: StructDeclSyntax,
        in context: some MacroExpansionContext
    ) -> [String] {
        let members = structDecl.memberBlock.members
        let structName = structDecl.name.trimmedDescription
        
        var cases = [String]()
        
        let accessModifierKeyword = structDecl.effectiveAccessModifierKeyword(minimum: .fileprivate)
        
        for member in members {
            if let variableDecl = member.decl.as(VariableDeclSyntax.self) {
                let isStatic = variableDecl.modifiers.map(\.name.tokenKind).contains(where: {
                    $0 == .keyword(.static)
                })
                let isAccessible = variableDecl.isAccessModifierMoreAccessible(than: accessModifierKeyword)
                let isLet = variableDecl.bindingSpecifier.tokenKind == .keyword(.let)
                
                // We only retrieve static, accessible and let variables.
                guard isStatic && isAccessible && isLet,
                      let binding = variableDecl.bindings.first
                else {
                    continue
                }
                
                // Check that a type is explicitly defined
                if let typeAnnotation = binding.typeAnnotation,
                   let typeSyntax = typeAnnotation.type.as(IdentifierTypeSyntax.self)?.name.tokenKind {
                    // Check that the given type is either Self or the name of the struct
                    switch typeSyntax {
                    case .keyword(.Self), .identifier(structName):
                        cases.append(binding.pattern.trimmedDescription)
                    default:
                        continue
                    }
                } else if let calledInitializer = binding.initializer?.value.as(FunctionCallExprSyntax.self)?
                    .calledExpression.trimmedDescription {
                    // Check that the value provided is the same type
                    switch calledInitializer {
                    case "Self", structName:
                        cases.append(binding.pattern.trimmedDescription)
                    default:
                        continue
                    }
                }
            }
        }
        
        return cases
    }
}
