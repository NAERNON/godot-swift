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
        
        let accessModifier = enumDecl.effectiveAccessModifier(minimum: .fileprivate)
        let extensionDeclSyntax = try ExtensionDeclSyntax("extension \(type.trimmed): Godot.VariantConvertible, Godot.GodotEnum") {
            """
            \(accessModifier) static let variantType: Godot.Variant.RepresentationType = RawValue.variantType
            
            \(accessModifier) func makeVariant() -> Godot.Variant.Storage {
                rawValue.makeVariant()
            }
            
            \(accessModifier) static func fromCompatibleVariant(_ variant: borrowing Godot.Variant.Storage) -> Self {
                Self(rawValue: RawValue.fromCompatibleVariant(variant))!
            }
            
            \(accessModifier) static func fromVariant(_ variant: borrowing Godot.Variant.Storage) throws -> Self {
                enum Error: Swift.Error {
                    case incorrectRawValue
                    
                    var errorDescription: Swift.String {
                        "Incorrect raw value"
                    }
                }
                
                let rawValue = try RawValue.fromVariant(variant)
                guard let value = Self(rawValue: rawValue) else {
                    throw Error.incorrectRawValue
                }
                
                return value
            }
            """
            
            try FunctionDeclSyntax("fileprivate static func godotExposableValues() -> [(Godot.GodotStringName, Int64)]") {
                "["
                let snakeEnumName = enumDecl.name.trimmedDescription
                    .translated(from: .pascal, to: .snake)
                
                for caseName in enumCases(for: enumDecl) {
                    let snakeCaseName = caseName
                        .translated(from: .pascal, to: .snake)
                    
                    let translatedCaseName = (snakeEnumName + "_" + snakeCaseName).uppercased()
                    
                    "(\(literal: translatedCaseName), Self.\(raw: caseName).rawValue),"
                }
                "]"
            }
            
            try FunctionDeclSyntax("\(accessModifier) static func hintValues() -> [(name: Swift.String, value: RawValue)]") {
                "["
                for caseName in enumCases(for: enumDecl) {
                    let decomposed = NamingConvention.camel.decompose(string: caseName)
                    let translatedName = decomposed.map { name in
                        guard !name.isEmpty else {
                            return name
                        }
                        
                        var new = name
                        new.insert(contentsOf: new.removeFirst().uppercased(), at: name.startIndex)
                        return new
                    }.joined(separator: " ")
                    
                    "(\(literal: translatedName), Self.\(raw: caseName).rawValue),"
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
