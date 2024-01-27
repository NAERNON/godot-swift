# ``Godot/RandomNumberGenerator``

## Overview

You can create an instance with a given seed, and use it in every Swift function that generates randomness:

```swift
var rng = RandomNumberGenerator()
rng.seed = 25

print(Int.random(in: 3..<10, using: &rng))
// Prints a random number between 3 and 9.

print([1, 2, 3, 4].randomElement(using: &rng))
// Prints a random value inside the array.

print([1, 2, 3, 4].shuffled(using: &rng))
// Prints the array, shuffled.
```
