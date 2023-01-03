import Foundation

/// A constant used in the `ExtensionApi` type.
///
/// Types such as `Vector2` are initialized with the code **`Vector2(a, b)`** in Godot.
/// But in Swift, we need to use default initializers and convert this code to **`Vector2(x: a, y: b)`**.
struct ConstantValue {
    private let string: String
    
    init(string: String) {
        self.string = string
    }
    
    /// Returns a converted string code for the value.
    /// - Parameter type: The type of the value.
    func toSwift(forType type: InstanceType) -> String {
        if type == "Variant" && string == "null" {
            return "nil"
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
        
        if type == "Rect2" || type == "Rect2i",
           let string = decomposeAndRecomposeInitParameters(labels: "x", "y", "width", "height") {
            return string
        }
        
        if type == "NodePath",
           let string = decomposeAndRecomposeInitParameters(labels: "string") {
            return string
        }
        
        if type.isEnumType {
            return type.toSwift() + "(rawValue: \(string))!"
        }
        
        if type.isBitfieldType {
            return type.toSwift() + "(rawValue: \(string))"
        }
        
        if type == "Dictionary" {
            return "[:]"
        }
        
        if type == "String" || type == "StringName",
           string.first == "&" {
            return String(string[string.index(after: string.startIndex)...])
        }
        
        if string == "" {
            return type.toSwift() + "()"
        }
        
#warning("Deal with null objects the right way.")
        if string == "null" {
            return type.toSwift() + "()"
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
