
@resultBuilder
struct SyntaxGroupBuilder {
    static func buildExpression(_ expression: Syntax) -> SyntaxGroup {
        SyntaxGroup(components: [expression])
    }
    
    static func buildExpression(_ expression: SyntaxGroup) -> SyntaxGroup {
        expression
    }
    
    static func buildPartialBlock(first: SyntaxGroup) -> SyntaxGroup {
        first
    }
    
    static func buildPartialBlock(accumulated: SyntaxGroup, next: SyntaxGroup) -> SyntaxGroup {
        SyntaxGroup(components: accumulated.components + next.components)
    }
    
    static func buildOptional(_ component: SyntaxGroup?) -> SyntaxGroup {
        if let component {
            return component
        } else {
            return SyntaxGroup()
        }
    }
    
    static func buildEither(first component: SyntaxGroup) -> SyntaxGroup {
        component
    }
    
    static func buildEither(second component: SyntaxGroup) -> SyntaxGroup {
        component
    }
    
    static func buildArray(_ components: [SyntaxGroup]) -> SyntaxGroup {
        SyntaxGroup(components: components.flatMap { $0.components })
    }
}
