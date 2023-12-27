import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics
import Utils

public enum InterfaceFunctionMacro: DeclarationMacro {
    public static func expansion(
        of node: some FreestandingMacroExpansionSyntax,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        let (name, functionType) = nameAndFunctionType(
            fromMacroDecl: node.as(MacroExpansionDeclSyntax.self)!
        )
        
        let translatedFunction = name.translated(from: .snake, to: .camel)
        
        return ["""
        private static var _\(raw: translatedFunction): \(raw: functionType)?
        
        static var \(raw: translatedFunction): \(raw: functionType) {
            _\(raw: translatedFunction).unsafelyUnwrapped
        }
        """]
    }
    
    static func nameAndFunctionType(
        fromMacroDecl: MacroExpansionDeclSyntax
    ) -> (name: String, functionType: String) {
        var name: String?
        var functionType: String?
        
        for (index, argument) in fromMacroDecl.arguments.enumerated() {
            if index == 0 {
                name = argument.expression.as(StringLiteralExprSyntax.self)?
                    .representedLiteralValue
            } else {
                functionType = argument.trimmedDescription
            }
        }
        
        return (name!, functionType!)
    }
}
