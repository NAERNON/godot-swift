import Foundation

public struct _ConditionalContent<TrueContent, FalseContent>: SwiftCode where TrueContent: SwiftCode,
                                                                              FalseContent: SwiftCode {
    let trueContent: (() -> TrueContent)?
    let falseContent: (() -> FalseContent)?
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
}
