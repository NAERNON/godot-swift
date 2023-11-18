# ``Godot/GodotOptionSet()``

This macro conforms the attached structure to the
``VariantCodable`` protocol, enabling the option set to be used as a type for function parameters and variables for Godot.
It also conforms the structure to the `OptionSet` protocol and declares the `RawValue` type to `Int64`.

### Naming convention within Godot

Each case name takes the name of the option set, followed by the case itself, converted to snake case and uppercased.
See the example below.

### Usage

A Godot option set must be a `struct`, with an `Int64` `RawValue` type. 

The following code transforms the struct into an option set Godot is capable of manipulating:

```swift
@GodotOptionSet public struct CharacterAction {
    public let rawValue: Int64
    public init(rawValue: Int64) {
        self.rawValue = rawValue
    }

    // CHARACTER_ACTION_THINKING
    public static let thinking = CharacterAction(rawValue: 1 << 0)
    // CHARACTER_ACTION_DRAWING
    public static let drawing  = CharacterAction(rawValue: 1 << 1)
    // CHARACTER_ACTION_SLEEPING
    public static let sleeping = CharacterAction(rawValue: 1 << 2)

    // CHARACTER_ACTION_NONE
    public static let none: CharacterAction = []
    // CHARACTER_ACTION_DREAMING
    public static let dreaming: CharacterAction = [.thinking, .sleeping]
}
```

The option set can then be used as a type for Godot:

```swift
@Exposable public class Character: Node {
    // This variable is exposed to Godot
    public var action: CharacterAction = .drawing
}
```

### Definition inside an exposable class

If the option set is defined inside an exposable class, the option set values will automatically be accessible from the Godot editor.
Note that only **public** static constants are exposed.
