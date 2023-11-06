import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics
import Foundation

public enum HintMacro: PeerMacro {
    public static func expansion(
        of node: AttributeSyntax,
        providingPeersOf declaration: some DeclSyntaxProtocol,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        // Check is variable
        guard declaration.is(VariableDeclSyntax.self) else {
            context.diagnose(Diagnostic(
                node: Syntax(node),
                message: GodotDiagnostic("'@Hint' can only be applied to a variable")
            ))
            return []
        }
        
        return []
    }
}
