# ``Godot/ConvertibleFromVariant``

Types that conform to the `ConvertibleFromVariant` protocol can be converted from a variant.
Use the `Variant` ``Variant/typed(_:)`` or ``Variant/typed(compatibleWith:)`` methods to retrieve an instance from a variant.

For example, in the following code, the `Level` struct can be converted from a variant, using the `index` value as its representation:

```swift
struct Level: ConvertibleFromVariant {
    let index: Int

    static func fromVariant(_ variant: borrowing Variant.Storage) throws -> Level {
        Level(index: try Int.fromVariant(variant))
    }

    static func fromCompatibleVariant(_ variant: borrowing Variant.Storage) -> Level {
        Level(index: Int.fromCompatibleVariant(variant))
    }
}
```

For a given variant, retrieve an instance like so:

```swift
let variant: Variant = //...

// Use the `typed(_:)` method that may throw
let level = try variant.typed(Level.self)

// Use the `typed(compatibleWith:_)` method that doesn't throw
let level = variant.typed(compatibleWith: Level.self)
```

Use the ``Variant/Storage/checkType(_:)`` method to check the type of a variant and throw an error if the types don't match.

## Conforming to the ConvertibleFromVariant protocol

To add `ConvertibleFromVariant` conformance to your type, you must declare the following requirements:
- The `fromVariant(_:)` static method that converts a variant to your own type
- The `fromCompatibleVariant(_:)` static method that converts a variant to your own type, assuming the given variant is convertible
