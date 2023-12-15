import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics
import Foundation

public enum ExpositionTestMacro: PeerMacro {
    public static func expansion(
        of node: AttributeSyntax,
        providingPeersOf declaration: some DeclSyntaxProtocol,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        guard let exposableMember = declaration.exposableMember() else {
            context.diagnose(Diagnostic(
                node: Syntax(declaration),
                message: GodotDiagnostic(
                    "Declaration is not handled by the '@Exposable' macro (Unknown declaration)",
                    severity: .warning
                )
            ))
            
            return []
        }
        
        do {
            try exposableMember.checkShouldBeExposed()
        } catch {
            context.diagnose(Diagnostic(
                node: Syntax(declaration),
                message: GodotDiagnostic(
                    "Declaration is not handled by the '@Exposable' macro (\(error))",
                    severity: .warning
                )
            ))
            
            return []
        }
        
        guard let argument = node.arguments?.as(LabeledExprListSyntax.self)?
            .first?.expression.as(DeclReferenceExprSyntax.self) else {
            return []
        }
        
        let className = argument.baseName
        
        guard let exposableSyntax = exposableMember.expositionSyntax(
            classContext: className,
            in: context
        ) else {
            return []
        }
        
        let functionDecl = try FunctionDeclSyntax(
            "private static func testExposition()"
        ) {
            exposableSyntax
        }
        
        return [DeclSyntax(functionDecl)]
    }
}
