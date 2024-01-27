# Math

Use math functions provided by Godot.

## Overview

Godot provides several math and trigonometry functions.

Many of the following functions are designed to work with `Double`.
Generic floating-point alternatives are also available,
but are only a conversion on top of their base version.

For example:

```swift
let a: Float = 3
cos(a) // is equivalent to Float(cos(Double(a)))
```

### Applying functions

The majority of the following functions have to be applied to the values.
Also, many offer the possibility to create a new value,
or directly modify the value itself.
For example, a lerp can be performed one of the two following ways:

```swift
var value: Double = 4
let newValue = value.lerp(to: 10, weight: 0.7)

// OR

value.formLerp(to: 10, weight: 0.7)
```

## Topics

### Approximate equality (on floating-point types)

- ``Swift/BinaryFloatingPoint/isApproximatelyEqual(to:)``
- ``Swift/BinaryFloatingPoint/isApproximatelyEqual(to:tolerance:)``
- ``Swift/BinaryFloatingPoint/isApproximatelyZero``

### Lerp (on floating-point types)

- ``Swift/BinaryFloatingPoint/lerp(to:weight:)``
- ``Swift/BinaryFloatingPoint/formLerp(to:weight:)``
- ``Swift/BinaryFloatingPoint/lerpAngle(to:weight:)``
- ``Swift/BinaryFloatingPoint/formLerpAngle(to:weight:)``
- ``Swift/BinaryFloatingPoint/inverseLerp(to:weight:)``

### Cubic interpolation (on floating-point types)

- ``Swift/BinaryFloatingPoint/cubicInterpolation(to:pre:post:weight:)``
- ``Swift/BinaryFloatingPoint/formCubicInterpolation(to:pre:post:weight:)``
- ``Swift/BinaryFloatingPoint/cubicInterpolationAngle(to:pre:post:weight:)``
- ``Swift/BinaryFloatingPoint/formCubicInterpolationAngle(to:pre:post:weight:)``
- ``Swift/BinaryFloatingPoint/cubicInterpolationInTime(to:pre:post:weight:toT:preT:postT:)``
- ``Swift/BinaryFloatingPoint/formCubicInterpolationInTime(to:pre:post:weight:toT:preT:postT:)``
- ``Swift/BinaryFloatingPoint/cubicInterpolationAngleInTime(to:pre:post:weight:toT:preT:postT:)``
- ``Swift/BinaryFloatingPoint/formCubicInterpolationAngleInTime(to:pre:post:weight:toT:preT:postT:)``

### Bezier curve (on floating-point types)

- ``Swift/BinaryFloatingPoint/bezierDerivative(to:control1:control2:t:)``
- ``Swift/BinaryFloatingPoint/formBezierDerivative(to:control1:control2:t:)``
- ``Swift/BinaryFloatingPoint/bezierInterpolation(to:control1:control2:t:)``
- ``Swift/BinaryFloatingPoint/formBezierInterpolation(to:control1:control2:t:)``

### Simple interpolation (on floating-point types)

- ``Swift/BinaryFloatingPoint/smoothstep(to:weight:)``
- ``Swift/BinaryFloatingPoint/formSmoothstep(to:weight:)``
- ``Swift/BinaryFloatingPoint/remapped(iStart:iStop:oStart:oStop:)``
- ``Swift/BinaryFloatingPoint/remap(iStart:iStop:oStart:oStop:)``
- ``Swift/BinaryFloatingPoint/eased(curve:)``
- ``Swift/BinaryFloatingPoint/ease(curve:)``

### Wrapping and clamping

- ``Swift/BinaryFloatingPoint/wrapped(lowerBound:upperBound:)``
- ``Swift/BinaryFloatingPoint/wrap(lowerBound:upperBound:)``
- ``Swift/BinaryInteger/wrapped(lowerBound:upperBound:)``
- ``Swift/BinaryInteger/wrap(lowerBound:upperBound:)``
- ``Swift/BinaryFloatingPoint/clamped(lowerBound:upperBound:)``
- ``Swift/BinaryFloatingPoint/clamp(lowerBound:upperBound:)``
- ``Swift/BinaryInteger/clamped(lowerBound:upperBound:)``
- ``Swift/BinaryInteger/clamp(lowerBound:upperBound:)``
- ``Swift/BinaryFloatingPoint/pingpong(length:)``
- ``Swift/BinaryFloatingPoint/formPingpong(length:)``
- ``Swift/BinaryFloatingPoint/snapped(step:)``
- ``Swift/BinaryFloatingPoint/snap(step:)``

### Mathematical functions

- ``exp(_:)``
- ``log(_:)``
- ``Swift/BinaryFloatingPoint/signValue``
- ``Swift/BinaryFloatingPoint/moved(toward:delta:)``
- ``Swift/BinaryFloatingPoint/move(toward:delta:)``

### Trigonometry

- ``cos(_:)``
- ``cosh(_:)``
- ``sin(_:)``
- ``sinh(_:)``
- ``tan(_:)``
- ``tanh(_:)``
- ``acos(_:)``
- ``acosh(_:)``
- ``asin(_:)``
- ``asinh(_:)``
- ``atan(_:)``
- ``atanh(_:)``
- ``atan2(y:x:)``
- ``Swift/BinaryFloatingPoint/angleDifference(to:)``

### Conversions

- ``Swift/BinaryFloatingPoint/dbToLinear``
- ``Swift/BinaryFloatingPoint/linearToDB``
- ``Swift/BinaryFloatingPoint/degToRad``
- ``Swift/BinaryFloatingPoint/radToDeg``

### Random number generation

- ``RandomNumberGenerator``
