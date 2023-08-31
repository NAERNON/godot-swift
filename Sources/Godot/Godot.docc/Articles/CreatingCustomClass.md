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
@Exposable
public class Character: Node {

}
```

Once a class is correctly defined, it can be exposed to Godot through a bridge. See <doc:CreatingGodotBridge> to learn how to setup a bridge.

> Warning: Do not use a custom Godot class not marked with the ``Exposable()`` macro.

### Expose members

Every public member defined inside the class are exposed to Godot and must meet a few strict requirements.

> Tip: Defining public members in an extension won't be covered by the macro. So use extensions to publicly expose members that cannot be exposed to Godot.

#### Expose functions

Every public or open function is exposed to Godot. All these functions must use parameters and return type conforming to the ``VariantConvertible`` protocol.
They also must be *basic* functions, meaning they must:
- not throw
- not be marked async
- not have generics
- not use variadic parameters
- basically, not use any special keyword other than `func`…

In Swift, two functions with the same name but not the same signature is not an issue.
In Godot, two functions with the same name cannot be simultaneously exposed. Be sure to name every exposed function differently.

#### Expose variables

Every public or open variable is exposed to Godot. All these variables must be of a type conforming to the ``VariantConvertible`` protocol.
Just as the functions, only define *basic* variables (no async etc.).

#### Expose enums

Every public enum is exposed to Godot. All these enums must be marked ``GodotEnum()``. See the corresponding doc to learn more.

#### Expose option sets

Every public option set is exposed to Godot. All these structs must be marked ``GodotOptionSet()``. See the corresponding doc to learn more.

#### Expose signals

Every public receiver is exposed to Godot. All these structs must be marked ``Emitter(signal:args:)``. See the corresponding doc to learn more.

#### Unexposable members

Other than the members defined before, no member can be exposed to Godot.
Do not define public struct or classes inside the exposable class. Use extensions instead.

### Override the initializers

Every Godot class come with two required initializers.
The base one is the you will use when creating new instances. The other one is called by Godot to instantiate your class from Godot.

If you decide to override the initializer, you will have to override both: 

```swift
@Exposable
public class Character: Node {
    public required init() {
        super.init()

        // Custom initialization
    }

    // Called by Godot.
    public required init(objectPointer: GodotObjectPointer) {
        super.init(objectPointer: objectPointer)

        // Custom initialization
    }
}
```

### Automatic reference counting

Godot classes all inherit from the top class ``Object``.
There is one specific class that is a direct subclass of it: ``RefCounted``.

If your class is a subclass of `RefCounted`, the class will behave just like in Swift, using automatic reference counting. The deinit will be called as soon as the object is no more in use.

Things are different when your class is *not* a subclass of `RefCounted`. When a new object of such a class is instantiated, a reference to the instance is forever persisted. The only way to free the instance is to explicitly request Godot to free its memory.
