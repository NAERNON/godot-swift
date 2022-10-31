import Foundation

public struct FunctionParameter {
    let name: String
    let type: String
    let defaultValue: String?
    let label: String?
    let isImplicit: Bool
    
    public init(name: String, type: String, defaultValue: String? = nil, label: String? = nil) {
        self.name = name
        self.type = type
        self.defaultValue = defaultValue
        self.label = label
        self.isImplicit = false
    }
    
    public init(name: String, type: String, defaultValue: String? = nil, isImplicit: Bool) {
        self.name = name
        self.type = type
        self.defaultValue = defaultValue
        self.label = nil
        self.isImplicit = isImplicit
    }
    
    func codeString() -> String {
        var codeString = ""
        if isImplicit {
            codeString += "_ "
        } else if let label {
            codeString += label + " "
        }
        
        codeString += name
        codeString += ": "
        codeString += type
        
        if let defaultValue {
            codeString += " = " + defaultValue
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
