import Foundation

struct TypeDefinition {
    let code: String
    let components: [String]
    
    init(_ code: String) {
        self.code = code
        self.components = code.components(separatedBy: ".")
    }
    
    var lastComponent: String {
        components.last ?? ""
    }
}
