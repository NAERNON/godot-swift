import GodotExtensionHeaders

@GodotOpaqueBuiltinClass
public struct GodotDictionary {
    public init() {
        self = Self._constructor()
    }
    
    public init(_ value: GodotDictionary) {
        self = value
    }
    
    public init(godotExtensionPointer: GDExtensionConstTypePtr) {
        self = Self._ptr_constructor_godotdictionary(from: godotExtensionPointer)
    }
    
    // MARK: Copy
    
    internal mutating func withCopiedOpaque() -> Self {
        self._duplicate(deep: true)
    }
    
    // MARK: Operators
    
    public static func == (lhs: GodotDictionary, rhs: Variant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    public static func == (lhs: Variant, rhs: GodotDictionary) -> Bool {
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
    
    public func keys() -> GodotArray {
        self._keys()
    }
    
    public func values() -> GodotArray {
        self._values()
    }
}

// MARK: - Extensions

extension GodotDictionary: Equatable {
    public static func == (lhs: GodotDictionary, rhs: GodotDictionary) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
}

extension GodotDictionary: Sequence {
    public struct Iterator: IteratorProtocol {
        private let dictionary: GodotDictionary
        private let keys: GodotArray
        private var index = 0
        
        fileprivate init(dictionary: GodotDictionary) {
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

extension GodotDictionary: ExpressibleByDictionaryLiteral {
    public init(dictionaryLiteral elements: (Variant, Variant)...) {
        var newDictionary = GodotDictionary()
        for (key, value) in elements {
            newDictionary[key] = value
        }
        self = newDictionary
    }
}

extension GodotDictionary: Hashable {
    public var hashValue: Int { _hash() }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(_hash())
    }
}
