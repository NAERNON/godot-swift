import Foundation

internal class _Opaque {
    typealias Data = UnsafeMutablePointer<UInt8>
    
    private let dataPtr: UnsafeMutablePointer<Data>
    private let data: Data
    private let size: Int
    
    init(size: Int) {
        dataPtr = .allocate(capacity: 1)
        data = .allocate(capacity: size)
        dataPtr.initialize(to: data)
        self.size = size
    }
    
    deinit {
        data.deinitialize(count: size)
        data.deallocate()
        
        dataPtr.deinitialize(count: 1)
        dataPtr.deallocate()
    }
    
    var ptr: UnsafeMutableRawPointer {
        UnsafeMutableRawPointer(dataPtr)
    }
}
