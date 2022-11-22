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
}
