# ``Godot/VariantConvertible``

Types that conform to the `VariantConvertible` protocol
can convert to and from a variant. They also define what kind of variant the type is convertible to and from.

For example, in the following code, the `Level` struct can be converted to and from a variant, while also stating that the variant representation is `Int`.

```swift
struct Level: VariantConvertible {
    let index: Int

    static let variantType: Variant.RepresentationType = Int.variantType

    func makeVariant() -> Variant.Storage {
        index.makeVariant()
    }

    static func fromVariant(_ variant: borrowing Variant.Storage) throws -> Level {
        Level(index: try Int.fromVariant(variant))
    }

    static func fromCompatibleVariant(_ variant: borrowing Variant.Storage) -> Level {
        Level(index: Int.fromCompatibleVariant(variant))
    }
}
```

### Conforming to the VariantConvertible protocol

To add `VariantConvertible` conformance to your type, you must declare the following requirements:
- The ``ConvertibleToVariant`` requirements
- The ``ConvertibleFromVariant`` requirements
- The `variantType` static variable that defines the type of variant this type can be represented with

The ``ConvertibleToVariant/makeVariant()`` method must create variants with type matching that of the `variantType` static variable.

The `fromVariant(_:)` method of the `ConvertibleFromVariant` protocol has a default implementation that checks that the given variant has the same type as the `variantType` static variable. You can override this default behavior and add additional checks.
For example, in the following code, an additional check is performed:

```swift
struct Level: VariantConvertible {
    enum ConversionError: Error {
        case negative
    }

    let index: Int

    static let variantType: Variant.RepresentationType = Int.variantType

    static func fromVariant(_ variant: borrowing Variant.Storage) throws -> Level {
        let index = try Int.fromVariant(variant)

        guard index >= 0 else {
            throw ConversionError.negative
        }

        return Level(index: index)
    }
}
```
