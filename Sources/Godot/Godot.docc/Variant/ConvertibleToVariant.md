# ``Godot/ConvertibleToVariant``

Types that conform to the `ConvertibleToVariant` protocol
provide a variant representation.
Use the `Variant` ``Variant/init(_:)-81n45`` initializer to
create a new variant from an instance of this type.

For example, in the following code, the `Level` struct can be converted to a variant, using the `index` value as its representation:

```swift
struct Level: ConvertibleToVariant {
    let index: Int

    func makeVariant() -> Variant.Storage {
        index.makeVariant()
    }
}
```

For a given `Level` instance, create a variant like so:

```swift
let level = Level(index: 3)

// Use the `init(_:)` from the `Variant` type
let variant = Variant(level)
```

### Conforming to the VariantConvertible protocol

To add `ConvertibleToVariant` conformance to your type, you must declare the `makeVariant()` method that converts your type to a variant.
