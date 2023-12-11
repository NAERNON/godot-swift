import GodotExtensionHeaders

@GodotOpaqueBuiltinClass
@GodotPackedArray
public struct PackedFloat64Array {}

extension PackedFloat64Array {
    public typealias Element = Double
    
    // MARK: Constructors
    
    public init() {
        self = Self._constructor()
    }
    
    public init(array: GodotArray<Element>) {
        self = Self._constructor_godotarray(from: array)
    }
    
    // MARK: Copy
    
    internal mutating func withCopiedOpaque() -> Self {
        self._duplicate()
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
