import SwiftSyntax
import SwiftDiagnostics
import SwiftSyntaxMacros
import CodeTranslator

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
        let swiftFunctionName = functionDeclSyntax.name.trimmedDescription
        let functionName = NamingConvention.camel.convert(swiftFunctionName, to: .snake)
        
        let functionCallSyntax = ExprSyntax("""
        Godot.GodotExtension.classRegister.registerFunctionOverride(
            named: \(literal: functionName),
            swiftName: \(literal: swiftFunctionName),
            insideType: self
        )
        """)
        
        return ExprSyntax(functionCallSyntax)
    }
}
