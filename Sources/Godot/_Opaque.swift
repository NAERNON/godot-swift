import Foundation
import GodotExtensionHeaders

internal final class _Opaque {
    typealias Data = UnsafeMutablePointer<UInt8>
    
    private let dataPtr: UnsafeMutablePointer<Data>
    private let data: Data
    let size: Int
    
    /// The destructor pointer for the opaque type.
    /// If `nil`, no destructor will be called at the `deinit` call.
    let destructorPtr: GDNativePtrDestructor?
    
    init(size: Int, destructorPtr: GDNativePtrDestructor? = nil) {
        dataPtr = .allocate(capacity: 1)
        data = .allocate(capacity: size)
        dataPtr.initialize(to: data)
        
        self.size = size
        self.destructorPtr = destructorPtr
    }
    
    deinit {
        destructorPtr?(ptr)
        
        data.deinitialize(count: size)
        data.deallocate()
        
        dataPtr.deinitialize(count: 1)
        dataPtr.deallocate()
    }
    
    var ptr: UnsafeMutableRawPointer {
        UnsafeMutableRawPointer(dataPtr)
    }
}
