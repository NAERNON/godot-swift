import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics
import CodeTranslator
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
                message: GodotDiagnostic("Reeiver must be a function")
            ))
            return []
        }
        
        // Check is public or open
        guard functionDecl.modifiers?.map(\.name.tokenKind).contains(where: {
            $0 == .keyword(.public) || $0 == .keyword(.open)
        }) == true else {
            context.diagnose(Diagnostic(
                node: Syntax(functionDecl.funcKeyword),
                message: GodotDiagnostic("Receiver is not public")
            ))
            return []
        }
        
        // Check is not override
        if let overrideModifier = functionDecl.modifiers?.map(\.name).first(where: {
            $0.tokenKind == .keyword(.override)
        }) {
            context.diagnose(Diagnostic(
                node: Syntax(overrideModifier),
                message: GodotDiagnostic("Receiver cannot be an override")
            ))
            return []
        }
        
        let receiverName = translatedFunctionName(functionDecl)
        let structureName = "Receiver_" + functionDecl.name.trimmedDescription
        let variableName = functionDecl.name.trimmedDescription + "Receiver"
        
        let functionParameterTypes = functionDecl.signature.parameterClause.parameters
            .map { parameter in
                parameter.type.trimmedDescription
            }
        
        let structDecl = try StructDeclSyntax("public struct \(raw: structureName): Godot.ReceiverProtocol") {
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
        NamingConvention.camel.convert(functionDecl.name.trimmedDescription, to: .snake)
    }
}
