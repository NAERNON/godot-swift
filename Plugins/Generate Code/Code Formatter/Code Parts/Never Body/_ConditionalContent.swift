import Foundation

public struct _ConditionalContent<TrueContent, FalseContent>: Code, RootCode
where TrueContent : Code,
      FalseContent : Code {
    let trueContent: (() -> TrueContent)!
    let falseContent: (() -> FalseContent)!
    let isTrue: Bool
    
    init(trueContent: @escaping () -> TrueContent) {
        self.trueContent = trueContent
        self.falseContent = nil
        self.isTrue = true
    }
    
    init(falseContent: @escaping () -> FalseContent) {
        self.trueContent = nil
        self.falseContent = falseContent
        self.isTrue = false
    }
    
    public var body: Never { fatalError() }
    
    func formattedCode() -> FormattedCode {
        if isTrue {
            return trueContent().formatted()
        } else {
            return falseContent().formatted()
        }
    }
}
