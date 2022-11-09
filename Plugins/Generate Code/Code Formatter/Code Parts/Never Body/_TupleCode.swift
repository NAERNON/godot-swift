import Foundation

public struct _TupleCode2<C0, C1>: SwiftCode
where C0: SwiftCode,
      C1: SwiftCode
{
    let code0: C0
    let code1: C1
    
    init(_ code0: C0, _ code1: C1) {
        self.code0 = code0
        self.code1 = code1
    }
    
    public var body: Never { fatalError() }
}

public struct _TupleCode3<C0, C1, C2>: SwiftCode
where C0: SwiftCode,
      C1: SwiftCode,
      C2: SwiftCode
{
    let code0: C0
    let code1: C1
    let code2: C2
    
    init(_ code0: C0, _ code1: C1, _ code2: C2) {
        self.code0 = code0
        self.code1 = code1
        self.code2 = code2
    }
    
    public var body: Never { fatalError() }
}

public struct _TupleCode4<C0, C1, C2, C3>: SwiftCode
where C0: SwiftCode,
      C1: SwiftCode,
      C2: SwiftCode,
      C3: SwiftCode
{
    let code0: C0
    let code1: C1
    let code2: C2
    let code3: C3
    
    init(_ code0: C0, _ code1: C1, _ code2: C2, _ code3: C3) {
        self.code0 = code0
        self.code1 = code1
        self.code2 = code2
        self.code3 = code3
    }
    
    public var body: Never { fatalError() }
}

public struct _TupleCode5<C0, C1, C2, C3, C4>: SwiftCode
where C0: SwiftCode,
      C1: SwiftCode,
      C2: SwiftCode,
      C3: SwiftCode,
      C4: SwiftCode
{
    let code0: C0
    let code1: C1
    let code2: C2
    let code3: C3
    let code4: C4
    
    init(_ code0: C0, _ code1: C1, _ code2: C2, _ code3: C3, _ code4: C4) {
        self.code0 = code0
        self.code1 = code1
        self.code2 = code2
        self.code3 = code3
        self.code4 = code4
    }
    
    public var body: Never { fatalError() }
}
