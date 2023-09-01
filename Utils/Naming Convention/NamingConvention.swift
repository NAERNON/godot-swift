
public enum NamingConvention {
    /// `camelNamingConvention`.
    case camel
    /// `PascalNamingConvention`.
    case pascal
    /// `snake_naming_convention`.
    case snake
}

// MARK: Convert

public extension StringProtocol {
    /// Returns the string converted from a given naming contention to another.
    func translated(
        from source: NamingConvention,
        to destination: NamingConvention
    ) -> String {
        guard source != destination else { return String(self) }
        
        return destination.recompose(source.decompose(string: String(self)))
    }
}
