# ``Godot/ConvertibleFromVariant``

Types that conform to the `ConvertibleFromVariant` protocol can be converted from a variant.
Use the `Variant` ``Variant/typed(_:)`` or ``Variant/typed(compatibleWith:)`` methods to retreive an instance.

For example, in the following example, the `Level` struct can be converted from a variant, using the `index` value as its representation:

```swift
struct Level: ConvertibleFromVariant {
    let index: Int

    static func fromVariant(_ variant: Variant) throws -> Level {
        Level(index: try variant.typed(Int.self))
    }

    static func fromCompatibleVariant(_ variant: Variant) -> Level {
        Level(index: variant.typed(compatibleWith: Int.self))
    }
}

let variant: Variant = //...
let level = try variant.typed(Level.self)
```

Use the ``Variant/checkType(_:)`` method to check the type of a variant and throw an error if the types don't match.

## Conforming to the ConvertibleFromVariant protocol

To add `ConvertibleFromVariant` conformance to your type, you must declare the following requirements:
- The `fromVariant(_:)` static method that converts a variant to your own type
- The `fromCompatibleVariant(_:)` static method that converts a variant to your own type, assuming the given variant is convertible
