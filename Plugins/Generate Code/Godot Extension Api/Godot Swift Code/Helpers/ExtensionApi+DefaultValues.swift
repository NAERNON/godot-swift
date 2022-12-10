import Foundation

extension ExtensionApi {
    static func defaultValue(forType type: String) -> String {
        if type == "int" {
            return "0"
        } else if type == "float" {
            return "0.0"
        } else if type == "bool" {
            return "false"
        }
        
#warning("Complete this.")
        //    if is_enum(type_name):
        //        return f"{correct_type(type_name)}(0)"
        //    if is_variant(type_name):
        //        return f"{type_name}()"
        //    if is_refcounted(type_name):
        //        return f"Ref<{type_name}>()"
        
        return "nil"
    }
    
    static func correctTypeInitValue(_ value: String, forType type: String) -> String {
        if type == "Variant" && value == "null" {
            return ".nil"
        }
        
        if type == "Basis",
            let string = decomposeAndRecomposeInitParameters(forValue: value, type: type, labels: "xAxisX", "xAxisY", "xAxisZ", "yAxisX", "yAxisY", "yAxisZ", "zAxisX", "zAxisY", "zAxisZ") {
            return string
        }
        
        if type == "Color",
            let string = decomposeAndRecomposeInitParameters(forValue: value, type: type, labels: "r", "g", "b", "a") {
            return string
        }
        
        if type == "Plane",
           let string = decomposeAndRecomposeInitParameters(forValue: value, type: type, labels: "x", "y", "z", "d") {
            return string
        }
        
        if type == "Projection",
           let string = decomposeAndRecomposeInitParameters(forValue: value, type: type, labels: "xAxisX", "xAxisY", "xAxisZ", "xAxisW", "yAxisX", "yAxisY", "yAxisZ", "yAxisW", "zAxisX", "zAxisY", "zAxisZ", "zAxisW", "wAxisX", "wAxisY", "wAxisZ", "wAxisW") {
            return string
        }
        
        if type == "Quaternion",
           let string = decomposeAndRecomposeInitParameters(forValue: value, type: type, labels: "x", "y", "z", "w") {
            return string
        }
        
        if type == "Transform2D",
           let string = decomposeAndRecomposeInitParameters(forValue: value, type: type, labels: "xAxisX", "xAxisY", "yAxisX", "yAxisY", "originX", "originY") {
            return string
        }
        
        if type == "Transform3D",
           let string = decomposeAndRecomposeInitParameters(forValue: value, type: type, labels: "xAxisX", "xAxisY", "xAxisZ", "yAxisX", "yAxisY", "yAxisZ", "zAxisX", "zAxisY", "zAxisZ", "originX", "originY", "originZ") {
            return string
        }
        
        if type == "Vector2" || type == "Vector2i",
            let string = decomposeAndRecomposeInitParameters(forValue: value, type: type, labels: "x", "y") {
            return string
        }
        
        if type == "Vector3" || type == "Vector3i",
           let string = decomposeAndRecomposeInitParameters(forValue: value, type: type, labels: "x", "y", "z") {
            return string
        }
        
        if type == "Vector4" || type == "Vector4i",
           let string = decomposeAndRecomposeInitParameters(forValue: value, type: type, labels: "x", "y", "z", "w") {
            return string
        }
        
        return value
    }
    
    private static func decomposeAndRecomposeInitParameters(forValue value: String, type: String, labels: String...) -> String? {
        let parameters = decomposeInitParameters(for: value)
        guard parameters.count == labels.count else {
            return nil
        }
        
        return recomposeInitParameters(forType: type, parameters: parameters, labels: labels)
    }
    
    private static func decomposeInitParameters(for string: String) -> [String] {
        let scanner = Scanner(string: string)
        _ = scanner.scanUpToString("(")
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
        
        return parameters
    }
    
    private static func recomposeInitParameters(forType type: String, parameters: [String], labels: [String]) -> String {
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
