
public struct GodotContiguousArray<Element>
where Element : GodotContiguousArrayElement
{
    public typealias Storage = Element.GodotContiguousArrayStorage
    
    internal var storage: Storage
    
    public init() {
        storage = .init()
    }
    
    public init(storage: Storage) {
        self.storage = storage
    }
    
    public func withUnsafeBufferPointer<R>(
        _ body: (UnsafeBufferPointer<Element>) throws -> R
    ) rethrows -> R {
        let size = storage.size
        return try storage.withUnsafePointer { ptr in
            try body(UnsafeBufferPointer(start: ptr, count: Int(size)))
        }
    }
    
    public mutating func withUnsafeMutableBufferPointer<R>(
        _ body: (UnsafeMutableBufferPointer<Element>) throws -> R
    ) rethrows -> R {
        let size = storage.size
        return try storage.withUnsafeMutablePointer { ptr in
            try body(UnsafeMutableBufferPointer(start: ptr, count: Int(size)))
        }
    }
}

extension GodotContiguousArray: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Element...) {
        fatalError() // TODO: This
    }
}

extension GodotContiguousArray: CustomStringConvertible, CustomDebugStringConvertible {
    public var description: String {
        withUnsafeBufferPointer { buffer in
            var string = "["
            
            string += buffer.lazy
                .map { String(reflecting: $0) }
                .joined(separator: ", ")
            
            string += "]"
            
            return string
        }
    }
    
    public var debugDescription: String {
        description
    }
}
