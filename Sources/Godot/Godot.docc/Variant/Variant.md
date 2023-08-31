# ``Godot/Variant``

## Overview

A variant is a type designed to store a variety of other types.
Many Swift and Godot base types can actually be stored in a variant.

See the ``ConvertibleToVariant``, ``ConvertibleFromVariant`` and ``VariantConvertible`` protocols for enabling your own types to be contained inside a variant.

## Topics

### Create a variant

- ``init()``
- ``init(_:)``

### Retreive a value stored in a variant

- ``typed(_:)``
- ``typed(compatibleWith:)``
- ``checkType(_:)``
