import SwiftSyntax
import SwiftSyntaxMacros
import SwiftDiagnostics

extension DeclSyntaxProtocol {
    var declarationInspector: DeclarationInspector<Self> {
        .init(self)
    }
}

extension DeclGroupSyntax {
    var declarationInspector: DeclarationInspector<Self> {
        .init(self)
    }
}

struct DeclarationInspector<Decl> where Decl : SyntaxProtocol {
    let declSyntax: Decl
    
    fileprivate init(_ declSyntax: Decl) {
        self.declSyntax = declSyntax
    }
    
    func `as`<Converted>(
        _ convertedDeclType: Converted.Type,
        diagnoseOtherwise warning: String,
        in context: some MacroExpansionContext
    ) -> Converted? where Converted : DeclSyntaxProtocol {
        guard let converted = declSyntax.as(Converted.self) else {
            context.diagnose(Diagnostic(
                node: Syntax(declSyntax),
                message: GodotDiagnostic(warning)
            ))
            return nil
        }
        
        return converted
    }
}
