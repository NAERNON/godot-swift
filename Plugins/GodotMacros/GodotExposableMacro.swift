import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics

public enum GodotExposableMacro: MemberMacro {
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
        
#warning("Check the create instance function, something's fishy...")
        let functionDecl = DeclSyntax(
            """
            internal static func exposeToGodot() {
                GodotExtension.shared.classRegister.registerClass(ofType: \(classDecl.identifier).self, superclassName: "\(raw: superclassName.text)")
                { _, _, _ in
                    
                }
                createInstanceFunction: { _ in
                    let instance = \(classDecl.identifier)()
                    var objectPtr: GDExtensionObjectPtr!
                    
                    instance.withUnsafeExtensionPointer { ptr in
                        objectPtr = ptr
                    }
                    
                    return objectPtr
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

private enum GodotExposableDiagnostic: String, DiagnosticMessage {
    case notAClass
    case noSuperclassProvided
    case notPublic
    
    var severity: DiagnosticSeverity { .error }
    
    var message: String {
        switch self {
        case .notAClass:
            "Only classes can be exposed to Godot"
        case .noSuperclassProvided:
            "Only classes that inherit the Godot 'Object' class can be exposed to Godot"
        case .notPublic:
            "Only public classes can be exposed to Godot"
        }
    }
    
    var diagnosticID: MessageID {
        MessageID(domain: "GodotMacros", id: rawValue)
    }
}

fileprivate extension MacroExpansionContext {
    func diagnose(_ godotDiagnostic: GodotExposableDiagnostic, on attribute: AttributeSyntax) {
        let diagnostic = Diagnostic(
            node: Syntax(attribute), message: godotDiagnostic
        )
        self.diagnose(diagnostic)
    }
}
