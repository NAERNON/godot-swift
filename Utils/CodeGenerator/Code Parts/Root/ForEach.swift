import Foundation

public struct ForEach<Data, Content>: Code, RootCode
where Data : Sequence,
      Content : Code {
    let data: Data
    let content: (Data.Element) -> Content
    
    public init(_ data: Data, @CodeBuilder content: @escaping (Data.Element) -> Content) {
        self.data = data
        self.content = content
    }
    
    public var body: Never { fatalError() }
    
    func formattedCode() -> FormattedCode {
        .stack(data.map { content($0).formatted() })
    }
}
