import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics

extension MacroExpansionContext {
    func diagnose(_ diagnostic: some DiagnosticMessage, on attribute: AttributeSyntax) {
        let diagnostic = Diagnostic(
            node: Syntax(attribute), message: diagnostic
        )
        self.diagnose(diagnostic)
    }
}
