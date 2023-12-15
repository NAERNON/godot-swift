
public protocol HintableValue {
    associatedtype HintingValue
    
    static var defaultHint: Hint<HintingValue> { get }
}
