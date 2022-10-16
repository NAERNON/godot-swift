import Foundation
import GodotExtensionHeaders

#warning("Check @inlinable & @usableFromInline")

#warning("Check all ? and ! and see if unsafeUnwrap is better")

#warning("GODOT_CPP_VARIANT_SIZE from the json file.")
private let GODOT_CPP_VARIANT_SIZE = 24

final public class Variant {
    
    static var sharedConstructorCollection: VariantConstructorCollection?
    
    private var opaque = UnsafeMutablePointer<UInt8>.allocate(capacity: GODOT_CPP_VARIANT_SIZE)
    
#warning("Maybe should return the address of the opaque array.")
    public var nativePtr: GDNativeVariantPtr {
        UnsafeMutableRawPointer(opaque)
    }
    
    private var godotInterface: GDNativeInterface? { GodotLibrary.main.interface }
    
    // MARK: Deinit
    
    deinit {
        opaque.deinitialize(count: GODOT_CPP_VARIANT_SIZE)
        opaque.deallocate()
    }
    
    // MARK: Constructors
    
    private func sharedConstructor(fromType type: VariantType) -> GDNativeVariantFromTypeConstructorFunc? {
        Variant.sharedConstructorCollection?.from(type: type)
    }
    
    private func sharedConstructor(toType type: VariantType) -> GDNativeTypeFromVariantConstructorFunc? {
        Variant.sharedConstructorCollection?.to(type: type)
    }
    
    // MARK: Inits
    
    public init() {
        godotInterface?.variant_new_nil(nativePtr)
    }
    
    public init(nativeVariantPointer: GDNativeVariantPtr) {
        godotInterface?.variant_new_copy(nativePtr, nativeVariantPointer)
    }
    
    public init(otherVariant: Variant) {
        godotInterface?.variant_new_copy(nativePtr, otherVariant.nativePtr)
    }
    
    public init(boolValue: Bool) {
        var value: GDNativeBool = boolValue ? GDNativeTrue : GDNativeFalse
        withUnsafeMutablePointer(to: &value) { pointer in
            sharedConstructor(fromType: .bool)?(nativePtr, UnsafeMutableRawPointer(pointer))
        }
    }
    
    public init(int64Value: Int64) {
        var value: GDNativeInt = int64Value
        withUnsafeMutablePointer(to: &value) { pointer in
            sharedConstructor(fromType: .int)?(nativePtr, UnsafeMutableRawPointer(pointer))
        }
    }
    
    public init(doubleValue: Double) {
        var value: Double = doubleValue
        withUnsafeMutablePointer(to: &value) { pointer in
            sharedConstructor(fromType: .float)?(nativePtr, UnsafeMutableRawPointer(pointer))
        }
    }
    
    // MARK: Getters
    
    public var int64Value: Int64 {
        let valuePtr = UnsafeMutablePointer<Int64>.allocate(capacity: 1)
        sharedConstructor(toType: .int)?(valuePtr, nativePtr)
        return valuePtr.pointee
    }
    
}
