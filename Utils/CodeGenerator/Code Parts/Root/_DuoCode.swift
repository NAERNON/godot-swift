import Foundation

public struct _DuoCode<C0, C1>: Code, RootCode
where C0 : Code,
      C1 : Code
{
    let code0: C0
    let code1: C1
    
    init(_ code0: C0, _ code1: C1) {
        self.code0 = code0
        self.code1 = code1
    }
    
    public var body: Never { fatalError() }
    
    func formattedCode() -> FormattedCode {
        .stack([
            code0.formatted(),
            code1.formatted(),
        ])
    }
}
