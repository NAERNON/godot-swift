import Foundation
import GodotExtensionHeaders

extension ClassRegister {
    struct PropertyInfo {
        let type: Variant.ValueType
        let metadata: PropertyMetadata?
        let name: StringName
        let className: StringName
        let hint: PropertyHint
        let hintString: String
        let defaultValue: Variant?
        private let usage: UInt32
        
        static let none = PropertyInfo(type: .nil,
                                       metadata: nil,
                                       name: .init(),
                                       defaultValue: .none,
                                       hint: .none,
                                       hintString: .init(),
                                       usageFlags: .default, .nilIsVariant,
                                       className: .init())
        static let vararg = PropertyInfo(type: .nil,
                                         metadata: nil,
                                         name: "vararg",
                                         defaultValue: .none,
                                         hint: .none,
                                         hintString: .init(),
                                         usageFlags: .default, .nilIsVariant,
                                         className: .init())
        
        init(type: Variant.ValueType,
             metadata: PropertyMetadata?,
             name: StringName,
             defaultValue: Variant? = nil,
             hint: PropertyHint = .none,
             hintString: String = .init(),
             usageFlags: PropertyUsageFlags...,
             className: StringName) {
            self.type = type
            self.metadata = metadata
            self.name = name
            self.defaultValue = defaultValue
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
    }
}
