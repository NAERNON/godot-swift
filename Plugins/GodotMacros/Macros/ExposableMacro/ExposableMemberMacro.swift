import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics
import Foundation

public enum ExposableMemberMacro: PeerMacro {
    public static func expansion(
        of node: AttributeSyntax,
        providingPeersOf declaration: some DeclSyntaxProtocol,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        guard let exposableMember = declaration.exposableMember() else {
            context.diagnose(Diagnostic(
                node: Syntax(declaration),
                message: GodotDiagnostic("Declaration is not an exposable member")
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
        
        let functionDecl = try FunctionDeclSyntax("private static func \(raw: exposableMember.classExpositionFunctionIdentifier)()") 
        {
            exposableSyntax
        }
        
        return [DeclSyntax(functionDecl)]
    }
}
