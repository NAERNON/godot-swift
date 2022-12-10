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
    
    var name: String
    var type: String
    var defaultValue: DefaultValue
    var label: Label
    
    private init(name: String, type: String, defaultValue: DefaultValue, label: Label) {
        self.name = name
        self.type = type
        self.defaultValue = defaultValue
        self.label = label
    }
    
    public static func named(_ name: String,
                             type: String,
                             defaultValue: DefaultValue = .none,
                             label: Label = .none) -> FunctionParameter {
        FunctionParameter(name: name,
                          type: type,
                          defaultValue: defaultValue,
                          label: label)
    }
    
    public static func named<Parameter>(_ name: String,
                                        type: Parameter.Type,
                                        defaultValue: DefaultValue = .none,
                                        label: Label = .none) -> FunctionParameter {
        if case .nil = defaultValue {
            fatalError("An unoptional parameter cannot have a nil default value.")
        }
        return FunctionParameter(name: name,
                                 type: String(describing: Parameter.self),
                                 defaultValue: defaultValue,
                                 label: label)
    }
    
    public static func named<Parameter>(_ name: String,
                                        type: Optional<Parameter>.Type,
                                        defaultValue: DefaultValue = .none,
                                        label: Label = .none) -> FunctionParameter {
        let typeString = String(describing: Parameter.self) + "?"
        return FunctionParameter(name: name,
                                 type: typeString,
                                 defaultValue: defaultValue,
                                 label: label)
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
