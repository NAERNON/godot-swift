import SwiftSyntax
import SwiftDiagnostics
import SwiftSyntaxMacros

struct OptionSetMember: ExposableMember {
    let structDeclSyntax: StructDeclSyntax
    
    init?(declSyntax: some DeclSyntaxProtocol) {
        guard let structDeclSyntax = declSyntax.as(StructDeclSyntax.self),
              let attributes = structDeclSyntax.attributes,
              let tokens = structDeclSyntax.modifiers?.map(\.name.tokenKind),
              tokens.contains(where: {
                  $0 == .keyword(.public)
              }),
              attributes.contains(
                where: { $0.as(AttributeSyntax.self)?.attributeName.trimmedDescription == "GodotOptionSet" }
              )
        else {
            return nil
        }
        
        self.structDeclSyntax = structDeclSyntax
    }
    
    var exposableMemberIdentifier: String {
        structDeclSyntax.name.trimmedDescription
    }
    
    var attributes: AttributeListSyntax? {
        structDeclSyntax.attributes
    }
    
    func expositionSyntax(
        classContext: TokenSyntax,
        in context: some MacroExpansionContext
    ) -> ExprSyntax? {
        return """
        Godot.GodotExtension.classRegister.registerEnumOrOptionSet(
            named: \(literal: structDeclSyntax.name.trimmedDescription),
            values: \(raw: structDeclSyntax.name.trimmedDescription).godotExposableValues(),
            isOptionSet: true,
            insideType: self
        )
        """
    }
}
