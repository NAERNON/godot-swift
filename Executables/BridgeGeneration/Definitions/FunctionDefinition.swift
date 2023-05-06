import Foundation
import SourceKittenFramework

struct FunctionDefinition {
    let nameSignature: String
    let name: String
    let parameters: [Parameter]
    let className: String
    let filePath: String?
    
    init?(dictionary: [String : SourceKitRepresentable],
          className: String,
          filePath: String?) {
        guard dictionary["key.kind"] as? String == "source.lang.swift.decl.function.method.instance",
              dictionary["key.accessibility"] as? String == "source.lang.swift.accessibility.public",
              let nameSignature = dictionary["key.name"] as? String,
              let substructure = dictionary["key.substructure"] as? [[String : SourceKitRepresentable]] else {
            return nil
        }
        
        self.nameSignature = nameSignature
        self.name = nameSignature.components(separatedBy: "(").first ?? ""
        self.parameters = substructure.compactMap { Parameter(dictionary: $0) }
        self.className = className
        self.filePath = filePath
        
        if parameters.contains(where: { !$0.modifiers.isEmpty }) {
            return nil
        }
    }
    
    static func definitions(insideDictionary dictionary: [String : SourceKitRepresentable],
                            className: String,
                            filePath: String?) -> [FunctionDefinition] {
        guard let substructure = dictionary["key.substructure"] as? [[String : SourceKitRepresentable]] else {
            return []
        }
        
        return substructure.compactMap {
            FunctionDefinition(dictionary: $0, className: className, filePath: filePath)
        }
    }
    
    static func definitions(insideStructure structure: Structure,
                            filePath: String?,
                            classesNames: Set<String>,
                            moduleName: String) -> [FunctionDefinition] {
        guard let substructure = structure.dictionary["key.substructure"] as? [[String : SourceKitRepresentable]] else {
            return []
        }
        
        return substructure.flatMap { dictionary -> [FunctionDefinition] in
            guard let className = dictionary["key.name"] as? String,
                  let kind = dictionary["key.kind"] as? String,
                  kind == "source.lang.swift.decl.class" || kind == "source.lang.swift.decl.extension" else {
                return []
            }
            
            let nameTypeDefinition = TypeDefinition(className)
            
            let classIsValid = classesNames.contains(nameTypeDefinition.lastComponent)
            let moduleIsValid = nameTypeDefinition.components.count == 1
                || (nameTypeDefinition.components.count == 2 && nameTypeDefinition.components[0] == moduleName)
            
            guard classIsValid && moduleIsValid else {
                return []
            }
            
            return FunctionDefinition.definitions(insideDictionary: dictionary,
                                                  className: nameTypeDefinition.lastComponent,
                                                  filePath: filePath)
        }
    }
    
    // MARK: Tools
    
    func functionCallCode(withParameters parameters: [String]) -> String {
        var string = String()
        var parameterIndex = 0
        
        for char in nameSignature {
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
