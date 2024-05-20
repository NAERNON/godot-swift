import GodotExtensionHeaders

@BuiltinOpaque
public struct GodotArray<Element>
where Element : Variant.Storable {
    internal mutating func makeUniqueIfSharedOpaque() {
        guard !isKnownUniquelyReferenced(&opaque) else {
            return
        }
        
        self = self._duplicate(deep: false)
    }
    
    public consuming func transferToGodot(
        unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer
    ) {
        var new = consume self
        new.makeUniqueIfSharedOpaque()
        new.opaque.withUnsafeMutableRawPointer { ptr in
            destinationUnsafePointer.copyMemory(from: ptr, byteCount: new.opaque.size)
        }
        new.opaque.removeDestructor()
    }
}

public typealias AnyGodotArray = GodotArray<Variant>

extension GodotArray {
    // MARK: Constructors
    
    public init() {
        self = Self.make()
        setTypedIfApplicable()
    }
    
    // MARK: Type
    
    private mutating func setTypedIfApplicable() {
        guard let storageType = Element.variantStorageType else {
            return
        }
        
        withUnsafeMutableOpaquePointer { ptr in
            Element._exposedClassName.withUnsafeOpaquePointer { classNamePtr in
                Variant.Storage().withUnsafeRawPointer { scriptPtr in
                    // TODO: Check script (last parameter)
                    GodotExtension.Interface.arraySetTyped(
                        ptr,
                        storageType.extensionType,
                        classNamePtr,
                        scriptPtr
                    )
                }
            }
        }
    }
    
    public func eraseToAnyArray() -> AnyGodotArray {
        // This is performed in O(1).
        let emptyScript: Object? = nil
        return AnyGodotArray.make(
            base: self,
            type: 0,
            className: GodotStringName(),
            script: emptyScript
        )
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
    
    public var isEmpty: Bool {
        _isEmpty()
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
            Element.convertToStorageTemporarily(newValue) { storage in
                self._setValue(storage, at: Int64(index))
            }
        }
        _modify {
            let index = Int64(index)
            var newValue = Element.convertFromCheckedStorage(consuming: self._getValue(at: index))
            
            yield &newValue
            
            Element.convertToStorageTemporarily(newValue) { storage in
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
                Element.convertToStorageTemporarily(element) { elementStorage in
                    _ = self._insert(position: rangeIndex, value: elementStorage)
                }
            }
            rangeIndex += 1
        }
        
        let removeIndex = subrange.lowerBound + newElements.count
        while rangeIndex < subrange.upperBound {
            self._removeAt(position: removeIndex)
            rangeIndex += 1
        }
    }
    
    public mutating func append(_ newElement: Element) {
        Element.convertToStorageTemporarily(newElement) { storage in
            _append(value: storage)
        }
    }
    
    public mutating func insert(_ newElement: Element, at i: Int) {
        Element.convertToStorageTemporarily(newElement) { storage in
            _ = _insert(position: i, value: storage)
        }
    }
    
    public mutating func popLast() -> Element? {
        let element = _popBack()
        if element.isEmpty {
            return nil
        } else {
            return Element.convertFromCheckedStorage(consuming: _popBack())
        }
    }
    
    @discardableResult
    public mutating func remove(at i: Int) -> Element {
        let element = self[i]
        _removeAt(position: i)
        return element
    }
    
    public mutating func removeAll(keepingCapacity keepCapacity: Bool) {
        _clear()
    }
    
    @discardableResult
    public mutating func removeFirst() -> Element {
        Element.convertFromCheckedStorage(consuming: _popFront())
    }
    
    @discardableResult
    public mutating func removeLast() -> Element {
        Element.convertFromCheckedStorage(consuming: _popBack())
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
    
    public static func != (lhs: GodotArray, rhs: GodotArray) -> Bool {
        Self._operatorNotEqual(lhs, rhs)
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
