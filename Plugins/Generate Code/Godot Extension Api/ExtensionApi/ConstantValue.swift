import Foundation

/// A constant used in the `ExtensionApi` type.
///
/// Types such as `Vector2` are initialized with the code **`Vector2(a, b)`** in Godot.
/// But in Swift, we need to use default initializers and convert this code to **`Vector2(x: a, y: b)`**.
struct ConstantValue {
    /// The constant `String` such as `"Vector2(a, b)"`.
    let string: String
    
    init(string: String) {
        self.string = string
    }
    
    func instantationCode(withLabels labels: String...) -> String? {
        let (type, parameters) = decomposeInitParameters()
        guard parameters.count == labels.count else {
            return nil
        }
        
        return recomposeInitParameters(forType: type, parameters: parameters, labels: labels)
    }
    
    /// Decomposes the parameters of an init. For instance, the String "`Rect(1, 3, 2, 0)`"
    /// would return `(type: "Rect", parameters: ["1", "3", "2", "0"])`.
    private func decomposeInitParameters() -> (type: String, parameters: [String]) {
        let scanner = Scanner(string: string)
        let type = scanner.scanUpToString("(") ?? ""
        _ = scanner.scanString("(")
        
        var parameters = [String]()
        while true {
            if var parameter = scanner.scanUpToString(",") {
                if parameter.last == ")" {
                    parameter.removeLast()
                }
                
                if !parameter.isEmpty {
                    parameters.append(parameter)
                }
                
                _ = scanner.scanString(",")
            } else {
                break
            }
        }
        
        return (type, parameters)
    }
    
    private func recomposeInitParameters(forType type: String, parameters: [String], labels: [String]) -> String {
        var string = type + "("
        for index in 0..<parameters.count {
            let parameter = parameters[index].replacingOccurrences(of: "inf", with: ".infinity")
            let label = labels[index]
            
            string += label + ": " + parameter
            if index < parameters.count-1 {
                string += ", "
            }
        }
        string += ")"
        
        return string
    }
}

extension ConstantValue: Decodable {
    init(from decoder: Decoder) throws {
        string = try String(from: decoder)
    }
}
