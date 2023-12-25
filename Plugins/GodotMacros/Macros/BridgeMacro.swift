import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics
import Utils

public enum BridgeMacro: ExtensionMacro, PeerMacro {
    public static func expansion(
        of node: AttributeSyntax,
        attachedTo declaration: some DeclGroupSyntax,
        providingExtensionsOf type: some TypeSyntaxProtocol,
        conformingTo protocols: [TypeSyntax],
        in context: some MacroExpansionContext
    ) throws -> [ExtensionDeclSyntax] {
        let bridgeExtension: DeclSyntax =
        """
        extension \(type.trimmed): Godot.Bridge {}
        """
        
        guard let extensionDecl = bridgeExtension.as(ExtensionDeclSyntax.self) else {
            return []
        }
        
        return [extensionDecl]
    }
    
    public static func expansion(
        of node: AttributeSyntax,
        providingPeersOf declaration: some DeclSyntaxProtocol,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        let declName: TokenSyntax
        let diagnosticDescription = "Bridge must be public"
        
        if let decl = declaration.as(ClassDeclSyntax.self) {
            declName = decl.name
            if decl.accessModifierInspector.diagnoseIfNotPublic(
                diagnosticDescription,
                in: context
            ) { return [] }
        } else if let decl = declaration.as(StructDeclSyntax.self) {
            declName = decl.name
            if decl.accessModifierInspector.diagnoseIfNotPublic(
                diagnosticDescription,
                in: context
            ) { return [] }
        } else if let decl = declaration.as(EnumDeclSyntax.self) {
            declName = decl.name
            if decl.accessModifierInspector.diagnoseIfNotPublic(
                diagnosticDescription,
                in: context
            ) { return [] }
        } else {
            let diagnostic = Diagnostic(
                node: Syntax(node),
                message: GodotDiagnostic("Bridge must either be a 'class', 'struct' or 'enum'")
            )
            context.diagnose(diagnostic)
            
            return []
        }
        
        guard let argumentString = node.arguments?.as(LabeledExprListSyntax.self)?
            .first?.expression.as(StringLiteralExprSyntax.self)?
            .segments.trimmedDescription else {
            fatalError("Compiler error")
        }
        
        return [libInitDecl(identifier: declName, cFunctionName: argumentString)]
    }
    
    private static func libInitDecl(
        identifier: TokenSyntax,
        cFunctionName: String
    ) -> DeclSyntax {
        let functionName = "initializeGodotModule" + removeBackticks(identifier.trimmedDescription)
        
        return DeclSyntax(
            """
            @_cdecl(\(literal: cFunctionName))
            public func \(raw: functionName)(
                getProcAddress: Godot.GodotExtension.GetProcAddress,
                libraryPtr: Godot.GodotExtension.ClassLibraryPointer,
                initializationPtr: Godot.GodotExtension.InitializationPointer
            ) -> Godot.GodotExtension.InitializationResult {
                do {
                    try Godot.GodotExtension.initialize(
                        using: \(identifier).self,
                        getProcAddress: getProcAddress,
                        libraryPtr: libraryPtr,
                        initializationPtr: initializationPtr
                    )
                    return 1
                } catch {
                    return 0
                }
            }
            """
        )
    }
}
