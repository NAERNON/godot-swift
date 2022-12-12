import Foundation
import GodotExtensionHeaders

internal class BaseOpaque {
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
