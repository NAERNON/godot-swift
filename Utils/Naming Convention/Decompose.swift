import Foundation

public extension NamingConvention {
    func decompose(string: String) -> Decomposition {
        switch self {
        case .camel:
            return NamingConvention.decomposeCamelOrPascalCase(string: string)
        case .pascal:
            return NamingConvention.decomposeCamelOrPascalCase(string: string)
        case .snake:
            return NamingConvention.decomposeSnakeCase(string: string)
        }
    }
    
    static func decomposeCamelOrPascalCase(string: String) -> Decomposition {
        var stringComponents = [String]()
        
        var component = ""
        var previousCharacterIsUppercase = true
        var previousCharacterIsNumber = true
        for char in string {
            if char.isUppercase && !previousCharacterIsUppercase && !previousCharacterIsNumber {
                stringComponents.append(component)
                component = ""
            } else if !char.isUppercase && previousCharacterIsUppercase {
                if component.count > 1 {
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
            previousCharacterIsNumber = char.isNumber
        }
        
        if !component.isEmpty {
            stringComponents.append(component)
        }
        
        return Decomposition(stringComponents)
    }
    
    static func decomposeSnakeCase(string: String) -> Decomposition {
        var stringComponents = [String]()
        
        var component = ""
        var previousCharacterIsUnderscore = true
        for char in string {
            let shouldAddCharacterToComponent: Bool
            if char == "_" && !previousCharacterIsUnderscore {
                stringComponents.append(component)
                component = ""
                shouldAddCharacterToComponent = false
            } else {
                shouldAddCharacterToComponent = true
            }
            
            if shouldAddCharacterToComponent {
                component.append(char)
            }
            previousCharacterIsUnderscore = char == "_"
        }
        
        if !component.isEmpty {
            stringComponents.append(component)
        }
        
        return Decomposition(stringComponents)
    }
}
