import Foundation

/// An attribute in Swift is preceeded by `@`.
public struct Attribute: Code {
    public let name: String
    
    public init(_ name: String) {
        self.name = name
    }
    
    public var body: some Code {
        "@" + name
    }
    
    public static let discardableResult = Attribute("discardableResult")
}

public extension Code {
    func attributes(_ attributes: [Attribute]) -> some Code {
        Group {
            for attribute in attributes {
                attribute
            }
            
            self
        }
    }
    
    func attributes(_ attributes: Attribute...) -> some Code {
        self.attributes(attributes)
    }
    
}
