import Foundation

// MARK: - Property

public struct Property: Code {
    public let name: String
    
    public init(_ name: String) {
        self.name = name
    }
    
    public var body: some Code {
        name
    }
    
    // MARK: Modifiers
    
    public func selfDefined() -> some Code {
        "self." + name
    }
    
    @CodeBuilder
    public func defined(isVar: Bool) -> some Code {
        if isVar {
            varDefined()
        } else {
            letDefined()
        }
    }
    
    public func letDefined() -> some Code {
        Let(name)
    }
    
    public func varDefined() -> some Code {
        Var(name)
    }
}
