import Foundation
import GodotExtensionHeaders

extension ClassRegister {
    public struct PropertyInfo {
        public enum Metadata {
            case intIsInt8
            case intIsInt16
            case intIsInt32
            case intIsInt64
            case intIsUInt8
            case intIsUInt16
            case intIsUInt32
            case intIsUInt64
            case realIsFloat
            case realIsDouble
        }
        
        public let type: Variant.ValueType
        public let metadata: Metadata?
        public let name: StringName
        public let className: StringName
        public let hint: PropertyHint
        public let hintString: String
        private let usage: UInt32
        
        static let none = PropertyInfo(type: .nil,
                                       metadata: nil,
                                       name: "",
                                       hint: .none,
                                       hintString: "",
                                       usageFlags: .default, .nilIsVariant,
                                       className: "")
        static let vararg = PropertyInfo(type: .nil,
                                         metadata: nil,
                                         name: "vararg",
                                         hint: .none,
                                         hintString: "",
                                         usageFlags: .default, .nilIsVariant,
                                         className: "")
        
        init(type: Variant.ValueType,
             metadata: Metadata?,
             name: StringName,
             hint: PropertyHint,
             hintString: String,
             usageFlags: PropertyUsageFlags...,
             className: StringName) {
            self.type = type
            self.metadata = metadata
            self.name = name
            self.hint = hint
            self.hintString = ""
            
            if hint == .resourceType {
                self.className = StringName(string: hintString)
            } else {
                self.className = className
            }
            
            self.usage = usageFlags.reduce(0, { $0 | $1.rawValue })
        }
        
        func withGodotExtensionPropertyInfo(_ body: (GDExtensionPropertyInfo) -> Void) {
            name.withUnsafeExtensionPointer { namePtr in
                className.withUnsafeExtensionPointer { classeNamePtr in
                    hintString.withUnsafeExtensionPointer { hintStringPtr in
                        let info = GDExtensionPropertyInfo(
                            type: type.godotType,
                            name: namePtr,
                            class_name: classeNamePtr,
                            hint: hint.rawValue,
                            hint_string: hintStringPtr,
                            usage: usage
                        )
                        
                        body(info)
                    }
                }
            }
        }
        
        var godotExtensionArgumentMetadata: GDExtensionClassMethodArgumentMetadata {
            guard let metadata else {
                return GDEXTENSION_METHOD_ARGUMENT_METADATA_NONE
            }
            
            switch metadata {
            case .intIsInt8: return GDEXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_INT8
            case .intIsInt16: return GDEXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_INT16
            case .intIsInt32: return GDEXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_INT32
            case .intIsInt64: return GDEXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_INT64
            case .intIsUInt8: return GDEXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_UINT8
            case .intIsUInt16: return GDEXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_UINT16
            case .intIsUInt32: return GDEXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_UINT32
            case .intIsUInt64: return GDEXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_UINT64
            case .realIsFloat: return GDEXTENSION_METHOD_ARGUMENT_METADATA_REAL_IS_FLOAT
            case .realIsDouble: return GDEXTENSION_METHOD_ARGUMENT_METADATA_REAL_IS_DOUBLE
            }
        }
        
        // MARK: Public initalizers
        
        public static func classFunctionParameter<Value, Class>(
            type: Value.Type,
            metadata: Metadata? = nil,
            name: StringName,
            classType: Class.Type
        ) -> PropertyInfo
        where Value : ExpressibleByTypedVariant,
              Class : Object
        {
            .init(type: type.variantStorageType,
                  metadata: metadata,
                  name: name,
                  hint: .none,
                  hintString: String(),
                  className: classType.godotClassName())
        }
        
        #warning("Do all the metadata types.")
        public static func classFunctionParameter<Class>(
            type: Int8.Type,
            name: StringName,
            classType: Class.Type
        ) -> PropertyInfo
        where Class : Object
        {
            .init(type: type.variantStorageType,
                  metadata: .intIsInt8,
                  name: name,
                  hint: .none,
                  hintString: String(),
                  className: classType.godotClassName())
        }
    }
}
