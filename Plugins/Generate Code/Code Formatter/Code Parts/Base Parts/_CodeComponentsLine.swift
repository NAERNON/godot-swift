import Foundation

/// A line of code made of several components.
/// When code is aligned, the last component is used to make the alignment.
struct _CodeComponentsLine: SwiftCode {
    let components: [String]
    
    init(components: [String]) {
        self.components = components
    }
    
    var body: Never { fatalError() }
}
