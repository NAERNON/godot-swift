import SwiftSyntax
import SwiftDiagnostics
import SwiftSyntaxMacros
import Utils

struct FunctionOverrideMember: ExposableMember {
    let functionDeclSyntax: FunctionDeclSyntax
    
    init?(declSyntax: some DeclSyntaxProtocol) {
        guard let functionDeclSyntax = declSyntax.as(FunctionDeclSyntax.self) else {
            return nil
        }
        
        let tokens = functionDeclSyntax.modifiers.map(\.name.tokenKind)
        guard functionDeclSyntax.isPublic() && tokens.contains(where: { $0 == .keyword(.override) })
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
        let functionName = removeBackticks(functionDeclSyntax.name.trimmedDescription)
        
        return ExprSyntax("""
        Godot.GodotExtension.classRegistrar.registerFunctionOverride(
            named: \(literal: functionName),
            insideType: self
        )
        """)
    }
}
