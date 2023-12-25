import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics
import Utils
import Foundation

public enum ReceiverMacro: PeerMacro {
    public static func expansion(
        of node: AttributeSyntax,
        providingPeersOf declaration: some DeclSyntaxProtocol,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        guard let functionDeclSyntax = declaration.declarationInspector.as(
            FunctionDeclSyntax.self,
            diagnoseOtherwise: "'@Receiver' macro can only be applied to functions",
            in: context
        ) else {
            return []
        }
        
        if functionDeclSyntax.inspector.diagnoseIfOverride(
            "Receiver cannot be an override function",
            in: context
        ) { return [] }
        
        if functionDeclSyntax.inspector.diagnoseIfReturnClauseExists(
            "Receiver cannot define a return clause",
            in: context
        ) { return [] }
        
        return []
    }
}
