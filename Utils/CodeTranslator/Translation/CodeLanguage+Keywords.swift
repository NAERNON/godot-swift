import Foundation

private let protectedStrings: Set<String> = [
    "continue",
    "protocol",
    "enum",
    "internal",
    "default",
    "repeat",
    "final",
    "in",
    "func",
    "class",
    "var",
    "let",
    "self",
    "static",
    "operator",
    "extension",
    "import",
    "nil"
]

public extension CodeLanguage {
    /// Returns a `String` value where the given
    /// `String` doesn't collide with the compiler.
    ///
    /// This method adds quote marks around the String
    /// is necessary.
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
