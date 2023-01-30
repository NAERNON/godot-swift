import Foundation
import GodotExtensionHeaders

extension Object {
    public func withUnsafeNativePointer(_ body: (UnsafeMutableRawPointer) -> ()) {
        body(nativeObjectPtr)
    }
    
    internal final class func classNameForGodot() -> Swift.String {
        .init(describing: Self.self)
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

extension Optional where Wrapped: Object {
    public func withUnsafeNativePointer(_ body: (UnsafeMutableRawPointer?) -> ()) {
        switch self {
        case .none:
            body(nil)
        case .some(let wrapped):
            wrapped.withUnsafeNativePointer(body)
        }
    }
}
