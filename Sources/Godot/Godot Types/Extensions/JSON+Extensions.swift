
public extension JSON {
    static func stringify<T>(
        _ value: T,
        indent: GodotString = "",
        sortKeys: Bool = true,
        fullPrecision: Bool = false
    ) throws -> GodotString where T : Encodable {
        try stringify(
            data: Variant.encode(value),
            indent: indent,
            sortKeys: sortKeys,
            fullPrecision: fullPrecision
        )
    }
    
    static func parseString<T>(
        jsonString: GodotString,
        to type: T.Type
    ) throws -> T where T : Decodable {
        try Variant.decode(type, from: parseString(jsonString: jsonString))
    }
}
