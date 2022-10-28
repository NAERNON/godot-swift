import Foundation

struct ForEachAligned<Data, Content>: SwiftCode where Data: RandomAccessCollection, Content: AlignableCode {
    let data: Data
    let additionalAlignmentLength: Int
    let content: (Data.Element) -> Content
    
    init(_ data: Data, additionalAlignmentLength: Int, @CodeBuilder content: @escaping (Data.Element) -> Content) {
        self.data = data
        self.additionalAlignmentLength = additionalAlignmentLength
        self.content = content
    }
    
    var body: Never { fatalError() }
}

extension ForEach where Content: AlignableCode {
    public func aligned(additionalLength: Int = 0) -> some SwiftCode {
        ForEachAligned(data, additionalAlignmentLength: additionalLength, content: content)
    }
}
