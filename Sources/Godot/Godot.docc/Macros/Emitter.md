# ``Godot/Emitter(signal:args:)``

## Overview

The generated signal will automatically be accessible from the Godot editor.

### Naming convention

The signal name takes the name of the struct, converted to snake case.
See the example below.

### Usage

This macro must be applied to an empty struct, inside an exposable Godot class definition.
For example, the following code converts the struct into a signal:

```swift
@Exposable public class Character: Node {
    @Emitter
    public struct LandedBeautifully {}
    // The signal name is "landed_beautifully"
}
```

A variable named "emitter + structure_name" is also defined alongside the signal, in the Godot class.
The following code uses this variable to emit a signal:

```swift
@Exposable public class Character: Node {
    private func land() {
        emitterLandedBeautifully.emit()
    }
}
```

### Add arguments to the signal

A signal can also have arguments.
To add one or more arguments to a signal, define them in the `@Emitter` macro like so:

```swift
@Exposable public class Character: Node {
    @Emitter(args: ("force", Double), ("direction", Vector3))
    public struct Jumped {}
    // The signal name is "jumped"
    // and it takes two parameters: force and direction
}
```

Emitting the signal becomes:

```swift
@Exposable public class Character: Node {
    private func jump() {
        emitterJumped.emit(force: 13.0, direction: .left)
    }
}
```

>important: Only ``VariantCodable`` types may be used as arguments.

### Connect to a receiver

Emitters are designed to work with receivers.
See the ``Receiver()`` macro to learn how to setup a receiver.

Connect any receiver that has the same input type by calling the ``Emitter/connect(_:flags:)`` method.

Use the ``Emitter/disconnect(_:)`` method to disconnect a receiver.

Check that an emitter is connected to a receiver by calling the  ``Emitter/isConnected(to:)`` method.

```swift
@Exposable public class Character: Node {
    @Emitter
    public struct LandedBeautifully {}
}

@Exposable public class Grass: Node {
    @Receiver
    public func characterLanded() {}
}

let character = Character()
let grass = Grass()

// The characterLanded receiver will receive any signal
// emitted by the landedBeautifully emitter.
character.emitterLandedBeautifully.connect(grass.characterLandedReceiver)
```

### Set a custom signal name

It is possible to use a custom signal name.
Fill the `signal` argument of the macro:

```swift
@Exposable public class Character: Node {
    @Emitter(signal: "landed_not_so_beautifully")
    public struct LandedBeautifully {}
    // The signal name is "landed_not_so_beautifully"
}
```
