import Foundation
import GodotExtensionHeaders

internal final class _Opaque {
    private let data: UnsafeMutablePointer<UInt8>
    let size: Int
    
    /// The destructor pointer for the opaque type.
    /// If `nil`, no destructor will be called at the `deinit` call.
    let destructorPtr: GDNativePtrDestructor?
    
    init(size: Int, destructorPtr: GDNativePtrDestructor? = nil) {
        self.data = .allocate(capacity: size)
        self.size = size
        self.destructorPtr = destructorPtr
    }
    
    deinit {
        if let destructorPtr {
            withUnsafeMutableRawPointer { pointer in
                destructorPtr(pointer)
            }
        }
        
        data.deinitialize(count: size)
        data.deallocate()
    }
    
    func withUnsafeMutableRawPointer(_ body: (UnsafeMutableRawPointer) -> ()) {
        body(UnsafeMutableRawPointer(data))
    }
}
