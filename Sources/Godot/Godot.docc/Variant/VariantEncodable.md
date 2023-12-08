# ``Godot/VariantEncodable``

Types that conform to the `VariantEncodable` protocol
provide a variant representation.
Use the `Variant` ``Variant/init(_:)`` initializer to
create a new variant from an instance of this type.

Create variants like so:

```swift
let index: Int = 3

// Use the `init(_:)` from the `Variant` type
let variant = Variant(index)
```

### Conforming to the VariantEncodable protocol

To add `VariantEncodable` conformance to your type, you must declare the following requirements:
- The `encodeVariantStorage(_:)` static method that encodes your type to a variant storage
- The `encodedVariantStorageType` static variable that defines how your type will be stored

For example, in the following code, the `Level` struct can be encoded to a variant storage:

```swift
struct Level: VariantEncodable {
    let index: Int

    static var encodedVariantStorageType: Variant.StorageType? {
        Int.encodedVariantStorageType
    }

    static func encodeVariantStorage(_ value: Level) -> Variant.Storage {
        Int.encodeVariantStorage(value.index)
    }
}
```
