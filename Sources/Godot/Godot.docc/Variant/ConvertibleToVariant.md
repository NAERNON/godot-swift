# ``Godot/ConvertibleToVariant``

Types that conform to the `ConvertibleToVariant` protocol
provide a variant representation.
Use the `Variant` ``Variant/init(_:)`` initializer to
create a new variant from an instance of this type.

For example, in the following code, the `Level` struct can be converted to a variant, using the `index` value as its representation:

```swift
struct Level: ConvertibleToVariant {
    let index: Int

    func makeVariant() -> Variant {
        Variant(index)
    }
}

let level = Level(index: 3)
let variant = Variant(level)
```

### Conforming to the VariantConvertible protocol

To add `ConvertibleToVariant` conformance to your type, you must declare the `makeVariant()` method that converts your type to a variant.
