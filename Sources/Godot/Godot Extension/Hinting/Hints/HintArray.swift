
extension Hint where Value : Collection, Value.Element : ExportableValue {
    public static func elements(
        _ elementHint: Hint<Value.Element.HintingValue>
    ) -> Hint {
        if Value.Element.self == Variant.self {
            .init(
                propertyHint: .arrayType,
                string: .init()
            )
        } else {
            .init(
                propertyHint: .arrayType,
                string: "\(Value.Element.variantRepresentationType.storageType.rawValue)/\(elementHint.propertyHint.rawValue):\(elementHint.string)"
            )
        }
    }
}
