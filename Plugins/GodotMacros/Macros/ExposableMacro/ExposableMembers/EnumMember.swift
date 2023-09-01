import SwiftSyntax
import SwiftDiagnostics
import SwiftSyntaxMacros
import Utils

struct EnumMember: ExposableMember {
    let enumDeclSyntax: EnumDeclSyntax
    
    init?(declSyntax: some DeclSyntaxProtocol) {
        guard let enumDeclSyntax = declSyntax.as(EnumDeclSyntax.self),
              let tokens = enumDeclSyntax.modifiers?.map(\.name.tokenKind),
              tokens.contains(where: {
                  $0 == .keyword(.public)
              })
        else {
            return nil
        }
        
        self.enumDeclSyntax = enumDeclSyntax
    }
    
    var exposableMemberIdentifier: String {
        enumDeclSyntax.name.trimmedDescription
    }
    
    var attributes: AttributeListSyntax? {
        enumDeclSyntax.attributes
    }
    
    func expositionSyntax(
        classContext: TokenSyntax,
        in context: some MacroExpansionContext
    ) -> ExprSyntax? {
        let attributeSyntax = AttributeSyntax(attributeName: IdentifierTypeSyntax(name: "GodotEnum"))
        let fixItMessage = GodotDiagnostic("Add '@GodotEnum'")
        let diagnostic = GodotDiagnostic("Godot enums must be marked '@GodotEnum'")
        
        // Check @GodotEnum
        guard var attributes = enumDeclSyntax.attributes else {
            // No attributes at all, so provide fixit that adds @GodotEnum
            let fixedDecl = enumDeclSyntax
                .with(\.leadingTrivia, .newline)
                .with(
                    \.attributes,
                     AttributeListSyntax([.attribute(attributeSyntax)])
                )
            let fixIt = FixIt(message: fixItMessage, changes: [
                .replace(
                    oldNode: Syntax(enumDeclSyntax),
                    newNode: Syntax(fixedDecl))
            ])
            
            context.diagnose(Diagnostic(
                node: Syntax(enumDeclSyntax.name),
                message: diagnostic,
                fixIt: fixIt
            ))
            return nil
        }
        
        // Check @GodotEnum
        guard attributes
            .contains(where: { $0.as(AttributeSyntax.self)?.attributeName.trimmedDescription == "GodotEnum" })
        else {
            // No @GodotEnum, so provide fixit that inserts @GodotEnum
            attributes.append(.attribute(attributeSyntax).with(\.leadingTrivia, .newline))
            let fixedDecl = enumDeclSyntax
                .with(
                    \.attributes,
                     attributes
                )
            let fixIt = FixIt(message: fixItMessage, changes: [
                .replace(
                    oldNode: Syntax(enumDeclSyntax),
                    newNode: Syntax(fixedDecl))
            ])
            
            context.diagnose(Diagnostic(
                node: Syntax(enumDeclSyntax.name),
                message: diagnostic,
                fixIt: fixIt
            ))
            return nil
        }
        
        return """
        Godot.GodotExtension.classRegister.registerEnumOrOptionSet(
            named: \(literal: enumDeclSyntax.name.trimmedDescription),
            values: \(raw: enumDeclSyntax.name.trimmedDescription).godotExposableValues(),
            isOptionSet: false,
            insideType: self
        )
        """
    }
}
