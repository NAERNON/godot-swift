import Foundation

extension Dictionary {
    public init() {
        self = Self._constructor()
    }
    
    public init(_ value: Dictionary) {
        self = value._duplicate()
    }
    
    // MARK: Operators
    
    public static func == (lhs: Dictionary, rhs: Variant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    public static func == (lhs: Variant, rhs: Dictionary) -> Bool {
        Self._operatorEqual(rhs, lhs)
    }
    
    public subscript(key: Variant) -> Variant {
        get {
            self._getValue(forKey: key)
        }
        set(newValue) {
            self._set(value: newValue, forKey: key)
        }
    }
    
    public func keys() -> Array {
        self._keys()
    }
    
    public func values() -> Array {
        self._values()
    }
}

// MARK: - Extensions

extension Dictionary: Equatable {
    public static func == (lhs: Dictionary, rhs: Dictionary) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
}

extension Dictionary: Sequence {
    public struct Iterator: IteratorProtocol {
        private let dictionary: Dictionary
        private let keys: Array
        private var index = 0
        
        fileprivate init(dictionary: Dictionary) {
            self.dictionary = dictionary
            self.keys = dictionary._keys()
        }
        
        public mutating func next() -> (Variant, Variant)? {
            guard index < keys.count else {
                return nil
            }
            
            let key = keys[index]
            index += 1
            return (key, dictionary[key])
        }
    }
    
    /// Returns an iterator over the dictionary’s key-value pairs.
    ///
    /// Due to Godot limitations, making the iterator is in O(*n*).
    public func makeIterator() -> Iterator {
        Iterator(dictionary: self)
    }
}

extension Dictionary: ExpressibleByDictionaryLiteral {
    public init(dictionaryLiteral elements: (Variant, Variant)...) {
        var newDictionary = Dictionary()
        for (key, value) in elements {
            newDictionary[key] = value
        }
        self = newDictionary
    }
}

extension Dictionary: Hashable {
    public var hashValue: Int { _hash() }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(_hash())
    }
}
