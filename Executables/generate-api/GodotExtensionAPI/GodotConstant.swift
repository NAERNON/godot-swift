import Foundation

/// A representation of a Godot constant.
///
/// It can be decoded from the `extension_api.json` file.
///
/// A constant is a type expression such as "`Vector2(a, b)`".
struct GodotConstant: Decodable, Equatable {
    /// The constant `String` such as `"Vector2(a, b)"`.
    let string: String
    
    static let `nil` = GodotConstant(string: "null")
    
    // MARK: Init
    
    init(string: String) {
        self.string = string
    }
    
    init(from decoder: Decoder) throws {
        string = try String(from: decoder)
    }
    
    // MARK: - Syntax
    
    func syntax() -> String {
        let (type, parameters) = decomposeInitParameters()
        
        switch type {
        case "Basis":
            return recomposeInitParameters(
                forType: type,
                parameters: parameters,
                labels: ["xAxisX", "xAxisY", "xAxisZ", "yAxisX", "yAxisY", "yAxisZ", "zAxisX", "zAxisY", "zAxisZ"]
            )
            
            case "Projection":
            return recomposeInitParameters(
                forType: type,
                parameters: parameters,
                labels: ["xAxisX", "xAxisY", "xAxisZ", "xAxisW", "yAxisX", "yAxisY", "yAxisZ", "yAxisW", "zAxisX", "zAxisY", "zAxisZ", "zAxisW", "wAxisX", "wAxisY", "wAxisZ", "wAxisW"]
            )
            
            case "Transform2D":
            return recomposeInitParameters(
                forType: type,
                parameters: parameters,
                labels: ["xAxisX", "xAxisY", "yAxisX", "yAxisY", "originX", "originY"]
            )
            
            case "Transform3D":
            return recomposeInitParameters(
                forType: type,
                parameters: parameters,
                labels: ["xAxisX", "xAxisY", "xAxisZ", "yAxisX", "yAxisY", "yAxisZ", "zAxisX", "zAxisY", "zAxisZ", "originX", "originY", "originZ"]
            )
            
            case "Color":
            return recomposeInitParameters(
                forType: type,
                parameters: parameters,
                labels: ["r", "g", "b", "a"]
            )
            
            case "Plane":
            return recomposeInitParameters(
                forType: type,
                parameters: parameters,
                labels: ["x", "y", "z", "d"]
            )
            
            case "Vector2", "Vector2i":
            return recomposeInitParameters(
                forType: type,
                parameters: parameters,
                labels: ["x", "y"]
            )
            
            case "Vector3", "Vector3i":
            return recomposeInitParameters(
                forType: type,
                parameters: parameters,
                labels: ["x", "y", "z"]
            )
            
            case "Vector4", "Vector4i", "Quaternion":
            return recomposeInitParameters(
                forType: type,
                parameters: parameters,
                labels: ["x", "y", "z", "w"]
            )
            
            case "Rect2", "Rect2i":
            return recomposeInitParameters(
                forType: type,
                parameters: parameters,
                labels: ["x", "y", "width", "height"]
            )
        default:
            return type
        }
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
