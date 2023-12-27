import GodotExtensionHeaders

@GodotOpaqueBuiltinClass
@GodotPackedArray
public struct PackedByteArray {}

extension PackedByteArray {
    public typealias Element = UInt8
    
    // MARK: Constructors
    
    public init() {
        self = Self._constructor()
    }
    
    public init(array: GodotArray<Element>) {
        self = Self._constructor_godotarray(from: array)
    }
    
    public mutating func withUnsafeBytesArray(_ body: (UnsafeMutablePointer<UInt8>?) -> Void) {
        self.withGodotUnsafeMutableRawPointer { extensionTypePtr in
            body(GodotExtension.Interface.packedByteArrayOperatorIndex(extensionTypePtr, 0))
        }
    }
    
    // MARK: Copy
    
    internal mutating func withCopiedOpaque() -> Self {
        self._duplicate()
    }
    
    // MARK: Methods & variables
    
    public func stringFromASCII() -> GodotString {
        _stringFromAscii()
    }
    
    public func stringFromUTF8() -> GodotString {
        _stringFromUtf8()
    }
    
    public func stringFromUTF16() -> GodotString {
        _stringFromUtf16()
    }
    
    public func stringFromUTF32() -> GodotString {
        _stringFromUtf32()
    }
    
    public func stringFromWChar() -> GodotString {
        _stringFromWchar()
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
        Variant(storage: _decodeVar(byteOffset: byteOffset, allowObjects: allowObjects))
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
    mutating public func encodeVar<Value : VariantStorableIn>(
        _ value: Value,
        at byteOffset: Int,
        allowObjects: Bool = false
    ) -> Int {
        Value.withValueStorage(value) { storage in
            _encodeVar(byteOffset: byteOffset, value: storage, allowObjects: allowObjects)
        }
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
            UInt8(self._getValue(at: Int64(index)))
        }
        set(newValue) {
            self._setValue(Int(newValue), at: Int64(index))
        }
    }
}
