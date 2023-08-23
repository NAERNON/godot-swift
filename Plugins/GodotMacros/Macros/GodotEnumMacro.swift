import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics
import CodeTranslator

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
                message: GodotDiagnostic("'@GodotEnum' can only be applied to an 'enum'")
            ))
            return []
        }
        
        let notInt64Diagnostic = GodotDiagnostic("Godot enums can have an explicit 'Int64' raw type")
        
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
            let fixIt = FixIt(message: GodotDiagnostic("Add 'Int64' type to the enum"), changes: [
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
        
        let extensionDeclSyntax = try ExtensionDeclSyntax("extension \(type.trimmed): Godot.VariantConvertible") {
            """
            public static let variantType: Godot.Variant.RepresentationType = RawValue.variantType
            
            public func makeVariant() -> Godot.Variant {
                rawValue.makeVariant()
            }
            
            public static func fromMatchingTypeVariant(_ variant: Godot.Variant) -> Self {
                Self(rawValue: RawValue.fromMatchingTypeVariant(variant))!
            }
            
            public static func fromVariant(_ variant: Godot.Variant) throws -> Self {
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
            """
            
            try FunctionDeclSyntax("public static func godotExposableValues() -> [(Godot.GodotStringName, Int64)]") {
                "["
                for caseName in enumCases(for: enumDecl) {
                    let snakeEnumName = NamingConvention.pascal.convert(
                        enumDecl.name.trimmedDescription, to: .snake
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
