<img src="https://github.com/NAERNON/godot-swift/blob/main/Sources/Godot/Godot.docc/Resources/godot-swift_logo_small@2x.png" alt="Godot Swift logo" height="180">

# Godot Swift

Godot Swift is a set of tools enabling Swift code to be accessible from the Godot editor.

## Using Godot Swift

This library is a Swift package you can import.
It requires Swift 5.9.

Make Godot Swift a dependency of your project and start coding with it.

Godot Swift takes advantage of many of the new features of Swift
to provide a nice developer experience. The use of macro greatly
improves the process of exposing classes to Godot.
There is no need to manually specify each function, variable,
enum or signal to Godot. This is automatically being taken care of by the macros.

```swift
@Exposable public class Character: Node {
    @Emitter public struct Jumped {}

    @GodotEnum public enum Emotion: Int64 {
        case happy
        case notSoHappy
        case sad
    }

    public override _process(delta: Double) {
        gdPrint("Delta :", delta)
    }

    public func sleep(for duration: Double) {
        // ...
    }

    public var emotion: Emotion = .happy

    public var speed {
        return // ...
    }
}
```

Builtin Godot types are copy on write structs in Swift,
enabling a more familiar experience for Swift developers.
They also take advantage of many of the protocols Swift provides.
For example, `GodotArray` has all the functions collections have.
So you can do stuff like:

```swift
let values: GodotArray = [1, 2, 3]
let strings = values.map { GodotString(describing: $0) }
```

Functions taking variants parameters are generic, and varargs use parameter packs.
Therefore calling such function doesn't require transforming
the values into variants:

```swift
let force: Double = 4
let direction: Vector2 = .forward
let object: Object = // ...
object.emitSignal("landed", force, direction)
```

## Documentation

You can build the documentation using Xcode.
The documentation explains how to setup your Godot project,
and how to use Godot Swift.

## Generate the APIs

The APIs provided by default are using a float 64 bit architecture.
Use the `generate-api` command line tool to generate the APIs in the package:

```
swift run generate-api float-64
```

## State of the project

I want to make this my first open source project, and learn how to make one.
But I don't really know where to start 🙂.

I have been alone on this for almost a year, and happy to finaly make this public.
But I know there are lots of remaining things to do.
I tried to make this the most complete set of tools I could make, but it remains an alpha.
