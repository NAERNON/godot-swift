import GodotExtensionHeaders

extension Opaque {
    internal struct Storage: ~Copyable {
        private let rawData: UnsafeMutableRawBufferPointer
        
        /// The destructor pointer for the opaque type.
        /// If `nil`, no destructor will be called at the `deinit`.
        private var destructorPtr: GDExtensionPtrDestructor?
        
        /// The size, in bytes, of this opaque raw data.
        var size: Int {
            rawData.count
        }
        
        init(size: Int, destructorPtr: GDExtensionPtrDestructor? = nil) {
            self.rawData = .allocate(
                byteCount: size,
                alignment: 1
            )
            self.destructorPtr = destructorPtr
        }
        
        deinit {
            if let destructorPtr {
                destructorPtr(rawData.baseAddress!)
            }
            
            rawData.deallocate()
        }
        
        func withUnsafeRawBufferPointer<Result>(
            _ body: (UnsafeRawBufferPointer) throws -> Result
        ) rethrows -> Result {
            try body(UnsafeRawBufferPointer(rawData))
        }
        
        func withUnsafeMutableRawBufferPointer<Result>(
            _ body: (UnsafeMutableRawBufferPointer) throws -> Result
        ) rethrows -> Result {
            try body(rawData)
        }
        
        func withUnsafeRawPointer<Result>(
            _ body: (UnsafeRawPointer) throws -> Result
        ) rethrows -> Result {
            try body(rawData.baseAddress!)
        }
        
        func withUnsafeMutableRawPointer<Result>(
            _ body: (UnsafeMutableRawPointer) throws -> Result
        ) rethrows -> Result {
            try body(rawData.baseAddress!)
        }
        
        func isZero() -> Bool {
            rawData.allSatisfy { $0 == 0 }
        }
        
        var debugDescription: String {
            var string = "["
            var index = 0
            while index < rawData.count {
                let data = rawData[index]
                let dataString = String(data, radix: 16, uppercase: true)
                
                if data < 16 {
                    string += "0" + dataString
                } else {
                    string += dataString
                }
                
                if index < rawData.count-1 {
                    string += "|"
                }
                
                index += 1
            }
            string += "]"
            return string
        }
    }
}
