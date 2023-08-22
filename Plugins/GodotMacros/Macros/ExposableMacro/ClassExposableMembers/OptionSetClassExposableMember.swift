import SwiftSyntax
import SwiftDiagnostics
import SwiftSyntaxMacros

struct OptionSetClassExposableMember: ClassExposableMember {
    let structDeclSyntax: StructDeclSyntax
    
    init?(_ structDeclSyntax: StructDeclSyntax) {
        self.structDeclSyntax = structDeclSyntax
        
        guard let attributes = structDeclSyntax.attributes else {
            return nil
        }
        
        if !attributes.contains(
            where: { $0.as(AttributeSyntax.self)?.attributeName.trimmedDescription == "ExposableOptionSet" }
        ) {
            return nil
        }
    }
    
    var classExpositionIdentifier: String {
        structDeclSyntax.name.trimmedDescription
    }
    
    /// An option set is excluded from exposition if it:
    /// - is not public
    var isExcludedFromClassExposition: Bool {
        guard let tokens = structDeclSyntax.modifiers?.map(\.name.tokenKind) else {
            return true
        }
        
        return !tokens.contains(where: {
            $0 == .keyword(.public)
        })
    }
    
    /// An option set is *always* exposable.
    func isExposable(
        fromClass classDecl: ClassDeclSyntax,
        in context: some MacroExpansionContext
    ) -> Bool {
        return true
    }
    
    func expositionSyntax(
        fromClass classDecl: ClassDeclSyntax,
        in context: some MacroExpansionContext
    ) -> ExprSyntax {
        """
        Godot.GodotExtension.classRegister.registerEnumOrOptionSet(
            named: \(literal: structDeclSyntax.name.trimmedDescription),
            values: \(raw: structDeclSyntax.name.trimmedDescription).godotExposableValues(),
            isOptionSet: true,
            insideType: self
        )
        """
    }
}
