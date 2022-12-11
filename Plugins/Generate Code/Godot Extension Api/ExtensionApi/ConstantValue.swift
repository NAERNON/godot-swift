import Foundation

/// A constant used in the `ExtensionApi` type.
///
/// Types such as `Vector2` are initialized with the code **`Vector2(a, b)`** in Godot.
/// But in Swift, we need to use default initializers and convert this code to **`Vector2(x: a, y: b)`**.
struct ConstantValue {
    private let string: String
    
    /// Returns a converted string code for the value.
    /// - Parameter type: The type of the value.
    func toSwift(forType type: InstanceType) -> String {
        if type == "Variant" && string == "null" {
            return ".nil"
        }
        
        if type == "Basis",
           let string = decomposeAndRecomposeInitParameters(labels: "xAxisX", "xAxisY", "xAxisZ", "yAxisX", "yAxisY", "yAxisZ", "zAxisX", "zAxisY", "zAxisZ") {
            return string
        }
        
        if type == "Projection",
           let string = decomposeAndRecomposeInitParameters(labels: "xAxisX", "xAxisY", "xAxisZ", "xAxisW", "yAxisX", "yAxisY", "yAxisZ", "yAxisW", "zAxisX", "zAxisY", "zAxisZ", "zAxisW", "wAxisX", "wAxisY", "wAxisZ", "wAxisW") {
            return string
        }
        
        if type == "Transform2D",
           let string = decomposeAndRecomposeInitParameters(labels: "xAxisX", "xAxisY", "yAxisX", "yAxisY", "originX", "originY") {
            return string
        }
        
        if type == "Transform3D",
           let string = decomposeAndRecomposeInitParameters(labels: "xAxisX", "xAxisY", "xAxisZ", "yAxisX", "yAxisY", "yAxisZ", "zAxisX", "zAxisY", "zAxisZ", "originX", "originY", "originZ") {
            return string
        }
        
        if type == "Color",
           let string = decomposeAndRecomposeInitParameters(labels: "r", "g", "b", "a") {
            return string
        }
        
        if type == "Plane",
           let string = decomposeAndRecomposeInitParameters(labels: "x", "y", "z", "d") {
            return string
        }
        
        if type == "Vector2" || type == "Vector2i",
           let string = decomposeAndRecomposeInitParameters(labels: "x", "y") {
            return string
        }
        
        if type == "Vector3" || type == "Vector3i",
           let string = decomposeAndRecomposeInitParameters(labels: "x", "y", "z") {
            return string
        }
        
        if type == "Vector4" || type == "Vector4i" || type == "Quaternion",
           let string = decomposeAndRecomposeInitParameters(labels: "x", "y", "z", "w") {
            return string
        }
        
        return string
    }
    
    private func decomposeAndRecomposeInitParameters(labels: String...) -> String? {
        let (type, parameters) = decomposeInitParameters()
        guard parameters.count == labels.count else {
            return nil
        }
        
        return recomposeInitParameters(forType: type, parameters: parameters, labels: labels)
    }
    
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

extension ConstantValue: Codable {
    func encode(to encoder: Encoder) throws {
        try string.encode(to: encoder)
    }
    
    init(from decoder: Decoder) throws {
        string = try String(from: decoder)
    }
}
