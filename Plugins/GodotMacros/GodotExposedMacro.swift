import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics

public enum GodotExposedMacro: MemberMacro {
    public static func expansion(
        of attribute: AttributeSyntax,
        providingMembersOf declaration: some DeclGroupSyntax,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        guard let classDecl = declaration.as(ClassDeclSyntax.self) else {
            context.diagnose(.notAClass, on: attribute)
            return []
        }
        
        guard let superclassName = classDecl.inheritanceClause?
            .inheritedTypeCollection.first?.typeName.as(SimpleTypeIdentifierSyntax.self)?.name else {
            context.diagnose(.noSuperclassProvided, on: attribute)
            return []
        }
        
        guard classDecl.modifiers?.map(\.name.tokenKind).contains(where: {
            $0 == .keyword(.public) ||
            $0 == .keyword(.open)
        }) == true else {
            context.diagnose(.notPublic, on: attribute)
            return []
        }
        
        let functionDecl = DeclSyntax(
            """
            internal static func exposeToGodot() {
                GodotExtension.shared.classRegister.registerClass(ofType: \(classDecl.identifier).self, superclassName: "\(raw: superclassName.text)")
                { _, _, _ in
                    
                }
                createInstanceFunction: { _ in
                    return GodotExtension.shared.classRegister.instantiateClass(ofType: \(classDecl.identifier).self)
                }
                freeInstanceFunction: { _, instancePtr in
                    Unmanaged<\(classDecl.identifier)>.fromOpaque(instancePtr!).release()
                }
            }
            """
        )
        
        return [functionDecl]
    }
}

// MARK: - Diagnostic

private enum GodotExposedDiagnostic: String, DiagnosticMessage {
    case notAClass
    case noSuperclassProvided
    case notPublic
    
    var severity: DiagnosticSeverity { .error }
    
    var message: String {
        switch self {
        case .notAClass:
            "'@GodotExposed' can only be applied to a 'class'"
        case .noSuperclassProvided:
            "'@GodotExposed' can only be applied to a 'class' that inherits another 'class'"
        case .notPublic:
            "'@GodotExposed' can only be applied to a public 'class'"
        }
    }
    
    var diagnosticID: MessageID {
        MessageID(domain: "GodotMacros", id: rawValue)
    }
}

fileprivate extension MacroExpansionContext {
    func diagnose(_ godotDiagnostic: GodotExposedDiagnostic, on attribute: AttributeSyntax) {
        let diagnostic = Diagnostic(
            node: Syntax(attribute), message: godotDiagnostic
        )
        self.diagnose(diagnostic)
    }
}
