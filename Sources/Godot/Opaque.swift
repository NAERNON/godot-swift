import Foundation
import GodotExtensionHeaders

internal class BaseOpaque: CustomDebugStringConvertible {
    let rawData: UnsafeMutablePointer<UInt8>
    let size: Int
    
    init(size: Int) {
        self.rawData = .allocate(capacity: size)
        self.size = size
    }
    
    deinit {
        rawData.deinitialize(count: size)
        rawData.deallocate()
    }
    
    func withUnsafeMutableRawPointer(_ body: (UnsafeMutableRawPointer) -> ()) {
        body(UnsafeMutableRawPointer(rawData))
    }
    
    func isZero() -> Bool {
        for index in 0..<size {
            if rawData[index] != 0 { return false }
        }
        return true
    }
    
    func copyRaw(from pointer: UnsafeRawPointer) {
        let otherData = pointer.assumingMemoryBound(to: UInt8.self)
        for index in 0..<size {
            rawData[index] = otherData[index]
        }
    }
    
    var debugDescription: Swift.String {
        var string = "["
        for index in 0..<size {
            string += Swift.String(format: "%02X", rawData[index])
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
    let destructorPtr: GDExtensionPtrDestructor?
    
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
            GodotExtension.shared.interface.variant_destroy(pointer)
        }
    }
}
