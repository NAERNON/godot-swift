import GodotExtensionHeaders

@BuiltinOpaque
@GodotPackedArray
public struct PackedFloat32Array {
    internal mutating func makeUniqueIfSharedOpaque() {
        guard !isKnownUniquelyReferenced(&opaque) else {
            return
        }
        
        self = Self.make(from: self)
    }
}

extension PackedFloat32Array {
    public typealias Element = Double
    
    // MARK: Constructors
    
    public init() {
        self = Self.make()
    }
    
    public init(array: GodotArray<Element>) {
        self = Self.make(from: array)
    }
    
    // MARK: Methods & variables
    
    public func byteArray() -> PackedByteArray {
        _toByteArray()
    }
    
    // MARK: Collection
    
    public mutating func append(_ newElement: Element) {
        _append(value: newElement)
    }
    
    public mutating func insert(_ newElement: Element, at i: Int) {
        _ = _insert(atIndex: i, value: newElement)
    }
    
    public subscript(index: Int) -> Element {
        get {
            self._getValue(at: Int64(index))
        }
        set(newValue) {
            self._setValue(newValue, at: Int64(index))
        }
    }
}
