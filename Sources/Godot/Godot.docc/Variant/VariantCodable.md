# ``Godot/VariantCodable``

Types that conform to the `VariantCodable` protocol
can convert to and from a variant. They also define what kind of variant the type is convertible to and from.

Convert `VariantCodable` types to and from a variant using the corresponding `Variant` functions:

```swift
let speed = 4.3

// Make a variant
let variant = Variant(speed)

// Retrieve a value
let speed = try variant.unwrap(Double.self)

// Retrieve a value
let speed = variant.unwrap(assuming: Double.self)
```

### Conforming to the VariantCodable protocol

In the following code, the `Level` struct can be encoded to and decoded from a variant storage, while also stating that the variant representation is `Int`.

```swift
struct Level: VariantCodable {
    let index: Int

    static let variantRepresentationType: Variant.RepresentationType = Int.variantRepresentationType

    static func encodeVariantStorage(_ value: Level) -> Variant.Storage {
        Int.encodeVariantStorage(value.index)
    }

    static func decodeVariantStorage(_ storage: borrowing Variant.Storage) throws -> Level {
        Level(index: try Int.decodeVariantStorage(storage))
    }

    static func decodeCompatibleVariantStorage(_ storage: borrowing Variant.Storage) -> Level {
        Level(index: Int.decodeCompatibleVariantStorage(storage))
    }
}
```

To add `VariantCodable` conformance to your type, you must declare the following requirements:
- The ``VariantEncodable`` requirements
- The ``VariantDecodable`` requirements
- The `variantRepresentationType` static variable that defines the type of variant this type can be represented with

The ``VariantEncodable/encodeVariantStorage(_:)`` method must create variants with type matching that of the `variantRepresentationType` static variable.

The `decodeVariantStorage(_:)` method of the `VariantDecodable` protocol has a default implementation that uses the `decodeCompatibleVariantStorage(_:)` while checking that the given variant storage has the same type as `variantRepresentationType`. You can override this default behavior and add additional checks.
For example, in the following code, an additional check is performed:

```swift
struct Level: VariantCodable {
    enum ConversionError: Error {
        case negative
    }

    let index: Int

    static let variantRepresentationType: Variant.RepresentationType = Int.variantRepresentationType

    static func decodeVariantStorage(_ storage: borrowing Variant.Storage) throws -> Level {
        let index = try Int.fromVariant(storage)

        guard index >= 0 else {
            throw ConversionError.negative
        }

        return Level(index: index)
    }
}
```
