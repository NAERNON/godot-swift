import Foundation

public struct ForEach<Data, Content>: SwiftCode where Data: RandomAccessCollection, Content: SwiftCode {
    let data: Data
    let content: (Data.Element) -> Content
    
    public init(_ data: Data, @CodeBuilder content: @escaping (Data.Element) -> Content) {
        self.data = data
        self.content = content
    }
    
    public var body: Never { fatalError() }
}
