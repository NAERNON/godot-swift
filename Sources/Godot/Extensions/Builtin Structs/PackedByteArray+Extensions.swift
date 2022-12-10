import Foundation

extension PackedByteArray {
    public func withUnsafeBytesArray(_ body: (UnsafeMutablePointer<UInt8>) -> Void) {
        self.withUnsafeNativePointer { nativeTypePtr in
            body(Self.interface.packed_byte_array_operator_index(nativeTypePtr, 0)!)
        }
    }
}
