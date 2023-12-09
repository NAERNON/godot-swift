import GodotExtensionHeaders

@GodotOpaqueBuiltinClass
public struct GodotArray<Element>
where Element : VariantStorable {}

public typealias AnyGodotArray = GodotArray<Variant>

extension GodotArray {
    // MARK: Constructors
    
    public init() {
        self = Self._constructor()
        setTypedIfApplicable()
    }
    
    public init(godotExtensionPointer: GDExtensionConstTypePtr) {
        self = Self._ptr_constructor_godotarray(from: godotExtensionPointer)
    }
    
    // MARK: Copy
    
    internal mutating func withCopiedOpaque() -> Self {
        self._duplicate(deep: true)
    }
    
    // MARK: Type
    
    private func setTypedIfApplicable() {
        guard let storageType = Element.variantStorageType else {
            return
        }
        
        withUnsafeRawPointer { ptr in
            Element._$className.withUnsafeRawPointer { classNamePtr in
                Variant().withUnsafeRawPointer { scriptPtr in
                    // TODO: Check script (last parameter)
                    gdextension_interface_array_set_typed(
                        ptr,
                        storageType.extensionType,
                        classNamePtr,
                        scriptPtr
                    )
                }
            }
        }
    }
}

extension GodotArray: Sequence {}

extension GodotArray: Collection {
    public var startIndex: Int {
        0
    }

    public var endIndex: Int {
        self._size()
    }

    public func index(after i: Int) -> Int {
        i+1
    }
}

extension GodotArray: BidirectionalCollection {
    public func index(before i: Int) -> Int {
        i-1
    }
}

extension GodotArray: RandomAccessCollection {}

extension GodotArray: RangeReplaceableCollection {
    public subscript(index: Int) -> Element {
        get {
            Element.convertFromCheckedStorage(consuming: self._getValue(at: Int64(index)))
        }
        set(newValue) {
            Element.withValueStorage(newValue) { storage in
                self._setValue(storage, at: Int64(index))
            }
        }
        _modify {
            let index = Int64(index)
            var newValue = Element.convertFromCheckedStorage(consuming: self._getValue(at: index))
            
            yield &newValue
            
            Element.withValueStorage(newValue) { storage in
                self._setValue(storage, at: index)
            }
        }
    }
    
    public mutating func replaceSubrange<C>(_ subrange: Swift.Range<Int>, with newElements: C)
    where C : Collection, Element == C.Element {
        var rangeIndex = subrange.lowerBound
        for (collectionIndex, element) in newElements.enumerated() {
            if collectionIndex + subrange.lowerBound < subrange.upperBound {
                self[rangeIndex] = element
            } else {
                self._insert(position: rangeIndex, value: element)
            }
            rangeIndex += 1
        }
        
        let removeIndex = subrange.lowerBound + newElements.count
        while rangeIndex < subrange.upperBound {
            self._removeAt(position: removeIndex)
            rangeIndex += 1
        }
    }
}

extension GodotArray: MutableCollection {}

extension GodotArray: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Element...) {
        self.init(elements)
    }
}

extension GodotArray: Equatable {
    public static func == (lhs: GodotArray, rhs: GodotArray) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
}

extension GodotArray: Hashable {
    public var hashValue: Int { _hash() }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(_hash())
    }
}

extension GodotArray: CustomStringConvertible {
    public var description: String {
        "[\(self.map { String(reflecting: $0) }.joined(separator: ", "))]"
    }
}

extension GodotArray: CustomDebugStringConvertible {
    public var debugDescription: String {
        "[\(self.map { String(reflecting: $0) }.joined(separator: ", "))]"
    }
}
