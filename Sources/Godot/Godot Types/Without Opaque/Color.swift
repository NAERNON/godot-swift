
public struct Color {
    public var r: Float
    public var g: Float
    public var b: Float
    public var a: Float
    
    public init(r: Float, g: Float, b: Float, a: Float) {
        self.r = r
        self.g = g
        self.b = b
        self.a = a
    }
    
    public init<T>(r: T, g: T, b: T, a: T) where T: BinaryFloatingPoint {
        self.init(r: Float(r), g: Float(g), b: Float(b), a: Float(a))
    }
    
    public init<T>(r: T, g: T, b: T) where T: BinaryFloatingPoint {
        self.init(r: Float(r), g: Float(g), b: Float(b), a: 1)
    }
    
    public init(code: GodotString) {
        self = Self._constructor_godotstring(code: code)
    }
    
    public init<T>(code: GodotString, a: T) where T: BinaryFloatingPoint {
        self = Self._constructor_godotstring_float(code: code, alpha: Float(a))
    }
    
    public init() {
        self.init(r: 0, g: 0, b: 0, a: 0)
    }
    
    // MARK: Operators
    
    public static func == (lhs: Color, rhs: Variant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    public static func == (lhs: Variant, rhs: Color) -> Bool {
        Self._operatorEqual(rhs, lhs)
    }
    
    public static func * <T>(lhs: Color, rhs: T) -> Color where T : BinaryInteger {
        Self._operatorMultiply(lhs, Int(rhs))
    }
    
    public static func * <T>(lhs: Color, rhs: T) -> Color where T : BinaryFloatingPoint {
        Self._operatorMultiply(lhs, Float(rhs))
    }
    
    public static func / <T>(lhs: Color, rhs: T) -> Color where T : BinaryInteger {
        Self._operatorDivide(lhs, Int(rhs))
    }
    
    public static func / <T>(lhs: Color, rhs: T) -> Color where T : BinaryFloatingPoint {
        Self._operatorDivide(lhs, Float(rhs))
    }
    
    public static func + (lhs: Color, rhs: Color) -> Color {
        Self._operatorAdd(lhs, rhs)
    }
    
    public static func - (lhs: Color, rhs: Color) -> Color {
        Self._operatorSubtract(lhs, rhs)
    }
    
    public static func * (lhs: Color, rhs: Color) -> Color {
        Self._operatorMultiply(lhs, rhs)
    }
    
    public static func / (lhs: Color, rhs: Color) -> Color {
        Self._operatorDivide(lhs, rhs)
    }
}

// MARK: - Extensions

extension Color: Equatable, Hashable {}

extension Color: Codable {
    public func encode(to encoder: Encoder) throws {
        try [r, g, b, a].encode(to: encoder)
    }
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        r = try container.decode(Float.self)
        g = try container.decode(Float.self)
        b = try container.decode(Float.self)
        a = try container.decode(Float.self)
    }
}
