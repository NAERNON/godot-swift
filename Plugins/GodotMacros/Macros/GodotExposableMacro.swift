import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics

public enum GodotExposableMacro: ConformanceMacro, MemberMacro {
    // MARK: Conformance
    
    public static func expansion(
        of node: AttributeSyntax,
        providingConformancesOf declaration: some DeclGroupSyntax,
        in context: some MacroExpansionContext
    ) throws -> [(TypeSyntax, GenericWhereClauseSyntax?)] {
        [("GodotExposableObject", nil)]
    }
    
    // MARK: Member
    
    public static func expansion(
        of attribute: AttributeSyntax,
        providingMembersOf declaration: some DeclGroupSyntax,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        guard let classDecl = declaration.as(ClassDeclSyntax.self) else {
            context.diagnose(GodotExposableDiagnostic.notAClass, on: attribute)
            return []
        }
        
        guard let inheritenceDecl = classDecl.inheritanceClause?
            .inheritedTypeCollection.first else {
            context.diagnose(GodotExposableDiagnostic.noSuperclassProvided, on: attribute)
            return []
        }
        
        guard classDecl.modifiers?.map(\.name.tokenKind).contains(where: {
            $0 == .keyword(.public) ||
            $0 == .keyword(.open)
        }) == true else {
            context.diagnose(GodotExposableDiagnostic.notPublic, on: attribute)
            return []
        }
        
        let memberFunctionDecls = classDecl.memberBlock.members.compactMap({ $0.decl.as(FunctionDeclSyntax.self) })
        
#warning("Check the create instance function, something's fishy...")
        let functionDecl = try FunctionDeclSyntax("public static func exposeToGodot()") {
            DeclSyntax(
                """
                GodotExtension.shared.classRegister.registerClass(ofType: \(classDecl.identifier).self, superclassType: \(inheritenceDecl).self)
                { _, _, _ in
                    
                }
                createInstanceFunction: { _ in
                    let instance = \(classDecl.identifier)()
                    var objectPtr: UnsafeMutableRawPointer!
                    
                    instance.withUnsafeExtensionPointer { ptr in
                        objectPtr = ptr
                    }
                    
                    return objectPtr
                }
                freeInstanceFunction: { _, instancePtr in
                    Unmanaged<\(classDecl.identifier)>.fromOpaque(instancePtr!).release()
                }
                """
            )
            
            for memberFunctionDecl in memberFunctionDecls {
                if memberFunctionDecl.attributes?.contains(where: { $0.as(AttributeSyntax.self)?.attributeName.as(SimpleTypeIdentifierSyntax.self)?.name == .identifier("GodotExposable") }) == true {
                    DeclSyntax("blb")
                }
            }
        }
        
        return [DeclSyntax(functionDecl)]
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
