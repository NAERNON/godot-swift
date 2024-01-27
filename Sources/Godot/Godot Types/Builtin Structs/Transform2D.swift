
/// A 2×3 matrix representing a 2D transformation.
///
/// This type can represent transformations such as translation, rotation, and scaling.
/// It consists of three ``Vector2`` values: ``x``, ``y``, and the ``origin``.
///
/// ## Topics
///
/// ### Creating Transform2D
///
/// - ``init(rotation:position:)-8chxu``
/// - ``init(rotation:position:)-38uv7``
/// - ``init(rotation:position:)-8a0kz``
/// - ``init(rotation:scale:skew:position:)-2fife``
/// - ``init(rotation:scale:skew:position:)-9jyq3``
/// - ``init(rotation:scale:skew:position:)-8ec0z``
/// - ``init(x:y:origin:)``
///
/// ### Special Values
///
/// - ``identity``
/// - ``init()``
/// - ``flipX``
/// - ``flipY``
///
/// ### Geometric Properties
///
/// - ``x``
/// - ``y``
/// - ``origin``
/// - ``subscript(_:)``
///
/// - ``determinant``
/// - ``rotation``
/// - ``scale``
/// - ``skew``
/// - ``isConformal``
/// - ``isFinite``
/// - ``basisMultiplied(with:)``
/// - ``basisMultipliedInv(with:)``
///
/// ### Transformation
///
/// - ``inverted``
/// - ``affineInverted``
/// - ``orthonormalized``
/// - ``interpolation(with:weight:)``
/// - ``looking(at:)``
/// - ``rotated(by:)``
/// - ``rotatedLocal(by:)``
/// - ``scaled(by:)``
/// - ``scaledLocal(by:)``
/// - ``translated(by:)``
/// - ``translatedLocal(by:)``
public struct Transform2D {
    /// The basis matrix's X vector (column 0).
    public var x: Vector2
    
    /// The basis matrix's Y vector (column 1).
    public var y: Vector2
    
    /// The origin vector (column 2, the third column).
    ///
    /// The origin vector represents translation.
    public var origin: Vector2
    
    /// Creates the transform from 3 `Vector2` values.
    public init(x: Vector2, y: Vector2, origin: Vector2) {
        self.x = x
        self.y = y
        self.origin = origin
    }
}

extension Transform2D {
    // MARK: Constructors
    
    /// Creates a default-initialized `Transform2D` set to `identity`.
    public init() {
        self = .identity
    }
    
    internal init(
        _ xAxisX: Real, _ xAxisY: Real,
        _ yAxisX: Real, _ yAxisY: Real,
        _ originX: Real, _ originY: Real
    ) {
        self.init(
            x: Vector2(x: xAxisX, y: xAxisY),
            y: Vector2(x: yAxisX, y: yAxisY),
            origin: Vector2(x: originX, y: originY)
        )
    }
    
    /// Creates a transform from a given angle and position.
    ///
    /// - Parameters:
    ///   - rotation: The transform angle, in radians.
    ///   - position: The transform position.
    public init(rotation: Real, position: Vector2) {
        self = Self._constructor_float_vector2(rotation: rotation, position: position)
    }
    
    /// Creates a transform from a given angle and position.
    ///
    /// - Parameters:
    ///   - rotation: The transform angle, in radians.
    ///   - position: The transform position.
    public init<T>(rotation: T, position: Vector2) where T : BinaryFloatingPoint {
        self.init(rotation: Real(rotation), position: position)
    }
    
    /// Creates a transform from a given angle and position.
    ///
    /// - Parameters:
    ///   - rotation: The transform angle, in radians.
    ///   - position: The transform position.
    public init<T>(rotation: T, position: Vector2) where T : BinaryInteger {
        self.init(rotation: Real(rotation), position: position)
    }
    
    /// Creates a transform from a given angle, scale, skew and position.
    ///
    /// - Parameters:
    ///   - rotation: The transform angle, in radians.
    ///   - scale: The transform scale.
    ///   - skew: The transform skew, in radians.
    ///   - position: The transform position.
    public init(rotation: Real, scale: Vector2, skew: Real, position: Vector2) {
        self = Self._constructor_float_vector2_float_vector2(
            rotation: rotation,
            scale: scale,
            skew: skew,
            position: position
        )
    }
    
    /// Creates a transform from a given angle, scale, skew and position.
    ///
    /// - Parameters:
    ///   - rotation: The transform angle, in radians.
    ///   - scale: The transform scale.
    ///   - skew: The transform skew, in radians.
    ///   - position: The transform position.
    public init<T>(rotation: T, scale: Vector2, skew: T, position: Vector2) where T : BinaryFloatingPoint {
        self.init(
            rotation: Real(rotation),
            scale: scale,
            skew: Real(skew),
            position: position
        )
    }
    
    /// Creates a transform from a given angle, scale, skew and position.
    ///
    /// - Parameters:
    ///   - rotation: The transform angle, in radians.
    ///   - scale: The transform scale.
    ///   - skew: The transform skew, in radians.
    ///   - position: The transform position.
    public init<T>(rotation: T, scale: Vector2, skew: T, position: Vector2) where T : BinaryInteger {
        self.init(
            rotation: Real(rotation),
            scale: scale,
            skew: Real(skew),
            position: position
        )
    }
    
    // MARK: Constant
    
    /// The identity `Transform2D` with no translation, rotation or scaling applied.
    ///
    /// When applied to other data structures, `identity` performs no transformation.
    public static let identity: Transform2D = Transform2D(1, 0, 0, 1, 0, 0)
    
    /// The `Transform2D` that will flip something along the X axis.
    public static let flipX: Transform2D = Transform2D(-1, 0, 0, 1, 0, 0)
    
    /// The `Transform2D` that will flip something along the Y axis.
    public static let flipY: Transform2D = Transform2D(1, 0, 0, -1, 0, 0)
    
    // MARK: Operators
    
    /// This operator multiplies all components of the `Transform2D`,
    /// including the origin vector, which scales it uniformly.
    public static func * (lhs: Transform2D, rhs: Int) -> Transform2D {
        Self._operatorMultiply(lhs, rhs)
    }
    
    /// This operator multiplies all components of the `Transform2D`,
    /// including the origin vector, which scales it uniformly.
    public static func * (lhs: Int, rhs: Transform2D) -> Transform2D {
        rhs * lhs
    }
    
    /// This operator multiplies all components of the `Transform2D`,
    /// including the origin vector, which scales it uniformly.
    public static func * (lhs: Transform2D, rhs: Real) -> Transform2D {
        Self._operatorMultiply(lhs, rhs)
    }
    
    /// This operator multiplies all components of the `Transform2D`,
    /// including the origin vector, which scales it uniformly.
    public static func * (lhs: Real, rhs: Transform2D) -> Transform2D {
        rhs * lhs
    }
    
    /// Transforms (multiplies) the `Vector2` by the 2D transformation matrix.
    public static func * (lhs: Transform2D, rhs: Vector2) -> Vector2 {
        Self._operatorMultiply(lhs, rhs)
    }
    
    /// Transforms (multiplies) the `Rect2` by the 2D transformation matrix.
    public static func * (lhs: Transform2D, rhs: Rect2) -> Rect2 {
        Self._operatorMultiply(lhs, rhs)
    }
    
    /// Composes the two transformation matrices by multiplying them together.
    ///
    /// This has the effect of transforming the second transform
    /// (the child) by the first transform (the parent).
    public static func * (lhs: Transform2D, rhs: Transform2D) -> Transform2D {
        Self._operatorMultiply(lhs, rhs)
    }
    
    /// Transforms (multiplies) each element of the `PackedVector2Array`
    /// by the 2D transformation matrix.
    public static func * (lhs: Transform2D, rhs: PackedVector2Array) -> PackedVector2Array {
        Self._operatorMultiply(lhs, rhs)
    }
    
    // MARK: Methods & variables
    
    /// The inverse of the transform.
    ///
    /// This property assumes that the transformation basis is
    /// orthonormal (i.e. rotation/reflection is fine, scaling/skew is not).
    /// Use ``affineInverted`` for non-orthonormal transforms (e.g. with scaling).
    public var inverted: Transform2D {
        _inverse()
    }
    
    /// The inverse of the transform.
    ///
    /// This property assumes that the basis is invertible
    /// (must have non-zero determinant).
    public var affineInverted: Transform2D {
        _affineInverse()
    }
    
    /// The transform's rotation (in radians).
    public var rotation: Real {
        _rotation()
    }
    
    /// The scale.
    public var scale: Vector2 {
        _scale()
    }
    
    /// A Boolean value indicating whether the transform's basis is conformal.
    ///
    /// A `Transform2D` is conformal if it preserves angles and distance ratios,
    /// and may only be composed of rotation and uniform scale.
    ///
    /// This property is `false` if the transform's basis has non-uniform
    /// scale or shear/skew. This can be used to validate if the transform
    /// is non-distorted, which is important for physics and other use cases.
    public var isConformal: Bool {
        _isConformal()
    }
    
    /// The transform's skew (in radians).
    public var skew: Real {
        _skew()
    }
    
    /// The transform with the basis orthogonal (90 degrees),
    /// and normalized axis vectors (scale of 1 or -1).
    public var orthonormalized: Transform2D {
        _orthonormalized()
    }
    
    /// Returns the transform rotated by the given angle.
    ///
    /// This method is an optimized version of multiplying the
    /// given transform `X` with a corresponding
    /// rotation transform `R` from the left, i.e., `R * X`.
    ///
    /// This can be seen as transforming with respect to the global/parent frame.
    ///
    /// - Parameter angle: The rotation angle, in radians.
    public func rotated(by angle: Real) -> Transform2D {
        _rotated(angle: angle)
    }
    
    /// Returns the transform rotated by the given angle.
    ///
    /// This method is an optimized version of multiplying the
    /// given transform `X` with a corresponding
    /// rotation transform `R` from the left, i.e., `R * X`.
    ///
    /// This can be seen as transforming with respect to the local frame.
    ///
    /// - Parameter angle: The rotation angle, in radians.
    public func rotatedLocal(by angle: Real) -> Transform2D {
        _rotatedLocal(angle: angle)
    }
    
    /// Returns the transform scaled by the given scale factor.
    ///
    /// This method is an optimized version of multiplying the
    /// given transform `X` with a corresponding
    /// scaling transform `S` from the left, i.e., `S * X`.
    ///
    /// This can be seen as transforming with respect to the global/parent frame.
    public func scaled(by scale: Vector2) -> Transform2D {
        _scaled(scale: scale)
    }
    
    /// Returns the transform scaled by the given scale factor.
    ///
    /// This method is an optimized version of multiplying the
    /// given transform `X` with a corresponding
    /// scaling transform `S` from the left, i.e., `S * X`.
    ///
    /// This can be seen as transforming with respect to the local frame.
    public func scaledLocal(by scale: Vector2) -> Transform2D {
        _scaledLocal(scale: scale)
    }
    
    /// Returns the transform translated by the given offset.
    ///
    /// This method is an optimized version of multiplying the
    /// given transform `X` with a corresponding
    /// translation transform `T` from the left, i.e., `T * X`.
    ///
    /// This can be seen as transforming with respect to the global/parent frame.
    public func translated(by offset: Vector2) -> Transform2D {
        _translated(offset: offset)
    }
    
    /// Returns the transform translated by the given offset.
    ///
    /// This method is an optimized version of multiplying the
    /// given transform `X` with a corresponding
    /// translation transform `T` from the left, i.e., `T * X`.
    ///
    /// This can be seen as transforming with respect to the local frame.
    public func translatedLocal(by offset: Vector2) -> Transform2D {
        _translatedLocal(offset: offset)
    }
    
    /// The determinant of the basis matrix.
    ///
    /// If the basis is uniformly scaled, then its determinant
    /// equals the square of the scale factor.
    ///
    /// A negative determinant means the basis was flipped,
    /// so one part of the scale is negative. A zero determinant
    /// means the basis isn't invertible, and is usually considered invalid.
    public var determinant: Real {
        _determinant()
    }
    
    /// Returns a vector transformed (multiplied) by the basis matrix.
    ///
    /// This method does not account for translation (the origin vector).
    public func basisMultiplied(with v: Vector2) -> Vector2 {
        _basisXform(v)
    }
    
    /// Returns a vector transformed (multiplied) by the inverse basis matrix.
    ///
    /// This method assumes that the basis is orthonormal
    /// (i.e. rotation/reflection is fine, scaling/skew is not).
    ///
    /// This method does not account for translation (the origin vector).
    ///
    /// `transform.basisMultipliedInv(with: vector)` is equivalent to
    /// `transform.inverted.basisMultiplied(with: vector)`.
    /// See ``inverted``.
    ///
    /// For non-orthonormal transforms (e.g. with scaling)
    /// `transform.affineInverted.basisMultiplied(with: vector)`
    /// can be used instead. See ``affineInverted``.
    public func basisMultipliedInv(with v: Vector2) -> Vector2 {
        _basisXformInv(v)
    }
    
    /// Returns a transform interpolated between the transform
    /// and another by a given weight.
    ///
    /// - Parameters:
    ///   - other: The transform to interpolate with.
    ///   - weight: The interpolation weight, on the range of `0.0` to `1.0`.
    public func interpolation(with other: Transform2D, weight: Real) -> Transform2D {
        _interpolateWith(xform: other, weight: weight)
    }
    
    /// Returns `true` if the `Transform2D` is approximately equal to another one.
    public func isApproximatelyEqual(to other: Transform2D) -> Bool {
        _isEqualApprox(xform: other)
    }
    
    /// A Boolean value indicating whether the transform is finite.
    public var isFinite: Bool {
        _isFinite()
    }
    
    /// Returns the transform rotated such that the
    /// rotated X-axis points towards the target position.
    ///
    /// Operations take place in global space.
    public func looking(at target: Vector2 = Vector2(x: 0, y: 0)) -> Transform2D {
        _lookingAt(target: target)
    }
    
    /// Accesses the column of the `Transform2D` at the given index.
    ///
    /// Indices are in the following order: `x`, `y`, `origin`.
    public subscript(columnIndex: Int) -> Vector2 {
        get {
            switch columnIndex {
            case 0: x
            case 1: y
            case 2: origin
            default: fatalError("Attempting to retrieve column \(columnIndex) from transform 2D.")
            }
        }
        set(newValue) {
            switch columnIndex {
            case 0: x = newValue
            case 1: y = newValue
            case 2: origin = newValue
            default: fatalError("Attempting to set column \(columnIndex) from transform 2D.")
            }
        }
    }
}

extension Transform2D: Equatable, Hashable {}

extension Transform2D: Codable {
    public func encode(to encoder: Encoder) throws {
        var unkeyedContainer = encoder.unkeyedContainer()
        try unkeyedContainer.encode(x)
        try unkeyedContainer.encode(y)
        try unkeyedContainer.encode(origin)
    }
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        let xAxis = try container.decode(Vector2.self)
        let yAxis = try container.decode(Vector2.self)
        let origin = try container.decode(Vector2.self)
        self.init(x: xAxis, y: yAxis, origin: origin)
    }
}

extension Transform2D: CustomStringConvertible {
    public var description: String {
        "(origin: \(origin), x: \(x), y: \(y))"
    }
}

extension Transform2D: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Transform2D(origin: \(origin), x: \(x), y: \(y))"
    }
}
