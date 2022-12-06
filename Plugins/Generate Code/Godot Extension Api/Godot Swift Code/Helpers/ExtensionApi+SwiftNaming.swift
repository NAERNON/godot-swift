import Foundation

extension ExtensionApi {
    /// Returns a String value of the function name converted to Swift to better fit the language.
    /// It also returns a Boolean value indicating whether the function should actually be a computed var instead of a function.
    static func functionSwiftName(for name: String) -> (name: String, shouldBeVar: Bool) {
        let swiftName = unprotectedFunctionSwiftName(for: name)
        return (CodeLanguage.swift.protectNameIfKeyword(for: swiftName.name), swiftName.shouldBeVar)
    }
    
    private static func unprotectedFunctionSwiftName(for name: String) -> (name: String, shouldBeVar: Bool) {
        switch name {
        case "unary-": return ("negative", true)
        case "unary+": return ("positive", true)
        default: return (name, false)
        }
    }
}
