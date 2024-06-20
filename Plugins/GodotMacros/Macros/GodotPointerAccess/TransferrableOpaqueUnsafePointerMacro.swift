import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics

public enum TransferrableOpaqueUnsafePointerMacro: DeclarationMacro {
    public static func expansion(
        of node: some FreestandingMacroExpansionSyntax,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        guard let type = node.as(MacroExpansionExprSyntax.self)?.arguments.first else {
            fatalError("Compiler error")
        }
        
        return ["""
        internal func withTransferrableUnsafeRawPointer<Result>(
            to value: \(type),
            _ body: (UnsafeRawPointer) throws -> Result
        ) rethrows -> Result {
            try value.withUnsafeOpaquePointer(body)
        }
        
        internal func withTransferrableUnsafeMutableRawPointer<Result>(
            to value: inout \(type),
            _ body: (UnsafeMutableRawPointer) throws -> Result
        ) rethrows -> Result {
            try value.withUnsafeMutableOpaquePointer(body)
        }
        
        internal func fromInitializingTransferrableUnsafeRawPointer(
            _ body: (UnsafeMutableRawPointer) -> Void
        ) -> \(type) {
            var storage = \(type).makeOpaqueStorage()
            storage.withUnsafeMutableRawPointer(body)
            return \(type)(storage: storage)
        }
        """]
    }
}
