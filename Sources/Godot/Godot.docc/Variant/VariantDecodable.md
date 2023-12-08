# ``Godot/VariantDecodable``

Types that conform to the `VariantDecodable` protocol can be converted from a variant.
Use the `Variant` ``Variant/unwrap(_:)`` or ``Variant/unwrap(assuming:)`` methods to retrieve an instance from a variant.

Retrieve instances like so:

```swift
let variant: Variant = //...

// Use the `unwrap(_:)` method that may throw
let index1 = try variant.unwrap(Int.self)

// Use the `unwrap(assuming:_)` method that doesn't throw
let index2 = variant.unwrap(assuming: Int.self)
```

## Conforming to the VariantDecodable protocol

To add `VariantDecodable` conformance to your type, you must declare the following requirements:
- The `decodeVariantStorage(_:)` static method that decodes a variant storage to your own type
- The `decodeCompatibleVariantStorage(_:)` static method that decodes a variant storage to your own type, assuming the given variant is convertible to your type

For example, in the following code, the `Level` struct can be decoded from a variant storage:

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

You can perform additional checks in the `decodeVariantStorage` static method.
For example, in the following code, an additional check is performed:

```swift
struct Level: VariantDecodable {
    enum ConversionError: Error {
        case negative
    }

    let index: Int

    static func decodeVariantStorage(_ storage: borrowing Variant.Storage) throws -> Level {
        let index = try Int.decodeVariantStorage(storage)

        guard index >= 0 else {
            throw ConversionError.negative
        }

        return Level(index: index)
    }
}
```
