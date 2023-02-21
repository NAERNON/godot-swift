import Foundation
import GodotExtensionHeaders

extension Object {
    public func withUnsafeNativePointer(_ body: (UnsafeMutableRawPointer) -> ()) {
        body(nativeObjectPtr)
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
