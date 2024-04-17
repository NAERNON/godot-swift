import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics

public enum TransferrableBitwiseUnsafePointerMacro: DeclarationMacro {
    public static func expansion(
        of node: some FreestandingMacroExpansionSyntax,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        guard let type = node.as(MacroExpansionExprSyntax.self)?.arguments.first else {
            fatalError("Compiler error.")
        }
        
        return ["""
        internal func withTransferrableUnsafeRawPointer<Result>(
            to value: \(type),
            _ body: (UnsafeRawPointer) throws -> Result
        ) rethrows -> Result {
            try withUnsafePointer(to: value) { try body($0) }
        }
        
        internal func withTransferrableUnsafeMutableRawPointer<Result>(
            to value: inout \(type),
            _ body: (UnsafeMutableRawPointer?) throws -> Result
        ) rethrows -> Result {
            try withUnsafeMutablePointer(to: &value) { try body($0) }
        }
        
        internal func fromInitializingTransferrableUnsafeRawPointer(
            _ body: (UnsafeMutableRawPointer) -> Void
        ) -> \(type) {
            var value = \(type)()
            withUnsafeMutablePointer(to: &value) { body($0) }
            return value
        }
        """]
    }
}
