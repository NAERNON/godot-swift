import SwiftSyntax
import SwiftDiagnostics
import SwiftSyntaxMacros

extension StructDeclSyntax: ClassExposableMember {
    private var exposableMember: ClassExposableMember? {
        if let member = OptionSetClassExposableMember(self) {
            return member
        }
        
        if let member = EmitterClassExposableMember(self) {
            return member
        }
        
        return nil
    }
    
    var classExpositionIdentifier: String {
        guard let exposableMember else {
            return "///"
        }
        
        return exposableMember.classExpositionIdentifier
    }
    
    var isExcludedFromClassExposition: Bool {
        guard let exposableMember else {
            return false
        }
        
        return exposableMember.isExcludedFromClassExposition
    }
    
    func isExposable(
        fromClass classDecl: ClassDeclSyntax,
        in context: some MacroExpansionContext
    ) -> Bool {
        guard let exposableMember else {
            context.diagnose(Diagnostic(
                node: Syntax(name),
                message: GodotDiagnostic("Exposable structs must be option sets (marked '@ExposableOptionSet') or emitters (marked '@Emitter')")
            ))
            
            return false
        }
        
        return exposableMember.isExposable(fromClass: classDecl, in: context)
    }
    
    func expositionSyntax(
        fromClass classDecl: ClassDeclSyntax,
        in context: some MacroExpansionContext
    ) -> ExprSyntax {
        guard let exposableMember else {
            return ""
        }
        
        return exposableMember.expositionSyntax(fromClass: classDecl, in: context)
    }
}
