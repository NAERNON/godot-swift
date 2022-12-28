import Foundation

private let protectedStrings: Set<String> = [
    "continue",
    "enum",
    "internal",
    "default",
    "repeat",
    "final",
    "in",
    "func",
    "class",
    "self",
    "static",
    "nil"
]

extension CodeLanguage {
    /// Returns a `String` value where the given `String` doesn't collide with the compiler.
    ///
    /// In Swift, the following string ``"continue"`` would return ``"`continue`"``,
    /// because `continue` is already a keyword.
    func protectNameIfKeyword(for string: String) -> String {
        guard self == .swift else {
            return string
        }
        
        if protectedStrings.contains(string) {
            return "`" + string + "`"
        }
        
        return string
    }
}
