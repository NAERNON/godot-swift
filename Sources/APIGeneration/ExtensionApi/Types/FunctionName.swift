import Foundation

struct FunctionName {
    private(set) var baseName: String
    
    init(string: String) {
        self.baseName = string
    }
    
    var string: String {
        get { customName(for: baseName) }
        set { baseName = newValue }
    }
    
    /// A custom name for the function.
    private func customName(for name: String) -> String {
        if name == "init" {
            return "initialize"
        }
        
        return name
    }
    
    /// The name of the operation (if applies).
    var operationName: String? {
        switch baseName {
        case "==": return "equal"
        case "!=": return "notEqual"
        case "<": return "less"
        case "<=": return "lessEqual"
        case ">": return "greater"
        case ">=": return "greaterEqual"
            
            // mathematic
        case "+": return "add"
        case "-": return "subtract"
        case "*": return "multiply"
        case "/": return "divide"
        case "unary-": return "negate"
        case "unary+": return "positive"
        case "%": return "module"
            
            // bitwise
        case "<<": return "shiftLeft"
        case ">>": return "shiftRight"
        case "&": return "bitAnd"
        case "|": return "bitOr"
        case "^": return "bitXOr"
        case "~": return "bitNegate"
            
            // containment
        case "in": return "in"
        default: return nil
        }
    }
    
    func underscored() -> FunctionName {
        var new = self
        new.string = "_" + new.string
        return new
    }
    
    static func == (lhs: FunctionName, rhs: FunctionName) -> Bool {
        lhs.string == rhs.string
    }
}

extension FunctionName: Decodable {
    init(from decoder: Decoder) throws {
        baseName = try String(from: decoder)
    }
}

extension FunctionName: ExpressibleByStringLiteral {
    init(stringLiteral value: String) {
        self.init(string: value)
    }
}
