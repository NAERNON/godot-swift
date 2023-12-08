import GodotExtensionHeaders

internal final class Opaque: CustomDebugStringConvertible {
    private let rawData: UnsafeMutablePointer<UInt8>
    let size: Int
    
    /// The destructor pointer for the opaque type.
    /// If `nil`, no destructor will be called in the `deinit`.
    var destructorPtr: GDExtensionPtrDestructor?
    
    init(size: Int, destructorPtr: GDExtensionPtrDestructor? = nil) {
        self.rawData = .allocate(capacity: size)
        self.size = size
        self.destructorPtr = destructorPtr
    }
    
    deinit {
        if let destructorPtr {
            destructorPtr(rawData)
        }
        
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
    
    var debugDescription: String {
        var string = "["
        var index = 0
        while index < size {
            let data = rawData[index]
            let dataString = String(data, radix: 16, uppercase: true)
            
            if data < 16 {
                string += "0" + dataString
            } else {
                string += dataString
            }
            
            if index < size-1 {
                string += "|"
            }
            
            index += 1
        }
        string += "]"
        return string
    }
}
