import Foundation

public struct Case: SwiftCode {
    let name: String
    let value: String?
    
    public init(_ name: String,
                value: String? = nil) {
        self.name = name
        self.value = value
    }
    
    init<T>(_ name: String,
            typedValue: T?) where T: CustomStringConvertible {
        self.init(name, value: typedValue?.description)
    }
    
    public var body: some SwiftCode {
        _AlignableLine(components: [
            caseWithNameString,
            equalValueString
        ].compactMap { $0 })
        
        if let equalValueString {
            _AlignableLine(caseWithNameString).alignableCode(equalValueString)
        } else {
            _AlignableLine(caseWithNameString)
        }
    }
    
    private var caseWithNameString: String {
        return "case " + name
    }
    
    private var equalValueString: String? {
        guard let value else {
            return nil
        }
        
        return " = " + value
    }
}
