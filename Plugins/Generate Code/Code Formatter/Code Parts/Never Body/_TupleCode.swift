import Foundation

public struct _TupleCode<C0, C1, C2, C3, C4, C5, C6, C7>: Code, RootCode
where C0 : Code,
      C1 : Code,
      C2 : Code,
      C3 : Code,
      C4 : Code,
      C5 : Code,
      C6 : Code,
      C7 : Code
{
    let code0: C0
    let code1: C1
    let code2: C2
    let code3: C3
    let code4: C4
    let code5: C5
    let code6: C6
    let code7: C7
    
    init(_ code0: C0, _ code1: C1, _ code2: C2, _ code3: C3, _ code4: C4, _ code5: C5, _ code6: C6, _ code7: C7) {
        self.code0 = code0
        self.code1 = code1
        self.code2 = code2
        self.code3 = code3
        self.code4 = code4
        self.code5 = code5
        self.code6 = code6
        self.code7 = code7
    }
    
    public var body: Never { fatalError() }
    
    func formattedCode() -> FormattedCode {
        .stack([
            code0.formatted(),
            code1.formatted(),
            code2.formatted(),
            code3.formatted(),
            code4.formatted(),
            code5.formatted(),
            code6.formatted(),
            code7.formatted(),
        ])
    }
}

// MARK: - Default inits

extension _TupleCode
where C1 == EmptyCode,
      C2 == EmptyCode,
      C3 == EmptyCode,
      C4 == EmptyCode,
      C5 == EmptyCode,
      C6 == EmptyCode,
      C7 == EmptyCode {
    init(_ code0: C0) {
        self.init(code0,
                  EmptyCode(),
                  EmptyCode(),
                  EmptyCode(),
                  EmptyCode(),
                  EmptyCode(),
                  EmptyCode(),
                  EmptyCode())
    }
}

extension _TupleCode
where C2 == EmptyCode,
      C3 == EmptyCode,
      C4 == EmptyCode,
      C5 == EmptyCode,
      C6 == EmptyCode,
      C7 == EmptyCode {
    init(_ code0: C0,
         _ code1: C1) {
        self.init(code0,
                  code1,
                  EmptyCode(),
                  EmptyCode(),
                  EmptyCode(),
                  EmptyCode(),
                  EmptyCode(),
                  EmptyCode())
    }
}

extension _TupleCode
where C3 == EmptyCode,
      C4 == EmptyCode,
      C5 == EmptyCode,
      C6 == EmptyCode,
      C7 == EmptyCode {
    init(_ code0: C0,
         _ code1: C1,
         _ code2: C2) {
        self.init(code0,
                  code1,
                  code2,
                  EmptyCode(),
                  EmptyCode(),
                  EmptyCode(),
                  EmptyCode(),
                  EmptyCode())
    }
}

extension _TupleCode
where C4 == EmptyCode,
      C5 == EmptyCode,
      C6 == EmptyCode,
      C7 == EmptyCode {
    init(_ code0: C0,
         _ code1: C1,
         _ code2: C2,
         _ code3: C3) {
        self.init(code0,
                  code1,
                  code2,
                  code3,
                  EmptyCode(),
                  EmptyCode(),
                  EmptyCode(),
                  EmptyCode())
    }
}

extension _TupleCode
where C5 == EmptyCode,
      C6 == EmptyCode,
      C7 == EmptyCode {
    init(_ code0: C0,
         _ code1: C1,
         _ code2: C2,
         _ code3: C3,
         _ code4: C4) {
        self.init(code0,
                  code1,
                  code2,
                  code3,
                  code4,
                  EmptyCode(),
                  EmptyCode(),
                  EmptyCode())
    }
}

extension _TupleCode
where C6 == EmptyCode,
      C7 == EmptyCode {
    init(_ code0: C0,
         _ code1: C1,
         _ code2: C2,
         _ code3: C3,
         _ code4: C4,
         _ code5: C5) {
        self.init(code0,
                  code1,
                  code2,
                  code3,
                  code4,
                  code5,
                  EmptyCode(),
                  EmptyCode())
    }
}

extension _TupleCode
where C7 == EmptyCode {
    init(_ code0: C0,
         _ code1: C1,
         _ code2: C2,
         _ code3: C3,
         _ code4: C4,
         _ code5: C5,
         _ code6: C6) {
        self.init(code0,
                  code1,
                  code2,
                  code3,
                  code4,
                  code5,
                  code6,
                  EmptyCode())
    }
}
