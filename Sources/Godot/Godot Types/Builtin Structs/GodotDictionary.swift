import GodotExtensionHeaders

@GodotOpaqueBuiltinClass
public struct GodotDictionary<Key, AssociatedValue>
where Key : VariantStorable, AssociatedValue : VariantStorable {}

public typealias AnyGodotDictionary = GodotDictionary<Variant, Variant>

extension GodotDictionary {
    // MARK: Constructors
    
    public init() {
        self = Self._constructor()
    }
    
    public init(godotExtensionPointer: GDExtensionConstTypePtr) {
        self = Self._ptr_constructor_godotdictionary(from: godotExtensionPointer)
    }
    
    // MARK: Copy
    
    internal mutating func withCopiedOpaque() -> Self {
        self._duplicate(deep: true)
    }
    
    // MARK: Operators
    
    public subscript(key: Key) -> AssociatedValue? {
        get {
            Key.withValueStorage(key) { keyStorage in
                guard _has(key: keyStorage) else {
                    return nil
                }
                
                return AssociatedValue.convertFromCheckedStorage(consuming: self._getValue(forKey: keyStorage))
            }
        }
        set(newValue) {
            Key.withValueStorage(key) { keyStorage in
                guard let newValue else {
                    self._erase(key: keyStorage)
                    return
                }
                
                AssociatedValue.withValueStorage(newValue) { newValueStorage in
                    self._set(value: newValueStorage, forKey: keyStorage)
                }
            }
        }
        _modify {
            let keyStorage = Key.convertToStorage(key)
            var newValue: AssociatedValue? = if _has(key: keyStorage) {
                AssociatedValue.convertFromCheckedStorage(consuming: self._getValue(forKey: keyStorage))
            } else {
                nil
            }
            
            yield &newValue
            
            guard let newValue else {
                self._erase(key: keyStorage)
                return
            }
            
            AssociatedValue.withValueStorage(newValue) { newValueStorage in
                self._set(value: newValueStorage, forKey: keyStorage)
            }
        }
    }
    
    public subscript(
        key: Key,
        default defaultValue: @autoclosure () -> AssociatedValue
    ) -> AssociatedValue {
        get {
            Key.withValueStorage(key) { keyStorage in
                guard _has(key: keyStorage) else {
                    return defaultValue()
                }
                
                return AssociatedValue.convertFromCheckedStorage(
                    consuming: self._getValue(forKey: keyStorage))
            }
        }
        set(newValue) {
            Key.withValueStorage(key) { keyStorage in
                AssociatedValue.withValueStorage(newValue) { newValueStorage in
                    self._set(value: newValueStorage, forKey: keyStorage)
                }
            }
        }
        _modify {
            let keyStorage = Key.convertToStorage(key)
            var newValue: AssociatedValue = if _has(key: keyStorage) {
                AssociatedValue.convertFromCheckedStorage(consuming: self._getValue(forKey: keyStorage))
            } else {
                defaultValue()
            }
            
            yield &newValue
            
            AssociatedValue.withValueStorage(newValue) { newValueStorage in
                self._set(value: newValueStorage, forKey: keyStorage)
            }
        }
    }
    
    public func keys() -> GodotArray<Variant> {
        self._keys()
    }
    
    public func values() -> GodotArray<Variant> {
        self._values()
    }
}

extension GodotDictionary: Equatable {
    public static func == (lhs: GodotDictionary, rhs: GodotDictionary) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
}

extension GodotDictionary: Sequence {
    public struct Iterator: IteratorProtocol {
        private let dictionary: GodotDictionary
        private let keys: GodotArray<Variant>
        private var index: Int64 = 0
        
        fileprivate init(dictionary: GodotDictionary) {
            self.dictionary = dictionary
            self.keys = dictionary._keys()
        }
        
        public mutating func next() -> (Key, AssociatedValue)? {
            guard index < keys.count else {
                return nil
            }
            
            let keyStorage = keys._getValue(at: index)
            index += 1
            
            let key = Key.convertFromCheckedStorage(keyStorage)
            let element = AssociatedValue.convertFromCheckedStorage(
                consuming: dictionary._getValue(forKey: keyStorage))
            return (key, element)
        }
    }
    
    /// Returns an iterator over the dictionary’s key-value pairs.
    ///
    /// Due to Godot limitations, making the iterator is in O(*n*).
    public func makeIterator() -> Iterator {
        Iterator(dictionary: self)
    }
    
    public var isEmpty: Bool {
        _isEmpty()
    }
}

extension GodotDictionary: ExpressibleByDictionaryLiteral {
    public init(dictionaryLiteral elements: (Key, AssociatedValue)...) {
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

extension GodotDictionary: CustomStringConvertible {
    public var description: String {
        "[\(self.map { "\(String(reflecting: $0.0)): \(String(reflecting: $0.1))" }.joined(separator: ", "))]"
    }
}

extension GodotDictionary: CustomDebugStringConvertible {
    public var debugDescription: String {
        "[\(self.map { "\(String(reflecting: $0.0)): \(String(reflecting: $0.1))" }.joined(separator: ", "))]"
    }
}
