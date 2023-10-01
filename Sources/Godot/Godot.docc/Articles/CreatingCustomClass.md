# Creating a custom Godot class

Create a custom class that can be exposed to Godot.

## Overview

This article focuses on the tools at your disposal and the requirements to make a subclass of a Godot class.

### Define the class

A custom Godot class must meet the following requirements. It must be:
- a subclass of a Godot class (therefore a subclass of ``Object``)
- public or open
- marked with the ``Exposable()`` macro

This is an example of a class correctly defined:

```swift
// The class `Character` can be exposed
@Exposable public class Character: Node {

}
```

Once a class is correctly defined, it can be exposed to Godot through a bridge. See <doc:CreatingGodotBridge> to learn how to setup a bridge.

> Warning: Do not use or instantiate a custom Godot class not marked with the ``Exposable()`` macro, and not exposed using a bridge.

### Expose members

Every public member defined inside the class are exposed to Godot and must meet a few strict requirements.

> Tip: Defining public members in an extension won't be covered by the macro. So use extensions to publicly expose members that cannot be exposed to Godot.

#### Expose variables

Every public or open variable is exposed to Godot. All these variables must be of a type conforming to the ``VariantConvertible`` protocol.
Only *basic* variables can be exposed (no async etc.), and their type must be explicitly defined:

```swift
@Exposable public class Character: Node {
    // The variable `speed` is exposed as { get set }
    public var speed: Double = 10.0

    // The variable `favorite_number` is exposed as { get }
    public var favoriteNumber: Int {
        return 20
    }

    // The variable `jump_direction` is exposed as { get }
    public let jumpDirection: Vector2 = .init()
}
```

#### Expose functions

Every public or open function is exposed to Godot. All these functions must use parameters and return type conforming to the ``VariantConvertible`` protocol.
Only *basic* functions can be exposed (no `async`, `throws`, generic etc.).

```swift
@Exposable public class Character: Node {
    // The function `sleep` is exposed
    public func sleep() -> Bool {
        return true
    }

    // The function `super_jump` is exposed with
    // one parameter `direction`
    public func superJump(to direction: Vector2) {
        gdPrint("SUUUUPER JUMP")
    }
}
```

In Godot, two functions with the same name but not the same signature cannot coexist in the same class. Be sure to name every exposed function differently.

#### Expose enums

Every public enum is exposed to Godot. All these enums must be marked ``GodotEnum()``. See the corresponding doc for more information.

```swift
@Exposable public class Character: Node {
    // The enum `Emotion` is exposed with 3 cases:
    // CHARACTER_EMOTION_HAPPY
    // CHARACTER_EMOTION_NOT_SO_HAPPY
    // CHARACTER_EMOTION_SAD
    @GodotEnum public enum Emotion: Int64 {
        case happy
        case notSoHappy
        case sad
    }
}
```

#### Expose option sets

Every public option set is exposed to Godot. All these structs must be marked ``GodotOptionSet()``. See the corresponding doc for more information.

```swift
@Exposable public class Character: Node {
    // The option set `CharacterAction` is exposed with 5 cases:
    // CHARACTER_ACTION_THINKING
    // CHARACTER_ACTION_DRAWING
    // CHARACTER_ACTION_SLEEPING
    // CHARACTER_ACTION_NONE
    // CHARACTER_ACTION_DREAMING
    @GodotOptionSet public struct CharacterAction {
        public static let thinking: Self = .init(rawValue: 1 << 0)
        public static let drawing: Self  = .init(rawValue: 1 << 1)
        public static let sleeping: Self = .init(rawValue: 1 << 2)

        public static let none: CharacterAction = []
        public static let dreaming: CharacterAction = [.thinking, .sleeping]
    }
}
```

#### Expose signals

Signals are created through emitters in Swift.
Every public emitter is exposed to Godot. All these structs must be marked ``Emitter(signal:args:)``. See the corresponding doc for more information.

```swift
@Exposable public class Character: Node {
    // The signal `landed_beautifully` is exposed
    @Emitter public struct LandedBeautifully {}

    // The signal `jumped` is exposed with
    // two arguments `force` and `direction`
    @Emitter(args: ("force", Double), ("direction", Vector3))
    public struct Jumped {}
}
```

#### Unexposable members

Other than the members defined before, no member can be exposed to Godot.
Do *not* define public members that cannot be exposed to Godot. Place them in extensions instead:

```swift
// The class `Character` can be exposed
@Exposable public class Character: Node {
    // The `eat` function couldn't be exposed to Godot
    // because it throws
    // Making it private prevents the exposition
    private func eat(quantity: Double) throws {
        // ...
    }
}

public extension Character {
    // The `sleep` function couldn't be exposed to Godot
    // because it is async
    // Placing it in an extension prevents the exposition
    func sleep(for duration: Double) async {
        // ...
    }
}
```

### Override the initializers

Every Godot class come with two required initializers.
The base one is the one you use when creating new instances. The other one is called by Godot to instantiate your class from Godot.

If you decide to override an initializer, you will have to override both: 

```swift
@Exposable public class Character: Node {
    public required init() {
        super.init()

        // Custom initialization
    }

    // This init is called when Godot creates
    // the object and not Swift
    public required init(objectPointer: GodotObjectPointer) {
        super.init(objectPointer: objectPointer)

        // Custom initialization
    }
}
```

### Automatic reference counting

Godot classes all inherit from the top class ``Object``.
There is one specific class that is a direct subclass of it: ``RefCounted``.

If your class is a subclass of `RefCounted`, the class will behave just like in Swift, using automatic reference counting. The deinit will be called as soon as the object is no longer in use.

Things are different when your class is *not* a subclass of `RefCounted`. When a new object of such a class is instantiated, a reference to the instance is forever persisted. The only way to free the instance is to explicitly request Godot to free its memory.
