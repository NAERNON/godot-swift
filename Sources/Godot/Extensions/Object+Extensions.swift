import Foundation
import GodotExtensionHeaders

extension Object {
    public func withUnsafeExtensionPointer(_ body: (UnsafeMutableRawPointer) -> ()) {
        body(extensionObjectPtr)
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
