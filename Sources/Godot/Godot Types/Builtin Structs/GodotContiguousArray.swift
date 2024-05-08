
/// A contiguously stored array.
///
/// A contiguous array stores its elements in a contiguous region of memory.
///
/// For more information about using arrays, see ``GodotArray``,
/// with which `GodotContiguousArray` shares most properties and methods.
///
/// >note: `GodotContiguousArray`, as opposed to `GodotArray`,
/// uses copy on write (COW), eliminating the need for
/// explicit duplications.
///
/// ### Godot Equivalence
///
/// `GodotContiguousArray` is the analog type to `PackedArray` in Godot.
/// Instead of having a multitude of types, Godot Swift uses only one generic type.
///
/// For instance, when a `PackedInt32Array` is used in Godot, you use a
/// `GodotContiguousArray<Int32>` in Godot Swift.
///
/// | Godot type | Swift generic type |
/// | - | - |
/// | `PackedByteArray` | `UInt8` |
/// | `PackedColorArray` | `Color` |
/// | `PackedInt32Array` | `Int32` |
/// | `PackedInt64Array` | `Int64` |
/// | `PackedFloat32Array` | `Float` |
/// | `PackedDoubleArray` | `Double` |
/// | `PackedVector2Array` | `Vector2` |
/// | `PackedVector3Array` | `Vector3` |
/// | `PackedStringArray` | `GodotString` |
///
/// ## Topics
///
/// ### Initializers
///
/// - ``GodotContiguousArray/init()``
/// - ``GodotContiguousArray/init(storage:)``
///
/// ### Accessing Buffer
///
/// - ``GodotContiguousArray/bytes()``
/// - ``GodotContiguousArray/withUnsafeBufferPointer(_:)``
/// - ``GodotContiguousArray/withUnsafeMutableBufferPointer(_:)``
///
/// ### Encoding & Decoding (only available on byte array)
///
/// - ``GodotContiguousArray/encode(_:at:)-7et68``
/// - ``GodotContiguousArray/encode(_:at:)-1djp0``
/// - ``GodotContiguousArray/decode(_:at:)-60lk``
/// - ``GodotContiguousArray/decode(_:at:)-3170n``
/// - ``GodotContiguousArray/typedEncode(_:at:allowObjects:)``
/// - ``GodotContiguousArray/typedDecode(_:at:allowObjects:)``
/// - ``GodotContiguousArray/typedDecodeSize(at:allowObjects:)``
/// - ``GodotContiguousArray/hasTypedEncodedValue(at:allowObjects:)``
/// - ``GodotContiguousArray/hexadecimal()``
///
/// ### String (only available on byte array)
///
/// - ``GodotContiguousArray/stringFromASCII()``
/// - ``GodotContiguousArray/stringFromUTF8()``
/// - ``GodotContiguousArray/stringFromUTF16()``
/// - ``GodotContiguousArray/stringFromUTF32()``
/// - ``GodotContiguousArray/stringFromWChar()``
///
/// ### Array Conversion (only available on byte array)
///
/// - ``GodotContiguousArray/int32Array()``
/// - ``GodotContiguousArray/int64Array()``
/// - ``GodotContiguousArray/floatArray()``
/// - ``GodotContiguousArray/doubleArray()``
///
/// ### Compression (only available on byte array)
///
/// - ``GodotContiguousArray/compressed(mode:)``
/// - ``GodotContiguousArray/decompressed(bufferSize:mode:)``
/// - ``GodotContiguousArray/dynamicDecompressed(maxOutputSize:mode:)``
///
/// ### Storage
///
/// - ``GodotContiguousArray/Storage``
/// - ``GodotContiguousArrayStorageProtocol``
/// - ``GodotContiguousArrayElement``
public struct GodotContiguousArray<Element>
where Element : GodotContiguousArrayElement
{
    /// The storage associated with the element.
    public typealias Storage = Element.GodotContiguousArrayStorage
    
    internal var storage: Storage
    
    /// Creates an empty array.
    public init() {
        storage = .init()
    }
    
    /// Creates an array from the given storage.
    public init(storage: Storage) {
        self.storage = storage
    }
    
    /// Returns a copy of the data converted to bytes.
    public func bytes() -> GodotContiguousArray<UInt8> {
        .init(storage: storage.bytes())
    }
    
    /// Calls a closure with a pointer to the array’s contiguous storage.
    ///
    /// - Parameter body: A closure with an `UnsafeBufferPointer` parameter
    /// that points to the contiguous storage for the array.
    /// If body has a return value, that value is also used as the return value for the
    /// `withUnsafeBufferPointer(_:)` method.
    /// The pointer argument is valid only for the duration of the method’s execution.
    /// - Returns: The return value, if any, of the `body` closure parameter.
    public func withUnsafeBufferPointer<R>(
        _ body: (UnsafeBufferPointer<Element.GodotContiguousArrayElementSource>) throws -> R
    ) rethrows -> R {
        let size = storage.size
        return try storage.withUnsafePointer { ptr in
            try body(UnsafeBufferPointer(start: ptr, count: size))
        }
    }
    
    /// Calls the given closure with a pointer to the array’s mutable contiguous storage.
    ///
    /// - Parameter body: A closure with an `UnsafeMutableBufferPointer` parameter
    /// that points to the contiguous storage for the array.
    /// If body has a return value, that value is also used as the return value for the
    /// `withUnsafeBufferPointer(_:)` method.
    /// The pointer argument is valid only for the duration of the method’s execution.
    /// - Returns: The return value, if any, of the `body` closure parameter.
    public mutating func withUnsafeMutableBufferPointer<R>(
        _ body: (UnsafeMutableBufferPointer<Element.GodotContiguousArrayElementSource>) throws -> R
    ) rethrows -> R {
        let size = storage.size
        return try storage.withUnsafeMutablePointer { ptr in
            try body(UnsafeMutableBufferPointer(start: ptr, count: size))
        }
    }
}

extension GodotContiguousArray: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Element...) {
        self.init()
        
        replaceSubrange(0..<0, with: elements)
    }
}

extension GodotContiguousArray: CustomStringConvertible, CustomDebugStringConvertible {
    public var description: String {
        withUnsafeBufferPointer { buffer in
            var string = "["
            
            string += buffer.lazy
                .map {
                    String(reflecting: Element.readGodotContiguousArrayValue(from: $0))
                }
                .joined(separator: ", ")
            
            string += "]"
            
            return string
        }
    }
    
    public var debugDescription: String {
        description
    }
}

extension GodotContiguousArray: Sequence {}

extension GodotContiguousArray: Collection {
    public var startIndex: Int {
        0
    }

    public var endIndex: Int {
        self.storage.size
    }

    public func index(after i: Int) -> Int {
        i+1
    }
    
    public subscript(index: Int) -> Element {
        get {
            guard index >= 0 && index < endIndex else {
                fatalError("Index out of range")
            }
            
            let source = storage.withUnsafePointer { pointer in
                pointer![index]
            }
            
            return Element.readGodotContiguousArrayValue(from: source)
        }
        set(newValue) {
            guard index >= 0 && index < endIndex else {
                fatalError("Index out of range")
            }
            
            storage.withUnsafeMutablePointer { pointer in
                Element.writeGodotContiguousArray(
                    value: newValue,
                    to: &pointer![index]
                )
            }
        }
        _modify {
            guard index >= 0 && index < endIndex else {
                fatalError("Index out of range")
            }
            
            let source = storage.withUnsafePointer { pointer in
                pointer![index]
            }
            
            var element = Element.readGodotContiguousArrayValue(from: source)
            
            yield &element
            
            storage.withUnsafeMutablePointer { pointer in
                Element.writeGodotContiguousArray(
                    value: element,
                    to: &pointer![index]
                )
            }
        }
    }
}

extension GodotContiguousArray: BidirectionalCollection {
    public func index(before i: Int) -> Int {
        i-1
    }
}

extension GodotContiguousArray: RandomAccessCollection {}

extension GodotContiguousArray: RangeReplaceableCollection {
    public mutating func replaceSubrange<C>(_ subrange: Swift.Range<Int>, with newElements: C)
    where C : Collection, Element == C.Element {
        let subrangeCount = subrange.count
        let newElementsCount = newElements.count
        let currentSize = storage.size
        
        guard subrange.lowerBound >= 0 else {
            fatalError("GodotContiguousArray replace: subrange start is negative")
        }
        guard subrange.upperBound <= currentSize else {
            fatalError("GodotContiguousArray replace: subrange extends past the end")
        }
        
        if subrangeCount == newElementsCount {
            storage.withUnsafeMutablePointer { pointer in
                var index = subrange.lowerBound
                for element in newElements {
                    Element.writeGodotContiguousArray(
                        value: element,
                        to: &pointer![index]
                    )
                    index += 1
                }
            }
        } else if subrangeCount < newElementsCount {
            let newSize = storage.size + (newElementsCount - subrangeCount)
            storage.resize(newSize)
            
            storage.withUnsafeMutablePointer { pointer in
                pointer!
                    .advanced(by: subrange.lowerBound + newElementsCount)
                    .moveInitialize(
                        from: pointer!.advanced(by: subrange.upperBound),
                        count: currentSize - subrange.lowerBound
                    )
                
                var index = subrange.lowerBound
                for element in newElements {
                    Element.writeGodotContiguousArray(
                        value: element,
                        to: &pointer![index]
                    )
                    index += 1
                }
            }
        } else {
            storage.withUnsafeMutablePointer { pointer in
                pointer!
                    .advanced(by: subrange.lowerBound + newElementsCount)
                    .moveInitialize(
                        from: pointer!.advanced(by: subrange.upperBound),
                        count: currentSize - subrange.lowerBound
                    )
                
                var index = subrange.lowerBound
                for element in newElements {
                    Element.writeGodotContiguousArray(
                        value: element,
                        to: &pointer![index]
                    )
                    index += 1
                }
            }
            
            let newSize = storage.size + (newElementsCount - subrangeCount)
            storage.resize(newSize)
        }
    }
}

// MARK: - Byte Array Extensions

extension GodotContiguousArray where Element == UInt8 {
    /// Converts ASCII/Latin-1 encoded array to `GodotString`.
    ///
    /// Fast alternative to ``stringFromUTF8()`` if the content is ASCII/Latin-1 only.
    /// Unlike the UTF-8 function this function maps
    /// every byte to a character in the array.
    /// Multibyte sequences will not be interpreted correctly.
    /// For parsing user input always use ``stringFromUTF8()``.
    /// This is the inverse of ``GodotString/asciiBuffer()``.
    public func stringFromASCII() -> GodotString {
        storage._stringFromAscii()
    }
    
    /// Converts UTF-8 encoded array to `GodotString`.
    ///
    /// Slower than ``stringFromASCII()`` but supports UTF-8 encoded data.
    /// Use this function if you are unsure about the source of the data.
    /// For user input this function should always be preferred.
    /// Returns empty string if source array is not valid UTF-8 string.
    /// This is the inverse of ``GodotString/utf8Buffer()``.
    public func stringFromUTF8() -> GodotString {
        storage._stringFromUtf8()
    }
    
    /// Converts UTF-16 encoded array to `GodotString`.
    ///
    /// If the BOM is missing, system endianness is assumed.
    /// Returns empty string if source array is not valid UTF-16 string.
    /// This is the inverse of ``GodotString/utf16Buffer()``.
    public func stringFromUTF16() -> GodotString {
        storage._stringFromUtf16()
    }
    
    /// Converts UTF-32 encoded array to `GodotString`.
    ///
    /// System endianness is assumed.
    /// Returns empty string if source array is not valid UTF-32 string.
    /// This is the inverse of ``GodotString/utf32Buffer()``.
    public func stringFromUTF32() -> GodotString {
        storage._stringFromUtf32()
    }
    
    /// Converts wide character (`wchar_t`, UTF-16 on Windows,
    /// UTF-32 on other platforms) encoded array to `GodotString`.
    ///
    /// Returns empty string if source array is not valid wide string. 
    /// This is the inverse of ``GodotString/wCharBuffer()``.
    public func stringFromWChar() -> GodotString {
        storage._stringFromWchar()
    }
    
    /// Returns a hexadecimal representation of this array as a `GodotString`.
    ///
    /// ```swift
    /// let array: GodotContiguousArray<UInt8> = [11, 46, 255]
    /// print(array.hexadecimal()) // Prints "0b2eff"
    /// ```
    public func hexadecimal() -> GodotString {
        storage._hexEncode()
    }
    
    /// Returns a new byte array with the data compressed.
    public func compressed(
        mode: FileAccess.CompressionMode = .fastlz
    ) -> GodotContiguousArray<UInt8> {
        .init(
            storage: storage._compress(
                compressionMode: Int(mode.rawValue)
            )
        )
    }
    
    /// Returns a new byte array with the data decompressed.
    ///
    /// >note: Decompression is not guaranteed to work with data
    /// not compressed by Godot, for example if data compressed
    /// with the deflate compression mode lacks a checksum or header.
    ///
    /// - Parameters:
    ///   - bufferSize: The size of the uncompressed data.
    ///   - mode: The compression mode.
    public func decompressed(
        bufferSize: Int,
        mode: FileAccess.CompressionMode = .fastlz
    ) -> GodotContiguousArray<UInt8> {
        .init(
            storage: storage._decompress(
                bufferSize: bufferSize,
                compressionMode: Int(mode.rawValue)
            )
        )
    }
    
    /// Returns a new byte array with the data decompressed.
    ///
    /// >important: This method only accepts `brotli`, `gzip`, and `deflate` compression modes.
    ///
    /// This method is potentially slower than ``decompressed(bufferSize:mode:)``,
    /// as it may have to re-allocate its output buffer multiple times while decompressing,
    /// whereas `decompressed(bufferSize:mode:)` knows it's output
    /// buffer size from the beginning.
    ///
    /// GZIP has a maximal compression ratio of `1032:1`, meaning it's very
    /// possible for a small compressed payload to decompress to a potentially
    /// very large output. To guard against this, you may provide a maximum
    /// size this function is allowed to allocate in bytes via `maxOutputSize`.
    /// Passing `-1` will allow for unbounded output.
    /// If any positive value is passed, and the decompression exceeds
    /// that amount in bytes, then an error will be returned.
    ///
    /// >note: Decompression is not guaranteed to work with data
    /// not compressed by Godot, for example if data compressed
    /// with the deflate compression mode lacks a checksum or header.
    public func dynamicDecompressed(
        maxOutputSize: Int,
        mode: FileAccess.CompressionMode
    ) -> GodotContiguousArray<UInt8> {
        .init(
            storage: storage._decompressDynamic(
                maxOutputSize: maxOutputSize,
                compressionMode: Int(mode.rawValue)
            )
        )
    }
    
    /// Decodes an integer number.
    ///
    /// This function fails if the byte count is insufficient.
    ///
    /// - Parameter byteOffset: The starting bytes decoding offset.
    /// - Returns: The decoded value, or `0` if a valid number can't be decoded.
    public func decode<Value : FixedWidthInteger>(
        _ type: Value.Type,
        at byteOffset: Int
    ) -> Value {
        guard byteOffset + MemoryLayout<Value>.size <= storage.size else {
            godotPrintError("Cannot decode integer at byte index \(byteOffset)")
            return 0
        }
        
        return storage.withUnsafePointer { pointer in
            guard let pointer else {
                return 0
            }
            
            return UnsafeRawPointer(pointer)
                .advanced(by: byteOffset)
                .assumingMemoryBound(to: type)
                .pointee
        }
    }
    
    /// Encodes an integer number.
    ///
    /// This function fails the space is insufficient.
    ///
    /// - Parameter byteOffset: The starting bytes encoding offset.
    public mutating func encode<Value : FixedWidthInteger>(
        _ value: Value,
        at byteOffset: Int
    ) {
        guard byteOffset + MemoryLayout<Value>.size <= storage.size else {
            godotPrintError("Cannot encode integer at byte index \(byteOffset)")
            return
        }
        
        storage.withUnsafeMutablePointer { pointer in
            guard let pointer else {
                return
            }
            
            return UnsafeMutableRawPointer(pointer)
                .advanced(by: byteOffset)
                .assumingMemoryBound(to: Value.self)
                .pointee = value
        }
    }
    
    /// Decodes a floating-point number.
    ///
    /// This function fails if the byte count is insufficient.
    ///
    /// - Parameter byteOffset: The starting bytes decoding offset.
    /// - Returns: The decoded value, or `0` if a valid number can't be decoded.
    public func decode<Value : BinaryFloatingPoint>(
        _ type: Value.Type,
        at byteOffset: Int
    ) -> Value {
        guard byteOffset + MemoryLayout<Value>.size <= storage.size else {
            godotPrintError("Cannot decode floating-point at byte index \(byteOffset)")
            return 0
        }
        
        return storage.withUnsafePointer { pointer in
            guard let pointer else {
                return 0
            }
            
            return UnsafeRawPointer(pointer)
                .advanced(by: byteOffset)
                .assumingMemoryBound(to: type)
                .pointee
        }
    }
    
    /// Encodes a floating-point number.
    ///
    /// This function fails the space is insufficient.
    ///
    /// - Parameter byteOffset: The starting bytes encoding offset.
    public mutating func encode<Value : BinaryFloatingPoint>(
        _ value: Value,
        at byteOffset: Int
    ) {
        guard byteOffset + MemoryLayout<Value>.size <= storage.size else {
            godotPrintError("Cannot encode floating-point at byte index \(byteOffset)")
            return
        }
        
        storage.withUnsafeMutablePointer { pointer in
            guard let pointer else {
                return
            }
            
            return UnsafeMutableRawPointer(pointer)
                .advanced(by: byteOffset)
                .assumingMemoryBound(to: Value.self)
                .pointee = value
        }
    }
    
    /// Returns `true` if a valid value value can be
    /// decoded at `byteOffset`.
    ///
    /// Returns `false` otherwise or when the value is ``Object``-derived
    /// and `allowObjects` is `false`.
    public func hasTypedEncodedValue(
        at byteOffset: Int,
        allowObjects: Bool = false
    ) -> Bool {
        storage._hasEncodedVar(
            byteOffset: byteOffset,
            allowObjects: allowObjects
        )
    }
    
    /// Decodes a value from the bytes starting at `byteOffset`.
    ///
    /// This function throws if a valid variant can't be decoded
    /// or the value is ``Object``-derived and `allowObjects` is `false`.
    ///
    /// >note: Decoding a type not encoded with ``typedEncode(_:at:allowObjects:)``
    /// is undefined.
    public func typedDecode<Value : Variant.Storable>(
        _ type: Value.Type,
        at byteOffset: Int,
        allowObjects: Bool = false
    ) throws -> Value {
        try Value.convertFromStorage(storage._decodeVar(
            byteOffset: byteOffset,
            allowObjects: allowObjects
        ))
    }
    
    /// Decodes a size of an encoded value from the bytes starting at `byteOffset`.
    ///
    /// Requires at least 4 bytes of data starting at the offset, otherwise fails.
    ///
    /// >note: Decoding a size of a value not encoded with ``typedEncode(_:at:allowObjects:)``
    /// is undefined.
    public func typedDecodeSize(
        at byteOffset: Int,
        allowObjects: Bool = false
    ) -> Int {
        storage._decodeVarSize(byteOffset: byteOffset, allowObjects: allowObjects)
    }
    
    /// Encodes a value at the index of `byteOffset` bytes.
    ///
    /// A sufficient space must be allocated, depending on the encoded variant's size.
    /// If `allowObjects` is `false`, ``Object``-derived values are
    /// not permitted and will instead be serialized as ID-only.
    ///
    /// This function encodes the type alongside the data.
    /// Use an untyped encoding function to encode the raw data,
    /// without the additional space cost of encoding the type.
    ///
    /// - Returns: The size, in bytes, of the encoded data.
    @discardableResult
    mutating public func typedEncode<Value : Variant.Storable>(
        _ value: Value, // TODO: sendable parameter ?
        at byteOffset: Int,
        allowObjects: Bool = false
    ) -> Int {
        Value.convertToStorageTemporarily(value) { variantStorage in
            storage._encodeVar(
                byteOffset: byteOffset,
                value: variantStorage,
                allowObjects: allowObjects
            )
        }
    }
    
    /// Returns a copy of the data converted to a contiguous 32-bit integer array,
    /// where each block of 4 bytes has been converted to an `Int32`.
    ///
    /// The size of the input array must be a multiple of 4 (size of 32-bit integer).
    /// The size of the new array will be `count / 4`.
    ///
    /// If the original data can't be converted to signed 32-bit integers,
    /// the resulting data is undefined.
    public func int32Array() -> GodotContiguousArray<Int32> {
        .init(storage: storage._toInt32Array())
    }
    
    /// Returns a copy of the data converted to a contiguous 64-bit integer array,
    /// where each block of 8 bytes has been converted to an `Int64`.
    ///
    /// The size of the input array must be a multiple of 8 (size of 64-bit integer).
    /// The size of the new array will be `count / 8`.
    ///
    /// If the original data can't be converted to signed 64-bit integers,
    /// the resulting data is undefined.
    public func int64Array() -> GodotContiguousArray<Int64> {
        .init(storage: storage._toInt64Array())
    }
    
    /// Returns a copy of the data converted to a contiguous float array,
    /// where each block of 4 bytes has been converted to a `Float`.
    ///
    /// The size of the input array must be a multiple of 4 (size of float).
    /// The size of the new array will be `count / 4`.
    ///
    /// If the original data can't be converted to floats,
    /// the resulting data is undefined.
    public func floatArray() -> GodotContiguousArray<Float> {
        .init(storage: storage._toFloat32Array())
    }
    
    /// Returns a copy of the data converted to a contiguous double array,
    /// where each block of 8 bytes has been converted to a `Double`.
    ///
    /// The size of the input array must be a multiple of 8 (size of double).
    /// The size of the new array will be `count / 8`.
    ///
    /// If the original data can't be converted to doubles,
    /// the resulting data is undefined.
    public func doubleArray() -> GodotContiguousArray<Double> {
        .init(storage: storage._toFloat64Array())
    }
}
