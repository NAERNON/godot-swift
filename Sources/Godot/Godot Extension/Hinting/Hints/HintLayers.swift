
extension Hint where Value : FixedWidthInteger {
    /// Hints that an integer property is a bitmask
    /// using the optionally named 2D render layers.
    public static var layers2DRender: Hint {
        .init(propertyHint: .layers2DRender, string: GodotString())
    }
    
    /// Hints that an integer property is a bitmask
    /// using the optionally named 2D physics layers.
    public static var layers2DPhysics: Hint {
        .init(propertyHint: .layers2DPhysics, string: GodotString())
    }
    
    /// Hints that an integer property is a bitmask
    /// using the optionally named 3D render layers.
    public static var layers3DRender: Hint {
        .init(propertyHint: .layers3DRender, string: GodotString())
    }
    
    /// Hints that an integer property is a bitmask
    /// using the optionally named 3D physics layers.
    public static var layers3DPhysics: Hint {
        .init(propertyHint: .layers3DPhysics, string: GodotString())
    }
}
