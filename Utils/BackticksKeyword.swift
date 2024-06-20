
private let keywords: Set<String> = [
    "Any",
    "as",
    "associatedtype",
    "break",
    "case",
    "catch",
    "class",
    "continue",
    "default",
    "defer",
    "deinit",
    "do",
    "else",
    "enum",
    "extension",
    "fallthrough",
    "false",
    "fileprivate",
    "for",
    "func",
    "guard",
    "if",
    "import",
    "in",
    "init",
    "inout",
    "internal",
    "is",
    "let",
    "nil",
    "operator",
    "precedencegroup",
    "private",
    "Protocol",
    "protocol",
    "public",
    "repeat",
    "rethrows",
    "return",
    "self",
    "Self",
    "static",
    "struct",
    "subscript",
    "super",
    "switch",
    "throw",
    "throws",
    "true",
    "try",
    "Type",
    "typealias",
    "var",
    "where",
    "while",
]

extension StringProtocol {
    /// Places backticks around the string if it is a Swift keyword.
    public func backticksKeyword() -> String {
        let string = String(self)
        if keywords.contains(string) {
            return "`" + self + "`"
        }
        
        return string
    }
    
    /// Removes backticks around the given string if has them.
    public func backticksRemoved() -> String {
        if self.count >= 2 && self.first == "`" && self.last == "`" {
            return String(self.dropLast(1).dropFirst(1))
        }
        
        return String(self)
    }
}
