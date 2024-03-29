
public struct Transform2D {
    public var xAxis: Vector2
    public var yAxis: Vector2
    public var origin: Vector2
    
    public init(xAxis: Vector2, yAxis: Vector2, origin: Vector2) {
        self.xAxis = xAxis
        self.yAxis = yAxis
        self.origin = origin
    }
    
    public init() {
        self.init(xAxis: Vector2(), yAxis: Vector2(), origin: Vector2())
    }
    
    public init<T>(xAxisX: T, xAxisY: T,
                   yAxisX: T, yAxisY: T,
                   originX: T, originY: T) where T : BinaryFloatingPoint {
        self.init(xAxis: Vector2(x: xAxisX, y: xAxisY),
                  yAxis: Vector2(x: yAxisX, y: yAxisY),
                  origin: Vector2(x: originX, y: originY))
    }
    
    public init<T>(xAxisX: T, xAxisY: T,
                   yAxisX: T, yAxisY: T,
                   originX: T, originY: T) where T : BinaryInteger {
        self.init(xAxis: Vector2(x: xAxisX, y: xAxisY),
                  yAxis: Vector2(x: yAxisX, y: yAxisY),
                  origin: Vector2(x: originX, y: originY))
    }
    
    public init<T>(rotation: T, position: Vector2) where T : BinaryFloatingPoint {
        self = Self._constructor_float_vector2(rotation: Real(rotation), position: position)
    }
    
    public init<T>(rotation: T, position: Vector2) where T : BinaryInteger {
        self = Self._constructor_float_vector2(rotation: Real(rotation), position: position)
    }
    
    public init<T>(rotation: T, scale: Vector2, skew: T, position: Vector2) where T : BinaryFloatingPoint {
        self = Self._constructor_float_vector2_float_vector2(
            rotation: Real(rotation),
            scale: scale,
            skew: Real(skew),
            position: position
        )
    }
    
    public init<T>(rotation: T, scale: Vector2, skew: T, position: Vector2) where T : BinaryInteger {
        self = Self._constructor_float_vector2_float_vector2(
            rotation: Real(rotation),
            scale: scale,
            skew: Real(skew),
            position: position
        )
    }
    
    // MARK: Operators
    
    public static func == (lhs: Transform2D, rhs: some ConvertibleToVariant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    public static func * <T>(lhs: Transform2D, rhs: T) -> Transform2D where T : BinaryInteger {
        Self._operatorMultiply(lhs, Int(rhs))
    }
    
    public static func * <T>(lhs: T, rhs: Transform2D) -> Transform2D where T : BinaryInteger {
        Self._operatorMultiply(rhs, Int(lhs))
    }
    
    public static func * <T>(lhs: Transform2D, rhs: T) -> Transform2D where T : BinaryFloatingPoint {
        Self._operatorMultiply(lhs, Real(rhs))
    }
    
    public static func * <T>(lhs: T, rhs: Transform2D) -> Transform2D where T : BinaryFloatingPoint {
        Self._operatorMultiply(rhs, Real(lhs))
    }
    
    public static func * (lhs: Transform2D, rhs: Vector2) -> Vector2 {
        Self._operatorMultiply(lhs, rhs)
    }
    
    public static func * (lhs: Transform2D, rhs: Rect2) -> Rect2 {
        Self._operatorMultiply(lhs, rhs)
    }
    
    public static func * (lhs: Transform2D, rhs: Transform2D) -> Transform2D {
        Self._operatorMultiply(lhs, rhs)
    }
    
    // MARK: Methods & variables
    
    public func multiplied(withVector2Array vector2Array: PackedVector2Array) -> PackedVector2Array {
        Self._operatorMultiply(self, vector2Array)
    }
    
    public var inversed: Transform2D {
        _inverse()
    }
    
    public var affineInversed: Transform2D {
        _affineInverse()
    }
    
    public var rotation: Real {
        _rotation()
    }
    
    public var scale: Vector2 {
        _scale()
    }
    
    public var skew: Real {
        _skew()
    }
    
    public var orthonormalized: Transform2D {
        _orthonormalized()
    }
    
    public func rotated(by angle: Real) -> Transform2D {
        _rotated(angle: angle)
    }
    
    public func rotatedLocal(by angle: Real) -> Transform2D {
        _rotatedLocal(angle: angle)
    }
    
    public func scaled(by scale: Vector2) -> Transform2D {
        _scaled(scale: scale)
    }
    
    public func scaledLocal(by scale: Vector2) -> Transform2D {
        _scaledLocal(scale: scale)
    }
    
    public func translated(by offset: Vector2) -> Transform2D {
        _translated(offset: offset)
    }
    
    public func translatedLocal(by offset: Vector2) -> Transform2D {
        _translatedLocal(offset: offset)
    }
    
    public var determinant: Real {
        _determinant()
    }
    
    public func basisMultiplied(with v: Vector2) -> Vector2 {
        _basisXform(v)
    }
    
    public func basisMultipliedInv(with v: Vector2) -> Vector2 {
        _basisXformInv(v)
    }
    
    public func interpolated(with other: Transform2D, weight: Real) -> Transform2D {
        _interpolateWith(xform: other, weight: weight)
    }
    
    public func isApproximatelyEqual(to other: Transform2D) -> Bool {
        _isEqualApprox(xform: other)
    }
    
    public var isFinite: Bool {
        _isFinite()
    }
    
    public func looking(at target: Vector2 = Vector2(x: 0, y: 0)) -> Transform2D {
        _lookingAt(target: target)
    }
}

// MARK: - Extensions

extension Transform2D: Equatable, Hashable {}

extension Transform2D: Codable {
    public func encode(to encoder: Encoder) throws {
        try [xAxis, yAxis, origin].encode(to: encoder)
    }
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        xAxis = try container.decode(Vector2.self)
        yAxis = try container.decode(Vector2.self)
        origin = try container.decode(Vector2.self)
    }
}
