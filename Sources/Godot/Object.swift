import Foundation
import GodotExtensionHeaders

open class Object {
    internal private(set) var nativeObjectPtr: GDNativeObjectPtr
    
    public init() {
        var nativeObjectPtr: GDNativeObjectPtr!
        #warning("Store in dictionary the StringNames")
        StringName(swiftString: Self.classNameForGodot()).withUnsafeNativePointer { namePtr in
            nativeObjectPtr = GodotInterface.native.classdb_construct_object(namePtr)!
        }
        
        self.nativeObjectPtr = nativeObjectPtr
    }
    
    internal init(nativeObjectPtr: GDNativeObjectPtr) {
        self.nativeObjectPtr = nativeObjectPtr
    }
    
    internal class func instanceBindingsCallbacks() -> GDNativeInstanceBindingCallbacks {
        return GDNativeInstanceBindingCallbacks { token, instance in
            return Unmanaged.passRetained(Object(nativeObjectPtr: instance!)).toOpaque()
        } free_callback: { token, instance, bindings in
            Unmanaged<Object>.fromOpaque(instance!).takeRetainedValue().withUnsafeNativePointer { __ptr_self in
                GodotInterface.native.mem_free(__ptr_self)
            }
        } reference_callback: { token, instance, reference in
            return 1
        }
    }
    
    internal func withUnsafeNativePointer(_ body: (UnsafeMutableRawPointer) -> ()) {
        body(nativeObjectPtr)
    }
    
    internal final class func classNameForGodot() -> Swift.String {
        .init(describing: Self.self)
    }
    
    /// Returns a Boolean value indicating whether the class is an extension
    /// of a base Godot class.
    ///
    /// Every class inside the Godot target are not extension classes,
    /// and all others should be.
#warning("Return true for all necessary classes")
    open class func isExtentionClass() -> Bool {
        false
    }
    
    internal class func setFunctionBindings() {
        setRootClassFunctionBindings()
    }
}

extension Object: CustomDebugStringConvertible {
    public var debugDescription: Swift.String {
        Variant(from: self).debugDescription
    }
}

extension Object: Equatable {
    public static func == (lhs: Object, rhs: Object) -> Bool {
        lhs.getInstanceId() == rhs.getInstanceId()
    }
}

extension Optional where Wrapped: Object {
    internal func withUnsafeNativePointer(_ body: (UnsafeMutableRawPointer?) -> ()) {
        switch self {
        case .none:
            body(nil)
        case .some(let wrapped):
            wrapped.withUnsafeNativePointer(body)
        }
    }
}
