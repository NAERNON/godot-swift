import Foundation

public struct FunctionParameter {
    public enum Label: ExpressibleByStringLiteral {
        case hidden
        case name(String)
        case none
        
        public init(stringLiteral value: String) {
            self = .name(value)
        }
    }
    
    public enum DefaultValue {
        case `nil`
        case codeString(String)
        case none
    }
    
    public var name: String
    public var type: String
    public var defaultValue: DefaultValue
    public var label: Label
    public var isVararg: Bool
    
    private init(name: String, type: String, defaultValue: DefaultValue, label: Label, isVararg: Bool) {
        self.name = name
        self.type = type
        self.defaultValue = defaultValue
        self.label = label
        self.isVararg = isVararg
    }
    
    public static func named(_ name: String,
                             type: String,
                             defaultValue: DefaultValue = .none,
                             label: Label = .none,
                             isVararg: Bool = false) -> FunctionParameter {
        FunctionParameter(name: name,
                          type: type,
                          defaultValue: defaultValue,
                          label: label,
                          isVararg: isVararg)
    }
    
    public static func named<Parameter>(_ name: String,
                                        type: Parameter.Type,
                                        defaultValue: DefaultValue = .none,
                                        label: Label = .none,
                                        isVararg: Bool = false) -> FunctionParameter {
        if case .nil = defaultValue {
            fatalError("An unoptional parameter cannot have a nil default value.")
        }
        return FunctionParameter(name: name,
                                 type: String(describing: Parameter.self),
                                 defaultValue: defaultValue,
                                 label: label,
                                 isVararg: isVararg)
    }
    
    public static func named<Parameter>(_ name: String,
                                        type: Optional<Parameter>.Type,
                                        defaultValue: DefaultValue = .none,
                                        label: Label = .none,
                                        isVararg: Bool = false) -> FunctionParameter {
        let typeString = String(describing: Parameter.self) + "?"
        return FunctionParameter(name: name,
                                 type: typeString,
                                 defaultValue: defaultValue,
                                 label: label,
                                 isVararg: isVararg)
    }
    
    func codeString() -> String {
        var codeString = ""
        switch label {
        case .hidden:
            codeString += "_ "
        case .name(let name):
            codeString += name + " "
        case .none:
            break
        }
        
        codeString += name
        codeString += ": "
        codeString += type
        
        if isVararg {
            codeString += "..."
        }
        
        switch defaultValue {
        case .nil:
            codeString += " = nil"
        case .codeString(let string):
            codeString += " = " + string
        case .none:
            break
        }
        
        return codeString
    }
    
    static func parametersCodeString(_ parameters: [FunctionParameter]) -> String {
        var codeString = "("
        for (index, parameter) in parameters.enumerated() {
            codeString += parameter.codeString()
            
            if index < parameters.count - 1 {
                codeString += ", "
            }
        }
        codeString += ")"
        return codeString
    }
}
