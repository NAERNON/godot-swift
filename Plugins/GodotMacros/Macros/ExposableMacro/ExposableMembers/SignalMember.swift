import SwiftSyntax
import SwiftDiagnostics
import SwiftSyntaxMacros
import Utils

struct SignalMember: ExposableMember {
    let macroDeclSyntax: MacroExpansionDeclSyntax
    let functionName: String
    let cName: String
    let signalArguments: [(name: String, type: TokenSyntax)]
    
    init?(declSyntax: some DeclSyntaxProtocol) {
        guard let macroExprSyntax = declSyntax.as(MacroExpansionDeclSyntax.self) else {
            return nil
        }
        
        self.macroDeclSyntax = macroExprSyntax
        
        var functionName: String?
        
        var isCheckingArguments = false
        var signalArguments = [(String, TokenSyntax)]()
        
        for argument in macroExprSyntax.arguments {
            if argument.label?.text == "arguments" {
                isCheckingArguments = true
            } else if isCheckingArguments == false {
                functionName = argument.expression.as(StringLiteralExprSyntax.self)?
                    .representedLiteralValue
            }
            
            if isCheckingArguments {
                let list = argument.expression.as(TupleExprSyntax.self)!.elements
                let startIndex = list.startIndex
                
                let name = list[startIndex].expression
                    .as(StringLiteralExprSyntax.self)!.representedLiteralValue!
                
                let type = list[list.index(after: startIndex)].expression
                    .as(DeclReferenceExprSyntax.self)!.baseName

                signalArguments.append((name, type))
            }
        }
        
        self.functionName = functionName!
        self.cName = functionName!.translated(from: .camel, to: .snake)
        self.signalArguments = signalArguments
    }
    
    var attributes: AttributeListSyntax? {
        macroDeclSyntax.attributes
    }
    
    func checkExpositionAvailable(
        className: TokenSyntax,
        isContextPublic: Bool
    ) -> Result<Void, CheckExpositionError> {
        .success(())
    }
    
    func expositionSyntax(
        className: TokenSyntax,
        isContextPublic: Bool,
        namePrefix: String,
        in context: some MacroExpansionContext
    ) -> ExprSyntax? {
        let arguments = signalArguments.map {
            """
            .argument(\($0.type).self, name: "\($0.name.translated(from: .camel, to: .snake))"),
            """
        }
        
        return """
        Godot.GodotExtension.classRegistrar.registerSignal(
            named: \(literal: cName),
            insideType: \(className).self,
            argumentParameters:  [
                \(raw: arguments.joined(separator: "\n"))
            ]
        )
        """
    }
    
    func expositionPeerSyntax(
        className: TokenSyntax,
        isContextPublic: Bool,
        in context: some MacroExpansionContext
    ) -> [DeclSyntax] {
        let signalInspector = SignalInspector(
            functionName: functionName,
            signalCName: cName,
            arguments: signalArguments.map { ($0.name, $0.type.trimmedDescription) },
            isPublic: isContextPublic
        )
        
        return [
            DeclSyntax(try! signalInspector.signalInputDeclSyntax()),
            DeclSyntax(try! signalInspector.signalFunctionDeclSyntax()),
            signalInspector.emitterDeclSyntax()
        ]
    }
}
