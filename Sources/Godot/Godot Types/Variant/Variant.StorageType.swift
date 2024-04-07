import GodotExtensionHeaders

extension Variant {
    /// The storage type of a variant.
    ///
    /// Representation and storage types are different.
    /// For instance, `int8`, `int16` and `int32`
    /// have different `RepresentationType`,
    /// but the same `StorageType`: `int`.
    public enum StorageType: UInt32, CaseIterable, ExposableRawRepresentable {
        case `nil`
        
        case bool
        case int
        case float
        case string
        
        case vector2
        case vector2I
        case rect2
        case rect2I
        case vector3
        case vector3I
        case transform2D
        case vector4
        case vector4I
        case plane
        case quaternion
        case aabb
        case basis
        case transform3D
        case projection
        
        case color
        case stringName
        case nodePath
        case rid
        case object
        case callable
        case signal
        case dictionary
        case array
        
        case packedByteArray
        case packedInt32Array
        case packedInt64Array
        case packedFloat32Array
        case packedFloat64Array
        case packedStringArray
        case packedVector2Array
        case packedVector3Array
        case packedColorArray
        
        internal var extensionType: GDExtensionVariantType {
            .init(rawValue)
        }
    }
}

extension Variant.StorageType: GodotRawPointerAccessible {
    func withGodotUnsafeRawPointer<Result>(
        _ body: (UnsafeRawPointer?) throws -> Result
    ) rethrows -> Result {
        try withUnsafePointer(to: rawValue) { try body($0) }
    }
    
    mutating func withGodotUnsafeMutableRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer?) throws -> Result
    ) rethrows -> Result {
        var rawValue = self.rawValue
        let result = try withUnsafeMutablePointer(to: &rawValue) { try body($0) }
        self = .init(rawValue: rawValue)!
        return result
    }
    
    static func fromInitializingMutatingGodotUnsafePointer(
        _ body: (UnsafeMutableRawPointer) -> Void
    ) -> Variant.StorageType {
        var value = RawValue()
        withUnsafeMutablePointer(to: &value) { body($0) }
        return Self(rawValue: value)!
    }
}
