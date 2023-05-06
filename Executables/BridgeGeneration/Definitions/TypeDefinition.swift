import Foundation

struct TypeDefinition {
    let code: String
    let components: [String]
    
    init(_ code: String) {
        self.code = code
        self.components = code.components(separatedBy: .punctuationCharacters)
    }
    
    var lastComponent: String {
        components.last ?? ""
    }
}
