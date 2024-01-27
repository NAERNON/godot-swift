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
    
    func syntax(forType type: GodotType) -> String {
        if string.isEmpty {
            return type.syntax() + "()"
        }
        
        if string == "null" && type == .variant {
            return "Variant()"
        }
        
        if string == "null" {
            return "nil"
        }
        
        if type.isEnum {
            return type.syntax() + "(rawValue: \(string))!"
        }
        
        if type.isBitfield {
            return type.syntax() + "(rawValue: \(string))"
        }
        
        if type == "StringName" {
            return "\"\(string.components(separatedBy: "\"")[1])\""
        }
        
        if type == "Dictionary" && string == "{}" {
            return "[:]"
        }
        
        if (type.isTypedArray || type == "Array") && string.contains("([])") {
            return "[]"
        }
        
        if type == "float" && string.last == "f" {
            return string.dropLast() + "0"
        }
        
        // Decompose initializers types.
        let (decomposedType, parameters) = decomposeInitParameters()
        switch decomposedType {
        case "Basis":
            if parameters == ["1", "0", "0", "0", "1", "0", "0", "0", "1"] {
                return ".identity"
            }
            let xVector = vectorInit(with: parameters[0..<3])
            let yVector = vectorInit(with: parameters[3..<6])
            let zVector = vectorInit(with: parameters[6..<9])
            return "Basis(x: \(xVector), y: \(yVector), z: \(zVector))"
        case "Projection":
            if parameters == ["1", "0", "0", "0", "0", "1", "0", "0", "0", "0", "1", "0", "0", "0", "0", "1"] {
                return ".identity"
            }
            let xVector = vectorInit(with: parameters[0..<4])
            let yVector = vectorInit(with: parameters[4..<8])
            let zVector = vectorInit(with: parameters[8..<12])
            let wVector = vectorInit(with: parameters[12..<16])
            return "Projection(x: \(xVector), y: \(yVector), z: \(zVector), w: \(wVector))"
        case "Transform2D":
            if parameters == ["1", "0", "0", "1", "0", "0"] {
                return ".identity"
            }
            let xVector = vectorInit(with: parameters[0..<2])
            let yVector = vectorInit(with: parameters[2..<4])
            let originVector = vectorInit(with: parameters[4..<6])
            return "Transform2D(xAxis: \(xVector), yAxis: \(yVector), origin: \(originVector))"
        case "Transform3D":
            if parameters == ["1", "0", "0", "0", "1", "0", "0", "0", "1", "0", "0", "0"] {
                return ".identity"
            }
            let xVector = vectorInit(with: parameters[0..<3])
            let yVector = vectorInit(with: parameters[3..<6])
            let zVector = vectorInit(with: parameters[6..<9])
            let originVector = vectorInit(with: parameters[9..<12])
            return "Transform3D(xAxis: \(xVector), yAxis: \(yVector), zAxis: \(zVector), origin: \(originVector))"
        case "Color":
            return recomposeInitParameters(
                forType: decomposedType,
                parameters: parameters,
                labels: "r", "g", "b", "a"
            )
        case "Plane":
            return recomposeInitParameters(
                forType: decomposedType,
                parameters: parameters,
                labels: "x", "y", "z", "d"
            )
        case "Vector2", "Vector2i":
            return recomposeInitParameters(
                forType: decomposedType,
                parameters: parameters,
                labels: "x", "y"
            )
        case "Vector3", "Vector3i":
            return recomposeInitParameters(
                forType: decomposedType,
                parameters: parameters,
                labels: "x", "y", "z"
            )
        case "Vector4", "Vector4i", "Quaternion":
            return recomposeInitParameters(
                forType: decomposedType,
                parameters: parameters,
                labels: "x", "y", "z", "w"
            )
        case "Rect2", "Rect2i":
            return recomposeInitParameters(
                forType: decomposedType,
                parameters: parameters,
                labels: "x", "y", "width", "height"
            )
        case "NodePath":
            return recomposeInitParameters(
                forType: decomposedType,
                parameters: parameters,
                labels: "string"
            )
        default:
            break
        }
        
        return string
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
    
    private func recomposeInitParameters(forType type: String, parameters: [String], labels: String...) -> String {
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
    
    private func vectorInit<Parameters>(with parameters: Parameters) -> String
    where Parameters : RandomAccessCollection<String>,
          Parameters.Index == Int
    {
        let startIndex = parameters.startIndex
        return switch parameters.count {
        case 2: "Vector2(x: \(parameters[startIndex + 0]), y: \(parameters[startIndex + 1]))"
        case 3: "Vector3(x: \(parameters[startIndex + 0]), y: \(parameters[startIndex + 1]), z: \(parameters[startIndex + 2]))"
        case 4: "Vector4(x: \(parameters[startIndex + 0]), y: \(parameters[startIndex + 1]), z: \(parameters[startIndex + 2]), w: \(parameters[startIndex + 3]))"
        default: fatalError()
        }
    }
}
