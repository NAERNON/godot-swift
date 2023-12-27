import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics

public enum InterfaceLoaderMacro: MemberMacro {
    public static func expansion(
        of attribute: AttributeSyntax,
        providingMembersOf declaration: some DeclGroupSyntax,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        let function = try FunctionDeclSyntax("static func loadAllFunctions(getProcAddress: GDExtensionInterfaceGetProcAddress)") {
            for member in declaration.memberBlock.members {
                if let macroDecl = member.decl.as(MacroExpansionDeclSyntax.self) {
                    let name = InterfaceFunctionMacro
                        .nameAndFunctionType(fromMacroDecl: macroDecl).name
                    let functionName = name.translated(from: .snake, to: .camel)
                    
                    """
                    loadInterfaceFunction(&_\(raw: functionName), \(literal: name), getProcAddress)
                    """
                }
            }
        }
        
        return [DeclSyntax(function)]
    }
}
