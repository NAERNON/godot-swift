import Foundation

extension CodeLanguage {
    /// Returns a `String` value where the given `String` doesn't collide with the compiler.
    ///
    /// In Swift, the following string ``"continue"`` would return ``"`continue`"``,
    /// because `continue` is a already a keyword.
    func protectNameIfKeyword(for string: String) -> String {
        guard self == .swift else {
            return string
        }
        
        let shouldBeProtected: Bool
        switch string {
        case "continue",
            "enum",
            "internal",
            "default":
            shouldBeProtected = true
        default: shouldBeProtected = false
        }
        
        guard shouldBeProtected else {
            return string
        }
        
        return "`" + string + "`"
    }
}
