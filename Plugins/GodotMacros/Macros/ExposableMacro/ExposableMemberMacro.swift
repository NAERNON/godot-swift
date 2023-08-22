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
        guard let exposableMember = exposableMember(from: declaration, in: context),
              exposableMember.isExposable(in: context) else {
            return []
        }
        
        guard let argument = node.arguments?.as(LabeledExprListSyntax.self)?
            .first?.expression.as(DeclReferenceExprSyntax.self) else {
            return []
        }
        
        let functionDecl = try FunctionDeclSyntax("private static func \(raw: exposableMember.classExpositionFunctionIdentifier)()") {
            
            exposableMember.expositionSyntax(classContext: argument.baseName, in: context)
        }
        
        return [DeclSyntax(functionDecl)]
    }
    
    private static func exposableMember(
        from declaration: some DeclSyntaxProtocol,
        in context: some MacroExpansionContext
    ) -> ClassExposableMember? {
        guard let member = declaration.exposableMember() else {
            context.diagnose(Diagnostic(
                node: Syntax(declaration),
                message: GodotDiagnostic("'@ExposableMember' cannot be applied to this declaration")
            ))
            
            return nil
        }
        
        return member
    }
}