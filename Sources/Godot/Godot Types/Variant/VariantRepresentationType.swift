import GodotExtensionHeaders

extension Variant {
    /// The storage type of a variant.
    ///
    /// Representation and storage types are different.
    /// For instance, `int8`, `int16` and `int32`
    /// have different `RepresentationType`,
    /// but the same `StorageType`: `int`.
    public enum StorageType: UInt32, ExposableRawRepresentableValue {
        case `nil`
        
        case bool
        case int
        case float
        case string
        
        case vector2
        case vector2i
        case rect2
        case rect2i
        case vector3
        case vector3i
        case transform2D
        case vector4
        case vector4i
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
        
        func withGodotUnsafeRawPointer<Result>(
            _ body: (UnsafeRawPointer) throws -> Result
        ) rethrows -> Result {
            try withUnsafePointer(to: rawValue) { try body($0) }
        }
        
        static func fromMutatingGodotUnsafePointer(
            _ body: (UnsafeMutableRawPointer) -> Void
        ) -> Self {
            var value = RawValue()
            withUnsafeMutablePointer(to: &value) { body($0) }
            return Self(rawValue: value)!
        }
    }
    
    /// The representation type of a variant.
    ///
    /// Representation and storage types are different.
    /// For instance, `int8`, `int16` and `int32`
    /// have different `RepresentationType`,
    /// but the same `StorageType`: `int`.
    public enum RepresentationType: UInt32, ExposableRawRepresentableValue {
        case `nil`
        case bool
        case uint8
        case uint16
        case uint32
        case uint64
        case int8
        case int16
        case int32
        case int64
        case float
        case double
        case string
        case vector2
        case vector2i
        case rect2
        case rect2i
        case vector3
        case vector3i
        case transform2D
        case vector4
        case vector4i
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
        
        /// Returns the storage type associated with the representation type.
        public var storageType: StorageType {
            switch self {
            case .nil: .nil
            case .bool: .bool
            case .uint8: .int
            case .uint16: .int
            case .uint32: .int
            case .uint64: .int
            case .int8: .int
            case .int16: .int
            case .int32: .int
            case .int64: .int
            case .float: .float
            case .double: .float
            case .string: .string
            case .vector2: .vector2
            case .vector2i: .vector2i
            case .rect2: .rect2
            case .rect2i: .rect2i
            case .vector3: .vector3
            case .vector3i: .vector3i
            case .transform2D: .transform2D
            case .vector4: .vector4
            case .vector4i: .vector4i
            case .plane: .plane
            case .quaternion: .quaternion
            case .aabb: .aabb
            case .basis: .basis
            case .transform3D: .transform3D
            case .projection: .projection
            case .color: .color
            case .stringName: .stringName
            case .nodePath: .nodePath
            case .rid: .rid
            case .object: .object
            case .callable: .callable
            case .signal: .signal
            case .dictionary: .dictionary
            case .array: .array
            case .packedByteArray: .packedByteArray
            case .packedInt32Array: .packedInt32Array
            case .packedInt64Array: .packedInt64Array
            case .packedFloat32Array: .packedFloat32Array
            case .packedFloat64Array: .packedFloat64Array
            case .packedStringArray: .packedStringArray
            case .packedVector2Array: .packedVector2Array
            case .packedVector3Array: .packedVector3Array
            case .packedColorArray: .packedColorArray
            }
        }
        
        internal var argumentMetadata: GDExtensionClassMethodArgumentMetadata {
            switch self {
            case .uint8: GDEXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_UINT8
            case .uint16: GDEXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_UINT16
            case .uint32: GDEXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_UINT32
            case .uint64: GDEXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_UINT64
            case .int8: GDEXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_INT8
            case .int16: GDEXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_INT16
            case .int32: GDEXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_INT32
            case .int64: GDEXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_INT64
            case .float: GDEXTENSION_METHOD_ARGUMENT_METADATA_REAL_IS_FLOAT
            case .double: GDEXTENSION_METHOD_ARGUMENT_METADATA_REAL_IS_DOUBLE
            default: GDEXTENSION_METHOD_ARGUMENT_METADATA_NONE
            }
        }
    }
}
