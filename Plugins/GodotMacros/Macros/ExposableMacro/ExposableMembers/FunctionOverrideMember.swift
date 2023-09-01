import SwiftSyntax
import SwiftDiagnostics
import SwiftSyntaxMacros
import Utils

struct FunctionOverrideMember: ExposableMember {
    let functionDeclSyntax: FunctionDeclSyntax
    
    init?(declSyntax: some DeclSyntaxProtocol) {
        guard let functionDeclSyntax = declSyntax.as(FunctionDeclSyntax.self),
              let tokens = functionDeclSyntax.modifiers?.map(\.name.tokenKind),
              tokens.contains(where: {
                  $0 == .keyword(.public) || $0 == .keyword(.open)
              }),
              tokens.contains(where: { $0 == .keyword(.override) })
        else {
            return nil
        }
        
        self.functionDeclSyntax = functionDeclSyntax
    }
    
    var exposableMemberIdentifier: String {
        functionDeclSyntax.name.trimmedDescription
    }
    
    var attributes: AttributeListSyntax? {
        functionDeclSyntax.attributes
    }
    
    func expositionSyntax(
        classContext: TokenSyntax,
        in context: some MacroExpansionContext
    ) -> ExprSyntax? {
        return ExprSyntax("""
        Godot.GodotExtension.classRegister.registerFunctionOverride(
            named: \(literal: functionDeclSyntax.name.trimmedDescription),
            insideType: self
        )
        """)
    }
}
