import Foundation

public struct Case: Code {
    let name: String
    let value: String?
    
    public init(_ name: String, value: String? = nil) {
        self.name = name
        self.value = value
    }
    
    public init<T>(_ name: String, typedValue: T?) where T : CustomStringConvertible {
        self.init(name, value: typedValue?.description)
    }
    
    public var body: some Code {
        if let value {
            caseWithNameString.assign(value)
        } else {
            caseWithNameString
        }
    }
    
    private var caseWithNameString: String {
        return "case " + name
    }
}
