import GodotExtensionHeaders

@GodotOpaqueBuiltinClass
@GodotPackedArray
public struct PackedInt32Array {}

extension PackedInt32Array {
    public typealias Element = Int32
    
    // MARK: Constructors
    
    public init() {
        self = Self._constructor()
    }
    
    public init(array: GodotArray<Element>) {
        self = Self._constructor_godotarray(from: array)
    }
    
    public init(godotExtensionPointer: GDExtensionConstTypePtr) {
        self = Self._ptr_constructor_packedint32array(from: godotExtensionPointer)
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
        _append(value: Int(newElement))
    }
    
    public mutating func insert(_ newElement: Element, at i: Int) {
        _ = _insert(atIndex: i, value: Int(newElement))
    }
    
    public subscript(index: Int) -> Element {
        get {
            Int32(self._getValue(at: Int64(index)))
        }
        set(newValue) {
            self._setValue(Int(newValue), at: Int64(index))
        }
    }
}
