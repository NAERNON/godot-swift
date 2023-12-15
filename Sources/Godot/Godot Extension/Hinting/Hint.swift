
public struct Hint<Value> {
    public var propertyHint: PropertyHint
    public var string: GodotString
    
    internal init(propertyHint: PropertyHint, string: GodotString) {
        self.propertyHint = propertyHint
        self.string = string
    }
    
    internal init<Other>(_ hint: Hint<Other>) {
        self.propertyHint = hint.propertyHint
        self.string = hint.string
    }
    
    public static func _defaultForValue<Class, Variable>(
        at _: KeyPath<Class, Variable>
    ) -> Self
    where Class : Exposable,
          Variable : HintableValue,
          Variable.HintingValue == Value
    {
        Variable.defaultHint
    }
}
