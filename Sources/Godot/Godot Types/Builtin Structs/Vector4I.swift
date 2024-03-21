
/// A 4D vector using integer coordinates.
///
/// This type can be used to represent 2D grid coordinates or any other quadruplet of integers.
///
/// It uses integer coordinates and is therefore preferable to ``Vector4``
/// when exact precision is required.
///
/// >note: The values are limited to 32 bits, and unlike ``Vector4``
/// this cannot be configured with an engine build option.
///
/// ## Topics
///
/// ### Creating 4D Vector
///
/// - ``Vector4I/init(x:y:z:w:)``
/// - ``Vector4I/init(_:_:_:_:)``
/// - ``Vector4I/init(_:)``
/// - ``Vector4I/init(_:rounding:)``
/// - ``Vector4I/init(repeating:)``
///
/// ### Special Values
///
/// - ``Vector4I/zero``
/// - ``Vector4I/init()``
/// - ``Vector4I/one``
///
/// ### Geometric Properties
///
/// - ``Vector4I/x``
/// - ``Vector4I/y``
/// - ``Vector4I/z``
/// - ``Vector4I/w``
/// - ``Vector4I/subscript(_:)``
/// - ``Vector4I/abs()``
/// - ``Vector4I/formAbs()``
/// - ``Vector4I/clamped(lowerBound:upperBound:)``
/// - ``Vector4I/clamp(lowerBound:upperBound:)``
/// - ``Vector4I/sum()``
/// - ``Vector4I/signUnitValue``
///
/// ### Magnitude and Distance
///
/// - ``Vector4I/magnitude``
/// - ``Vector4I/magnitudeSquared``
///
/// ### Axis
///
/// - ``Vector4I/minAxis``
/// - ``Vector4I/maxAxis``
/// - ``Vector4I/subscript(axis:)``
///
/// ### Rounding and Division
///
/// - ``Vector4I/snapped(step:)``
/// - ``Vector4I/snap(step:)``
///
/// ### Comparison
///
/// - ``Vector4I/<(_:_:)``
/// - ``Vector4I/<=(_:_:)``
/// - ``Vector4I/>(_:_:)``
/// - ``Vector4I/>=(_:_:)``
public struct Vector4I: Hashable, Equatable {
    /// The first element of the vector.
    public var x: Int32
    /// The second element of the vector.
    public var y: Int32
    /// The third element of the vector.
    public var z: Int32
    /// The fourth element of the vector.
    public var w: Int32
    
    // MARK: - Initializers
    
    /// Creates a new vector from the given elements.
    public init(
        x: Int32,
        y: Int32,
        z: Int32,
        w: Int32
    ) {
        self.x = x
        self.y = y
        self.z = z
        self.w = w
    }
    
    /// Creates a new vector from the given elements.
    public init(
        _ x: Int32,
        _ y: Int32,
        _ z: Int32,
        _ w: Int32
    ) {
        self.x = x
        self.y = y
        self.z = z
        self.w = w
    }
    
    /// Creates a new vector with all elements set to `0`.
    public init() {
        self = .zero
    }
    
    /// Creates a new vector from a given floating-point vector,
    /// rounded using a given rule.
    public init(_ other: Vector4, rounding rule: FloatingPointRoundingRule) {
        self.x = Int32(other.x.rounded(rule))
        self.y = Int32(other.y.rounded(rule))
        self.z = Int32(other.z.rounded(rule))
        self.w = Int32(other.w.rounded(rule))
    }
    
    /// Creates a new vector from a given floating-point vector.
    public init(_ other: Vector4) {
        self.x = Int32(other.x)
        self.y = Int32(other.y)
        self.z = Int32(other.z)
        self.w = Int32(other.w)
    }
    
    /// Creates a new vector with all elements set to the specified value.
    public init(repeating value: Int32) {
        self.x = value
        self.y = value
        self.z = value
        self.w = value
    }
}

// MARK: - Special Values

extension Vector4I {
    /// A vector with all elements set to `0`.
    public static var zero: Vector4I {
        Vector4I(0, 0, 0, 0)
    }
    
    /// A vector with all elements set to `1`.
    public static var one: Vector4I {
        Vector4I(1, 1, 1, 1)
    }
}

// MARK: - Subscripts

extension Vector4I {
    /// Accesses the vector component at the given index.
    public subscript(index: Int) -> Int32 {
        get {
            switch index {
            case 0: x
            case 1: y
            case 2: z
            case 3: w
            default: fatalError("Attempting to read component \(index) from 4D vector.")
            }
        }
        set(newValue) {
            switch index {
            case 0: x = newValue
            case 1: y = newValue
            case 2: z = newValue
            case 3: w = newValue
            default: fatalError("Attempting to set component \(index) on 4D vector.")
            }
        }
    }
    
    /// Accesses the vector component on the given axis.
    public subscript(axis axis: Axis4D) -> Int32 {
        get {
            switch axis {
            case .x: x
            case .y: y
            case .z: z
            case .w: w
            }
        }
        set(newValue) {
            switch axis {
            case .x: x = newValue
            case .y: y = newValue
            case .z: z = newValue
            case .w: w = newValue
            }
        }
    }
}

// MARK: - Functions and variables

extension Vector4I {
    /// A vector with each component set to `1` if it's positive,
    /// `-1` if it's negative, and `0` if it's zero.
    public var signUnitValue: Vector4I {
        Vector4I(
            x: x.signUnitValue,
            y: y.signUnitValue,
            z: z.signUnitValue,
            w: w.signUnitValue
        )
    }
    
    /// Returns a new vector with each component snapped to
    /// the closest multiple of the corresponding component in a given vector.
    public func snapped(step: Vector4I) -> Vector4I {
        Vector4I(
            x: x.snapped(step: step.x),
            y: y.snapped(step: step.y),
            z: z.snapped(step: step.z),
            w: w.snapped(step: step.w)
        )
    }
    
    /// Replaces this vector with a vector with each component snapped to
    /// the nearest multiple of the corresponding component in a given vector.
    ///
    /// This can also be used to round the components
    /// to an arbitrary number of decimals.
    public mutating func snap(step: Vector4I) {
        self = snapped(step: step)
    }
    
    /// The magnitude (length) of the vector.
    public var magnitude: Scalar {
        Scalar(magnitudeSquared).squareRoot()
    }
    
    /// The squared magnitude of the vector.
    ///
    /// This property runs faster than ``magnitude``, so prefer it if you need
    /// to compare vectors or need the squared distance for some formula.
    public var magnitudeSquared: UInt64 {
        (UInt64(x) * UInt64(x)) + (UInt64(y) * UInt64(y)) + (UInt64(z) * UInt64(z)) + (UInt64(w) * UInt64(w))
    }
    
    /// Returns this vector with all components in absolute values (i.e. positive).
    public func abs() -> Vector4I {
        Vector4I(x: Swift.abs(x), y: Swift.abs(y), z: Swift.abs(z), w: Swift.abs(w))
    }
    
    /// Replaces this vector with a vector with all
    /// components in absolute values (i.e. positive).
    public mutating func formAbs() {
        self = abs()
    }
    
    /// Returns a new vector with all components clamped between the components
    /// of the two given bounds.
    public func clamped(lowerBound: Vector4I, upperBound: Vector4I) -> Vector4I {
        Vector4I(
            x.clamped(lowerBound: lowerBound.x, upperBound: upperBound.x),
            y.clamped(lowerBound: lowerBound.y, upperBound: upperBound.y),
            z.clamped(lowerBound: lowerBound.z, upperBound: upperBound.z),
            w.clamped(lowerBound: lowerBound.w, upperBound: upperBound.w)
        )
    }
    
    /// Clamps all components between the components
    /// of the two given bounds.
    public mutating func clamp(lowerBound: Vector4I, upperBound: Vector4I) {
        self = clamped(lowerBound: lowerBound, upperBound: upperBound)
    }
    
    /// Returns the sum of the scalars in the vector.
    public func sum() -> Int64 {
        Int64(x) + Int64(y) + Int64(z) + Int64(w)
    }
}

// MARK: - Operators

extension Vector4I {
    /// The multiplication of all components of a vector and a floating-point value.
    public static func * (lhs: Vector4I, rhs: Int32) -> Vector4I {
        Vector4I(lhs.x * rhs, lhs.y * rhs, lhs.z * rhs, lhs.w * rhs)
    }
    
    /// The multiplication of all components of a vector and a floating-point value.
    public static func * (lhs: Int32, rhs: Vector4I) -> Vector4I {
        rhs * lhs
    }
    
    /// Updates the vector with the multiplication of
    /// all components of a vector and a floating-point value.
    public static func *= (lhs: inout Vector4I, rhs: Int32) {
        lhs = lhs * rhs
    }
    
    /// The division of all components of a vector and a floating-point value.
    public static func / (lhs: Vector4I, rhs: Int32) -> Vector4I {
        Vector4I(lhs.x / rhs, lhs.y / rhs, lhs.z / rhs, lhs.w / rhs)
    }
    
    /// Updates the vector with the division of
    /// all components of a vector and a floating-point value.
    public static func /= (lhs: inout Vector4I, rhs: Int32) {
        lhs = lhs / rhs
    }
    
    /// The opposite of a vector.
    ///
    /// This is the same as multiplying by `-1`.
    public static prefix func - (lhs: Vector4I) -> Vector4I {
        var copy = lhs
        copy.x = -copy.x
        copy.y = -copy.y
        copy.z = -copy.z
        copy.w = -copy.w
        return copy
    }
    
    /// The multiplication of two vectors, component by component.
    public static func * (lhs: Vector4I, rhs: Vector4I) -> Vector4I {
        Vector4I(lhs.x * rhs.x, lhs.y * rhs.y, lhs.z * rhs.z, lhs.w * rhs.w)
    }
    
    /// Updates the vector with the multiplication of two vectors,
    /// component by component.
    public static func *= (lhs: inout Vector4I, rhs: Vector4I) {
        lhs = lhs * rhs
    }
    
    /// The division of two vectors, component by component.
    public static func / (lhs: Vector4I, rhs: Vector4I) -> Vector4I {
        Vector4I(lhs.x / rhs.x, lhs.y / rhs.y, lhs.z / rhs.z, lhs.w / rhs.w)
    }
    
    /// Updates the vector with the division of two vectors,
    /// component by component.
    public static func /= (lhs: inout Vector4I, rhs: Vector4I) {
        lhs = lhs / rhs
    }
}

// MARK: - AdditiveArithmetic

extension Vector4I: AdditiveArithmetic {
    public static func + (lhs: Vector4I, rhs: Vector4I) -> Vector4I {
        Vector4I(lhs.x + rhs.x, lhs.y + rhs.y, lhs.z + rhs.z, lhs.w + rhs.w)
    }
    
    public static func - (lhs: Vector4I, rhs: Vector4I) -> Vector4I {
        Vector4I(lhs.x - rhs.x, lhs.y - rhs.y, lhs.z - rhs.z, lhs.w - rhs.w)
    }
}

// MARK: - Comparable

extension Vector4I: Comparable {
    /// Compares two vectors scalar by scalar.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is less than the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors, Z values of the two vectors and then with the Z values.
    /// This operator is useful for sorting vectors.
    ///
    /// >note: Vectors with `nan` elements don't behave the same as other vectors.
    /// Therefore, the results from this operator may not be accurate if `nan`s are included.
    public static func < (lhs: Vector4I, rhs: Vector4I) -> Bool {
        if lhs.x == rhs.x {
            if lhs.y == rhs.y {
                if lhs.z == rhs.z {
                    return lhs.w < rhs.w
                }
                return lhs.z < rhs.z
            }
            return lhs.y < rhs.y
        }
        return lhs.x < rhs.x
    }
    
    /// Compares two vectors scalar by scalar.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is greater than the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors, Z values of the two vectors and then with the Z values.
    /// This operator is useful for sorting vectors.
    ///
    /// >note: Vectors with `nan` elements don't behave the same as other vectors.
    /// Therefore, the results from this operator may not be accurate if `nan`s are included.
    public static func > (lhs: Vector4I, rhs: Vector4I) -> Bool {
        if lhs.x == rhs.x {
            if lhs.y == rhs.y {
                if lhs.z == rhs.z {
                    return lhs.w > rhs.w
                }
                return lhs.z > rhs.z
            }
            return lhs.y > rhs.y
        }
        return lhs.x > rhs.x
    }
    
    /// Compares two vectors scalar by scalar.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is less than or equal to the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors, Z values of the two vectors and then with the Z values.
    /// This operator is useful for sorting vectors.
    ///
    /// >note: Vectors with `nan` elements don't behave the same as other vectors.
    /// Therefore, the results from this operator may not be accurate if `nan`s are included.
    public static func <= (lhs: Vector4I, rhs: Vector4I) -> Bool {
        if lhs.x == rhs.x {
            if lhs.y == rhs.y {
                if lhs.z == rhs.z {
                    return lhs.w <= rhs.w
                }
                return lhs.z < rhs.z
            }
            return lhs.y < rhs.y
        }
        return lhs.x < rhs.x
    }
    
    /// Compares two vectors scalar by scalar.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is greater than or equal to the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors, Z values of the two vectors and then with the Z values.
    /// This operator is useful for sorting vectors.
    ///
    /// >note: Vectors with `nan` elements don't behave the same as other vectors.
    /// Therefore, the results from this operator may not be accurate if `nan`s are included.
    public static func >= (lhs: Vector4I, rhs: Vector4I) -> Bool {
        if lhs.x == rhs.x {
            if lhs.y == rhs.y {
                if lhs.z == rhs.z {
                    return lhs.w >= rhs.w
                }
                return lhs.z > rhs.z
            }
            return lhs.y > rhs.y
        }
        return lhs.x > rhs.x
    }
    
    /// The axis of the vector's highest value.
    ///
    /// If all components are equal, this method returns ``Axis4D/x``.
    public var maxAxis: Axis4D {
        var maxIndex = 0
        var maxValue = x
        var index = 1
        while index < 4 {
            if self[index] > maxValue {
                maxIndex = index
                maxValue = self[index]
            }
            index += 1
        }
        return Axis4D(rawValue: maxIndex).unsafelyUnwrapped
    }
    
    /// The axis of the vector's lowest value.
    ///
    /// If all components are equal, this method returns ``Axis4D/w``.
    public var minAxis: Axis4D {
        var minIndex = 0
        var minValue = x
        var index = 1
        while index < 4 {
            if self[index] <= minValue {
                minIndex = index
                minValue = self[index]
            }
            index += 1
        }
        return Axis4D(rawValue: minIndex).unsafelyUnwrapped
    }
}

// MARK: - CustomStringConvertible

extension Vector4I: CustomStringConvertible, CustomDebugStringConvertible {
    public var description: String {
        "(x: \(x), y: \(y), z: \(z), w: \(w))"
    }
    
    public var debugDescription: String {
        "Vector4I(x: \(x), y: \(y), z: \(z), w: \(w))"
    }
}

// MARK: - ExpressibleByArrayLiteral

extension Vector4I: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Int32...) {
        precondition(
            elements.count == 4,
            "Attempting to create a 4D vector from \(elements.count) elements."
        )
        
        self.x = elements[0]
        self.y = elements[1]
        self.z = elements[2]
        self.w = elements[3]
    }
}

// MARK: - Codable

extension Vector4I: Codable {
    public func encode(to encoder: Encoder) throws {
        var unkeyedContainer = encoder.unkeyedContainer()
        try unkeyedContainer.encode(x)
        try unkeyedContainer.encode(y)
        try unkeyedContainer.encode(z)
        try unkeyedContainer.encode(w)
    }
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        x = try container.decode(Int32.self)
        y = try container.decode(Int32.self)
        z = try container.decode(Int32.self)
        w = try container.decode(Int32.self)
    }
}
