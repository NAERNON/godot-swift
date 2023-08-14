import GodotExtensionHeaders

@GodotOpaqueBuiltinClass
public struct PackedByteArray {
    public init() {
        self = Self._constructor()
    }
    
    public init(_ value: PackedByteArray) {
        self = value
    }
    
    public init(array: GodotArray) {
        self = Self._constructor_godotarray(from: array)
    }
    
    public init(godotExtensionPointer: GDExtensionConstTypePtr) {
        self = Self._ptr_constructor_packedbytearray(from: godotExtensionPointer)
    }
    
    public func withUnsafeBytesArray(_ body: (UnsafeMutablePointer<UInt8>?) -> Void) {
        self.withUnsafeRawPointer { extensionTypePtr in
            body(gdextension_interface_packed_byte_array_operator_index(extensionTypePtr, 0))
        }
    }
    
    // MARK: Copy
    
    internal mutating func withCopiedOpaque() -> Self {
        self._duplicate()
    }
    
    // MARK: Operators
    
    public static func == (lhs: PackedByteArray, rhs: Variant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    public static func == (lhs: Variant, rhs: PackedByteArray) -> Bool {
        Self._operatorEqual(rhs, lhs)
    }
    
    // MARK: Methods & variables
    
    public func stringFromASCII() -> GodotString {
        _getStringFromAscii()
    }
    
    public func stringFromUTF8() -> GodotString {
        _getStringFromUtf8()
    }
    
    public func stringFromUTF16() -> GodotString {
        _getStringFromUtf16()
    }
    
    public func stringFromUTF32() -> GodotString {
        _getStringFromUtf32()
    }
    
    public func stringFromWChar() -> GodotString {
        _getStringFromWchar()
    }
    
    public func hexEncoded() -> GodotString {
        _hexEncode()
    }
    
    public func compressed(mode: Int = 0) -> PackedByteArray {
        _compress(compressionMode: mode)
    }
    
    public func decompressed(bufferSize: Int, mode: Int = 0) -> PackedByteArray {
        _decompress(bufferSize: bufferSize, compressionMode: mode)
    }
    
    public func dymanicDecompressed(maxOutputSize: Int, mode: Int = 0) -> PackedByteArray {
        _decompressDynamic(maxOutputSize: maxOutputSize, compressionMode: mode)
    }
    
    public func decodeU8(at byteOffset: Int) -> Int {
        _decodeU8(byteOffset: byteOffset)
    }
    
    public func decodeS8(at byteOffset: Int) -> Int {
        _decodeS8(byteOffset: byteOffset)
    }
    
    public func decodeU16(at byteOffset: Int) -> Int {
        _decodeU16(byteOffset: byteOffset)
    }
    
    public func decodeS16(at byteOffset: Int) -> Int {
        _decodeS16(byteOffset: byteOffset)
    }
    
    public func decodeU32(at byteOffset: Int) -> Int {
        _decodeU32(byteOffset: byteOffset)
    }
    
    public func decodeS32(at byteOffset: Int) -> Int {
        _decodeS32(byteOffset: byteOffset)
    }
    
    public func decodeU64(at byteOffset: Int) -> Int {
        _decodeU64(byteOffset: byteOffset)
    }
    
    public func decodeS64(at byteOffset: Int) -> Int {
        _decodeS64(byteOffset: byteOffset)
    }
    
    public func decodeHalf(at byteOffset: Int) -> Double {
        _decodeHalf(byteOffset: byteOffset)
    }
    
    public func decodeFloat(at byteOffset: Int) -> Double {
        _decodeFloat(byteOffset: byteOffset)
    }
    
    public func decodeDouble(at byteOffset: Int) -> Double {
        _decodeDouble(byteOffset: byteOffset)
    }
    
    public func hasEncodedVar(at byteOffset: Int, allowObjects: Bool = false) -> Bool {
        _hasEncodedVar(byteOffset: byteOffset, allowObjects: allowObjects)
    }
    
    public func decodeVar(at byteOffset: Int, allowObjects: Bool = false) -> Variant {
        _decodeVar(byteOffset: byteOffset, allowObjects: allowObjects)
    }
    
    public func decodeVarSize(at byteOffset: Int, allowObjects: Bool = false) -> Int {
        _decodeVarSize(byteOffset: byteOffset, allowObjects: allowObjects)
    }
    
    public func int32Array() -> PackedInt32Array {
        _toInt32Array()
    }
    
    public func int64Array() -> PackedInt64Array {
        _toInt64Array()
    }
    
    public func float32Array() -> PackedFloat32Array {
        _toFloat32Array()
    }
    
    public func float64Array() -> PackedFloat64Array {
        _toFloat64Array()
    }
    
    public mutating func encodeU8(_ value: Int, at byteOffset: Int) {
        _encodeU8(byteOffset: byteOffset, value: value)
    }
    
    mutating public func encodeS8(_ value: Int, at byteOffset: Int) {
        _encodeS8(byteOffset: byteOffset, value: value)
    }
    
    mutating public func encodeU16(_ value: Int, at byteOffset: Int) {
        _encodeU16(byteOffset: byteOffset, value: value)
    }
    
    mutating public func encodeS16(_ value: Int, at byteOffset: Int) {
        _encodeS16(byteOffset: byteOffset, value: value)
    }
    
    mutating public func encodeU32(_ value: Int, at byteOffset: Int) {
        _encodeU32(byteOffset: byteOffset, value: value)
    }
    
    mutating public func encodeS32(_ value: Int, at byteOffset: Int) {
        _encodeS32(byteOffset: byteOffset, value: value)
    }
    
    mutating public func encodeU64(_ value: Int, at byteOffset: Int) {
        _encodeU64(byteOffset: byteOffset, value: value)
    }
    
    mutating public func encodeS64(_ value: Int, at byteOffset: Int) {
        _encodeS64(byteOffset: byteOffset, value: value)
    }
    
    mutating public func encodeHalf(_ value: Double, at byteOffset: Int) {
        _encodeHalf(byteOffset: byteOffset, value: value)
    }
    
    mutating public func encodeFloat(_ value: Double, at byteOffset: Int) {
        _encodeFloat(byteOffset: byteOffset, value: value)
    }
    
    mutating public func encodeDouble(_ value: Double, at byteOffset: Int) {
        _encodeDouble(byteOffset: byteOffset, value: value)
    }
    
    @discardableResult
    mutating public func encodeVar(
        _ value: Variant,
        at byteOffset: Int,
        allowObjects: Bool = false
    ) -> Int {
        _encodeVar(byteOffset: byteOffset, value: value, allowObjects: allowObjects)
    }
}

// MARK: - Extensions

extension PackedByteArray: Sequence {}

extension PackedByteArray: Collection {
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

extension PackedByteArray: BidirectionalCollection {
    public func index(before i: Int) -> Int {
        i-1
    }
}

extension PackedByteArray: RandomAccessCollection {}

extension PackedByteArray: RangeReplaceableCollection {
    public subscript(index: Int) -> UInt8 {
        get {
            UInt8(self._getValue(at: Int64(index)))
        }
        set(newValue) {
            self._setValue(Int(newValue), at: Int64(index))
        }
    }
    
    public mutating func replaceSubrange<C>(_ subrange: Swift.Range<Int>, with newElements: C)
    where C : Collection, UInt8 == C.Element {
        var rangeIndex = subrange.lowerBound
        for (collectionIndex, element) in newElements.enumerated() {
            if collectionIndex + subrange.lowerBound < subrange.upperBound {
                self[rangeIndex] = element
            } else {
                self._insert(atIndex: rangeIndex, value: Int(element))
            }
            rangeIndex += 1
        }
        
        let removeIndex = subrange.lowerBound + newElements.count
        while rangeIndex < subrange.upperBound {
            self._removeAt(index: removeIndex)
            rangeIndex += 1
        }
    }
}

extension PackedByteArray: MutableCollection {}

extension PackedByteArray: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: UInt8...) {
        self.init(elements)
    }
}

extension PackedByteArray: Equatable {
    public static func == (lhs: PackedByteArray, rhs: PackedByteArray) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
}

extension PackedByteArray: Codable {
    public func encode(to encoder: Encoder) throws {
        try self.map { $0 }.encode(to: encoder)
    }
    
    public init(from decoder: Decoder) throws {
        self.init(try Swift.Array<Element>(from: decoder))
    }
}
