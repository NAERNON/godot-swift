import SwiftSyntax
import SwiftSyntaxMacros
import SwiftDiagnostics

extension ClassDeclSyntax {
    func exposableMacroSyntax(in context: some MacroExpansionContext) throws -> [DeclSyntax] {
        // Check has inheritance
        guard let inheritedElement = inheritanceClause?
            .inheritedTypes.first else {
            context.diagnose(Diagnostic(
                node: Syntax(classKeyword),
                message: GodotDiagnostic("Only classes that inherit the Godot 'Object' class can be exposed to Godot")
            ))
            return []
        }
        
        // Check is public or open
        guard modifiers?.map(\.name.tokenKind).contains(where: {
            $0 == .keyword(.public) || $0 == .keyword(.open)
        }) == true else {
            context.diagnose(Diagnostic(
                node: Syntax(classKeyword),
                message: GodotDiagnostic("Only public classes can be exposed to Godot")
            ))
            return []
        }
        
        // Syntax
        let provider = ClassMacroDeclProvider(
            customClassDecl: self,
            superclassName: inheritedElement.type.trimmedDescription,
            in: context
        ) {
            for member in memberBlock.members {
                if let exposableMember = member.decl.as(EnumDeclSyntax.self),
                   let syntax = exposableMember.expositionSyntaxIfExposable(fromClass: self, in: context) {
                    syntax
                }
                
                if let exposableMember = member.decl.as(StructDeclSyntax.self),
                   let syntax = exposableMember.expositionSyntaxIfExposable(fromClass: self, in: context) {
                    syntax
                }
                
                if let exposableMember = member.decl.as(ClassDeclSyntax.self),
                   let syntax = exposableMember.expositionSyntaxIfExposable(fromClass: self, in: context) {
                    syntax
                }
                
                if let exposableMember = member.decl.as(FunctionDeclSyntax.self),
                   let syntax = exposableMember.expositionSyntaxIfExposable(fromClass: self, in: context) {
                    syntax
                }
                
                if let exposableMember = member.decl.as(VariableDeclSyntax.self),
                   let syntax = exposableMember.expositionSyntaxIfExposable(fromClass: self, in: context) {
                    syntax
                }
            }
        }
        
        return try provider.decls()
    }
}
