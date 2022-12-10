import Foundation

extension ExtensionApi {
    /// Converts a given Godot type to the Swift equivalent.
    ///
    /// For instance, an `int` value would give an `Int` value in Swift.
    static func convert(type: String) -> String {
        switch type {
        case "float": return "Double"
        case "int": return "Int"
        case "bool": return "Bool"
        default: return type
        }
    }
    
    /// Some builtin classes use `Real` or `Float` instead of `Double`.
    static func floatingPointType(insideType: String) -> String {
        if ExtensionApi.isBuiltinBaseType(insideType) {
            if insideType == "Color" {
                return "Float"
            } else {
                return "Real"
            }
        }
        
        return "Double"
    }
    
    static func convert(type: String, insideType: String) -> String {
        if type == "float" {
            return floatingPointType(insideType: insideType)
        } else {
            return convert(type: type)
        }
    }
}
