import Foundation
import GodotExtensionHeaders

extension Object {
    public func withUnsafeRawPointer(_ body: (UnsafeMutableRawPointer) -> ()) {
        body(extensionObjectPtr)
    }
}

extension Optional where Wrapped : Object {
    public func withUnsafeRawPointer(_ body: (GDExtensionConstObjectPtr?) -> Void) {
        if let self {
            self.withUnsafeRawPointer { body($0) }
        } else {
            body(nil)
        }
    }
    
    public func withUnsafeRawPointer(_ body: (GDExtensionObjectPtr?) -> Void) {
        if let self {
            self.withUnsafeRawPointer { body($0) }
        } else {
            body(nil)
        }
    }
}

extension Object: CustomDebugStringConvertible {
    public var debugDescription: Swift.String {
        Variant(self).debugDescription
    }
}

extension Object: Equatable {
    public static func == (lhs: Object, rhs: Object) -> Bool {
        lhs.getInstanceId() == rhs.getInstanceId()
    }
}
