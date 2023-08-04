import Foundation
import GodotExtensionHeaders

internal class BaseOpaque: CustomDebugStringConvertible {
    private let rawData: UnsafeMutablePointer<UInt8>
    let size: Int
    
    init(size: Int) {
        self.rawData = .allocate(capacity: size)
        self.size = size
    }
    
    deinit {
        rawData.deinitialize(count: size)
        rawData.deallocate()
    }
    
    func withUnsafeMutableRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer) throws -> Result
    ) rethrows -> Result {
        try body(UnsafeMutableRawPointer(rawData))
    }
    
    func isZero() -> Bool {
        var index = 0
        while index < size {
            if rawData[index] != 0 { return false }
            
            index += 1
        }
        return true
    }
    
    var debugDescription: Swift.String {
        var string = "["
        var index = 0
        while index < size {
            string += Swift.String(format: "%02X", rawData[index])
            if index < size-1 {
                string += "|"
            }
            
            index += 1
        }
        string += "]"
        return string
    }
}

internal final class Opaque: BaseOpaque {
    /// The destructor pointer for the opaque type.
    /// If `nil`, no destructor will be called at the `deinit` call.
    var destructorPtr: GDExtensionPtrDestructor?
    
    init(size: Int, destructorPtr: GDExtensionPtrDestructor? = nil) {
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
            gdextension_interface_variant_destroy(pointer)
        }
    }
}
