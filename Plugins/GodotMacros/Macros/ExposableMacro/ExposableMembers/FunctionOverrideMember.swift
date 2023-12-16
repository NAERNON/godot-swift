import SwiftSyntax
import SwiftDiagnostics
import SwiftSyntaxMacros
import Utils

struct FunctionOverrideMember: ExposableMember {
    enum ExpositionError: Error, CustomStringConvertible {
        case isNotPublic
        
        var description: String {
            switch self {
            case .isNotPublic:
                "The function override is not public"
            }
        }
    }
    
    let functionDeclSyntax: FunctionDeclSyntax
    
    init?(declSyntax: some DeclSyntaxProtocol) {
        guard let functionDeclSyntax = declSyntax.as(FunctionDeclSyntax.self) else {
            return nil
        }
        
        let tokens = functionDeclSyntax.modifiers.map(\.name.tokenKind)
        guard tokens.contains(where: { $0 == .keyword(.override) })
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
    
    func checkShouldBeExposed() throws {
        if !functionDeclSyntax.isPublic() {
            throw ExpositionError.isNotPublic
        }
    }
    
    func expositionSyntax(
        classContext: TokenSyntax,
        namePrefix: String,
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
