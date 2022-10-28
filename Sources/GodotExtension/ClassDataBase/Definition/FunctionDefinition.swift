import Foundation

public struct FunctionDefinition {
    let name: String
    let arguments: [FunctionArgument]
    let returnType: ArgumentType?
    let isStatic: Bool
    let className: String
    
    public init(name: String,
                arguments: [FunctionArgument],
                returnType: ArgumentType?,
                isStatic: Bool,
                className: String) {
        self.name = name
        self.arguments = arguments
        self.returnType = returnType
        self.isStatic = isStatic
        self.className = className
    }
    
    var signature: String {
        var string = name + "("
        for argument in arguments {
            string += argument.label ?? argument.name + ":"
        }
        string += ")"
        return string
    }
    
    var numberOfArguments: UInt32 { UInt32(arguments.count) }
    
    var hasReturnValue: Bool { returnType != nil }
}

// MARK: - FunctionArgument

public struct FunctionArgument {
    let label: String?
    let name: String
    let type: ArgumentType
    let defaultValue: String?
    let isInout: Bool
    
    public init(label: String? = nil,
                name: String,
                type: ArgumentType,
                defaultValue: String? = nil,
                isInout: Bool) {
        self.label = label
        self.name = name
        self.type = type
        self.defaultValue = defaultValue
        self.isInout = isInout
    }
}
