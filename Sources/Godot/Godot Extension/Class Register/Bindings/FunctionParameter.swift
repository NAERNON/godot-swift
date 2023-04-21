import Foundation

extension ClassRegister {
    public struct FunctionParameter {
        public let type: Variant.ValueType
        public let metadata: PropertyMetadata?
        public let name: StringName
        public let defaultValue: Variant?
        
        // MARK: Init
        
        public init<Value>(type: Value.Type,
                           metadata: PropertyMetadata? = nil,
                           name: StringName,
                           defaultValue: Value?) where Value : TypedVariantTransformable {
            self.type = type.variantStorageType
            self.metadata = metadata
            self.name = name
            self.defaultValue = defaultValue?.variant
        }
        
#warning("Do all the metadata types.")
        public init(type: Int8.Type,
                    name: StringName,
                    defaultValue: Int8?) {
            self.init(type: type,
                      metadata: .intIsInt8,
                      name: name,
                      defaultValue: defaultValue)
        }
        
        // MARK: Tools
        
        func propertyInfo(withClassName className: StringName) -> PropertyInfo {
            .init(type: type,
                  metadata: metadata,
                  name: name,
                  defaultValue: defaultValue,
                  hint: .none,
                  hintString: .init(),
                  className: className)
        }
    }
}
