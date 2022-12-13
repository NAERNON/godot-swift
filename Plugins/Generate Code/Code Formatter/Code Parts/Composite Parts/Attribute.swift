import Foundation

/// An attribute in Swift is preceeded by `@`.
public struct Attribute: SwiftCode {
    let name: String
    
    public init(_ name: String) {
        self.name = name
    }
    
    public var body: some SwiftCode {
        "@" + name
    }
    
    static let discardableResult = Attribute("discardableResult")
}

extension SwiftCode {
    @CodeBuilder
    public func attributes(_ attributes: [Attribute]) -> some SwiftCode {
        for attribute in attributes {
            attribute
        }
        self
    }
    
    public func attributes(_ attributes: Attribute...) -> some SwiftCode {
        self.attributes(attributes)
    }
    
}
