import Foundation
import SourceKittenFramework

struct FunctionDefinition {
    let signature: String
    let name: String
    let parameters: [Parameter]
    let returnType: String?
    let accessControl: AccessControl?
    let isStatic: Bool
    
    init?(dictionary: [String : SourceKitRepresentable]) {
        guard let kind = dictionary["key.kind"] as? String,
              kind.starts(with: "source.lang.swift.decl.function.method."),
              let signature = dictionary["key.name"] as? String else {
            return nil
        }
        
        let substructure = dictionary["key.substructure"] as? [[String : SourceKitRepresentable]]
        
        self.signature = signature
        self.name = signature.components(separatedBy: "(").first ?? ""
        self.parameters = substructure?.compactMap { Parameter(dictionary: $0) } ?? []
        self.returnType = dictionary["key.typename"] as? String
        self.accessControl = AccessControl(accessibility: dictionary["key.accessibility"] as? String)
        self.isStatic = kind == "source.lang.swift.decl.function.method.static"
    }
    
    // MARK: Tools
    
    func functionCallCode(withParameters parameters: [String]) -> String {
        var string = String()
        var parameterIndex = 0
        
        for char in signature {
            string.append(char)
            if char == ":" {
                string.append(" ")
                string.append(parameters[parameterIndex])
                if parameterIndex == 0 && parameters.count > 1 {
                    string.append(", ")
                }
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
