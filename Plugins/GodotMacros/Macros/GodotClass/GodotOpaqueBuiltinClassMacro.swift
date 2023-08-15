import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics
import Foundation

public enum GodotOpaqueBuiltinClassMacro: MemberMacro {
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
        
        /// When a function modifies the opaque array or any value associated,
        /// we should check that the `Opaque` value is uniquely referenced and if not,
        /// duplicate its value.
        internal mutating func replaceOpaqueValueIfNecessary() {
            guard !isKnownUniquelyReferenced(&opaque) else {
                return
            }
            
            self.opaque = self.withCopiedOpaque().opaque
        }
        
        public func withUnsafeRawPointer < Result > (
            _ body: (GDExtensionTypePtr) throws -> Result
        ) rethrows -> Result {
            try opaque.withUnsafeMutableRawPointer(body)
        }
        
        /// Passes the memory management of this instance onto Godot.
        ///
        /// There is a risk of memory leaking if not correctly used.
        internal mutating func consumeByGodot(ontoUnsafePointer destination: UnsafeMutableRawPointer) {
            replaceOpaqueValueIfNecessary()
            opaque.withUnsafeMutableRawPointer { ptr in
                destination.copyMemory(from: ptr, byteCount: opaque.size)
            }
            opaque.destructorPtr = nil
        }
        """)
        
        return [declSyntax]
    }
}
