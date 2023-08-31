# Generating randomness

Generate random numbers using the Godot RandomNumberGenerator class.

## Overview

In Swift, many types can generate random values.
For example, the following code presents several ways to use random number generators:

```swift
print(Int.random(in: 3..<10))
// Prints a random number between 3 and 9.

print([1, 2, 3, 4].randomElement())
// Prints a random value inside the array.

print([1, 2, 3, 4].shuffled())
// Prints the array, shuffled.
```

By default, Swift uses `SystemRandomNumberGenerator` as the source of random data. But all Swift functions that uses random data can also use a specific `RandomNumberGenerator` (the Swift protocol, not the Godot class).
And because the Godot ``RandomNumberGenerator`` class conforms to this protocol, it can be used as a source of random data as well.

For example, in the following code, a Godot random number generator is created with a seed:

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
