# ``Godot/VariantDecodable``

Types that conform to the `VariantDecodable` protocol can be converted from a variant.
Use the `Variant` ``Variant/unwrap(_:)`` or ``Variant/unwrap(assuming:)`` methods to retrieve an instance from a variant.

For example, in the following code, the `Level` struct can be decoded from a variant storage, using the `index` value as its representation:

```swift
struct Level: VariantDecodable {
    let index: Int

    static func decodeVariantStorage(_ storage: borrowing Variant.Storage) throws -> Level {
        Level(index: try Int.decodeVariantStorage(storage))
    }

    static func decodeCompatibleVariantStorage(_ storage: borrowing Variant.Storage) -> Level {
        Level(index: Int.decodeCompatibleVariantStorage(storage))
    }
}
```

For a given variant, retrieve an instance like so:

```swift
let variant: Variant = //...

// Use the `unwrap(_:)` method that may throw
let level = try variant.unwrap(Level.self)

// Use the `unwrap(assuming:_)` method that doesn't throw
let level = variant.unwrap(assuming: Level.self)
```

Use the ``Variant/Storage/checkType(_:)`` method to check the type of a variant and throw an error if the types don't match:

```swift
static func decodeVariantStorage(_ storage: borrowing Variant.Storage) throws -> Level {
    try storage.checkType(Int.variantRepresentationType)

    return Level(index: try Int.decodeVariantStorage(storage))
}
```

## Conforming to the VariantDecodable protocol

To add `VariantDecodable` conformance to your type, you must declare the following requirements:
- The `decodeVariantStorage(_:)` static method that decodes a variant storage to your own type
- The `decodeCompatibleVariantStorage(_:)` static method that decodes a variant storage to your own type, assuming the given variant is convertible
