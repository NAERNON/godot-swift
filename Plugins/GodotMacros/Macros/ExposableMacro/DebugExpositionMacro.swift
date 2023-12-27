import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics
import Foundation

public enum DebugExpositionMacro: PeerMacro {
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
        
        let arguments = node.arguments?.as(LabeledExprListSyntax.self)!
        
        let classToken = arguments!.first { argument in
            argument.label?.trimmedDescription == "type"
        }!.expression.as(DeclReferenceExprSyntax.self)!.baseName
        
        let isClassPublic = arguments?.first { argument in
            argument.label?.trimmedDescription == "isClassPublic"
        }!.expression.as(BooleanLiteralExprSyntax.self)!.literal.tokenKind == .keyword(.true)
        
        switch exposableMember.checkExpositionAvailable(
            className: classToken,
            isContextPublic: isClassPublic
        ) {
        case .failure(let error):
            context.diagnose(Diagnostic(
                node: Syntax(declaration),
                message: GodotDiagnostic(
                    "Declaration is not handled by the '@Exposable' macro (\(error))",
                    severity: .warning
                )
            ))
            
            return []
        case .success(_): break
        }
        
        guard let exposableSyntax = exposableMember.expositionSyntax(
            className: classToken,
            isContextPublic: isClassPublic,
            namePrefix: String(),
            in: context
        ) else {
            return []
        }
        
        let functionDecl = try FunctionDeclSyntax(
            "private static func debugExposeMember()"
        ) {
            exposableSyntax
        }
        
        return [DeclSyntax(functionDecl)] + exposableMember.expositionPeerSyntax(
            className: classToken,
            isContextPublic: isClassPublic,
            in: context
        )
    }
}
