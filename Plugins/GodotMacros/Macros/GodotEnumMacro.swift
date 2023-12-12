import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics
import Utils

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
                message: GodotDiagnostic("Godot enum must be an 'enum'")
            ))
            return []
        }
        
        let notInt64Diagnostic = GodotDiagnostic("Godot enum does not have an 'Int64' raw type")
        
        guard let inheritedType = enumDecl.inheritanceClause?.inheritedTypes.first else {
            // Provide a fixit with the type Int64 explicitly added to the enum
            let fixedEnumDecl = enumDecl
                .with(
                    \.inheritanceClause,
                     InheritanceClauseSyntax(
                        colon: .colonToken(leadingTrivia: [], trailingTrivia: .space),
                        inheritedTypes: [InheritedTypeSyntax(type: IdentifierTypeSyntax(name: "Int64"))]
                     )
                     .with(\.trailingTrivia, .space)
                     .with(\.leadingTrivia, [])
                )
                .with(\.name.trailingTrivia, [])
            let fixIt = FixIt(message: GodotDiagnostic("Insert 'Int64'"), changes: [
                .replace(
                    oldNode: Syntax(enumDecl),
                    newNode: Syntax(fixedEnumDecl))
            ])
            
            context.diagnose(Diagnostic(
                node: Syntax(declaration),
                message: notInt64Diagnostic,
                fixIt: fixIt
            ))
            return []
        }
        
        guard inheritedType.type.as(IdentifierTypeSyntax.self)?.name.tokenKind == .identifier("Int64") else {
            context.diagnose(Diagnostic(
                node: Syntax(inheritedType),
                message: notInt64Diagnostic
            ))
            return []
        }
        
        let cases = enumCases(for: enumDecl)
        
        let accessModifier = enumDecl.effectiveAccessModifier(minimum: .fileprivate)
        let extensionDeclSyntax = try ExtensionDeclSyntax("extension \(type.trimmed): Godot.GodotEnum") {
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
                let snakeEnumName = enumDecl.name.trimmedDescription
                    .translated(from: .pascal, to: .snake)
                
                for caseName in cases {
                    let snakeCaseName = caseName
                        .translated(from: .pascal, to: .snake)
                    
                    let translatedCaseName = (snakeEnumName + "_" + snakeCaseName).uppercased()
                    
                    "(\(literal: translatedCaseName), Self.\(raw: caseName).rawValue),"
                }
                "]"
            }
        }
        
        return [extensionDeclSyntax]
    }
    
    private static func enumCases(for enumDecl: EnumDeclSyntax) -> [String] {
        let memberBlockList = enumDecl.memberBlock.members
        
        var cases = [String]()
        
        for block in memberBlockList {
            if let caseElements = block.decl.as(EnumCaseDeclSyntax.self)?.elements {
                for element in caseElements {
                    cases.append(element.name.trimmedDescription)
                }
            }
        }
        
        return cases
    }
}
