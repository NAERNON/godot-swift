import Foundation

/// A line of code made of several components.
/// When code is aligned, the last component is used to make the alignment.
public struct _CodeComponentsLine: SwiftCode {
    let components: [String]
    
    init(components: [String]) {
        self.components = components
    }
    
    public var body: Never { fatalError() }
    
    static func + (lhs: _CodeComponentsLine, rhs: _CodeComponentsLine) -> _CodeComponentsLine {
        _CodeComponentsLine(components: lhs.components + rhs.components)
    }
}
