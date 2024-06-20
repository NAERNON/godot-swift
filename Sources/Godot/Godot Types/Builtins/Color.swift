
/// A color represented in RGBA format.
///
/// A color is represented in RGBA format by a red, green, blue, and alpha component.
/// Each component is a `Float` value, usually ranging from `0.0` to `1.0`.
/// Some properties (such as ``CanvasItem/modulate``) may support values
/// greater than `1.0`, for overbright or HDR (High Dynamic Range) colors.
///
/// ### Use in Boolean context
///
/// A color evaluates to `false` if it is equal to `Color(0,0,0,1)` (opaque black).
/// Otherwise, a color always evaluates to `true`.
///
/// ## Topics
///
/// ### Creating Color
///
/// - ``Color/init(red:green:blue:alpha:)``
/// - ``Color/init(_:_:_:_:)``
/// - ``Color/init(red8:green8:blue8:alpha8:)``
/// - ``Color/init(hue:saturation:value:alpha:)``
/// - ``Color/init()``
/// - ``Color/fromHex32(_:)``
/// - ``Color/fromHex64(_:)``
///
/// ### Properties
///
/// - ``Color/red-swift.property``
/// - ``Color/green-swift.property``
/// - ``Color/blue-swift.property``
/// - ``Color/alpha``
/// - ``Color/luminance``
///
/// ### Integer Properties
///
/// - ``Color/red8``
/// - ``Color/green8``
/// - ``Color/blue8``
/// - ``Color/alpha8``
///
/// ### Working with HTML String
///
/// - ``Color/htmlString(withAlpha:)``
/// - ``Color/fromHTML(_:)``
/// - ``Color/htmlStringIsValid(_:)``
///
/// ### Format Conversion
///
/// - ``Color/abgr32``
/// - ``Color/abgr64``
/// - ``Color/argb32``
/// - ``Color/argb64``
/// - ``Color/rgba32``
/// - ``Color/rgba64``
/// - ``Color/linearToSRGB``
/// - ``Color/srgbToLinear``
/// - ``Color/fromRGBE9995(rgbe:)``
///
/// ### Inversion
///
/// - ``Color/inverse()``
/// - ``Color/invert()``
///
/// ### Transformation
///
/// - ``Color/lightened(by:)``
/// - ``Color/lighten(by:)``
/// - ``Color/darkened(by:)``
/// - ``Color/darken(by:)``
/// - ``Color/blended(over:)``
/// - ``Color/blend(over:)``
/// - ``Color/clamped(lowerBound:upperBound:)``
/// - ``Color/clamp(lowerBound:upperBound:)``
///
/// ### Interpolation
///
/// - ``Color/lerp(to:weight:)``
/// - ``Color/formLerp(to:weight:)``
///
/// ### Approximate Equality
///
/// - ``Color/isApproximatelyEqual(to:)``
public struct Color: Equatable, Hashable {
    /// The color's red component, typically on the range of `0` to `1`.
    public var red: Float
    
    /// The color's green component, typically on the range of `0` to `1`.
    public var green: Float
    
    /// The color's blue component, typically on the range of `0` to `1`.
    public var blue: Float
    
    /// The color's alpha component, typically on the range of `0` to `1`.
    ///
    /// A value of `0` means that the color is fully transparent.
    /// A value of `1` means that the color is fully opaque.
    public var alpha: Float
    
    // MARK: - Initializers
    
    /// Creates a new color from RGB values, typically between `0.0` and `1.0`.
    public init(red: Float, green: Float, blue: Float, alpha: Float = 1) {
        self.red = red
        self.green = green
        self.blue = blue
        self.alpha = alpha
    }
    
    /// Creates a new color from RGB values, typically between `0.0` and `1.0`.
    public init(_ red: Float, _ green: Float, _ blue: Float, _ alpha: Float = 1) {
        self.red = red
        self.green = green
        self.blue = blue
        self.alpha = alpha
    }
    
    /// Creates a new color from the given red, green, blue, and optionally alpha integer channels
    ///
    /// Each component is divided by `255.0` for their final value.
    /// Use this init instead of the standard color initializer when you
    /// need to match exact color values in an ``Image``.
    ///
    /// ```swift
    /// let red = Color(red8: 255, green8: 0, blue8: 0)
    /// // Same as Color(1, 0, 0).
    /// let darkBlue = Color(red8: 0, green8: 0, blue8: 51)
    /// // Same as Color(0, 0, 0.2).
    /// let myColor = Color(red8: 306, green8: 255, blue8: 0, alpha8: 102)
    /// // Same as Color(1.2, 1, 0, 0.4).
    /// ```
    public init(red8: Int32, green8: Int32, blue8: Int32, alpha8: Int32 = 255) {
        self.red = Float(red8) / 255.0
        self.green = Float(green8) / 255.0
        self.blue = Float(blue8) / 255.0
        self.alpha = Float(alpha8) / 255.0
    }
    
    /// Creates a new color from an [HSV profile](https://en.wikipedia.org/wiki/HSL_and_HSV).
    ///
    /// The `hue`, `saturation`, and `value` are typically between `0.0` and `1.0`.
    public init(
        hue: Float,
        saturation: Float,
        value: Float,
        alpha: Float = 1.0
    ) {
        self.alpha = alpha
        
        if saturation == 0.0 {
            // Achromatic (gray)
            self.red = value
            self.green = value
            self.blue = value
        }
        
        let h = (hue * 6).truncatingRemainder(dividingBy: 6)
        let i = Int(h)
        
        let f: Float = h - Float(i)
        let p: Float = value * (1.0 - saturation)
        let q: Float = value * (1.0 - saturation * f)
        let t: Float = value * (1.0 - saturation * (1.0 - f))
        
        switch i {
            case 0: // Red is the dominant color
            self.red = value
            self.green = t
            self.blue = p
            case 1: // Green is the dominant color
            self.red = q
            self.green = value
            self.blue = p
            case 2:
            self.red = p
            self.green = value
            self.blue = t
            case 3: // Blue is the dominant color
            self.red = p
            self.green = q
            self.blue = value
            case 4:
            self.red = t
            self.green = p
            self.blue = value
            default: // (5) Red is the dominant color
            self.red = value
            self.green = p
            self.blue = q
        }
    }
    
    /// Creates a new color from opaque black.
    ///
    /// This is the same as ``black``.
    public init() {
        self.init(0, 0, 0, 1)
    }
}

// MARK: - Properties

extension Color {
    /// The color's red integer component, typically on the range of `0` to `255`.
    public var red8: Int32 {
        get {
            Int32(red * 255.0)
        }
        set(newValue) {
            red = Float(newValue) / 255.0
        }
    }
    
    /// The color's green integer component, typically on the range of `0` to `255`.
    public var green8: Int32 {
        get {
            Int32(green * 255.0)
        }
        set(newValue) {
            green = Float(newValue) / 255.0
        }
    }
    
    /// The color's blue integer component, typically on the range of `0` to `255`.
    public var blue8: Int32 {
        get {
            Int32(blue * 255.0)
        }
        set(newValue) {
            blue = Float(newValue) / 255.0
        }
    }
    
    /// The color's alpha integer component, typically on the range of `0` to `255`.
    public var alpha8: Int32 {
        get {
            Int32(alpha * 255.0)
        }
        set(newValue) {
            alpha = Float(newValue) / 255.0
        }
    }
}

// MARK: Operators

extension Color {
    /// The multiplication of all components of a color and a floating-point value.
    public static func * (lhs: Color, rhs: Float) -> Color {
        Color(
            lhs.red * rhs,
            lhs.green * rhs,
            lhs.blue * rhs,
            lhs.alpha * rhs
        )
    }
    
    /// Updates the color with the multiplication of all
    /// components of a color and a floating-point value.
    public static func *= (lhs: inout Color, rhs: Float) {
        lhs = lhs * rhs
    }
    
    /// The multiplication of all components of a color and a floating-point value.
    public static func * (lhs: Float, rhs: Color) -> Color {
        rhs * lhs
    }
    
    /// The division of all components of a color and a floating-point value.
    public static func / (lhs: Color, rhs: Float) -> Color {
        Color(
            lhs.red / rhs,
            lhs.green / rhs,
            lhs.blue / rhs,
            lhs.alpha / rhs
        )
    }
    
    /// Updates the color with the division of all components
    /// of a color and a floating-point value.
    public static func /= (lhs: inout Color, rhs: Float) {
        lhs = lhs / rhs
    }
    
    /// The invert of a color.
    ///
    /// This is equivalent to:
    /// ```swift
    /// Color.white - lhs
    /// // or
    /// Color(1 - lhs.r, 1 - lhs.g, 1 - lhs.b, 1 - lhs.a)
    /// ```
    /// Unlike with ``inverse()``, the alpha component is inverted, too.
    public static prefix func - (lhs: Color) -> Color {
        Color(
            1.0 - lhs.red,
            1.0 - lhs.green,
            1.0 - lhs.blue,
            1.0 - lhs.alpha
        )
    }
    
    /// The sum of each component of two colors.
    public static func + (lhs: Color, rhs: Color) -> Color {
        Color(
            lhs.red + rhs.red,
            lhs.green + rhs.green,
            lhs.blue + rhs.blue,
            lhs.alpha + rhs.alpha
        )
    }
    
    /// Updates a color with the sum of each component of two colors.
    public static func += (lhs: inout Color, rhs: Color) {
        lhs = lhs + rhs
    }
    
    /// The subtraction of each component of two colors.
    public static func - (lhs: Color, rhs: Color) -> Color {
        Color(
            lhs.red - rhs.red,
            lhs.green - rhs.green,
            lhs.blue - rhs.blue,
            lhs.alpha - rhs.alpha
        )
    }
    
    /// Updates a color with the subtraction of each component of two colors.
    public static func -= (lhs: inout Color, rhs: Color) {
        lhs = lhs - rhs
    }
    
    /// The multiplication of each component of two colors.
    public static func * (lhs: Color, rhs: Color) -> Color {
        Color(
            lhs.red * rhs.red,
            lhs.green * rhs.green,
            lhs.blue * rhs.blue,
            lhs.alpha * rhs.alpha
        )
    }
    
    /// Updates a color with the multiplication of each component of two colors.
    public static func *= (lhs: inout Color, rhs: Color) {
        lhs = lhs * rhs
    }
    
    /// The division of each component of two colors.
    public static func / (lhs: Color, rhs: Color) -> Color {
        Color(
            lhs.red / rhs.red,
            lhs.green / rhs.green,
            lhs.blue / rhs.blue,
            lhs.alpha / rhs.alpha
        )
    }
    
    /// Updates a color with the division of each component of two colors.
    public static func /= (lhs: inout Color, rhs: Color) {
        lhs = lhs / rhs
    }
}

// MARK: - Functions and variables

extension Color {
    /// Returns the color converted to a 32-bit integer in ARGB format (each component is 8 bits).
    ///
    /// ARGB is more compatible with DirectX.
    public var argb32: UInt32 {
        var c: UInt32 = UInt32((alpha * 255.0).rounded())
        c <<= 8
        c |= UInt32((red * 255.0).rounded())
        c <<= 8
        c |= UInt32((green * 255.0).rounded())
        c <<= 8
        c |= UInt32((blue * 255.0).rounded())

        return c
    }
    
    /// Returns the color converted to a 32-bit integer in ABGR format (each component is 8 bits).
    ///
    /// ABGR is the reversed version of the default RGBA format.
    public var abgr32: UInt32 {
        var c: UInt32 = UInt32((alpha * 255.0).rounded())
        c <<= 8
        c |= UInt32((blue * 255.0).rounded())
        c <<= 8
        c |= UInt32((green * 255.0).rounded())
        c <<= 8
        c |= UInt32((red * 255.0).rounded())

        return c
    }
    
    /// Returns the color converted to a 32-bit integer in RGBA format (each component is 8 bits).
    ///
    /// RGBA is Godot's default format.
    public var rgba32: UInt32 {
        var c: UInt32 = UInt32((red * 255.0).rounded())
        c <<= 8
        c |= UInt32((green * 255.0).rounded())
        c <<= 8
        c |= UInt32((blue * 255.0).rounded())
        c <<= 8
        c |= UInt32((alpha * 255.0).rounded())

        return c
    }
    
    /// Returns the color converted to a 64-bit integer in ARGB format (each component is 16 bits).
    ///
    /// ARGB is more compatible with DirectX.
    public var argb64: UInt64 {
        var c: UInt64 = UInt64((alpha * 65535.0).rounded())
        c <<= 16
        c |= UInt64((red * 65535.0).rounded())
        c <<= 16
        c |= UInt64((green * 65535.0).rounded())
        c <<= 16
        c |= UInt64((blue * 65535.0).rounded())

        return c
    }
    
    /// Returns the color converted to a 64-bit integer in ABGR format (each component is 16 bits).
    ///
    /// ABGR is the reversed version of the default RGBA format.
    public var abgr64: UInt64 {
        var c: UInt64 = UInt64((alpha * 65535.0).rounded())
        c <<= 16
        c |= UInt64((blue * 65535.0).rounded())
        c <<= 16
        c |= UInt64((green * 65535.0).rounded())
        c <<= 16
        c |= UInt64((red * 65535.0).rounded())

        return c
    }
    
    /// Returns the color converted to a 64-bit integer in RGBA format (each component is 16 bits).
    ///
    /// RGBA is Godot's default format.
    public var rgba64: UInt64 {
        var c: UInt64 = UInt64((red * 65535.0).rounded())
        c <<= 16
        c |= UInt64((green * 65535.0).rounded())
        c <<= 16
        c |= UInt64((blue * 65535.0).rounded())
        c <<= 16
        c |= UInt64((alpha * 65535.0).rounded())

        return c
    }
    
    private func _hex(from value: Float) -> (UInt8, UInt8) {
        let scaledValue = (value * 255.0).clamped(lowerBound: 0, upperBound: 255)
        var v = UInt8(scaledValue.rounded())
        
        let c1: UInt8
        var lv = v & 0xF
        if lv < 10 {
            c1 = 48 /*ASCII '0'*/ + lv
        } else {
            c1 = 97 /*ASCII 'a'*/ - 10 + lv
        }

        v >>= 4
        
        let c2: UInt8
        lv = v & 0xF
        if lv < 10 {
            c2 = 48 /*ASCII '0'*/ + lv
        } else {
            c2 = 97 /*ASCII 'a'*/ - 10 + lv
        }

        return (c2, c1)
    }
    
    /// Returns the color converted to an HTML hexadecimal color String in RGBA format.
    /// 
    /// The returned string does not contain the hash (#) prefix.
    ///
    /// ```swift
    /// let white = Color(1, 1, 1, 0.5)
    ///
    /// print(white.htmlString())
    /// // Prints "ffffff7f"
    /// print(white.htmlString(withAlpha: false))
    /// // Prints "ffffff"
    /// ```
    ///
    /// - Parameter withAlpha: A Boolean value indicating whether the alpha is in the returned string.
    /// If `false`, this function excludes alpha from the hexadecimal string,
    /// using RGB format instead of RGBA format.
    public func htmlString(withAlpha: Bool = true) -> GodotString {
        let length = withAlpha ? 8 : 6
        let str = String.init(unsafeUninitializedCapacity: length) { buffer in
            var hex = _hex(from: self.red)
            buffer.initializeElement(at: 0, to: hex.0)
            buffer.initializeElement(at: 1, to: hex.1)
            hex = _hex(from: self.green)
            buffer.initializeElement(at: 2, to: hex.0)
            buffer.initializeElement(at: 3, to: hex.1)
            hex = _hex(from: self.blue)
            buffer.initializeElement(at: 4, to: hex.0)
            buffer.initializeElement(at: 5, to: hex.1)
            
            if withAlpha {
                hex = _hex(from: self.alpha)
                buffer.initializeElement(at: 6, to: hex.0)
                buffer.initializeElement(at: 7, to: hex.1)
            }
            
            return length
        }
        
        return GodotString(swiftString: str)
    }
    
    /// Returns a new color with all components clamped between the components
    /// of the two given colors.
    public func clamped(
        lowerBound: Color = Color(0, 0, 0, 0),
        upperBound: Color = Color(1, 1, 1, 1)
    ) -> Color {
        Color(
            red.clamped(lowerBound: lowerBound.red, upperBound: upperBound.red),
            green.clamped(lowerBound: lowerBound.green, upperBound: upperBound.green),
            blue.clamped(lowerBound: lowerBound.blue, upperBound: upperBound.blue),
            alpha.clamped(lowerBound: lowerBound.alpha, upperBound: upperBound.alpha)
        )
    }
    
    /// Clamps all components between the components
    /// of the two given colors.
    public mutating func clamp(
        lowerBound: Color = Color(0, 0, 0, 0),
        upperBound: Color = Color(1, 1, 1, 1)
    ) {
        self = clamped(lowerBound: lowerBound, upperBound: upperBound)
    }
    
    /// Returns the color with its `r`, `g`, and `b` components inverted.
    ///
    /// This is equivalent to  `Color(1 - r, 1 - g, 1 - b, a)`
    ///
    /// ```swift
    /// let black = Color.white.inverted()
    /// let color = Color(0.3, 0.4, 0.9)
    /// print(color.inverse())
    /// // Prints `(0.7, 0.6, 0.1, 1.0)`
    /// ```
    public func inverse() -> Color {
        var copy = self
        copy.invert()
        return copy
    }
    
    /// Inverses a color by inverting with its `r`, `g`, and `b` components.
    ///
    /// This is equivalent to  `Color(1 - r, 1 - g, 1 - b, a)`
    ///
    /// ```swift
    /// let black = Color.white.inverted()
    /// let color = Color(0.3, 0.4, 0.9)
    /// print(color.inverse())
    /// // Prints `(0.7, 0.6, 0.1, 1.0)`
    /// ```
    public mutating func invert() {
        red = 1.0 - red
        green = 1.0 - green
        blue = 1.0 - blue
    }
    
    /// Returns the result of the linear interpolation between this color
    /// and another one by a given amount.
    ///
    /// The `weight` should be between `0.0` and `1.0` (inclusive).
    public func lerp(to other: Color, weight: Scalar) -> Color {
        Color(
            red.lerp(to: other.red, weight: weight),
            green.lerp(to: other.green, weight: weight),
            blue.lerp(to: other.blue, weight: weight),
            alpha.lerp(to: other.alpha, weight: weight)
        )
    }
    
    /// Replaces this color with the result of the linear interpolation between this color
    /// and another one by a given amount.
    ///
    /// The `weight` should be between `0.0` and `1.0` (inclusive).
    public mutating func formLerp(to other: Color, weight: Scalar) {
        self = lerp(to: other, weight: weight)
    }
    
    /// Returns a new color resulting from making this color lighter by the specified amount
    ///
    /// The `amount` should be between `0.0` and `1.0`.
    ///
    /// ```swift
    /// let green = Color(0.0, 1.0, 0.0)
    /// let lightGreen = green.lightened(0.2)
    /// // 20% lighter than regular green
    /// ```
    public func lightened(by amount: Float) -> Color {
        var copy = self
        copy.red = copy.red + (1.0 - copy.red) * amount
        copy.green = copy.green + (1.0 - copy.green) * amount
        copy.blue = copy.blue + (1.0 - copy.blue) * amount
        return copy
    }
    
    /// Makes this color lighter by the specified amount
    ///
    /// The `amount` should be between `0.0` and `1.0`.
    ///
    /// ```swift
    /// let green = Color(0.0, 1.0, 0.0)
    /// let lightGreen = green.lightened(0.2)
    /// // 20% lighter than regular green
    /// ```
    public mutating func lighten(by amount: Float) {
        self = lightened(by: amount)
    }
    
    /// Returns a new color resulting from making this color darker by the specified amount
    ///
    /// The `amount` should be between `0.0` and `1.0`.
    ///
    /// ```swift
    /// let green = Color(0.0, 1.0, 0.0)
    /// let darkGreen = green.darkened(0.2)
    /// // 20% darker than regular green
    /// ```
    public func darkened(by amount: Float) -> Color {
        var copy = self
        copy.red = copy.red * (1.0 - amount)
        copy.green = copy.green * (1.0 - amount)
        copy.blue = copy.blue * (1.0 - amount)
        return copy
    }
    
    /// Makes this color darker by the specified amount
    ///
    /// The `amount` should be between `0.0` and `1.0`.
    ///
    /// ```swift
    /// let green = Color(0.0, 1.0, 0.0)
    /// let darkGreen = green.darkened(0.2)
    /// // 20% darker than regular green
    /// ```
    public mutating func darken(by amount: Float) {
        self = darkened(by: amount)
    }
    
    /// Returns a new color resulting from overlaying this color over the given color.
    ///
    /// In a painting program, you can imagine it as the
    /// over color painted over this color (including alpha).
    ///
    /// ```swift
    /// let bg = Color(0.0, 1.0, 0.0, 0.5) // Green with alpha of 50%
    /// let fg = Color(1.0, 0.0, 0.0, 0.5) // Red with alpha of 50%
    /// let blendedColor = bg.blended(over: fg) // Brown with alpha of 75%
    /// ```
    public func blended(over other: Color) -> Color {
        var res = Color()
        let sa = 1.0 - other.alpha
        res.alpha = alpha * sa + other.alpha
        if res.alpha == 0 {
            return Color(0, 0, 0, 0)
        } else {
            res.red = (red * alpha * sa + other.red * other.alpha) / res.alpha
            res.green = (green * alpha * sa + other.green * other.alpha) / res.alpha
            res.blue = (blue * alpha * sa + other.blue * other.alpha) / res.alpha
        }
        return res
    }
    
    /// Replaces this color with the result of overlaying this color over the given color.
    ///
    /// In a painting program, you can imagine it as the
    /// over color painted over this color (including alpha).
    ///
    /// ```swift
    /// let bg = Color(0.0, 1.0, 0.0, 0.5) // Green with alpha of 50%
    /// let fg = Color(1.0, 0.0, 0.0, 0.5) // Red with alpha of 50%
    /// let blendedColor = bg.blended(over: fg) // Brown with alpha of 75%
    /// ```
    public mutating func blend(over other: Color) {
        self = self.blended(over: other)
    }
    
    /// Returns the light intensity of the color, as a value between `0.0` and `1.0` (inclusive).
    ///
    /// This is useful when determining light or dark color.
    /// Colors with a luminance smaller than `0.5` can be generally considered dark.
    ///
    /// >note: This property relies on the color being in the linear color space to
    /// return an accurate relative luminance value.
    /// If the color is in the sRGB color space, use ``srgbToLinear`` to convert it to the linear color space first.
    public var luminance: Float {
        0.2126 * red + 0.7152 * green + 0.0722 * blue
    }
    
    /// The color converted to the linear color space.
    ///
    /// This property assumes the original color already is in the sRGB color space
    public var srgbToLinear: Color {
        Color(
            red < 0.04045 ? red * (1.0 / 12.92) : Float.pow((red + 0.055) * (1.0 / (1.0 + 0.055)), 2.4),
            green < 0.04045 ? green * (1.0 / 12.92) : Float.pow((green + 0.055) * (1.0 / (1.0 + 0.055)), 2.4),
            blue < 0.04045 ? blue * (1.0 / 12.92) : Float.pow((blue + 0.055) * (1.0 / (1.0 + 0.055)), 2.4),
            alpha
        )
    }
    
    /// The color converted to the sRGB color space.
    ///
    /// This property assumes the original color is in the linear color space.
    public var linearToSRGB: Color {
        Color(
            red < 0.0031308 ? 12.92 * red : (1.0 + 0.055) * Float.pow(red, 1.0 / 2.4) - 0.055,
            green < 0.0031308 ? 12.92 * green : (1.0 + 0.055) * Float.pow(green, 1.0 / 2.4) - 0.055,
            blue < 0.0031308 ? 12.92 * blue : (1.0 + 0.055) * Float.pow(blue, 1.0 / 2.4) - 0.055,
            alpha
        )
    }
    
    /// Returns `true` if this color is approximately equal to another one.
    public func isApproximatelyEqual(to other: Color) -> Bool {
        red.isApproximatelyEqual(to: other.red) &&
        green.isApproximatelyEqual(to: other.green) &&
        blue.isApproximatelyEqual(to: other.blue) &&
        alpha.isApproximatelyEqual(to: other.alpha)
    }
    
    /// Returns the color associated with the provided hex integer
    /// in 32-bit RGBA format (8 bits per channel).
    ///
    /// ```swift
    /// var red = Color.fromHex32(0xff0000ff)
    /// var darkCyan = Color.fromHex32(0x008b8bff)
    /// var myColor = Color.fromHex32(0xbbefd2a4)
    /// ```
    public static func fromHex32(_ hex: UInt32) -> Color {
        var hex = hex
        let a = Float(hex & 0xFF) / 255.0
        hex >>= 8
        let b = Float(hex & 0xFF) / 255.0
        hex >>= 8
        let g = Float(hex & 0xFF) / 255.0
        hex >>= 8
        let r = Float(hex & 0xFF) / 255.0

        return Color(r, g, b, a)
    }
    
    /// Returns the color associated with the provided hex integer
    /// in 64-bit RGBA format (16 bits per channel).
    public static func fromHex64(_ hex: Int) -> Color {
        var hex = hex
        let a = Float(hex & 0xFFFF) / 65535.0
        hex >>= 16
        let b = Float(hex & 0xFFFF) / 65535.0
        hex >>= 16
        let g = Float(hex & 0xFFFF) / 65535.0
        hex >>= 16
        let r = Float(hex & 0xFFFF) / 65535.0

        return Color(r, g, b, a)
    }
    
    private static func _parseCol4(_ char: Character) -> Int {
        guard let char = char.asciiValue else {
            return -1
        }
        
        if char >= 48 /*ASCII '0'*/ && char <= 57 /*ASCII '9'*/ {
            return Int(char) - 48 /*ASCII '0'*/
        } else if char >= 97 /*ASCII 'a'*/ && char <= 102 /*ASCII 'f'*/ {
            return Int(char) + 10 - 97 /*ASCII 'a'*/
        } else if char >= 65 /*ASCII 'A'*/ && char <= 70 /*ASCII 'F'*/ {
            return Int(char) + 10 - 65 /*ASCII 'A'*/
        }
        return -1
    }

    private static func _parseCol8(_ char1: Character, _ char2: Character) -> Int {
        _parseCol4(char1) * 16 + _parseCol4(char2)
    }
    
    /// Returns a new color from a given HTML hexadecimal color string.
    ///
    /// `string` must be a valid three-digit or six-digit hexadecimal color string,
    /// and may contain an alpha channel value.
    /// If `string` does not contain an alpha channel value, an alpha channel value of `1.0` is applied.
    /// If `string` is invalid, returns `nil`.
    ///
    /// >note: This function is not case-sensitive, and the given string may be prefixed by a hash sign (#).
    ///
    /// ```swift
    /// var blue = Color.fromHTML("#0000ff")
    /// // Color(0.0, 0.0, 1.0, 1.0)
    /// var green = Color.fromHTML("#0F0")
    /// // Color(0.0, 1.0, 0.0, 1.0)
    /// var col = Color.fromHTML("663399cc")
    /// // Color(0.4, 0.2, 0.6, 0.8)
    /// ```
    public static func fromHTML(_ string: GodotString) -> Color? {
        if string.isEmpty {
            return nil
        }
        
        let color: Slice<GodotString>
        if string[0] == "#" {
            color = string.dropFirst(1)
        } else {
            color = string.dropFirst(0)
        }

        // If enabled, use 1 hex digit per channel instead of 2.
        // Other sizes aren't in the HTML/CSS spec but we could add them if desired.
        let isShorthand = color.count < 5
        let alpha: Bool
        
        if color.count == 8 {
            alpha = true
        } else if color.count == 6 {
            alpha = false
        } else if color.count == 4 {
            alpha = true
        } else if color.count == 3 {
            alpha = false
        } else {
            godotPrintError("Invalid color code: " + string + ".")
            return nil
        }

        let r: Float
        let g: Float
        let b: Float
        let a: Float
        
        if isShorthand {
            r = Float(_parseCol4(color[color.startIndex + 0])) / 15.0
            g = Float(_parseCol4(color[color.startIndex + 1])) / 15.0
            b = Float(_parseCol4(color[color.startIndex + 2])) / 15.0
            if alpha {
                a = Float(_parseCol4(color[color.startIndex + 3])) / 15.0
            } else {
                a = 1.0
            }
        } else {
            r = Float(
                _parseCol8(color[color.startIndex + 0],
                           color[color.startIndex + 1])
            ) / 255.0
            g = Float(
                _parseCol8(color[color.startIndex + 2],
                           color[color.startIndex + 3])
            ) / 255.0
            b = Float(
                _parseCol8(color[color.startIndex + 4],
                           color[color.startIndex + 5])
            ) / 255.0
            if alpha {
                a = Float(
                    _parseCol8(color[color.startIndex + 6],
                               color[color.startIndex + 7])
                ) / 255.0
            } else {
                a = 1.0
            }
        }
        
        if r < 0.0 {
            godotPrintError("Invalid color code: " + string + ".")
            return nil
        }
        if g < 0.0 {
            godotPrintError("Invalid color code: " + string + ".")
            return nil
        }
        if b < 0.0 {
            godotPrintError("Invalid color code: " + string + ".")
            return nil
        }
        if a < 0.0 {
            godotPrintError("Invalid color code: " + string + ".")
            return nil
        }

        return Color(r, g, b, a)
    }
    
    /// Returns `true` if the given string is a valid HTML hexadecimal color string.
    ///
    /// The string must be a hexadecimal value (case-insensitive)
    /// of either 3, 4, 6 or 8 digits, and may be prefixed by a hash sign (#).
    ///
    /// This method is identical to ``GodotString/isValidHTMLColor()``.
    ///
    /// ```swift
    /// Color.htmlStringIsValid("#55aaFF")   // Returns true
    /// Color.htmlStringIsValid("#55AAFF20") // Returns true
    /// Color.htmlStringIsValid("55AAFF")    // Returns true
    /// Color.htmlStringIsValid("#F2C")      // Returns true
    ///
    /// Color.htmlStringIsValid("#AABBC")    // Returns false
    /// Color.htmlStringIsValid("#55aaFF5")  // Returns false
    /// ```
    public static func htmlStringIsValid(_ string: GodotString) -> Bool {
        if string.isEmpty {
            return false
        }
        
        
        let color: Slice<GodotString>
        if string[0] == "#" {
            color = string.dropFirst(1)
        } else {
            color = string.dropFirst(0)
        }

        // Check if the amount of hex digits is valid.
        let len = color.count
        if !(len == 3 || len == 4 || len == 6 || len == 8) {
            return false
        }

        // Check if each hex digit is valid.
        for i in 0..<len {
            if _parseCol4(color[color.startIndex + i]) == -1 {
                return false
            }
        }

        return true
    }
    
    /// Decodes a color from a RGBE9995 format integer.
    ///
    /// See ``Image/FORMAT_RGBE9995``.
    public static func fromRGBE9995(rgbe: UInt32) -> Color {
        let r = rgbe & 0x1ff
        let g = (rgbe >> 9) & 0x1ff
        let b = (rgbe >> 18) & 0x1ff
        let e = (rgbe >> 27)
        let m = Float.pow(2.0, Float(e) - 15.0 - 9.0)

        let rd = Float(r) * m
        let gd = Float(g) * m
        let bd = Float(b) * m

        return Color(rd, gd, bd, 1.0)
    }
}

// MARK: - Codable

extension Color: Codable {
    public func encode(to encoder: Encoder) throws {
        var unkeyedContainer = encoder.unkeyedContainer()
        try unkeyedContainer.encode(red)
        try unkeyedContainer.encode(green)
        try unkeyedContainer.encode(blue)
        try unkeyedContainer.encode(alpha)
    }
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        let r = try container.decode(Float.self)
        let g = try container.decode(Float.self)
        let b = try container.decode(Float.self)
        let a = try container.decode(Float.self)
        
        self.init(red: r, green: g, blue: b, alpha: a)
    }
}

// MARK: - CustomStringConvertible

extension Color: CustomStringConvertible {
    public var description: String {
        "(\(red), \(green), \(blue), \(alpha))"
    }
}

extension Color: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Color(r: \(red), g: \(green), b: \(blue), a: \(alpha))"
    }
}
