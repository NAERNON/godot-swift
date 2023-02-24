import Foundation

extension Code {
    public func typed(_ type: String) -> some Code {
        suffix(": " + type)
    }
    
    public func typed<T>(_ type: T.Type) -> some Code {
        typed(String(describing: type.self))
    }
}
