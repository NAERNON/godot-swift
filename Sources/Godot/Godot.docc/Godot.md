# ``Godot``

A library for interacting with Godot using Swift code.

@Metadata {
    @PageImage(
        purpose: icon,
        source: "godot-swift_logo",
        alt: "A technology icon representing Godot Swift"
    )
    @PageColor(blue)
}

## Overview

Godot Swift is a set of tools enabling Swift code to be accessible from the Godot editor.

## Topics

### Setting up a project

- <doc:CreatingGodotBridge>
- <doc:CreatingGDExtensionModule>

### Creating custom classes

- <doc:CreatingCustomClass>

- ``Exposable()``
- ``ExposableMember(_:)``
- ``Emitter(signal:args:)``
- ``Receiver()``
- ``GodotEnum()``
- ``GodotOptionSet()``

### Interacting with Godot

- <doc:UsingBuiltinTypes>
- <doc:UsingRandomNumberGenerator>

- ``gdPrint(_:separator:)``
- ``gdPrintError(_:separator:)``

- ``load(_:as:)``

- ``Real``

### Working with variants

- ``Variant``
- ``Variant/Storage``
- ``VariantConvertible``
- ``ConvertibleToVariant``
- ``ConvertibleFromVariant``

### Builtin types

- ``GodotString``
- ``GodotStringName``
- ``Signal``
- ``Callable``
- ``Color``
- ``NodePath``
- ``RID``

### Builtin collections

- ``GodotArray``
- ``GodotTypedArray``
- ``GodotDictionary``
- ``PackedByteArray``
- ``PackedColorArray``
- ``PackedFloat32Array``
- ``PackedFloat64Array``
- ``PackedInt32Array``
- ``PackedInt64Array``
- ``PackedStringArray``
- ``PackedVector2Array``
- ``PackedVector3Array``

### Builtin math types

- ``AABB``
- ``Basis``
- ``Plane``
- ``Projection``
- ``Quaternion``
- ``Transform2D``
- ``Transform3D``
- ``Vector2``
- ``Vector2i``
- ``Vector3``
- ``Vector3i``
- ``Vector4``
- ``Vector4i``
- ``Rect2``
- ``Rect2i``

### Godot extension types

- ``ClassRegister``
- ``GodotExtension``
