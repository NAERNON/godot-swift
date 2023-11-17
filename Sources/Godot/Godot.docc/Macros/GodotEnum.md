# ``Godot/GodotEnum()``

This macro conforms the attached enum to the
``VariantCodable`` protocol, enabling the enum to be used as a type for function parameters and variables for Godot.

### Naming convention

Each case name takes the name of the enum, followed by the case itself, converted to snake case and uppercased.
See the example below.

### Usage

A Godot enum must have an `Int64` `RawType`.
The following code transforms the enum into an enum Godot is capable of manipulating:

```swift
@GodotEnum public enum CharacterEmotion: Int64 {
    // CHARACTER_EMOTION_HAPPY
    case happy
    // CHARACTER_EMOTION_NOT_SO_HAPPY
    case notSoHappy
    // CHARACTER_EMOTION_SAD
    case sad
}
```

The enum can then be used as a type for Godot:

```swift
@Exposable public class Character: Node {
    // This variable is exposed to Godot
    public var emotion: CharacterEmotion = .happy
}
```

### Definition inside an exposable class

If the enum is defined inside an exposable class, the enum cases
will automatically be accessible from the Godot editor.
