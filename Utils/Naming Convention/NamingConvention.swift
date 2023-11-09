
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
        
        return destination.recompose(source.decompose(string: removeBackticks(self)))
    }
}

public extension NamingConvention {
    /// Returns a string converted as a sentence.
    ///
    /// If the camel String was "someValueOutput", the result
    /// would be "Some Value Output".
    func makeSentence(_ sentence: String) -> String {
        let decomposed = decompose(string: removeBackticks(sentence))
        
        return decomposed.map { name in
            guard !name.isEmpty else {
                return name
            }
            
            var new = name
            new.insert(contentsOf: new.removeFirst().uppercased(), at: name.startIndex)
            return new
        }.joined(separator: " ")
    }
}
