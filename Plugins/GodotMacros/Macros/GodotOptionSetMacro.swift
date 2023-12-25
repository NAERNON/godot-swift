import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics
import Utils

public enum GodotOptionSetMacro: ExtensionMacro {
    public static func expansion(
        of node: AttributeSyntax,
        attachedTo declaration: some DeclGroupSyntax,
        providingExtensionsOf type: some TypeSyntaxProtocol,
        conformingTo protocols: [TypeSyntax],
        in context: some MacroExpansionContext
    ) throws -> [ExtensionDeclSyntax] {
        guard let structDeclSyntax = declaration.declarationInspector.as(
            StructDeclSyntax.self,
            diagnoseOtherwise: "'@GodotOptionSet' macro can only be applied to structs",
            in: context
        ) else {
            return []
        }
        
        let cases = optionSetCases(for: structDeclSyntax, in: context)
        
        let accessModifier = structDeclSyntax.accessModifierInspector
            .effectiveAccessModifier(minimum: .fileprivate)
        let extensionDeclSyntax = try ExtensionDeclSyntax("extension \(type.trimmed): Godot.GodotOptionSet") {
            "\(accessModifier) typealias RawValue = Int64"
            
            try FunctionDeclSyntax("\(accessModifier) static func hintValues() -> [(name: Swift.String, value: RawValue)]") {
                "["
                for caseName in cases {
                    let translatedName = NamingConvention.camel.makeSentence(caseName)
                    
                    "(\(literal: translatedName), Self.\(raw: caseName).rawValue),"
                }
                "]"
            }
            
            try FunctionDeclSyntax("fileprivate static func godotExposableValues() -> [(Godot.GodotStringName, RawValue)]") {
                "["
                let snakeOptionSetName = structDeclSyntax.name.trimmedDescription
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
    
    private static func optionSetCases(
        for structDeclSyntax: StructDeclSyntax,
        in context: some MacroExpansionContext
    ) -> [String] {
        let members = structDeclSyntax.memberBlock.members
        let structName = structDeclSyntax.name.trimmedDescription
        
        var cases = [String]()
        
        let accessModifierKeyword = structDeclSyntax.accessModifierInspector
            .effectiveAccessModifierKeyword(minimum: .fileprivate)
        
        for member in members {
            if let variableDecl = member.decl.as(VariableDeclSyntax.self) {
                let isStatic = variableDecl.modifiers.map(\.name.tokenKind).contains(where: {
                    $0 == .keyword(.static)
                })
                let isAccessible = variableDecl.accessModifierInspector
                    .isAccessModifierMoreAccessible(than: accessModifierKeyword)
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
