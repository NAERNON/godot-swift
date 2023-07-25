import Foundation
import GodotExtensionHeaders

extension Object {
    public func withUnsafeRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer) throws -> Result
    ) rethrows -> Result {
        try body(extensionObjectPtr)
    }
}

extension Optional where Wrapped : Object {
    public func withUnsafeRawPointer<Result>(
        _ body: (GDExtensionConstObjectPtr?) throws -> Result
    ) rethrows -> Result {
        if let self {
            try self.withUnsafeRawPointer { try body($0) }
        } else {
            try body(nil)
        }
    }
    
    public func withUnsafeRawPointer<Result>(
        _ body: (GDExtensionObjectPtr?) throws -> Result
    ) rethrows -> Result {
        if let self {
            try self.withUnsafeRawPointer { try body($0) }
        } else {
            try body(nil)
        }
    }
}

extension Object: Equatable {
    public static func == (lhs: Object, rhs: Object) -> Bool {
        lhs.getInstanceId() == rhs.getInstanceId()
    }
}
