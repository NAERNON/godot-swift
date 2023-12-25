import SwiftSyntax
import SwiftSyntaxMacros
import SwiftDiagnostics

extension InspectableDeclSyntax {
    var expositionInspector: ExpositionInspector<Self> {
        .init(self)
    }
}

struct ExpositionInspector<Decl> where Decl : InspectableDeclSyntax {
    let declSyntax: Decl
    
    fileprivate init(_ declSyntax: Decl) {
        self.declSyntax = declSyntax
    }
    
    func diagnoseNotExposable(
        _ warning: String,
        in context: some MacroExpansionContext
    ) {
        context.diagnose(Diagnostic(
            node: Syntax(declSyntax),
            message: GodotDiagnostic(warning),
            fixIt: disableExpositionFixIt()
        ))
    }
    
    func disableExpositionFixIt() -> FixIt {
        var newAttributes = declSyntax.attributes
        newAttributes.insert(
            .init(.init("ExpositionIgnored")),
            at: newAttributes.startIndex
        )
        
        // TODO: Some trivia is not right
        return FixIt(
            message: GodotDiagnostic("Disable exposition by inserting '@ExpositionIgnored'"),
            changes: [
                .replace(
                    oldNode: Syntax(declSyntax),
                    newNode: Syntax(declSyntax.withAttributes(newAttributes))
                )
            ]
        )
    }
}
