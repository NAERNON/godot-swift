
/// A 2×3 matrix representing a 2D transformation.
///
/// This type can represent transformations such as translation, rotation, and scaling.
/// It consists of three ``Vector2`` values: ``x``, ``y``, and the ``origin``.
///
/// ## Topics
///
/// ### Creating Transform2D
///
/// - ``Transform2D/init(x:y:origin:)``
/// - ``Transform2D/init(rotation:position:)``
/// - ``Transform2D/init(rotation:scale:skew:position:)``
///
/// ### Special Values
///
/// - ``Transform2D/identity``
/// - ``Transform2D/init()``
/// - ``Transform2D/flipX``
/// - ``Transform2D/flipY``
///
/// ### Geometric Properties
///
/// - ``Transform2D/x``
/// - ``Transform2D/y``
/// - ``Transform2D/origin``
/// - ``Transform2D/subscript(_:)``
/// - ``Transform2D/determinant``
/// - ``Transform2D/isConformal``
/// - ``Transform2D/isFinite``
///
/// ### Inversion
///
/// - ``Transform2D/inverse()``
/// - ``Transform2D/invert()``
/// - ``Transform2D/affineInverse()``
/// - ``Transform2D/affineInvert()``
///
/// ### Rotation
///
/// - ``Transform2D/rotation``
/// - ``Transform2D/skew``
/// - ``Transform2D/rotated(by:)``
/// - ``Transform2D/rotate(by:)``
/// - ``Transform2D/rotatedLocal(by:)``
/// - ``Transform2D/rotateLocal(by:)``
///
/// ### Translation
///
/// - ``Transform2D/translated(by:)``
/// - ``Transform2D/translate(by:)``
/// - ``Transform2D/translatedLocal(by:)``
/// - ``Transform2D/translateLocal(by:)``
/// - ``Transform2D/untranslated()``
/// - ``Transform2D/untranslate()``
///
/// ### Scaling
///
/// - ``Transform2D/scale``
/// - ``Transform2D/scaled(by:)``
/// - ``Transform2D/scale(by:)``
/// - ``Transform2D/scaledLocal(by:)``
/// - ``Transform2D/scaleLocal(by:)``
/// - ``Transform2D/scaledBasis(by:)``
/// - ``Transform2D/scaleBasis(by:)``
///
/// ### Transformation
///
/// - ``Transform2D/looking(at:)``
/// - ``Transform2D/look(at:)``
/// - ``Transform2D/multipliedBasis(with:)``
/// - ``Transform2D/multipliedBasisInv(with:)``
/// - ``Transform2D/orthonormalized()``
/// - ``Transform2D/orthonormalize()``
///
/// ### Interpolation
///
/// - ``Transform2D/interpolation(with:weight:)``
/// - ``Transform2D/formInterpolation(with:weight:)``
///
/// ### Approximate Equality
///
/// - ``Transform2D/isApproximatelyEqual(to:)``
public struct Transform2D: Equatable, Hashable {
    /// The basis matrix's X vector (column 0).
    public var x: Vector2
    
    /// The basis matrix's Y vector (column 1).
    public var y: Vector2
    
    /// The origin vector (column 2).
    ///
    /// The origin vector represents translation.
    public var origin: Vector2
    
    /// Creates a new transform from the given `x`, `y` and `origin` vectors.
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
        _ xAxisX: FloatingPointType, _ xAxisY: FloatingPointType,
        _ yAxisX: FloatingPointType, _ yAxisY: FloatingPointType,
        _ originX: FloatingPointType, _ originY: FloatingPointType
    ) {
        self.x = Vector2(x: xAxisX, y: xAxisY)
        self.y = Vector2(x: yAxisX, y: yAxisY)
        self.origin = Vector2(x: originX, y: originY)
    }
    
    /// Creates new a transform from the given angle and position.
    ///
    /// - Parameters:
    ///   - rotation: The transform angle, in radians.
    ///   - position: The transform position.
    public init(rotation: FloatingPointType, position: Vector2) {
        let cr = FloatingPointType.cos(rotation)
        let sr = FloatingPointType.sin(rotation)
        self.x = Vector2(x: cr, y: sr)
        self.y = Vector2(x: -sr, y: cr)
        self.origin = position
    }
    
    /// Creates new a transform from the given angle, scale, skew and position.
    ///
    /// - Parameters:
    ///   - rotation: The transform angle, in radians.
    ///   - scale: The transform scale.
    ///   - skew: The transform skew, in radians.
    ///   - position: The transform position.
    public init(
        rotation: FloatingPointType,
        scale: Vector2,
        skew: FloatingPointType,
        position: Vector2
    ) {
        self.x = Vector2(
            x: FloatingPointType.cos(rotation) * scale.x,
            y: FloatingPointType.sin(rotation) * scale.x
        )
        self.y = Vector2(
            x: -FloatingPointType.sin(rotation + skew) * scale.y,
            y: FloatingPointType.cos(rotation + skew) * scale.y
        )
        self.origin = position
    }
    
    // MARK: Constant
    
    /// The identity 2D transform with no translation, rotation or scaling applied.
    ///
    /// When applied to other data structures, `identity` performs no transformation.
    public static var identity: Transform2D {
        Transform2D(1, 0, 0, 1, 0, 0)
    }
    
    /// The 2D transform that will flip something along the X axis.
    public static var flipX: Transform2D {
        Transform2D(-1, 0, 0, 1, 0, 0)
    }
    
    /// The 2D transform that will flip something along the Y axis.
    public static var flipY: Transform2D {
        Transform2D(1, 0, 0, -1, 0, 0)
    }
    
    // MARK: Operators
    
    @inline(__always)
    private func tDotX(_ vector: Vector2) -> FloatingPointType {
        x.x * vector.x + y.x * vector.y
    }
    
    @inline(__always)
    private func tDotY(_ vector: Vector2) -> FloatingPointType {
        x.y * vector.x + y.y * vector.y
    }
    
    /// The multiplication of all components of a 2D transform and a floating-point value.
    ///
    /// This includes the origin vector, which scales uniformly.
    public static func * (lhs: Transform2D, rhs: FloatingPointType) -> Transform2D {
        var copy = lhs
        copy *= rhs
        return copy
    }
    
    /// Updates the 2D transform with the multiplication of all of its components
    /// and a floating-point value.
    ///
    /// This includes the origin vector, which scales uniformly.
    public static func *= (lhs: inout Transform2D, rhs: FloatingPointType) {
        lhs.x *= rhs
        lhs.y *= rhs
        lhs.origin *= rhs
    }
    
    /// The opposite of a 2D transform.
    ///
    /// This is the same as multiplying by `-1`.
    /// This includes the origin vector, which scales uniformly.
    public static prefix func - (lhs: Transform2D) -> Transform2D {
        var copy = lhs
        copy.x = -lhs.x
        copy.y = -lhs.y
        copy.origin = -lhs.origin
        return copy
    }
    
    /// The multiplication of all components of a 2D transform and a floating-point value.
    ///
    /// This includes the origin vector, which scales uniformly.
    public static func * (lhs: FloatingPointType, rhs: Transform2D) -> Transform2D {
        rhs * lhs
    }
    
    /// The transformation of a 2D vector by a transformation matrix.
    public static func * (lhs: Transform2D, rhs: Vector2) -> Vector2 {
        Vector2(lhs.tDotX(rhs), lhs.tDotY(rhs)) + lhs.origin
    }
    
    /// The inverse transformation of a 2D vector by a transformation matrix.
    ///
    /// This operator assumes that the transformation basis is
    /// orthonormal (i.e. rotation/reflection is fine, scaling/skew is not).
    ///
    /// `vector * transform` is equivalent to `transform.inverse() * vector`.
    /// See `Transform2D`'s ``Transform2D/inverse()``.
    ///
    /// For transforming by inverse of an affine transformation (e.g. with scaling)
    /// `transform.affineInverse() * vector` can be used instead.
    /// See `Transform2D`'s ``Transform2D/affineInverse()``.
    public static func * (lhs: Vector2, rhs: Transform2D) -> Vector2 {
        let v = lhs - rhs.origin
        
        return Vector2(rhs.x.dot(v), rhs.y.dot(v))
    }
    
    /// Updates the 2D vector with the inverse transformation
    /// of the 2D vector by a transformation matrix.
    ///
    /// This operator assumes that the transformation basis is
    /// orthonormal (i.e. rotation/reflection is fine, scaling/skew is not).
    ///
    /// `vector * transform` is equivalent to `transform.inverse() * vector`.
    /// See `Transform2D`'s ``Transform2D/inverse()``.
    ///
    /// For transforming by inverse of an affine transformation (e.g. with scaling)
    /// `transform.affineInverse() * vector` can be used instead.
    /// See `Transform2D`'s ``Transform2D/affineInverse()``.
    public static func *= (lhs: inout Vector2, rhs: Transform2D) {
        lhs = lhs * rhs
    }
    
    /// The transformation of a 2D rectangle by a transformation matrix.
    public static func * (lhs: Transform2D, rhs: Rect2) -> Rect2 {
        let x = lhs.x * rhs.size.x
        let y = lhs.y * rhs.size.y
        let pos = lhs * rhs.position
        
        var newRect = Rect2(position: pos, size: Size2())
        newRect.expand(to: pos + x)
        newRect.expand(to: pos + y)
        newRect.expand(to: pos + x + y)
        return newRect
    }
    
    /// The inverse transformation of a 2D rectangle by a transformation matrix.
    ///
    /// This operator assumes that the transformation basis is orthonormal (i.e. rotation/reflection is fine, scaling/skew is not).
    ///
    /// `rect * transform` is equivalent to `transform.inverse() * rect`.
    /// See `Transform2D`'s ``Transform2D/inverse()``.
    ///
    /// For transforming by inverse of an affine transformation
    /// (e.g. with scaling) `transform.affineInverse() * rect`
    /// can be used instead.
    /// See `Transform2D`'s ``Transform2D/affineInverse()``.
    public static func * (lhs: Rect2, rhs: Transform2D) -> Rect2 {
        let end0 = lhs.position * rhs
        let end1 = Vector2(lhs.position.x, lhs.position.y + lhs.size.y) * rhs
        let end2 = Vector2(lhs.position.x + lhs.size.x, lhs.position.y + lhs.size.y) * rhs
        let end3 = Vector2(lhs.position.x + lhs.size.x, lhs.position.y) * rhs
        
        var newRect = Rect2(position: end0, size: Size2())
        newRect.expand(to: end1)
        newRect.expand(to: end2)
        newRect.expand(to: end3)
        return newRect
    }
    
    /// Updates the 2D rectangle with the inverse transformation of
    /// the 2D rectangle by a transformation matrix.
    ///
    /// This operator assumes that the transformation basis is orthonormal (i.e. rotation/reflection is fine, scaling/skew is not).
    ///
    /// `rect * transform` is equivalent to `transform.inverse() * rect`.
    /// See `Transform2D`'s ``Transform2D/inverse()``.
    ///
    /// For transforming by inverse of an affine transformation
    /// (e.g. with scaling) `transform.affineInverse() * rect`
    /// can be used instead.
    /// See `Transform2D`'s ``Transform2D/affineInverse()``.
    public static func *= (lhs: inout Rect2, rhs: Transform2D) {
        lhs = lhs * rhs
    }
    
    /// The composition of two transformation matrices.
    ///
    /// This has the effect of transforming the second transform
    /// (the child) by the first transform (the parent).
    public static func * (lhs: Transform2D, rhs: Transform2D) -> Transform2D {
        var copy = lhs
        copy *= rhs
        return copy
    }
    
    /// Updates the left hand side by the composition of two transformation matrices.
    ///
    /// This has the effect of transforming the second transform
    /// (the child) by the first transform (the parent).
    public static func *= (lhs: inout Transform2D, rhs: Transform2D) {
        lhs.origin = lhs * rhs.origin
        
        let x0 = lhs.tDotX(rhs.x)
        let x1 = lhs.tDotY(rhs.x)
        let y0 = lhs.tDotX(rhs.y)
        let y1 = lhs.tDotY(rhs.y)
        
        lhs.x.x = x0
        lhs.x.y = x1
        lhs.y.x = y0
        lhs.y.y = y1
    }
    
    /// Transforms (multiplies) each element of the `PackedVector2Array`
    /// by the 2D transformation matrix.
//    public static func * (lhs: Transform2D, rhs: PackedVector2Array) -> PackedVector2Array {
//        Self._operatorMultiply(lhs, rhs)
//    }
    
    // MARK: Methods & variables
    
    /// Returns the inverse of this transform.
    ///
    /// This function assumes that the transformation basis is
    /// orthonormal (i.e. rotation/reflection is fine, scaling/skew is not).
    /// Use ``affineInverse()`` for non-orthonormal transforms (e.g. with scaling).
    public func inverse() -> Transform2D {
        var copy = self
        copy.invert()
        return copy
    }
    
    /// Inverts this transform.
    ///
    /// This function assumes that the transformation basis is
    /// orthonormal (i.e. rotation/reflection is fine, scaling/skew is not).
    /// Use ``affineInverse()`` for non-orthonormal transforms (e.g. with scaling).
    public mutating func invert() {
        swap(&x.y, &y.x)
        origin = multipliedBasis(with: -origin)
    }
    
    /// Returns the inverse of this transform.
    ///
    /// This property assumes that the basis is invertible
    /// (must have non-zero determinant).
    public func affineInverse() -> Transform2D {
        var copy = self
        copy.affineInvert()
        return copy
    }
    
    /// Inverts this transform.
    ///
    /// This property assumes that the basis is invertible
    /// (must have non-zero determinant).
    public mutating func affineInvert() {
        let det = determinant
#if MATH_CHECKS
        if det == 0 {
            godotPrintError("The determinant must not be 0.")
            return
        }
#endif
        let idet = 1 / det
        
        swap(&x.x, &y.y)
        x *= Vector2(idet, -idet)
        y *= Vector2(-idet, idet)
        
        origin = multipliedBasis(with: -origin)
    }
    
    /// The transform's rotation (in radians).
    public var rotation: FloatingPointType {
        get {
            FloatingPointType.atan2(y: x.y, x: x.x)
        }
        set(newValue) {
            let scale = self.scale
            let cr = FloatingPointType.cos(newValue)
            let sr = FloatingPointType.sin(newValue)
            self.x.x = cr
            self.x.y = sr
            self.y.x = -sr
            self.y.y = cr
            self.scale = scale
        }
    }
    
    /// The transformation's scale.
    public var scale: Size2 {
        get {
            let detSign = determinant._sign
            return Size2(x.magnitude, detSign * y.magnitude)
        }
        set(newValue) {
            x.normalize()
            y.normalize()
            x *= newValue.x
            y *= newValue.y
        }
    }
    
    /// The transform's skew (in radians).
    public var skew: FloatingPointType {
        get {
            let det = determinant
            return FloatingPointType.acos(x.normalized().dot(det._sign * y.normalized())) - FloatingPointType.pi * 0.5
        }
        set(newValue) {
            let det = determinant
            y = det._sign * x.rotated(by: FloatingPointType.pi * 0.5 + newValue).normalized() * y.magnitude
        }
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
        // Non-flipped case.
        if x.x.isApproximatelyEqual(to: y.y) && x.y.isApproximatelyEqual(to: -y.x) {
            return true
        }
        // Flipped case.
        if x.x.isApproximatelyEqual(to: y.y) && x.y.isApproximatelyEqual(to: y.x) {
            return true
        }
        return false
    }
    
    /// Returns the orthonormalized transform.
    ///
    /// The transform with the basis orthogonal (90 degrees),
    /// and normalized axis vectors (scale of `1` or `-1`).
    public func orthonormalized() -> Transform2D {
        var copy = self
        copy.orthonormalize()
        return copy
    }
    
    /// Orthonormalizes this transform.
    ///
    /// This function modifies the transform with the basis orthogonal (90 degrees),
    /// and normalized axis vectors (scale of `1` or `-1`).
    public mutating func orthonormalize() {
        // Gram-Schmidt Process

        var x = x
        var y = y

        x.normalize()
        y = y - x * x.dot(y)
        y.normalize()

        self.x = x
        self.y = y
    }
    
    /// Returns this transform rotated by the given angle.
    ///
    /// This is identical to multiplying the
    /// given transform `X` with a corresponding
    /// rotation transform `R` from the left, i.e., `R * X`.
    ///
    /// This can be seen as transforming with respect to the global/parent frame.
    ///
    /// - Parameter angle: The rotation angle, in radians.
    public func rotated(by angle: FloatingPointType) -> Transform2D {
        // Equivalent to left multiplication
        Transform2D(rotation: angle, position: Vector2()) * self
    }
    
    /// Rotates this transform by the given angle.
    ///
    /// This is identical to multiplying the
    /// given transform `X` with a corresponding
    /// rotation transform `R` from the left, i.e., `R * X`.
    ///
    /// This can be seen as transforming with respect to the global/parent frame.
    ///
    /// - Parameter angle: The rotation angle, in radians.
    public mutating func rotate(by angle: FloatingPointType) {
        self = self.rotated(by: angle)
    }
    
    /// Returns this transform rotated by the given angle.
    ///
    /// This is identical to multiplying the
    /// given transform `X` with a corresponding
    /// rotation transform `R` from the right, i.e., `X * R`.
    ///
    /// This can be seen as transforming with respect to the local frame.
    ///
    /// - Parameter angle: The rotation angle, in radians.
    public func rotatedLocal(by angle: FloatingPointType) -> Transform2D {
        // Equivalent to right multiplication
        self * Transform2D(rotation: angle, position: Vector2()) // Could be optimized, because origin transform can be skipped.
    }
    
    /// Rotates this transform by the given angle.
    ///
    /// This is identical to multiplying the
    /// given transform `X` with a corresponding
    /// rotation transform `R` from the right, i.e., `X * R`.
    ///
    /// This can be seen as transforming with respect to the local frame.
    ///
    /// - Parameter angle: The rotation angle, in radians.
    public mutating func rotateLocal(by angle: FloatingPointType) {
        self = self.rotatedLocal(by: angle)
    }
    
    /// Returns this transform scaled by the given scale factor.
    ///
    /// This method is an optimized version of multiplying the
    /// given transform `X` with a corresponding
    /// scaling transform `S` from the left, i.e., `S * X`.
    ///
    /// This can be seen as transforming with respect to the global/parent frame.
    public func scaled(by scale: Size2) -> Transform2D {
        var copy = self
        copy = copy.scaledBasis(by: scale)
        copy.origin *= scale
        return copy
    }
    
    /// Scales this transform by the given scale factor.
    ///
    /// This method is an optimized version of multiplying the
    /// given transform `X` with a corresponding
    /// scaling transform `S` from the left, i.e., `S * X`.
    ///
    /// This can be seen as transforming with respect to the global/parent frame.
    public mutating func scale(by scale: Size2) {
        self = self.scaled(by: scale)
    }
    
    /// Returns this transform scaled by the given scale factor.
    ///
    /// This method is an optimized version of multiplying the
    /// given transform `X` with a corresponding
    /// scaling transform `S` from the left, i.e., `S * X`.
    ///
    /// This can be seen as transforming with respect to the local frame.
    public func scaledLocal(by scale: Size2) -> Transform2D {
        // Equivalent to right multiplication
        Transform2D(x: x * scale.x, y: y * scale.y, origin: origin)
    }
    
    /// Scales this transform by the given scale factor.
    ///
    /// This method is an optimized version of multiplying the
    /// given transform `X` with a corresponding
    /// scaling transform `S` from the left, i.e., `S * X`.
    ///
    /// This can be seen as transforming with respect to the local frame.
    public mutating func scaleLocal(by scale: Size2) {
        self = self.scaledLocal(by: scale)
    }
    
    /// Returns this transform translated by the given offset.
    ///
    /// This method is an optimized version of multiplying the
    /// given transform `X` with a corresponding
    /// translation transform `T` from the left, i.e., `T * X`.
    ///
    /// This can be seen as transforming with respect to the global/parent frame.
    public func translated(by offset: Vector2) -> Transform2D {
        // Equivalent to left multiplication
        Transform2D(x: x, y: y, origin: origin + offset)
    }
    
    /// Translates this transform by the given offset.
    ///
    /// This method is an optimized version of multiplying the
    /// given transform `X` with a corresponding
    /// translation transform `T` from the left, i.e., `T * X`.
    ///
    /// This can be seen as transforming with respect to the global/parent frame.
    public mutating func translate(by offset: Vector2) {
        self = self.translated(by: offset)
    }
    
    /// Returns this transform with an origin set to `(0, 0)`.
    public func untranslated() -> Transform2D {
        var copy = self
        copy.origin = Vector2()
        return copy
    }
    
    /// Replaces this transform's origin by `(0, 0)`.
    public mutating func untranslate() {
        self = self.untranslated()
    }
    
    /// Returns this transform translated by the given offset.
    ///
    /// This method is an optimized version of multiplying the
    /// given transform `X` with a corresponding
    /// translation transform `T` from the left, i.e., `T * X`.
    ///
    /// This can be seen as transforming with respect to the local frame.
    public func translatedLocal(by offset: Vector2) -> Transform2D {
        // Equivalent to right multiplication
        Transform2D(x: x, y: y, origin: origin + multipliedBasis(with: offset))
    }
    
    /// Translates this transform by the given offset.
    ///
    /// This method is an optimized version of multiplying the
    /// given transform `X` with a corresponding
    /// translation transform `T` from the left, i.e., `T * X`.
    ///
    /// This can be seen as transforming with respect to the local frame.
    public mutating func translateLocal(by offset: Vector2) {
        self = self.translatedLocal(by: offset)
    }
    
    /// The determinant of the basis matrix.
    ///
    /// If the basis is uniformly scaled, then its determinant
    /// equals the square of the scale factor.
    ///
    /// A negative determinant means the basis was flipped,
    /// so one part of the scale is negative. A zero determinant
    /// means the basis isn't invertible, and is usually considered invalid.
    public var determinant: FloatingPointType {
        x.x * y.y - x.y * y.x
    }
    
    /// Returns a vector transformed (multiplied) by the basis matrix.
    ///
    /// This method does not account for translation (the origin vector).
    public func multipliedBasis(with vector: Vector2) -> Vector2 {
        Vector2(x: tDotX(vector), y: tDotY(vector))
    }
    
    /// Returns a vector transformed (multiplied) by the inverse basis matrix.
    ///
    /// This method assumes that the basis is orthonormal
    /// (i.e. rotation/reflection is fine, scaling/skew is not).
    ///
    /// This method does not account for translation (the origin vector).
    ///
    /// `transform.multipliedBasisInv(with: vector)` is equivalent to
    /// `transform.inverse().multipliedBasis(with: vector)`.
    /// See ``inverted``.
    ///
    /// For non-orthonormal transforms (e.g. with scaling)
    /// `transform.affineInverted.basisMultiplied(with: vector)`
    /// can be used instead. See ``affineInverted``.
    public func multipliedBasisInv(with vector: Vector2) -> Vector2 {
        Vector2(x: x.dot(vector), y: y.dot(vector))
    }
    
    public func scaledBasis(by scale: Size2) -> Transform2D {
        var copy = self
        copy.scaleBasis(by: scale)
        return copy
    }
    
    public mutating func scaleBasis(by scale: Size2) {
        x.x *= scale.x
        x.y *= scale.y
        y.x *= scale.x
        y.y *= scale.y
    }
    
    /// Returns a transform interpolated between the transform
    /// and another one by a given weight.
    ///
    /// - Parameters:
    ///   - other: The transform to interpolate with.
    ///   - weight: The interpolation weight, on the range of `0.0` to `1.0`.
    public func interpolation(
        with other: Transform2D,
        weight: FloatingPointType
    ) -> Transform2D {
        Transform2D(
            rotation: self.rotation.lerpAngle(to: other.rotation, weight: weight),
            scale: self.scale.lerp(to: other.scale, weight: weight),
            skew: self.skew.lerp(to: other.skew, weight: weight),
            position: self.origin.lerp(to: other.origin, weight: weight)
        )
    }
    
    /// Replaces this transform with the interpolation between this transform
    /// and another one by a given weight.
    ///
    /// - Parameters:
    ///   - other: The transform to interpolate with.
    ///   - weight: The interpolation weight, on the range of `0.0` to `1.0`.
    public mutating func formInterpolation(
        with other: Transform2D,
        weight: FloatingPointType
    ) {
        self = self.interpolation(with: other, weight: weight)
    }
    
    /// Returns `true` if this transform is approximately equal to another one.
    public func isApproximatelyEqual(to other: Transform2D) -> Bool {
        x.isApproximatelyEqual(to: other.x) &&
        y.isApproximatelyEqual(to: other.y) &&
        origin.isApproximatelyEqual(to: other.origin)
    }
    
    /// A Boolean value indicating whether the transform is finite.
    public var isFinite: Bool {
        x.isFinite && y.isFinite && origin.isFinite
    }
    
    /// Returns this transform rotated such that the
    /// rotated X-axis points towards the target position.
    ///
    /// Operations take place in global space.
    public func looking(at target: Vector2 = .zero) -> Transform2D {
        var returnTrans = Transform2D(rotation: rotation, position: origin)
        let targetPosition = affineInverse() * target
        returnTrans.rotation = returnTrans.rotation + (targetPosition * scale).angle
        return returnTrans
    }
    
    /// Rotates this transform such that the
    /// rotated X-axis points towards the target position.
    ///
    /// Operations take place in global space.
    public mutating func look(at target: Vector2 = .zero) {
        self = self.looking(at: target)
    }
    
    /// Accesses the column of the 2D transform at the given index.
    ///
    /// Indices are in the following order: `x`, `y`, `origin`.
    public subscript(columnIndex: Int) -> Vector2 {
        get {
            switch columnIndex {
            case 0: x
            case 1: y
            case 2: origin
            default: fatalError("Attempting to retrieve column \(columnIndex) from 2D transform.")
            }
        }
        set(newValue) {
            switch columnIndex {
            case 0: x = newValue
            case 1: y = newValue
            case 2: origin = newValue
            default: fatalError("Attempting to set column \(columnIndex) from 2D transform.")
            }
        }
    }
}

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
