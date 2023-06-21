import SwiftSyntax
import SwiftSyntaxBuilder
import CodeTranslator

/// A protocol representing a Godot function.
///
/// Conform your type to the protocol to gain access
/// to usefull syntax declarations.
protocol GodotFunction {
    var name: String { get }
    var arguments: [GodotArgument]? { get }
    var returnType: GodotType? { get }
    
    var isVararg: Bool { get }
    var isStatic: Bool { get }
    var isConst: Bool { get }
    var isMutating: Bool { get }
}

// MARK: - Default behavior

extension GodotFunction {
    var isVararg: Bool { false }
    var isStatic: Bool { false }
    var isConst: Bool { false }
    var isMutating: Bool { false }
}

// MARK: - Extensions

extension GodotFunction {
    // MARK: Syntax
    
    func declSyntax(
        options: GodotSyntaxOptions = [],
        @CodeBlockItemListBuilder bodyBuilder: () throws -> CodeBlockItemListSyntax
    ) throws -> FunctionDeclSyntax {
        let arguments = self.arguments ?? []
        let (functionName, functionParameters) = CodeLanguage.c.translateFunction(
            name: name,
            parameters: arguments.map { .init(name: $0.name, label: nil, isLabelHidden: false) },
            to: .swift
        )
        
        var functionHeader = "func "
        functionHeader.append(functionName)
        functionHeader.append("(")
        functionHeader.append(functionParameters.enumerated().map { (index, parameter) in
            let argument = arguments[index]
            var parameterString = ""
            
            if parameter.isLabelHidden {
                parameterString.append("_ ")
            } else if let label = parameter.label {
                parameterString.append(label)
                parameterString.append(" ")
            }
            parameterString.append(parameter.name)
            parameterString.append(": ")
            parameterString.append(argument.type.syntax(options: options))
            
            if let defaultValue = argument.defaultValue {
                parameterString.append(" = ")
                parameterString.append(defaultValue.syntax())
            }
            
            return parameterString
        }.joined(separator: ", "))
        functionHeader.append(")")
        
        if let returnType {
            functionHeader.append(" -> ")
            functionHeader.append(returnType.syntax(options: options))
        }
        
        return try FunctionDeclSyntax("\(raw: functionHeader)", bodyBuilder: bodyBuilder)
    }
}
