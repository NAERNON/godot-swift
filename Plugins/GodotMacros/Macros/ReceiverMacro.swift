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
        guard let functionDecl = declaration.as(FunctionDeclSyntax.self) else {
            context.diagnose(Diagnostic(
                node: Syntax(declaration),
                message: GodotDiagnostic("Receiver must be a function")
            ))
            return []
        }
        
        // Check is public or open
        guard functionDecl.isPublic() else {
            context.diagnose(functionDecl.notPublicDiagnostic(description: "Receiver is not public"))
            return []
        }
        
        // Check is not override
        if let overrideModifier = functionDecl.modifiers.map(\.name).first(where: {
            $0.tokenKind == .keyword(.override)
        }) {
            context.diagnose(Diagnostic(
                node: Syntax(overrideModifier),
                message: GodotDiagnostic("Receiver cannot be an override")
            ))
            return []
        }
        
        let functionName = removeBackticks(functionDecl.name.trimmedDescription)
        let receiverName = translatedFunctionName(functionDecl)
        let structureName = "Receiver_" + functionName
        let variableName = functionName + "Receiver"
        
        let functionParameterTypes = functionDecl.signature.parameterClause.parameters
            .map { parameter in
                parameter.type.trimmedDescription
            }
        
        let structDecl = try StructDeclSyntax("public struct \(raw: structureName): Godot.Receiver") {
            """
            public typealias SignalInput = (\(raw: functionParameterTypes.joined(separator: ", ")))
            
            public static let receiverName: Godot.GodotStringName = \(literal: receiverName)
            
            public weak private(set) var object: Godot.Object?
            """
            
            try InitializerDeclSyntax("fileprivate init(_ object: Godot.Object)") {
                "self.object = object"
            }
        }
        
        let varDecl: DeclSyntax = "public var \(raw: variableName): \(raw: structureName) { .init(self) }"
        
        return [
            DeclSyntax(structDecl),
            varDecl
        ]
    }
    
    static func translatedFunctionName(_ functionDecl: FunctionDeclSyntax) -> String {
        functionDecl.name.trimmedDescription.translated(from: .camel, to: .snake)
    }
}
