
public struct Color {
    public var r: Float
    public var g: Float
    public var b: Float
    public var a: Float
    
    public init(r: Float, g: Float, b: Float, a: Float = 1) {
        self.r = r
        self.g = g
        self.b = b
        self.a = a
    }
}

extension Color {
    // MARK: Constructors
    
    public init<T>(r: T, g: T, b: T, a: T = 1) where T: BinaryFloatingPoint {
        self.init(r: Float(r), g: Float(g), b: Float(b), a: Float(a))
    }
    
    public init(code: GodotString) {
        self = Self._constructor_godotstring(code: code)
    }
    
    public init(code: GodotString, alpha: Float) {
        self = Self._constructor_godotstring_float(code: code, alpha: alpha)
    }
    
    public init<T>(code: GodotString, alpha: T) where T: BinaryFloatingPoint {
        self.init(code: code, alpha: Float(alpha))
    }
    
    public init() {
        self.init(r: 0, g: 0, b: 0, a: 0)
    }
    
    // MARK: Operators
    
    public static func * (lhs: Color, rhs: Int) -> Color {
        Self._operatorMultiply(lhs, rhs)
    }
    
    public static func * <T>(lhs: Color, rhs: T) -> Color where T : BinaryInteger {
        lhs * Int(rhs)
    }
    
    public static func * (lhs: Color, rhs: Float) -> Color {
        Self._operatorMultiply(lhs, rhs)
    }
    
    public static func * <T>(lhs: Color, rhs: T) -> Color where T : BinaryFloatingPoint {
        lhs * Float(rhs)
    }
    
    public static func / (lhs: Color, rhs: Int) -> Color {
        Self._operatorDivide(lhs, rhs)
    }
    
    public static func / <T>(lhs: Color, rhs: T) -> Color where T : BinaryInteger {
        lhs / Int(rhs)
    }
    
    public static func / (lhs: Color, rhs: Float) -> Color {
        Self._operatorDivide(lhs, rhs)
    }
    
    public static func / <T>(lhs: Color, rhs: T) -> Color where T : BinaryFloatingPoint {
        lhs / Float(rhs)
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
    
    // MARK: Methods & variables
    
    public var argb32: Int {
        _toArgb32()
    }
    
    public var abgr32: Int {
        _toAbgr32()
    }
    
    public var rgba32: Int {
        _toRgba32()
    }
    
    public var argb64: Int {
        _toArgb64()
    }
    
    public var abgr64: Int {
        _toAbgr64()
    }
    
    public var rgba64: Int {
        _toRgba64()
    }
    
    public func html(withAlpha alpha: Bool = true) -> GodotString {
        _toHtml(withAlpha: alpha)
    }
    
    public func clamped(
        min: Color = Color(r: 0, g: 0, b: 0, a: 0),
        max: Color = Color(r: 1, g: 1, b: 1, a: 1)
    ) -> Color {
        _clamp(min: min, max: max)
    }
    
    public var inverted: Color {
        _inverted()
    }
    
    public func lerp(to other: Color, weight: Float) -> Color {
        _lerp(to: other, weight: weight)
    }
    
    public func lightened(by amount: Float) -> Color {
        _lightened(amount: amount)
    }
    
    public func darkened(by amount: Float) -> Color {
        _darkened(amount: amount)
    }
    
    public func blend(over other: Color) -> Color {
        _blend(over: other)
    }
    
    public var luminance: Float {
        _luminance()
    }
    
    public var srgbToLinear: Color {
        _srgbToLinear()
    }
    
    public var linearToSRGB: Color {
        _linearToSrgb()
    }
    
    public func isApproximatelyEqual(to other: Color) -> Bool {
        _isEqualApprox(to: other)
    }
    
    public static func hex(_ hex: Int) -> Color {
        _hex(hex)
    }
    
    public static func hex64(_ hex: Int) -> Color {
        _hex64(hex: hex)
    }
    
    public static func html(rgba: GodotString) -> Color {
        _html(rgba: rgba)
    }
    
    public static func htmlIsValid(color: GodotString) -> Bool {
        _htmlIsValid(color: color)
    }
    
    public static func fromString(_ string: GodotString, `default`: Color) -> Color {
        _fromString(str: string, default: `default`)
    }
    
    public static func fromHSV(h: Float, s: Float, v: Float, alpha: Float = 1.0) -> Color {
        _fromHsv(h: h, s: s, v: v, alpha: alpha)
    }
    
    public static func fromOkHSL(h: Float, s: Float, l: Float, alpha: Float = 1.0) -> Color {
        _fromOkHsl(h: h, s: s, l: l, alpha: alpha)
    }
    
    public static func fromRGBE9995(rgbe: Int) -> Color {
        _fromRgbe9995(rgbe: rgbe)
    }
}

extension Color: Equatable, Hashable {}

extension Color: Codable {
    public func encode(to encoder: Encoder) throws {
        var unkeyedContainer = encoder.unkeyedContainer()
        try unkeyedContainer.encode(r)
        try unkeyedContainer.encode(g)
        try unkeyedContainer.encode(b)
        try unkeyedContainer.encode(a)
    }
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        let r = try container.decode(Float.self)
        let g = try container.decode(Float.self)
        let b = try container.decode(Float.self)
        let a = try container.decode(Float.self)
        
        self.init(r: r, g: g, b: b, a: a)
    }
}

extension Color: CustomStringConvertible {
    public var description: String {
        "(\(r), \(g), \(b), \(a))"
    }
}

extension Color: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Color(r: \(r), g: \(g), b: \(b), a: \(a))"
    }
}
