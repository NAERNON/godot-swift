# ``Godot/Receiver()``

Receivers are designed to work with emitters.
See the ``Emitter(signal:args:)`` macro to learn how to setup an emitter.

### Usage

This macro must be applied to a public function,
inside an exposable Godot class definition.

By applying the macro to a function, a receiver type is created.
For example, the following code converts a function into a receiver
capable of receiving a signal:

```swift
@Exposable public class Grass: Node {
    @Receiver
    public func characterLanded() {}
}
```

A variable named "function_name + Receiver" is also defined in the Godot class.
The following code uses this variable to receive a signal:

```swift
let grass = Grass()

// The characterLanded receiver will receive any signal
// emitted by 'someEmitter'.
someEmitter.connect(grass.characterLandedReceiver)
```
