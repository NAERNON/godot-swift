
/// A unit quaternion used for representing 3D rotations.
///
/// Quaternions are similar to ``Basis``, which implements
/// the matrix representation of rotations.
/// Unlike `Basis`, which stores rotation, scale, and shearing,
/// quaternions only store rotation.
///
/// Quaternions can be parametrized using both an axis-angle pair or Euler angles.
/// Due to their compactness and the way they are stored in memory,
/// certain operations (obtaining axis-angle and performing
/// SLERP, in particular) are more efficient and robust against floating-point errors.
///
/// >note: Quaternions need to be normalized before being used for rotation.
///
/// ## Topics
///
/// ### Creating Quaternion
///
/// - ``Quaternion/init(x:y:z:w:)``
/// - ``Quaternion/init(_:_:_:_:)``
/// - ``Quaternion/init(fromArc:toArc:)``
/// - ``Quaternion/init(axis:angle:)``
/// - ``Quaternion/init(basis:)``
///
/// - ``Quaternion/fromEuler(_:)``
///
/// ### Special Values
///
/// - ``Quaternion/identity``
/// - ``Quaternion/init()``
///
/// ### Geometric Properties
///
/// - ``Quaternion/x``
/// - ``Quaternion/y``
/// - ``Quaternion/z``
/// - ``Quaternion/w``
/// - ``Quaternion/subscript(_:)``
///
/// - ``Quaternion/isFinite``
/// - ``Quaternion/axis``
///
/// ### Angle
///
/// - ``Quaternion/angle``
/// - ``Quaternion/angle(to:)``
/// - ``Quaternion/euler(order:)``
///
/// ### Magnitude
///
/// - ``Quaternion/magnitude``
/// - ``Quaternion/magnitudeSquared``
///
/// ### Normalization
///
/// - ``Quaternion/isNormalized``
/// - ``Quaternion/normalized()``
/// - ``Quaternion/normalize()``
///
/// ### Inversion
///
/// - ``Quaternion/inverse()``
/// - ``Quaternion/invert()``
///
/// ### Transformation
///
/// - ``Quaternion/exp``
/// - ``Quaternion/log``
/// - ``Quaternion/dot(_:)``
///
/// ### Interpolation
///
/// - ``Quaternion/slerp(to:weight:)``
/// - ``Quaternion/formSlerp(to:weight:)``
/// - ``Quaternion/slerpni(to:weight:)``
/// - ``Quaternion/formSlerpni(to:weight:)``
/// - ``Quaternion/sphericalCubicInterpolatation(b:preA:postB:weight:)``
/// - ``Quaternion/formSphericalCubicInterpolatation(b:preA:postB:weight:)``
/// - ``Quaternion/sphericalCubicInterpolatationInTime(b:preA:postB:weight:bT:preAT:postBT:)``
/// - ``Quaternion/formSphericalCubicInterpolatationInTime(b:preA:postB:weight:bT:preAT:postBT:)``
///
/// ### Approximate Equality
///
/// - ``Quaternion/isApproximatelyEqual(to:)``
public struct Quaternion: Equatable, Hashable {
    /// X component of the quaternion (imaginary `i` axis part).
    ///
    /// `Quaternion` components should usually not be manipulated directly.
    public var x: FloatingPointType
    
    /// Y component of the quaternion (imaginary `j` axis part).
    ///
    /// `Quaternion` components should usually not be manipulated directly.
    public var y: FloatingPointType
    
    /// Z component of the quaternion (imaginary `k` axis part).
    ///
    /// `Quaternion` components should usually not be manipulated directly.
    public var z: FloatingPointType
    
    /// W component of the quaternion (real part).
    ///
    /// `Quaternion` components should usually not be manipulated directly.
    public var w: FloatingPointType
    
    // MARK: - Initializers
    
    /// Creates a new quaternion defined by the given values.
    public init(
        x: FloatingPointType,
        y: FloatingPointType,
        z: FloatingPointType,
        w: FloatingPointType
    ) {
        self.x = x
        self.y = y
        self.z = z
        self.w = w
    }
    
    /// Creates a new quaternion defined by the given values.
    public init(
        _ x: FloatingPointType,
        _ y: FloatingPointType,
        _ z: FloatingPointType,
        _ w: FloatingPointType
    ) {
        self.x = x
        self.y = y
        self.z = z
        self.w = w
    }
    
    /// Creates a new quaternion from the given basis.
    public init(basis: Basis) {
        self = basis.quaternion
    }
    
    /// Creates a new quaternion that will rotate around the given axis by the specified angle.
    ///
    /// - Parameters:
    ///   - axis: The axis around which the quaternion will rotate.
    ///   Must be a normalized vector.
    ///   - angle: The rotation angle.
    public init(axis: Vector3, angle: FloatingPointType) {
#if MATH_CHECKS
        if !axis.isNormalized {
            godotPrintError("The axis Vector3 must be normalized.")
        }
#endif
        let d = axis.magnitude
        if d == 0 {
            self.x = 0
            self.y = 0
            self.z = 0
            self.w = 0
        } else {
            let sinAngle = sin(angle * 0.5)
            let cosAngle = cos(angle * 0.5)
            let s = sinAngle / d
            
            self.x = axis.x * s
            self.y = axis.y * s
            self.z = axis.z * s
            self.w = cosAngle
        }
    }
    
    /// Creates a quaternion representing the shortest arc between
    /// two points on the surface of a sphere with a radius of `1.0`.
    public init(fromArc: Vector3, toArc: Vector3) {
        let c = fromArc.cross(toArc)
        let d = fromArc.dot(toArc)

        if d < (-1.0 + .cmpEpsilon) {
            self.x = 0
            self.y = 1
            self.z = 0
            self.w = 0
        } else {
            let s = ((1.0 + d) * 2.0).squareRoot()
            let rs = 1.0 / s

            self.x = c.x * rs
            self.y = c.y * rs
            self.z = c.z * rs
            self.w = s * 0.5
        }
    }
    
    /// Creates a default-initialized `Quaternion` set to `identity`.
    public init() {
        self.init(x: 0, y: 0, z: 0, w: 1)
    }
}

// MARK: - Special Values

extension Quaternion {
    /// The identity quaternion, representing no rotation.
    ///
    /// Equivalent to an identity ``Basis`` matrix.
    /// If a vector is transformed by an identity quaternion, it will not change.
    public static var identity: Quaternion {
        Quaternion(x: 0, y: 0, z: 0, w: 1)
    }
}

// MARK: Operators

extension Quaternion {
    /// The negative value of a quaternion.
    ///
    /// This is the same as writing `Quaternion(x: -q.x, y: -q.y, z: -q.z, w: -q.w)`.
    ///
    /// This operation results in a quaternion that represents the same rotation.
    public static prefix func - (quaternion: Quaternion) -> Quaternion {
        Quaternion(
            -quaternion.x,
            -quaternion.y,
            -quaternion.z,
            -quaternion.w
        )
    }
    
    /// The multiplication of all components of a quaternion and a floating-point value.
    ///
    /// This operation is not meaningful on its own,
    /// but it can be used as a part of a larger expression.
    public static func * (lhs: Quaternion, rhs: FloatingPointType) -> Quaternion {
        Quaternion(
            lhs.x * rhs,
            lhs.y * rhs,
            lhs.z * rhs,
            lhs.w * rhs
        )
    }
    
    /// Updates the quaternion with multiplication of all components
    /// of a quaternion and a floating-point value.
    ///
    /// This operation is not meaningful on its own,
    /// but it can be used as a part of a larger expression.
    public static func *= (lhs: inout Quaternion, rhs: FloatingPointType) {
        lhs = lhs * rhs
    }
    
    /// The multiplication of all components of a quaternion and a floating-point value.
    ///
    /// This operation is not meaningful on its own,
    /// but it can be used as a part of a larger expression.
    public static func * (lhs: FloatingPointType, rhs: Quaternion) -> Quaternion {
        rhs * lhs
    }
    
    /// The division of all components of a quaternion and a floating-point value.
    ///
    /// This operation is not meaningful on its own
    /// but it can be used as a part of a larger expression.
    public static func / (lhs: Quaternion, rhs: FloatingPointType) -> Quaternion {
        lhs * (1.0 / rhs)
    }
    
    /// Updates the quaternion with division of all components of a quaternion and a floating-point value.
    ///
    /// This operation is not meaningful on its own
    /// but it can be used as a part of a larger expression.
    public static func /= (lhs: inout Quaternion, rhs: FloatingPointType) {
        lhs = lhs / rhs
    }
    
    /// The rotation of a 3D vector by a quaternion.
    public static func * (lhs: Quaternion, rhs: Vector3) -> Vector3 {
#if MATH_CHECKS
        if lhs.isNormalized {
            godotPrintError("The quaternion must be normalized.")
            return rhs
        }
#endif
        let u = Vector3(lhs.x, lhs.y, lhs.z)
        let uv = u.cross(rhs)
        return rhs + ((uv * lhs.w) + u.cross(uv)) * 2.0
    }
    
    /// The inverse rotation of a 3D vector by a quaternion.
    ///
    /// `vector * quaternion` is equivalent to `quaternion.inverse() * vector`.
    /// See `Quaternion`'s ``Quaternion/inverse()``.
    public static func * (lhs: Vector3, rhs: Quaternion) -> Vector3 {
        rhs.inverse() * lhs
    }
    
    /// Updates the vector with the inverse rotation of a 3D vector by a quaternion.
    ///
    /// `vector * quaternion` is equivalent to `quaternion.inverse() * vector`.
    /// See `Quaternion`'s ``Quaternion/inverse()``.
    public static func *= (lhs: inout Vector3, rhs: Quaternion) {
        lhs = lhs * rhs
    }
    
    /// The sum of two quaternions, component by component.
    ///
    /// This operation is not meaningful on its own,
    /// but it can be used as a part of a larger expression, such
    /// as approximating an intermediate rotation between two nearby rotations.
    public static func + (lhs: Quaternion, rhs: Quaternion) -> Quaternion {
        Quaternion(
            lhs.x + rhs.x,
            lhs.y + rhs.y,
            lhs.z + rhs.z,
            lhs.w + rhs.w
        )
    }
    
    /// Updates the quaternion with the sum of two quaternions, component by component.
    ///
    /// This operation is not meaningful on its own,
    /// but it can be used as a part of a larger expression, such
    /// as approximating an intermediate rotation between two nearby rotations.
    public static func += (lhs: inout Quaternion, rhs: Quaternion) {
        lhs = lhs + rhs
    }
    
    /// The subtraction of two quaternions, component by component.
    ///
    /// This operation is not meaningful on its own,
    /// but it can be used as a part of a larger expression, such
    /// as approximating an intermediate rotation between two nearby rotations.
    public static func - (lhs: Quaternion, rhs: Quaternion) -> Quaternion {
        Quaternion(
            lhs.x - rhs.x,
            lhs.y - rhs.y,
            lhs.z - rhs.z,
            lhs.w - rhs.w
        )
    }
    
    /// Updates the quaternion with the subtraction of two quaternions, component by component.
    ///
    /// This operation is not meaningful on its own,
    /// but it can be used as a part of a larger expression, such
    /// as approximating an intermediate rotation between two nearby rotations.
    public static func -= (lhs: inout Quaternion, rhs: Quaternion) {
        lhs = lhs - rhs
    }
    
    /// The composition of two quaternions.
    ///
    /// This has the effect of rotating the second quaternion
    /// (the child) by the first quaternion (the parent).
    public static func * (lhs: Quaternion, rhs: Quaternion) -> Quaternion {
        var copy = lhs
        copy *= rhs
        return copy
    }
    
    /// Updates the quaternion with the composition of two quaternions.
    ///
    /// This has the effect of rotating the second quaternion
    /// (the child) by the first quaternion (the parent).
    public static func *= (lhs: inout Quaternion, rhs: Quaternion) {
        let xx = lhs.w * rhs.x + lhs.x * rhs.w + lhs.y * rhs.z - lhs.z * rhs.y
        let yy = lhs.w * rhs.y + lhs.y * rhs.w + lhs.z * rhs.x - lhs.x * rhs.z
        let zz = lhs.w * rhs.z + lhs.z * rhs.w + lhs.x * rhs.y - lhs.y * rhs.x
        
        lhs.w = lhs.w * rhs.w - lhs.x * rhs.x - lhs.y * rhs.y - lhs.z * rhs.z
        lhs.x = xx
        lhs.y = yy
        lhs.z = zz
    }
}

// MARK: - Functions and variables

extension Quaternion {
    /// The magnitude (length) of the quaternion.
    public var magnitude: FloatingPointType {
        magnitudeSquared.squareRoot()
    }
    
    /// The magnitude (length) of the quaternion, squared.
    public var magnitudeSquared: FloatingPointType {
        self.dot(self)
    }
    
    /// Returns this quaternion normalized to unit length.
    public func normalized() -> Quaternion {
        var copy = self
        copy.normalize()
        return copy
    }
    
    /// Normalizes this quaternion to unit length.
    public mutating func normalize() {
        self /= magnitude
    }
    
    /// A Boolean value indicating whether the quaternion is normalized.
    public var isNormalized: Bool {
        magnitudeSquared.isApproximatelyEqual(to: 1, tolerance: .unitEpsilon) //use less epsilon
    }
    
    /// Returns `true` if this quaternion is approximately equal to another one.
    public func isApproximatelyEqual(to other: Quaternion) -> Bool {
        x.isApproximatelyEqual(to: other.x) &&
        y.isApproximatelyEqual(to: other.y) &&
        z.isApproximatelyEqual(to: other.z) &&
        w.isApproximatelyEqual(to: other.w)
    }
    
    /// A Boolean value indicating whether the quaternion is finite.
    public var isFinite: Bool {
        x.isFinite &&
        y.isFinite &&
        z.isFinite &&
        w.isFinite
    }
    
    /// Returns the inverse of this quaternion.
    public func inverse() -> Quaternion {
#if MATH_CHECKS
        if !isNormalized {
            godotPrintError("The quaternion must be normalized.")
            return Quaternion()
        }
#endif
        return Quaternion(-x, -y, -z, w)
    }
    
    /// Inverses this quaternion.
    public mutating func invert() {
        self = self.inverse()
    }
    
    public var log: Quaternion {
        let srcV = self.axis * self.angle
        return Quaternion(srcV.x, srcV.y, srcV.z, 0)
    }
    
    public var exp: Quaternion {
        var srcV = Vector3(self.x, self.y, self.z)
        let theta = srcV.magnitude
        srcV.normalize()
        if theta < .cmpEpsilon || !srcV.isNormalized {
            return Quaternion(0, 0, 0, 1)
        }
        return Quaternion(axis: srcV, angle: theta)
    }
    
    /// Returns the angle between the quaternion and a given one.
    ///
    /// This is the magnitude of the angle you would
    /// need to rotate by to get from one to the other.
    ///
    /// >important: The magnitude of the floating-point error for this
    /// method is abnormally high, so methods that use approximation
    /// will not work reliably.
    public func angle(to other: Quaternion) -> FloatingPointType {
        let d = self.dot(other)
        // acos does clamping.
        return acos(d * d * 2 - 1)
    }
    
    /// Returns the dot product of this quaternion and another one.
    public func dot(_ other: Quaternion) -> FloatingPointType {
        x * other.x + y * other.y + z * other.z + w * other.w
    }
    
    /// Returns the result of the spherical linear interpolation
    /// between this quaternion and another one.
    ///
    /// - Parameters:
    ///   - other: Another quaternion to interpolate to.
    ///   - weight: The interpolation amount.
    ///
    /// >note: Both quaternions must be normalized.
    public func slerp(to other: Quaternion, weight: FloatingPointType) -> Quaternion {
#if MATH_CHECKS
        if !isNormalized {
            godotPrintError("The start quaternion must be normalized.")
            return Quaternion()
        }
        if !other.isNormalized {
            godotPrintError("The end quaternion must be normalized.")
            return Quaternion()
        }
#endif
        var to1 = Quaternion()
        var omega: FloatingPointType = 0.0
        var cosom: FloatingPointType = 0.0
        var sinom: FloatingPointType = 0.0
        var scale0: FloatingPointType = 0.0
        var scale1: FloatingPointType = 0.0
        
        // calc cosine
        cosom = dot(other)
        
        // adjust signs (if necessary)
        if cosom < 0.0 {
            cosom = -cosom
            to1 = -other
        } else {
            to1 = other
        }
        
        // calculate coefficients
        
        if (1.0 - cosom) > .cmpEpsilon {
            // standard case (slerp)
            omega = acos(cosom)
            sinom = sin(omega)
            scale0 = sin((1.0 - weight) * omega) / sinom
            scale1 = sin(weight * omega) / sinom
        } else {
            // "from" and "to" quaternions are very close
            //  ... so we can do a linear interpolation
            scale0 = 1.0 - weight
            scale1 = weight
        }
        // calculate final values
        return Quaternion(
            scale0 * x + scale1 * to1.x,
            scale0 * y + scale1 * to1.y,
            scale0 * z + scale1 * to1.z,
            scale0 * w + scale1 * to1.w
        )
    }
    
    /// Replaces this quaternion with the result of the spherical linear interpolation
    /// between this quaternion and another one.
    ///
    /// - Parameters:
    ///   - other: Another quaternion to interpolate to.
    ///   - weight: The interpolation amount.
    ///
    /// >note: Both quaternions must be normalized.
    public mutating func formSlerp(to other: Quaternion, weight: FloatingPointType) {
        self = self.slerp(to: other, weight: weight)
    }
    
    /// Returns the result of the spherical linear interpolation
    /// between the quaternion and another one.
    ///
    /// - Parameters:
    ///   - other: Another quaternion to interpolate to.
    ///   - weight: The interpolation amount.
    ///
    /// Contrary to ``slerp(to:weight:)``, this method does
    /// not check if the rotation path is not bigger than 90 degrees.
    public func slerpni(to other: Quaternion, weight: FloatingPointType) -> Quaternion {
#if MATH_CHECKS
        if !isNormalized {
            godotPrintError("The start quaternion must be normalized.")
            return Quaternion()
        }
        if !other.isNormalized {
            godotPrintError("The end quaternion must be normalized.")
            return Quaternion()
        }
#endif
        let dot = self.dot(other)
        
        if abs(dot) > 0.9999 {
            return self
        }
        
        let theta = acos(dot)
        let sinT = 1.0 / sin(theta)
        let newFactor = sin(weight * theta) * sinT
        let invFactor = sin((1.0 - weight) * theta) * sinT
        
        return Quaternion(
            invFactor * self.x + newFactor * other.x,
            invFactor * self.y + newFactor * other.y,
            invFactor * self.z + newFactor * other.z,
            invFactor * self.w + newFactor * other.w
        )
    }
    
    /// Replaces this quaternion with the result of the spherical linear interpolation
    /// between this quaternion and another one.
    ///
    /// - Parameters:
    ///   - other: Another quaternion to interpolate to.
    ///   - weight: The interpolation amount.
    ///
    /// Contrary to ``formSlerp(to:weight:)``, this method does
    /// not check if the rotation path is not bigger than 90 degrees.
    public mutating func formSlerpni(to other: Quaternion, weight: FloatingPointType) {
        self = self.slerpni(to: other, weight: weight)
    }
    
    /// Returns a spherical cubic interpolation between quaternions.
    ///
    /// The interpolation is performed between `preA`,
    /// this vector, `b`, and `postB`, by the given amount weight.
    public func sphericalCubicInterpolatation(
        b: Quaternion,
        preA: Quaternion,
        postB: Quaternion,
        weight: FloatingPointType
    ) -> Quaternion {
#if MATH_CHECKS
        if !isNormalized {
            godotPrintError("The start quaternion must be normalized.")
            return Quaternion()
        }
        if !other.isNormalized {
            godotPrintError("The end quaternion must be normalized.")
            return Quaternion()
        }
#endif
        var fromQ = self
        var preQ = preA
        var toQ = b
        var postQ = postB
        
        // Align flip phases.
        fromQ = Basis(quaternion: fromQ).rotation
        preQ = Basis(quaternion: preQ).rotation
        toQ = Basis(quaternion: toQ).rotation
        postQ = Basis(quaternion: postQ).rotation
        
        // Flip quaternions to shortest path if necessary.
        let flip1: Bool = fromQ.dot(preQ).sign == .plus
        preQ = flip1 ? -preQ : preQ
        let flip2: Bool = fromQ.dot(toQ).sign == .plus
        toQ = flip2 ? -toQ : toQ
        let flip3: Bool = flip2 ? toQ.dot(postQ) <= 0 : (toQ.dot(postQ).sign == .plus)
        postQ = flip3 ? -postQ : postQ
        
        // Calc by Expmap in from_q space.
        var lnFrom = Quaternion(0, 0, 0, 0)
        var lnTo = (fromQ.inverse() * toQ).log
        var lnPre = (fromQ.inverse() * preQ).log
        var lnPost = (fromQ.inverse() * postQ).log
        var ln = Quaternion(0, 0, 0, 0)
        ln.x = lnFrom.x.cubicInterpolation(to: lnTo.x, pre: lnPre.x, post: lnPost.x, weight: weight)
        ln.y = lnFrom.y.cubicInterpolation(to: lnTo.y, pre: lnPre.y, post: lnPost.y, weight: weight)
        ln.z = lnFrom.z.cubicInterpolation(to: lnTo.z, pre: lnPre.z, post: lnPost.z, weight: weight)
        let q1 = fromQ * ln.exp
        
        // Calc by Expmap in to_q space.
        lnFrom = (toQ.inverse() * fromQ).log
        lnTo = Quaternion(0, 0, 0, 0)
        lnPre = (toQ.inverse() * preQ).log
        lnPost = (toQ.inverse() * postQ).log
        ln = Quaternion(0, 0, 0, 0)
        ln.x = lnFrom.x.cubicInterpolation(to: lnTo.x, pre: lnPre.x, post: lnPost.x, weight: weight)
        ln.y = lnFrom.y.cubicInterpolation(to: lnTo.y, pre: lnPre.y, post: lnPost.y, weight: weight)
        ln.z = lnFrom.z.cubicInterpolation(to: lnTo.z, pre: lnPre.z, post: lnPost.z, weight: weight)
        let q2 = toQ * ln.exp
        
        // To cancel error made by Expmap ambiguity, do blending.
        return q1.slerp(to: q2, weight: weight)
    }
    
    /// Performs a spherical cubic interpolation between quaternions.
    ///
    /// The interpolation is performed between `preA`,
    /// this vector, `b`, and `postB`, by the given amount weight.
    public mutating func formSphericalCubicInterpolatation(
        b: Quaternion,
        preA: Quaternion,
        postB: Quaternion,
        weight: FloatingPointType
    ) {
        self = self.sphericalCubicInterpolatation(b: b, preA: preA, postB: postB, weight: weight)
    }
    
    /// Returns a spherical cubic interpolation between quaternions.
    ///
    /// The interpolation is performed between `preA`,
    /// this vector, `b`, and `postB`, by the given amount weight.
    ///
    /// It can perform smoother interpolation than
    /// ``sphericalCubicInterpolatation(b:preA:postB:weight:)`` by the time values.
    public func sphericalCubicInterpolatationInTime(
        b: Quaternion,
        preA: Quaternion,
        postB: Quaternion,
        weight: FloatingPointType,
        bT: FloatingPointType,
        preAT: FloatingPointType,
        postBT: FloatingPointType
    ) -> Quaternion {
#if MATH_CHECKS
        if !isNormalized {
            godotPrintError("The start quaternion must be normalized.")
            return Quaternion()
        }
        if !other.isNormalized {
            godotPrintError("The end quaternion must be normalized.")
            return Quaternion()
        }
#endif
        var from_q = self
        var pre_q = preA
        var to_q = b
        var post_q = postB
        
        // Align flip phases.
        from_q = Basis(quaternion: from_q).rotation
        pre_q = Basis(quaternion: pre_q).rotation
        to_q = Basis(quaternion: to_q).rotation
        post_q = Basis(quaternion: post_q).rotation
        
        // Flip quaternions to shortest path if necessary.
        let flip1 = from_q.dot(pre_q).sign == .plus
        pre_q = flip1 ? -pre_q : pre_q
        let flip2 = from_q.dot(to_q).sign == .plus
        to_q = flip2 ? -to_q : to_q
        let flip3 = flip2 ? to_q.dot(post_q) <= 0 : (to_q.dot(post_q).sign == .plus)
        post_q = flip3 ? -post_q : post_q
        
        // Calc by Expmap in from_q space.
        var ln_from = Quaternion(0, 0, 0, 0)
        var ln_to = (from_q.inverse() * to_q).log
        var ln_pre = (from_q.inverse() * pre_q).log
        var ln_post = (from_q.inverse() * post_q).log
        var ln = Quaternion(0, 0, 0, 0)
        ln.x = ln_from.x.cubicInterpolationInTime(
            to: ln_to.x,
            pre: ln_pre.x,
            post: ln_post.x,
            weight: weight,
            toT: bT,
            preT: preAT,
            postT: postBT
        )
        ln.y = ln_from.y.cubicInterpolationInTime(
            to: ln_to.y,
            pre: ln_pre.y,
            post: ln_post.y,
            weight: weight,
            toT: bT,
            preT: preAT,
            postT: postBT
        )
        ln.z = ln_from.z.cubicInterpolationInTime(
            to: ln_to.z,
            pre: ln_pre.z,
            post: ln_post.z,
            weight: weight,
            toT: bT,
            preT: preAT,
            postT: postBT
        )
        let q1 = from_q * ln.exp
        
        // Calc by Expmap in to_q space.
        ln_from = (to_q.inverse() * from_q).log
        ln_to = Quaternion(0, 0, 0, 0)
        ln_pre = (to_q.inverse() * pre_q).log
        ln_post = (to_q.inverse() * post_q).log
        ln = Quaternion(0, 0, 0, 0)
        ln.x = ln_from.x.cubicInterpolationInTime(
            to: ln_to.x,
            pre: ln_pre.x,
            post: ln_post.x,
            weight: weight,
            toT: bT,
            preT: preAT,
            postT: postBT
        )
        ln.y = ln_from.y.cubicInterpolationInTime(
            to: ln_to.y,
            pre: ln_pre.y,
            post: ln_post.y,
            weight: weight,
            toT: bT,
            preT: preAT,
            postT: postBT
        )
        ln.z = ln_from.z.cubicInterpolationInTime(
            to: ln_to.z,
            pre: ln_pre.z,
            post: ln_post.z,
            weight: weight,
            toT: bT,
            preT: preAT,
            postT: postBT
        )
        let q2 = to_q * ln.exp
        
        // To cancel error made by Expmap ambiguity, do blending.
        return q1.slerp(to: q2, weight: weight)
    }
    
    /// Performs a spherical cubic interpolation between quaternions.
    ///
    /// The interpolation is performed between `preA`,
    /// this vector, `b`, and `postB`, by the given amount weight.
    ///
    /// It can perform smoother interpolation than
    /// ``formSphericalCubicInterpolatation(b:preA:postB:weight:)`` by the time values.
    public mutating func formSphericalCubicInterpolatationInTime(
        b: Quaternion,
        preA: Quaternion,
        postB: Quaternion,
        weight: FloatingPointType,
        bT: FloatingPointType,
        preAT: FloatingPointType,
        postBT: FloatingPointType
    ) {
        self = self.sphericalCubicInterpolatationInTime(
            b: b,
            preA: preA,
            postB: postB,
            weight: weight,
            bT: bT,
            preAT: preAT,
            postBT: postBT
        )
    }
    
    /// Returns the quaternion's rotation in the form of Euler angles.
    ///
    /// The Euler order depends on the order parameter, for example
    /// using the YXZ convention: since this method decomposes,
    /// first Z, then X, and Y last.
    /// The returned vector contains the rotation angles in the format (X angle, Y angle, Z angle).
    public func euler(order: EulerOrder = .yxz) -> Vector3 {
#if MATH_CHECKS
        if !isNormalized {
            godotPrintError("The quaternion must be normalized.")
            return Vector3.zero
        }
#endif
        return Basis(quaternion: self).euler(order: order)
    }
    
    /// Creates a new quaternion from Euler angles in YXZ rotation order.
    public static func fromEuler(_ euler: Vector3) -> Quaternion {
        let half_a1 = euler.y * 0.5
        let half_a2 = euler.x * 0.5
        let half_a3 = euler.z * 0.5
        
        // R = Y(a1).X(a2).Z(a3) convention for Euler angles.
        // Conversion to quaternion as listed in https://ntrs.nasa.gov/archive/nasa/casi.ntrs.nasa.gov/19770024290.pdf (page A-6)
        // a3 is the angle of the first rotation, following the notation in this reference.
        
        let cos_a1 = cos(half_a1)
        let sin_a1 = sin(half_a1)
        let cos_a2 = cos(half_a2)
        let sin_a2 = sin(half_a2)
        let cos_a3 = cos(half_a3)
        let sin_a3 = sin(half_a3)
        
        return Quaternion(
            x: sin_a1 * cos_a2 * sin_a3 + cos_a1 * sin_a2 * cos_a3,
            y: sin_a1 * cos_a2 * cos_a3 - cos_a1 * sin_a2 * sin_a3,
            z: -sin_a1 * sin_a2 * cos_a3 + cos_a1 * cos_a2 * sin_a3,
            w: sin_a1 * sin_a2 * sin_a3 + cos_a1 * cos_a2 * cos_a3
        )
    }
    
    public var axis: Vector3 {
        if abs(w) > 1 - FloatingPointType.cmpEpsilon {
            return Vector3(x, y, z)
        }
        let r = 1.0 / (1 - w * w).squareRoot()
        return Vector3(x * r, y * r, z * r)
    }
    
    public var angle: FloatingPointType {
        2 * acos(w)
    }
    
    /// Accesses the quaternion component at the given index.
    ///
    /// Indices are in the following order: `x`, `y`, `z`, `w`.
    public subscript(index: Int) -> FloatingPointType {
        get {
            switch index {
            case 0: x
            case 1: y
            case 2: z
            case 3: w
            default: fatalError("Attempting to read value at index \(index) from quaternion.")
            }
        }
        set(newValue) {
            switch index {
            case 0: x = newValue
            case 1: y = newValue
            case 2: z = newValue
            case 3: w = newValue
            default: fatalError("Attempting to set value at index \(index) on quaternion.")
            }
        }
    }
}

// MARK: - Codable

extension Quaternion: Codable {
    public func encode(to encoder: Encoder) throws {
        var unkeyedContainer = encoder.unkeyedContainer()
        try unkeyedContainer.encode(x)
        try unkeyedContainer.encode(y)
        try unkeyedContainer.encode(z)
        try unkeyedContainer.encode(w)
    }
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        let x = try container.decode(FloatingPointType.self)
        let y = try container.decode(FloatingPointType.self)
        let z = try container.decode(FloatingPointType.self)
        let w = try container.decode(FloatingPointType.self)
        self.init(x: x, y: y, z: z, w: w)
    }
}

// MARK: - CustomStringConvertible

extension Quaternion: CustomStringConvertible {
    public var description: String {
        "(x: \(x), y: \(y), z: \(z), w: \(w))"
    }
}

extension Quaternion: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Quaternion(x: \(x), y: \(y), z: \(z), w: \(w))"
    }
}
