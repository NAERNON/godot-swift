
/// A 3D vector using integer coordinates.
///
/// This type can be used to represent 3D coordinates or any other triplet of integers.
///
/// It uses integer coordinates and is therefore preferable to ``Vector3``
/// when exact precision is required.
///
/// >note: The values are limited to 32 bits, and unlike ``Vector3``
/// this cannot be configured with an engine build option.
///
/// ## Topics
///
/// ### Creating 3D Vector
///
/// - ``Vector3I/init(x:y:z:)``
/// - ``Vector3I/init(_:_:_:)``
/// - ``Vector3I/init(_:)``
/// - ``Vector3I/init(_:rounding:)``
/// - ``Vector3I/init(repeating:)``
///
/// ### Special Values
///
/// - ``Vector3I/zero``
/// - ``Vector3I/init()``
/// - ``Vector3I/one``
/// - ``Vector3I/left``
/// - ``Vector3I/right``
/// - ``Vector3I/up``
/// - ``Vector3I/down``
/// - ``Vector3I/back``
/// - ``Vector3I/forward``
///
/// ### Geometric Properties
///
/// - ``Vector3I/x``
/// - ``Vector3I/y``
/// - ``Vector3I/z``
/// - ``Vector3I/subscript(_:)``
/// - ``Vector3I/abs()``
/// - ``Vector3I/formAbs()``
/// - ``Vector3I/clamped(lowerBound:upperBound:)``
/// - ``Vector3I/clamp(lowerBound:upperBound:)``
/// - ``Vector3I/sum()``
/// - ``Vector3I/signUnitValue``
///
/// ### Magnitude and Distance
///
/// - ``Vector3I/magnitude``
/// - ``Vector3I/magnitudeSquared``
///
/// ### Axis
///
/// - ``Vector3I/minAxis``
/// - ``Vector3I/maxAxis``
/// - ``Vector3I/subscript(axis:)``
///
/// ### Rounding and Division
///
/// - ``Vector3I/snapped(step:)``
/// - ``Vector3I/snap(step:)``
///
/// ### Comparison
///
/// - ``Vector3I/<(_:_:)``
/// - ``Vector3I/<=(_:_:)``
/// - ``Vector3I/>(_:_:)``
/// - ``Vector3I/>=(_:_:)``
public struct Vector3I: Hashable, Equatable {
    /// The first element of the vector.
    public var x: Int32
    /// The second element of the vector.
    public var y: Int32
    /// The third element of the vector.
    public var z: Int32
    
    
    // MARK: - Initializers
    
    /// Creates a new vector from the given elements.
    public init(
        x: Int32,
        y: Int32,
        z: Int32
    ) {
        self.x = x
        self.y = y
        self.z = z
    }
    
    /// Creates a new vector from the given elements.
    public init(
        _ x: Int32,
        _ y: Int32,
        _ z: Int32
    ) {
        self.x = x
        self.y = y
        self.z = z
    }
    
    /// Creates a new vector with all elements set to `0`.
    public init() {
        self = .zero
    }
    
    /// Creates a new vector from a given floating-point vector,
    /// rounded using a given rule.
    public init(_ other: Vector3, rounding rule: FloatingPointRoundingRule) {
        self.x = Int32(other.x.rounded(rule))
        self.y = Int32(other.y.rounded(rule))
        self.z = Int32(other.z.rounded(rule))
    }
    
    /// Creates a new vector from a given floating-point vector.
    public init(_ other: Vector3) {
        self.x = Int32(other.x)
        self.y = Int32(other.y)
        self.z = Int32(other.z)
    }
    
    /// Creates a new vector with all elements set to the specified value.
    public init(repeating value: Int32) {
        self.x = value
        self.y = value
        self.z = value
    }
}

// MARK: - Special Values

extension Vector3I {
    /// A vector with all elements set to `0`.
    public static var zero: Vector3I {
        Vector3I(0, 0, 0)
    }
    
    /// A vector with all elements set to `1`.
    public static var one: Vector3I {
        Vector3I(1, 1, 1)
    }
    
    /// The left unit vector.
    ///
    /// Represents the local direction of left, and the global direction of west.
    public static var left: Vector3I {
        Vector3I(x: -1, y: 0, z: 0)
    }
    
    /// The right unit vector.
    ///
    /// Represents the local direction of right, and the global direction of east.
    public static var right: Vector3I {
        Vector3I(x: 1, y: 0, z: 0)
    }
    
    /// The up unit vector.
    public static var up: Vector3I {
        Vector3I(x: 0, y: 1, z: 0)
    }
    
    /// The down unit vector.
    public static var down: Vector3I {
        Vector3I(x: 0, y: -1, z: 0)
    }
    
    /// The forward unit vector.
    ///
    /// Represents the local direction of forward, and the global direction of north.
    public static var forward: Vector3I {
        Vector3I(x: 0, y: 0, z: -1)
    }
    
    /// The back unit vector.
    ///
    /// Represents the local direction of back, and the global direction of south.
    public static var back: Vector3I {
        Vector3I(x: 0, y: 0, z: 1)
    }
}

// MARK: - Subscripts

extension Vector3I {
    /// Accesses the vector component at the given index.
    public subscript(index: Int) -> Int32 {
        get {
            switch index {
            case 0: x
            case 1: y
            case 2: z
            default: fatalError("Attempting to read component \(index) from 3D vector.")
            }
        }
        set(newValue) {
            switch index {
            case 0: x = newValue
            case 1: y = newValue
            case 2: z = newValue
            default: fatalError("Attempting to set component \(index) on 3D vector.")
            }
        }
    }
    
    /// Accesses the vector component on the given axis.
    public subscript(axis axis: Axis3D) -> Int32 {
        get {
            switch axis {
            case .x: x
            case .y: y
            case .z: z
            }
        }
        set(newValue) {
            switch axis {
            case .x: x = newValue
            case .y: y = newValue
            case .z: z = newValue
            }
        }
    }
}

// MARK: - Functions and variables

extension Vector3I {
    /// A vector with each component set to `1` if it's positive,
    /// `-1` if it's negative, and `0` if it's zero.
    public var signUnitValue: Vector3I {
        Vector3I(x: x.signUnitValue, y: y.signUnitValue, z: z.signUnitValue)
    }
    
    /// Returns a new vector with each component snapped to
    /// the closest multiple of the corresponding component in a given vector.
    public func snapped(step: Vector3I) -> Vector3I {
        Vector3I(
            x: x.snapped(step: step.x),
            y: y.snapped(step: step.y),
            z: z.snapped(step: step.z)
        )
    }
    
    /// Replaces this vector with a vector with each component snapped to
    /// the nearest multiple of the corresponding component in a given vector.
    ///
    /// This can also be used to round the components
    /// to an arbitrary number of decimals.
    public mutating func snap(step: Vector3I) {
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
        (UInt64(x) * UInt64(x)) + (UInt64(y) * UInt64(y) + (UInt64(z) * UInt64(z)))
    }
    
    /// Returns this vector with all components in absolute values (i.e. positive).
    public func abs() -> Vector3I {
        Vector3I(x: Swift.abs(x), y: Swift.abs(y), z: Swift.abs(z))
    }
    
    /// Replaces this vector with a vector with all
    /// components in absolute values (i.e. positive).
    public mutating func formAbs() {
        self = abs()
    }
    
    /// Returns a new vector with all components clamped between the components
    /// of the two given bounds.
    public func clamped(lowerBound: Vector3I, upperBound: Vector3I) -> Vector3I {
        Vector3I(
            x.clamped(lowerBound: lowerBound.x, upperBound: upperBound.x),
            y.clamped(lowerBound: lowerBound.y, upperBound: upperBound.y),
            z.clamped(lowerBound: lowerBound.z, upperBound: upperBound.z)
        )
    }
    
    /// Clamps all components between the components
    /// of the two given bounds.
    public mutating func clamp(lowerBound: Vector3I, upperBound: Vector3I) {
        self = clamped(lowerBound: lowerBound, upperBound: upperBound)
    }
    
    /// Returns the sum of the scalars in the vector.
    public func sum() -> Int64 {
        Int64(x) + Int64(y) + Int64(z)
    }
}


// MARK: - Operators

extension Vector3I {
    /// The multiplication of all components of a vector and a floating-point value.
    public static func * (lhs: Vector3I, rhs: Int32) -> Vector3I {
        Vector3I(lhs.x * rhs, lhs.y * rhs, lhs.z * rhs)
    }
    
    /// The multiplication of all components of a vector and a floating-point value.
    public static func * (lhs: Int32, rhs: Vector3I) -> Vector3I {
        rhs * lhs
    }
    
    /// Updates the vector with the multiplication of
    /// all components of a vector and a floating-point value.
    public static func *= (lhs: inout Vector3I, rhs: Int32) {
        lhs = lhs * rhs
    }
    
    /// The division of all components of a vector and a floating-point value.
    public static func / (lhs: Vector3I, rhs: Int32) -> Vector3I {
        Vector3I(lhs.x / rhs, lhs.y / rhs, lhs.z / rhs)
    }
    
    /// Updates the vector with the division of
    /// all components of a vector and a floating-point value.
    public static func /= (lhs: inout Vector3I, rhs: Int32) {
        lhs = lhs / rhs
    }
    
    /// The opposite of a vector.
    ///
    /// This is the same as multiplying by `-1`.
    public static prefix func - (lhs: Vector3I) -> Vector3I {
        var copy = lhs
        copy.x = -copy.x
        copy.y = -copy.y
        copy.z = -copy.z
        return copy
    }
    
    /// The multiplication of two vectors, component by component.
    public static func * (lhs: Vector3I, rhs: Vector3I) -> Vector3I {
        Vector3I(lhs.x * rhs.x, lhs.y * rhs.y, lhs.z * rhs.z)
    }
    
    /// Updates the vector with the multiplication of two vectors,
    /// component by component.
    public static func *= (lhs: inout Vector3I, rhs: Vector3I) {
        lhs = lhs * rhs
    }
    
    /// The division of two vectors, component by component.
    public static func / (lhs: Vector3I, rhs: Vector3I) -> Vector3I {
        Vector3I(lhs.x / rhs.x, lhs.y / rhs.y, lhs.z / rhs.z)
    }
    
    /// Updates the vector with the division of two vectors,
    /// component by component.
    public static func /= (lhs: inout Vector3I, rhs: Vector3I) {
        lhs = lhs / rhs
    }
}

// MARK: - AdditiveArithmetic

extension Vector3I: AdditiveArithmetic {
    public static func + (lhs: Vector3I, rhs: Vector3I) -> Vector3I {
        Vector3I(lhs.x + rhs.x, lhs.y + rhs.y, lhs.z + rhs.z)
    }
    
    public static func - (lhs: Vector3I, rhs: Vector3I) -> Vector3I {
        Vector3I(lhs.x - rhs.x, lhs.y - rhs.y, lhs.z - rhs.z)
    }
}

// MARK: - Comparable

extension Vector3I: Comparable {
    /// Compares two vectors scalar by scalar.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is less than the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors, and then with the Z values.
    /// This operator is useful for sorting vectors.
    ///
    /// >note: Vectors with `nan` elements don't behave the same as other vectors.
    /// Therefore, the results from this operator may not be accurate if `nan`s are included.
    public static func < (lhs: Vector3I, rhs: Vector3I) -> Bool {
        if lhs.x == rhs.x {
            if lhs.y == rhs.y {
                return lhs.z < rhs.z
            }
            return lhs.y < rhs.y
        }
        return lhs.x < rhs.x
    }
    
    /// Compares two vectors scalar by scalar.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is less than or equal to the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors, and then with the Z values.
    /// This operator is useful for sorting vectors.
    ///
    /// >note: Vectors with `nan` elements don't behave the same as other vectors.
    /// Therefore, the results from this operator may not be accurate if `nan`s are included.
    public static func <= (lhs: Vector3I, rhs: Vector3I) -> Bool {
        if lhs.x == rhs.x {
            if lhs.y == rhs.y {
                return lhs.z <= rhs.z
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
    /// values of the two vectors, and then with the Z values.
    /// This operator is useful for sorting vectors.
    ///
    /// >note: Vectors with `nan` elements don't behave the same as other vectors.
    /// Therefore, the results from this operator may not be accurate if `nan`s are included.
    public static func > (lhs: Vector3I, rhs: Vector3I) -> Bool {
        if lhs.x == rhs.x {
            if lhs.y == rhs.y {
                return lhs.z > rhs.z
            }
            return lhs.y > rhs.y
        }
        return lhs.x > rhs.x
    }
    
    /// Compares two vectors scalar by scalar.
    ///
    /// This operator compares the two vectors by first checking if the X value
    /// of the left vector is greater than or equal to the X value of the right vector.
    /// If the X values are exactly equal, then it repeats this check with the Y
    /// values of the two vectors, and then with the Z values.
    /// This operator is useful for sorting vectors.
    ///
    /// >note: Vectors with `nan` elements don't behave the same as other vectors.
    /// Therefore, the results from this operator may not be accurate if `nan`s are included.
    public static func >= (lhs: Vector3I, rhs: Vector3I) -> Bool {
        if lhs.x == rhs.x {
            if lhs.y == rhs.y {
                return lhs.z >= rhs.z
            }
            return lhs.y > rhs.y
        }
        return lhs.x > rhs.x
    }
    
    /// The axis of the vector's highest value.
    ///
    /// If all components are equal, this method returns ``Axis3D/x``.
    public var maxAxis: Axis3D {
        x < y ? (y < z ? .z : .y) : (x < z ? .z : .x)
    }
    
    /// The axis of the vector's lowest value.
    ///
    /// If all components are equal, this method returns ``Axis3D/z``.
    public var minAxis: Axis3D {
        x < y ? (x < z ? .x : .z) : (y < z ? .y : .z)
    }
}

// MARK: - CustomStringConvertible

extension Vector3I: CustomStringConvertible, CustomDebugStringConvertible {
    public var description: String {
        "(x: \(x), y: \(y), z: \(z))"
    }
    
    public var debugDescription: String {
        "Vector3I(x: \(x), y: \(y), z: \(z))"
    }
}

// MARK: - ExpressibleByArrayLiteral

extension Vector3I: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Int32...) {
        precondition(
            elements.count == 3,
            "Attempting to create a 3D vector from \(elements.count) elements."
        )
        
        self.x = elements[0]
        self.y = elements[1]
        self.z = elements[2]
    }
}

// MARK: - Codable

extension Vector3I: Codable {
    public func encode(to encoder: Encoder) throws {
        var unkeyedContainer = encoder.unkeyedContainer()
        try unkeyedContainer.encode(x)
        try unkeyedContainer.encode(y)
        try unkeyedContainer.encode(z)
    }
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        x = try container.decode(Int32.self)
        y = try container.decode(Int32.self)
        z = try container.decode(Int32.self)
    }
}
