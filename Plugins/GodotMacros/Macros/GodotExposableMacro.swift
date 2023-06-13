import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics

public enum GodotExposableMacro: MemberMacro {
    // MARK: Member
    
    public static func expansion(
        of attribute: AttributeSyntax,
        providingMembersOf declaration: some DeclGroupSyntax,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        guard let classDecl = declaration.as(ClassDeclSyntax.self) else {
            let diagnostic = Diagnostic(
                node: Syntax(attribute),
                message: GodotExposableDiagnostic.notAClass
            )
            context.diagnose(diagnostic)
            return []
        }
        
        guard let inheritenceDecl = classDecl.inheritanceClause?
            .inheritedTypeCollection.first else {
            let diagnostic = Diagnostic(
                node: Syntax(classDecl.classKeyword),
                message: GodotExposableDiagnostic.noSuperclassProvided
            )
            context.diagnose(diagnostic)
            return []
        }
        
        guard classDecl.modifiers?.map(\.name.tokenKind).contains(where: {
            $0 == .keyword(.public) || $0 == .keyword(.open)
        }) == true else {
            let diagnostic = Diagnostic(
                node: Syntax(classDecl.classKeyword),
                message: GodotExposableDiagnostic.notPublic
            )
            context.diagnose(diagnostic)
            return []
        }
        
        let classNamesDecls = self.classNamesDecls(classDecl: classDecl, in: context)
#warning("Check the create instance function, something's fishy...")
        let functionDecl = try exposeToGodotFunctionDecl(classDecl: classDecl, inheritenceDecl: inheritenceDecl)
        
        return [DeclSyntax(functionDecl)] + classNamesDecls
    }
    
    private static func classNamesDecls(
        classDecl: ClassDeclSyntax,
        in context: some MacroExpansionContext
    ) -> [DeclSyntax] {
        let classNameVar = context.makeUniqueName("className")
        
        return [
            DeclSyntax(
                """
                private static let \(classNameVar): StringName = \(literal: classDecl.identifier.description)
                """),
            DeclSyntax(
                """
                open override class var _gd_className: StringName { \(classNameVar) }
                """),
            DeclSyntax(
                """
                open override class var _gd_isCustomClass: Bool { true }
                """),
        ]
    }
    
    private static func exposeToGodotFunctionDecl(
        classDecl: ClassDeclSyntax,
        inheritenceDecl: InheritedTypeListSyntax.Element) throws -> FunctionDeclSyntax {
        try FunctionDeclSyntax("open override class func _gd_exposeToGodot()") {
            DeclSyntax(
                """
                GodotExtension.shared.classRegister.registerCustomClass(
                    ofType: self,
                    superclassType: \(inheritenceDecl).self
                ) { _, _, _ in
                    
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
            
            let memberFunctionDecls = classDecl.memberBlock.members.compactMap({ $0.decl.as(FunctionDeclSyntax.self) })
            
            for memberFunctionDecl in memberFunctionDecls {
                if memberFunctionDecl.attributes?.contains(where: { $0.as(AttributeSyntax.self)?.attributeName.as(SimpleTypeIdentifierSyntax.self)?.name == .identifier("GodotExposable") }) == true {
                    DeclSyntax("blb")
                }
            }
        }
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
