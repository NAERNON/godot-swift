import Foundation

public struct Case: SwiftCode {
    let name: String
    let value: String?
    fileprivate var alignmentLength: Int? = nil
    
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
        _LineComponentsCode(components: [
            caseWithNameString,
            equalValueString
        ].compactMap { $0 })
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
