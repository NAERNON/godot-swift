
public protocol Hintable {
    associatedtype HintingValue
    
    static var defaultHint: Hint<HintingValue> { get }
}
