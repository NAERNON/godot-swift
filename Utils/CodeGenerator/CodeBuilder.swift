import Foundation

@resultBuilder
public enum CodeBuilder {
    
    // MARK: Block
    
    public static func buildBlock<C0>(_ c0: C0) -> C0 where C0 : Code {
        c0
    }
    
    public static func buildBlock<C0, C1>(
        _ c0: C0,
        _ c1: C1
    ) -> some Code
    where C0 : Code,
          C1 : Code
    {
        _TupleCode(c0, c1)
    }
    
    public static func buildBlock<C0, C1, C2>(
        _ c0: C0,
        _ c1: C1,
        _ c2: C2
    ) -> some Code
    where C0 : Code,
          C1 : Code,
          C2 : Code
    {
        _TupleCode(c0, c1, c2)
    }
    
    public static func buildBlock<C0, C1, C2, C3>(
        _ c0: C0,
        _ c1: C1,
        _ c2: C2,
        _ c3: C3
    ) -> some Code
    where C0 : Code,
          C1 : Code,
          C2 : Code,
          C3 : Code
    {
        _TupleCode(c0, c1, c2, c3)
    }
    
    public static func buildBlock<C0, C1, C2, C3, C4>(
        _ c0: C0,
        _ c1: C1,
        _ c2: C2,
        _ c3: C3,
        _ c4: C4
    ) -> some Code
    where C0 : Code,
          C1 : Code,
          C2 : Code,
          C3 : Code,
          C4 : Code
    {
        _TupleCode(c0, c1, c2, c3, c4)
    }
    
    public static func buildBlock<C0, C1, C2, C3, C4, C5>(
        _ c0: C0,
        _ c1: C1,
        _ c2: C2,
        _ c3: C3,
        _ c4: C4,
        _ c5: C5
    ) -> some Code
    where C0 : Code,
          C1 : Code,
          C2 : Code,
          C3 : Code,
          C4 : Code,
          C5 : Code
    {
        _TupleCode(c0, c1, c2, c3, c4, c5)
    }
    
    public static func buildBlock<C0, C1, C2, C3, C4, C5, C6>(
        _ c0: C0,
        _ c1: C1,
        _ c2: C2,
        _ c3: C3,
        _ c4: C4,
        _ c5: C5,
        _ c6: C6
    ) -> some Code
    where C0 : Code,
          C1 : Code,
          C2 : Code,
          C3 : Code,
          C4 : Code,
          C5 : Code,
          C6 : Code
    {
        _TupleCode(c0, c1, c2, c3, c4, c5, c6)
    }
    
    public static func buildBlock<C0, C1, C2, C3, C4, C5, C6, C7>(
        _ c0: C0,
        _ c1: C1,
        _ c2: C2,
        _ c3: C3,
        _ c4: C4,
        _ c5: C5,
        _ c6: C6,
        _ c7: C7
    ) -> some Code
    where C0 : Code,
          C1 : Code,
          C2 : Code,
          C3 : Code,
          C4 : Code,
          C5 : Code,
          C6 : Code,
          C7 : Code
    {
        _TupleCode(c0, c1, c2, c3, c4, c5, c6, c7)
    }
    
    // MARK: Either
    
    public static func buildEither<TrueContent, FalseContent>(
        first component: TrueContent
    ) -> _ConditionalContent<TrueContent, FalseContent> where TrueContent : Code,
                                                              FalseContent : Code
    {
        _ConditionalContent<TrueContent, FalseContent>(trueContent: { component })
    }
    
    public static func buildEither<TrueContent, FalseContent>(
        second component: FalseContent
    ) -> _ConditionalContent<TrueContent, FalseContent> where TrueContent : Code,
                                                              FalseContent : Code
    {
        _ConditionalContent<TrueContent, FalseContent>(falseContent: { component })
    }
    
    // MARK: Optional
    
    public static func buildOptional<Content>(_ component: Content?) -> some Code where Content : Code {
        if let component {
            return _ConditionalContent<Content, EmptyCode>(trueContent: {
                component
            })
        } else {
            return _ConditionalContent<Content, EmptyCode>(falseContent: {
                EmptyCode()
            })
        }
    }
    
    // MARK: Loop
    
    public static func buildArray<Content>(_ components: [Content]) -> some Code where Content : Code {
        ForEach(components) { component in
            component
        }
    }
}
