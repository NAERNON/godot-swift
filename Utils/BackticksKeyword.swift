
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

/// Places backticks around the given string if is a Swift keyword.
public func backticksKeyword(_ string: String) -> String {
    if keywords.contains(string) {
        return "`" + string + "`"
    }
    
    return string
}

/// Removes backticks around the given string if has them.
public func removeBackticks(_ string: some StringProtocol) -> String {
    if string.count >= 2 && string.first == "`" && string.last == "`" {
        return String(string.dropLast(1).dropFirst(1))
    }
    
    return String(string)
}
