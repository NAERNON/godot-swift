import Foundation

extension NamingConvention {
    
    func recompose(components: [String]) -> String {
        switch self {
        case .camel:
            return NamingConvention.recomposeCamelOrPascalCase(components: components, uppercaseFirstChar: false)
        case .pascal:
            return NamingConvention.recomposeCamelOrPascalCase(components: components, uppercaseFirstChar: true)
        case .snake:
            return NamingConvention.recomposeSnakeCase(components: components)
        }
    }
    
    static func recomposeCamelOrPascalCase(components: [String], uppercaseFirstChar: Bool) -> String {
        var string = ""
        for (index, component) in components.enumerated() {
            if index == 0 && !uppercaseFirstChar {
                string.append(component.lowercased())
                continue
            }
            
            let isAllUppercase = component.uppercased() == component
            if isAllUppercase {
                string.append(component)
            } else {
                for (charIndex, char) in component.enumerated() {
                    if charIndex == 0 {
                        string.append(char.uppercased())
                    } else {
                        string.append(char.lowercased())
                    }
                }
            }
        }
        
        return string
    }
    
    static func recomposeSnakeCase(components: [String]) -> String {
        var string = ""
        for (index, component) in components.enumerated() {
            string.append(component.lowercased())
            
            if index < components.count-1 {
                string.append("_")
            }
        }
        
        return string
    }
    
}
