
extension BinaryFloatingPoint {
    /// Converts from decibels to linear energy (audio).
    public var dbToLinear: Self {
        exp(self * 0.11512925464970228420089957273422)
    }
    
    /// Converts from linear energy to decibels (audio).
    ///
    /// This can be used to implement volume sliders
    /// that behave as expected (since volume isn't linear).
    public var linearToDB: Self {
        log(self) * 8.6858896380650365530225783783321
    }
    
    /// Converts an angle expressed in degrees to radians.
    public var degToRad: Self {
        self * .pi / 180.0
    }
    
    /// Converts an angle expressed in radians to degrees.
    public var radToDeg: Self {
        self * 180.0 / .pi
    }
}
