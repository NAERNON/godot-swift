
public typealias Exportable = Exposable & Hintable

@propertyWrapper
public struct Export<Value> where Value : Exportable {
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
