import Foundation

extension Code {
    public func assign(_ value: String) -> some Code {
        alignableSuffix(string: " = " + value)
    }
    
    public func assignNil() -> some Code {
        assign("nil")
    }
    
    public func assignComputed(@CodeBuilder _ content: @escaping () -> some Code) -> some Code {
        self.suffix(" =").curlyBraces {
            content()
        }.suffix("()")
    }
}
