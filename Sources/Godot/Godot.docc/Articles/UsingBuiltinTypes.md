# Using builtin types

Use builtin types such as collections and math types

## Overview

All builtin types in Swift are structs with copy on write. This means that you can pass your objects around without the fear of interfering with other parts of your code.

In the following code, even if `negatives` is initialized with `positives`, the data is copied as soon as it is modified:

```swift
var positives = GodotArray()
positives.append(3)

var negatives = positives
negatives.removeAll()
negatives.append(-5)

print(positives)
// Prints "[3]"
print(negative)
// Prints "[-5]"
```

### Collections

All Godot collections conform to many Swift collection protocols, like `Sequence`, `Collection` or `BidirectionalCollection`. This enables some cool things like:

```swift
let values: GodotArray = [1, 2, 3, 4, 5]
let strings = values
    .filter { $0 > 3 }
    .map { "index " + GodotString(describing: $0) }

print(strings)
// Prints "["index 4", "index 5"]"
```

### Signals and Callables

In Swift, signals and callables are handled through the concept of emitters and receivers. An emitter emits a signal and a receiver, acting as a callable, receives the signal. See ``Emitter(signal:args:)`` and ``Receiver()`` to learn more.
