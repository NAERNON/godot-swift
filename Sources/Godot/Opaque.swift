import Foundation
import GodotExtensionHeaders

internal class BaseOpaque: CustomDebugStringConvertible {
    private let data: UnsafeMutablePointer<UInt8>
    let size: Int
    
    init(size: Int) {
        self.data = .allocate(capacity: size)
        self.size = size
    }
    
    deinit {
        data.deinitialize(count: size)
        data.deallocate()
    }
    
    func withUnsafeMutableRawPointer(_ body: (UnsafeMutableRawPointer) -> ()) {
        body(UnsafeMutableRawPointer(data))
    }
    
    func isZero() -> Bool {
        for index in 0..<size {
            if data[index] != 0 { return false }
        }
        return true
    }
    
    var debugDescription: Swift.String {
        var string = "["
        for index in 0..<size {
            string += Swift.String(format: "%02X", data[index])
            if index < size-1 {
                string += "|"
            }
        }
        string += "]"
        return string
    }
}

internal final class Opaque: BaseOpaque {
    /// The destructor pointer for the opaque type.
    /// If `nil`, no destructor will be called at the `deinit` call.
    let destructorPtr: GDNativePtrDestructor?
    
    init(size: Int, destructorPtr: GDNativePtrDestructor? = nil) {
        self.destructorPtr = destructorPtr

        super.init(size: size)
    }
    
    deinit {
        if let destructorPtr {
            withUnsafeMutableRawPointer { pointer in
                destructorPtr(pointer)
            }
        }
    }
}

internal final class VariantOpaque: BaseOpaque {
    deinit {
        withUnsafeMutableRawPointer { pointer in
            GodotInterface.native.variant_destroy(pointer)
        }
    }
}
