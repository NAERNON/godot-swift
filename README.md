# Godot Swift

<img src="https://github.com/NAERNON/godot-swift/blob/main/Sources/Godot/Godot.docc/Resources/godot-swift_logo_small@2x.png" alt="Godot Swift logo" height="180">

<br/>

<p>
<img src="https://img.shields.io/badge/Swift-5.9-orange" />
<img src="https://img.shields.io/badge/Godot-4.1-blue" />
<img src="https://img.shields.io/badge/swiftpm-compatible-brightgreen" />
</p>

Godot Swift is a set of tools enabling Swift code to be accessible from the Godot editor.

## Documentation

You can see the documentation at this [page](https://naernon.github.io/godot/documentation/godot), or build it using Xcode.
The doc explains how to setup your Godot project,
and how to use Godot Swift.

## Using Godot Swift

This package is an extension of Godot.
Therefore, you need [Godot](https://godotengine.org/download/) installed on your computer.
See the documentation to learn how to setup your Godot project to work with Swift.

### Importing the package

Godot Swift is a Swift package. It can be imported using the following line from your `Package.swift` file:

```swift
.package(url: "https://github.com/NAERNON/godot-swift", branch: "main")
```

### Custom classes

Godot Swift takes advantage of many of the new features of Swift
to provide a nice developer experience. The use of macro greatly
improves the process of exposing classes to Godot:

```swift
@Exposable public class Character: Node {
    @Emitter public struct Jumped {}

    @GodotEnum public enum Emotion: Int64 {
        case happy
        case notSoHappy
        case sad
    }

    public override _process(delta: Double) {
        godotPrint("Delta :", delta)
    }

    public func sleep(for duration: Double) {
        // ...
    }

    public var emotion: Emotion = .happy

    public var speed: Double {
        return // ...
    }
}
```

### Builtin types

Builtin Godot types are copy on write structs in Swift,
enabling a more familiar experience for Swift developers.
They also take advantage of many of the protocols Swift provides.
For example, `GodotArray` has all the functions collections have, so you can apply operations such as map or filter:

```swift
let values: GodotArray = [1, 2, 3]
let strings = values.map { GodotString(describing: $0) }
```

### Generic functions

Functions taking variant parameters are generic, and varargs use parameter packs.
Therefore calling such function doesn't require transforming
the values into variants:

```swift
let force: Double = 4
let direction: Vector2 = .forward
let object: Object = // ...
object.emitSignal("landed", force, direction)
```

## Generate the APIs

The APIs provided by default are using a float 64 bit architecture.
Use the `generate-api` command line tool to generate the APIs in the package:

```
$ swift run generate-api float-64
```

## Contributing

Godot Swift is open-source and under a [MIT license](LICENSE.md).
If you want to make a change or add a new feature, please [open an issue](https://github.com/NAERNON/godot-swift/issues) or a [pull request](https://github.com/NAERNON/godot-swift/pull/new). 
Also, feel free to [report a bug, an error or even a typo](https://github.com/NAERNON/godot-swift/issues).

## State of the project

I want to make this my first open source project, and learn how to make one.
But I don't really know where to start 🙂.

I have been alone on this for almost a year, and happy to finally make this public.
But I know there are lots of remaining things to do.
I tried to make this the most complete set of tools I could make, but it remains an alpha.
