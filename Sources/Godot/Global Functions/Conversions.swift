
extension BinaryFloatingPoint {
    /// Converts from decibels to linear energy (audio).
    ///
    /// >tip: This property can also be set, enabling streamlined conversions.
    public var dbToLinear: Self {
        get {
            exp(self * 0.11512925464970228420089957273422)
        }
        set(newValue) {
            self = newValue.linearToDB
        }
    }
    
    /// Converts from linear energy to decibels (audio).
    ///
    /// This can be used to implement volume sliders
    /// that behave as expected (since volume isn't linear).
    ///
    /// >tip: This property can also be set, enabling streamlined conversions.
    public var linearToDB: Self {
        get {
            log(self) * 8.6858896380650365530225783783321
        }
        set(newValue) {
            self = newValue.dbToLinear
        }
    }
    
    /// Converts an angle expressed in degrees to radians.
    ///
    /// >tip: This property can also be set, enabling streamlined conversions:
    /// >```swift
    /// >var degrees = 180.0
    /// >degrees.degToRad = .pi / 2
    /// >print(degrees)
    /// >// Prints "90.0"
    /// >```
    public var degToRad: Self {
        get {
            self * .pi / 180.0
        }
        set(newValue) {
            self = newValue.radToDeg
        }
    }
    
    /// Converts an angle expressed in radians to degrees.
    ///
    /// >tip: This property can also be set, enabling streamlined conversions:
    /// >```swift
    /// >var radians = Double.pi
    /// >radians.radToDeg = 90
    /// >print(radians)
    /// >// Prints "1.57"
    /// >```
    public var radToDeg: Self {
        get {
            self * 180.0 / .pi
        }
        set(newValue) {
            self = newValue.degToRad
        }
    }
}
