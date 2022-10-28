import Foundation

extension NamingConvention {
    func decompose(string: String) -> [String] {
        switch self {
        case .camel:
            return NamingConvention.decomposeCamelOrPascalCase(string: string)
        case .pascal:
            return NamingConvention.decomposeCamelOrPascalCase(string: string)
        case .snake:
            return NamingConvention.decomposeSnakeCase(string: string)
        }
    }
    
    static func decomposeCamelOrPascalCase(string: String) -> [String] {
        var stringComponents = [String]()
        
        var component = ""
        var previousCharacterIsUppercase = true
        for char in string {
            if char.isUppercase && !previousCharacterIsUppercase {
                stringComponents.append(component)
                component = ""
            } else if !char.isUppercase && previousCharacterIsUppercase {
                if component.count > 2 {
                    let startIndex = component.startIndex
                    let endFirstPart = component.index(startIndex, offsetBy: component.count-2)
                    let startSecondPart = component.index(startIndex, offsetBy: component.count-1)
                    
                    let firstPart = component[...endFirstPart]
                    let secondPart = component[startSecondPart...]
                    
                    stringComponents.append(String(firstPart))
                    component = String(secondPart)
                }
            }
            
            component.append(char)
            previousCharacterIsUppercase = char.isUppercase
        }
        
        if !component.isEmpty {
            stringComponents.append(component)
        }
        
        if stringComponents.isEmpty {
            stringComponents = [""]
        }
        
        return stringComponents
    }
    
    static func decomposeSnakeCase(string: String) -> [String] {
        return string.components(separatedBy: "_").map { $0.lowercased() }
    }
}
