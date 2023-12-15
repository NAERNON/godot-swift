
public typealias ExportableValue = ExposableValue & HintableValue

@propertyWrapper
public struct Export<Value> where Value : ExportableValue {
    public var wrappedValue: Value
    
    public init(wrappedValue defaultValue: Value) {
        self.wrappedValue = defaultValue
    }
    
    public init(
        wrappedValue defaultValue: Value,
        hint: @autoclosure () -> Hint<Value.HintingValue>
    ) {
        self.wrappedValue = defaultValue
    }
}
