import SwiftSyntax
import SwiftDiagnostics
import SwiftSyntaxMacros
import Utils

struct FunctionOverrideMember: ExposableMember {
    let functionDeclSyntax: FunctionDeclSyntax
    
    init?(declSyntax: some DeclSyntaxProtocol) {
        guard let functionDeclSyntax = declSyntax.as(FunctionDeclSyntax.self),
              functionDeclSyntax.inspector.isOverride() else {
            return nil
        }
        
        self.functionDeclSyntax = functionDeclSyntax
    }
    
    var attributes: AttributeListSyntax? {
        functionDeclSyntax.attributes
    }
    
    func checkExpositionAvailable(
        className: TokenSyntax,
        isContextPublic: Bool
    ) -> Result<Void, CheckExpositionError> {
        .success(())
    }
    
    func expositionSyntax(
        className: TokenSyntax,
        isContextPublic: Bool,
        namePrefix: String,
        in context: some MacroExpansionContext
    ) -> ExprSyntax? {
        let functionName = removeBackticks(functionDeclSyntax.name.trimmedDescription)
        
        return ExprSyntax("""
        Godot.GodotExtension.classRegistrar.registerFunctionOverride(
            named: \(literal: functionName),
            insideType: \(className).self
        )
        """)
    }
    
    func expositionPeerSyntax(
        className: TokenSyntax,
        isContextPublic: Bool,
        in context: some MacroExpansionContext
    ) -> [DeclSyntax] {
        []
    }
}
