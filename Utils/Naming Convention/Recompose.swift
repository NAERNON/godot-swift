import Foundation

public extension NamingConvention {
    func recompose(_ decomposition: Decomposition) -> String {
        switch self {
        case .camel:
            return NamingConvention.recomposeCamelOrPascalCase(decomposition, uppercaseFirstChar: false)
        case .pascal:
            return NamingConvention.recomposeCamelOrPascalCase(decomposition, uppercaseFirstChar: true)
        case .snake:
            return NamingConvention.recomposeSnakeCase(decomposition)
        }
    }
    
    static func recomposeCamelOrPascalCase(_ decomposition: Decomposition, uppercaseFirstChar: Bool) -> String {
        var string = ""
        for (index, component) in decomposition.enumerated() {
            if index == 0 && !uppercaseFirstChar {
                string.append(component.lowercased())
                continue
            }
            
            let isAllUppercase = component.uppercased() == component
            || componentsToCapitalizeForCamelOrPascalCase.contains(component)
            
            if isAllUppercase {
                string.append(component.uppercased())
            } else {
                // We uppercase the first char which is not an underscore.
                var isFirstLetterUppercased = false
                for char in component {
                    if !isFirstLetterUppercased && char != "_" {
                        string.append(char.uppercased())
                        isFirstLetterUppercased = true
                    } else {
                        string.append(char.lowercased())
                    }
                }
            }
        }
        
        return string
    }
    
    static func recomposeSnakeCase(_ decomposition: Decomposition) -> String {
        var string = ""
        for (index, component) in decomposition.enumerated() {
            string.append(component.lowercased())
            
            if index < decomposition.count-1 && string.last != "_" {
                string.append("_")
            }
        }
        
        return string
    }
}

/// Some components should always be capitalized on camel or pascal case.
private let componentsToCapitalizeForCamelOrPascalCase: Set<String> = [
    "2d", "3d", "id"
]
