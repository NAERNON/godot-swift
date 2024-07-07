
struct SyntaxGroup {
    var components: [Syntax]
    
    init(components: [Syntax]) {
        self.components = components
    }
    
    init() {
        self.components = []
    }
    
    func syntax(separator: Syntax = .newline) -> Syntax {
        components.lazy.filter { !$0.isEmpty }.joined(separator: separator)
    }
}
