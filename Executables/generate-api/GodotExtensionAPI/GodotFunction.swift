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
    
    private var translatedFunction: (name: String, parameters: [FunctionParameter]) {
        CodeLanguage.c.translateFunction(
            name: name,
            parameters: (arguments ?? []).map { .init(name: $0.name, label: nil, isLabelHidden: false) },
            to: .swift
        )
    }
    
    /// Returns the translated function identifier.
    ///
    /// A function with the signature "`do_something(a:b:)`"
    /// would return the indentifier "doSomething".
    func syntaxIdentifier() -> String {
        translatedFunction.name
    }
    
    /// Returns the argument identifier at a given index.
    func argumentSyntaxIndentifier(at index: Int) -> String {
        translatedFunction.parameters[index].name
    }
    
    /// Returns the declaration syntax of the function.
    func declSyntax(
        options: GodotSyntaxOptions = [],
        @CodeBlockItemListBuilder bodyBuilder: () throws -> CodeBlockItemListSyntax
    ) throws -> FunctionDeclSyntax {
        let arguments = self.arguments ?? []
        let functionParameters = translatedFunction.parameters
        
        var functionHeader = "func "
        functionHeader.append(syntaxIdentifier())
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
    
    /// Returns the arguments pointer access of the function.
    ///
    /// Use this to access all the arguments pointers in the function.
    /// The `bodyBuilder` provides an argument giving all the
    /// pointer names accessible in the closure.
    ///
    /// For a function with 2 parameters, the following syntax would be generated:
    /// ```swift
    /// withUnsafeGodotAccessPointer(to: arg1) { __ptr_arg1 in
    ///     withUnsafeGodotAccessPointer(to: arg2) { __ptr_arg2 in
    ///         // Body with ["__ptr_arg1", "__ptr_arg2"]
    ///     }
    /// }
    /// ```
    func argumentsPointerAccessSyntax(
        @CodeBlockItemListBuilder bodyBuilder: ([String]) throws -> CodeBlockItemListSyntax
    ) throws -> CodeBlockItemListSyntax {
        try argumentsPointerAccessSyntax(indexes: 0..<(arguments?.count ?? 0), bodyBuilder: bodyBuilder)
    }
    
    /// Returns a pack of all the arguments pointers of the function.
    ///
    /// Use this to access all the arguments pointers in the function
    /// grouped in a pack.
    /// The `bodyBuilder` provides an argument giving the
    /// pack name accessible in the closure.
    ///
    /// For a function with 2 parameters, the following syntax would be generated:
    /// ```swift
    /// withUnsafeGodotAccessPointer(to: arg1) { __ptr_arg1 in
    ///     withUnsafeGodotAccessPointer(to: arg2) { __ptr_arg2 in
    ///         withUnsafeArgumentPointer(__ptr_arg1, __ptr_arg2) { __accessPtr in
    ///             // Body with "__accessPtr"
    ///         }
    ///     }
    /// }
    /// ```
    func argumentsPackPointerAccessSyntax(
        @CodeBlockItemListBuilder bodyBuilder: (String) throws -> CodeBlockItemListSyntax
    ) throws -> CodeBlockItemListSyntax {
        let pointerName = "__accessPtr"
        
        return try argumentsPointerAccessSyntax { pointerNames in
            DeclSyntax("withUnsafeArgumentPointer(\(raw: pointerNames.joined(separator: ", "))) { \(raw: pointerName) in")
            
            try bodyBuilder(pointerName)
            
            DeclSyntax("}")
        }
    }
    
    /// Returns the arguments pointer access of the function.
    ///
    /// - Parameters:
    ///   - indexes: The indexes of the arguments to retreive.
    ///   - bodyBuilder: The body content syntax.
    private func argumentsPointerAccessSyntax(
        indexes: some Collection<Int>,
        @CodeBlockItemListBuilder bodyBuilder: ([String]) throws -> CodeBlockItemListSyntax
    ) throws -> CodeBlockItemListSyntax {
        guard let index = indexes.first else {
            return try bodyBuilder([])
        }
        
        let argument = arguments![index]
        let argumentIdentifier = argumentSyntaxIndentifier(at: index)
        
        return try argument.type.pointerAccessSyntax(instanceName: argumentIdentifier) { pointerName in
            try argumentsPointerAccessSyntax(indexes: indexes.dropFirst()) { pointerNames in
                try bodyBuilder([pointerName] + pointerNames)
            }
        }
    }
}
