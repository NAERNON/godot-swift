import Foundation

extension PackedByteArray {
    public init(_ value: PackedByteArray) {
        self.init(packedByteArray: value)
    }
    
    public func withUnsafeBytesArray(_ body: (UnsafeMutablePointer<UInt8>) -> Void) {
        self.withUnsafeNativePointer { nativeTypePtr in
            body(GodotInterface.native.packed_byte_array_operator_index(nativeTypePtr, 0)!)
        }
    }
    
    public subscript(index: Int) -> UInt8 {
        get {
            UInt8(self._getValue(at: Int64(index)))
        }
        set(newValue) {
            self._setValue(Int(newValue), at: Int64(index))
        }
    }
}
