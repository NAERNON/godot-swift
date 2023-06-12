import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics

public enum GodotBridgeMacro: ConformanceMacro, PeerMacro {
    // MARK: Conformance
    
    public static func expansion(
        of node: AttributeSyntax,
        providingConformancesOf declaration: some DeclGroupSyntax,
        in context: some MacroExpansionContext
    ) throws -> [(TypeSyntax, GenericWhereClauseSyntax?)] {
        [("GodotBridgeProtocol", nil)]
    }
    
    // MARK: Peer
    
    public static func expansion(
        of node: AttributeSyntax,
        providingPeersOf declaration: some DeclSyntaxProtocol,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        if let classDecl = declaration.as(ClassDeclSyntax.self) {
            return [libInitDecl(identifier: classDecl.identifier)]
        } else if let classDecl = declaration.as(StructDeclSyntax.self) {
            return [libInitDecl(identifier: classDecl.identifier)]
        } else if let classDecl = declaration.as(EnumDeclSyntax.self) {
            return [libInitDecl(identifier: classDecl.identifier)]
        }
        
        context.diagnose(GodotBridgeDiagnostic.wrongType, on: node)
        return []
    }
    
    private static func libInitDecl(identifier: TokenSyntax) -> DeclSyntax {
        DeclSyntax(
            """
            @_cdecl("\(raw: identifier.text.lowercased() + "_library_init")")
            func libraryInit(interfacePtr: UnsafePointer<GDExtensionInterface>, libraryPtr: GDExtensionClassLibraryPtr, initializationPtr: UnsafeMutablePointer<GDExtensionInitialization>) -> GDExtensionBool {
                return GodotExtension.shared.setUp(
                    withInterfacePtr: interfacePtr,
                    libraryPtr: libraryPtr,
                    initializationPtr: initializationPtr,
                    initializerCallback: initializeModule,
                    terminatorCallback: unitializeModule,
                    minimumInitializationLevel: GDEXTENSION_INITIALIZATION_SCENE
                )
            }
            
            private func initializeModule(level: GDExtensionInitializationLevel) {
                guard level == GDEXTENSION_INITIALIZATION_SCENE else {
                    return
                }
                
                for object in \(identifier).classesToRegister {
                    object.self.exposeToGodot()
                }
                
                GodotExtension.shared.classRegister.closeRegistration()
            }
            
            private func unitializeModule(level: GDExtensionInitializationLevel) {
            }
            
            """
        )
    }
}

// MARK: - Diagnostic

private enum GodotBridgeDiagnostic: String, DiagnosticMessage {
    case wrongType
    
    var severity: DiagnosticSeverity { .error }
    
    var message: String {
        switch self {
        case .wrongType:
            "`@GodotBridge` can only be applied to `class`, `struct` and `enum`"
        }
    }
    
    var diagnosticID: MessageID {
        MessageID(domain: "GodotMacros", id: rawValue)
    }
}
