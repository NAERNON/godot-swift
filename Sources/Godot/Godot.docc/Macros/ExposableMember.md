# ``Godot/ExpositionAvailable(_:)``

This macro adds exposition support for Godot.

The ``Exposable()`` macro attaches this macro to every compatible member so you don't have to mark every single member with this macro.

>important: Only use this node for debugging purposes and on classes marked `@Exposable`.

### Usage

Using this macro on a member requires passing the type of class in which the macro is used:

```swift
@Exposable public class Character: Node {
    @ExpositionAvailable(Character)
    public var isSleeping = true
}
```

The macro will create a static method that, once called, registers the member within Godot.
This function is automatically called inside classes marked `@Exposable`.
