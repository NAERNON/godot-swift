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
        
        public consuming func copyToGodot(
            unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer
        ) {
            var copy = consume self
            if isKnownUniquelyReferenced(&copy.opaque) {
                copy.opaque.withUnsafeMutableRawPointer { ptr in
                    destinationUnsafePointer.copyMemory(from: ptr, byteCount: copy.opaque.size)
                }
                copy.opaque.destructorPtr = nil
            } else {
                let newOpaque = copy.withCopiedOpaque().opaque
                newOpaque.withUnsafeMutableRawPointer { ptr in
                    destinationUnsafePointer.copyMemory(from: ptr, byteCount: newOpaque.size)
                }
                newOpaque.destructorPtr = nil
            }
        }
        
        public func withGodotUnsafeRawPointer<Result>(
            _ body: (UnsafeRawPointer) throws -> Result
        ) rethrows -> Result {
            try opaque.withUnsafeMutableRawPointer { try body($0) }
        }
        
        public mutating func withGodotUnsafeMutableRawPointer<Result>(
            _ body: (UnsafeMutableRawPointer) throws -> Result
        ) rethrows -> Result {
            try opaque.withUnsafeMutableRawPointer(body)
        }
        
        static func fromMutatingGodotUnsafePointer(_ body: (UnsafeMutableRawPointer) -> Void) -> Self {
            let value = Self()
            value.opaque.withUnsafeMutableRawPointer(body)
            return value
        }
        """)
        
        return [declSyntax]
    }
}
