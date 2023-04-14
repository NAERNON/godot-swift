import Foundation

@resultBuilder
public enum CodeBuilder {
    // MARK: Block
    
    public static func buildBlock<C0>(_ c0: C0) -> C0 where C0 : Code {
        c0
    }
    
    public static func buildPartialBlock<C0>(first: C0) -> C0 where C0 : Code {
        first
    }
    
    public static func buildPartialBlock<C0, C1>(accumulated: C0, next: C1) -> _DuoCode<C0, C1>
    where C0 : Code,
          C1 : Code {
        _DuoCode(accumulated, next)
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
    
    public static func buildOptional<Content>(_ component: Content?) -> _ConditionalContent<Content, EmptyCode> where Content : Code {
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
    
    public static func buildArray<Content>(_ components: [Content]) -> ForEach<[Content], Content> where Content : Code {
        ForEach(components) { component in
            component
        }
    }
}
