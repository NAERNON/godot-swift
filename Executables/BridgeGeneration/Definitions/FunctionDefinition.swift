import Foundation
import SourceKittenFramework

struct FunctionDefinition {
    let signature: String
    let name: String
    let parameters: [Parameter]
    let accessControl: AccessControl?
    
    init?(dictionary: [String : SourceKitRepresentable]) {
        guard dictionary["key.kind"] as? String == "source.lang.swift.decl.function.method.instance",
              let signature = dictionary["key.name"] as? String else {
            return nil
        }
        
        let substructure = dictionary["key.substructure"] as? [[String : SourceKitRepresentable]]
        
        self.signature = signature
        self.name = signature.components(separatedBy: "(").first ?? ""
        self.parameters = substructure?.compactMap { Parameter(dictionary: $0) } ?? []
        self.accessControl = AccessControl(accessibility: dictionary["key.accessibility"] as? String)
    }
    
    // MARK: Tools
    
    func functionCallCode(withParameters parameters: [String]) -> String {
        var string = String()
        var parameterIndex = 0
        
        for char in signature {
            string.append(char)
            if char == ":" {
                string.append(parameters[parameterIndex])
                parameterIndex += 1
            }
        }
        
        return string
    }
}

// MARK: - Parameter

extension FunctionDefinition {
    struct Parameter {
        let name: String
        let modifiers: [String]
        let type: String
        
        init?(dictionary: [String : SourceKitRepresentable]) {
            guard dictionary["key.kind"] as? String == "source.lang.swift.decl.var.parameter",
                  let name = dictionary["key.name"] as? String,
                  let type = dictionary["key.typename"] as? String else {
                return nil
            }
            
            let typeComponents = type.components(separatedBy: .whitespaces)
            
            self.name = name
            self.modifiers = Array(typeComponents.dropLast())
            self.type = typeComponents.last ?? ""
        }
    }
}
