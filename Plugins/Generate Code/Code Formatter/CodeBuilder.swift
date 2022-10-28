import Foundation

@resultBuilder
public enum CodeBuilder {
    
    // MARK: Block
    
    public static func buildBlock<C0>(_ c0: C0) -> C0 where C0: SwiftCode {
        c0
    }
    
    public static func buildBlock<C0, C1>(
        _ c0: C0,
        _ c1: C1
    ) -> TupleCode2<C0, C1>
    where C0: SwiftCode,
          C1: SwiftCode
    {
        TupleCode2(c0, c1)
    }
    
    public static func buildBlock<C0, C1, C2>(
        _ c0: C0,
        _ c1: C1,
        _ c2: C2
    ) -> TupleCode3<C0, C1, C2>
    where C0: SwiftCode,
          C1: SwiftCode,
          C2: SwiftCode
    {
        TupleCode3(c0, c1, c2)
    }
    
    public static func buildBlock<C0, C1, C2, C3>(
        _ c0: C0,
        _ c1: C1,
        _ c2: C2,
        _ c3: C3
    ) -> TupleCode4<C0, C1, C2, C3>
    where C0: SwiftCode,
          C1: SwiftCode,
          C2: SwiftCode,
          C3: SwiftCode
    {
        TupleCode4(c0, c1, c2, c3)
    }
    
    public static func buildBlock<C0, C1, C2, C3, C4>(
        _ c0: C0,
        _ c1: C1,
        _ c2: C2,
        _ c3: C3,
        _ c4: C4
    ) -> TupleCode5<C0, C1, C2, C3, C4>
    where C0: SwiftCode,
          C1: SwiftCode,
          C2: SwiftCode,
          C3: SwiftCode,
          C4: SwiftCode
    {
        TupleCode5(c0, c1, c2, c3, c4)
    }
    
    // MARK: Either
    
    public static func buildEither<TrueContent, FalseContent>(
        first component: TrueContent
    ) -> ConditionalContent<TrueContent, FalseContent> where TrueContent: SwiftCode,
                                                              FalseContent: SwiftCode
    {
        ConditionalContent<TrueContent, FalseContent>(trueContent: { component })
    }
    
    public static func buildEither<TrueContent, FalseContent>(
        second component: FalseContent
    ) -> ConditionalContent<TrueContent, FalseContent> where TrueContent: SwiftCode,
                                                              FalseContent: SwiftCode
    {
        ConditionalContent<TrueContent, FalseContent>(falseContent: { component })
    }
    
    // MARK: Optional
    
    @CodeBuilder
    public static func buildOptional<Content>(_ component: Content?) -> some SwiftCode where Content: SwiftCode {
        if let component {
            component
        } else {
            EmptyCode()
        }
    }
    
}
