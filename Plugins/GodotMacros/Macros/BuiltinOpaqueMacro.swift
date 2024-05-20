import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics
import Foundation

public enum BuiltinOpaqueMacro: MemberMacro {
    // MARK: Member
    
    public static func expansion(
        of attribute: AttributeSyntax,
        providingMembersOf declaration: some DeclGroupSyntax,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        try structExpansion(of: attribute, providingMembersOf: declaration, in: context)
    }
    
    private static func structExpansion(
        of attribute: AttributeSyntax,
        providingMembersOf declaration: some DeclGroupSyntax,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        let declSyntax = DeclSyntax("""
        private var opaque: Opaque
        
        internal init(opaque: Opaque) {
            self.opaque = opaque
        }
        
        func withUnsafeOpaqueBufferPointer<Result>(
            _ body: (UnsafeRawBufferPointer) throws -> Result
        ) rethrows -> Result {
            try opaque.withUnsafeRawBufferPointer(body)
        }
        
        mutating func withUnsafeMutableOpaqueBufferPointer<Result>(
            _ body: (UnsafeMutableRawBufferPointer) throws -> Result
        ) rethrows -> Result {
            try opaque.withUnsafeMutableRawBufferPointer(body)
        }
        
        func withUnsafeOpaquePointer<Result>(
            _ body: (UnsafeRawPointer) throws -> Result
        ) rethrows -> Result {
            try opaque.withUnsafeRawPointer(body)
        }
        
        mutating func withUnsafeMutableOpaquePointer<Result>(
            _ body: (UnsafeMutableRawPointer) throws -> Result
        ) rethrows -> Result {
            try opaque.withUnsafeMutableRawPointer(body)
        }
        """)
        
        return [declSyntax]
    }
}
