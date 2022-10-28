import Foundation

public struct Var: SwiftCode {
    
    private let property: Property
    
    public init(_ name: String,
                value: String?,
                type: String?,
                isOptional: Bool = false,
                isStatic: Bool = false) {
        property = Property(name,
                            value: value,
                            type: type,
                            isVar: true,
                            isOptional: isOptional,
                            isStatic: isStatic)
    }
    
    public init<T>(_ name: String,
                   typedValue: Property.TypedValue<T>,
                   type: T.Type,
                   isOptional: Bool = false,
                   isStatic: Bool = false) where T: CustomStringConvertible {
        property = Property(name,
                            typedValue: typedValue,
                            type: type,
                            isVar: true,
                            isOptional: isOptional,
                            isStatic: isStatic)
    }
    
    public var body: some SwiftCode {
        property
    }
    
}

extension Var: AlignableCode {
    public var alignableContentLength: Int { property.alignableContentLength }
    
    public func aligned(_ length: Int) -> some SwiftCode {
        property.aligned(length)
    }
}
