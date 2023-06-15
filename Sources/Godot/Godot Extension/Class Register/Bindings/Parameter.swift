import Foundation

extension ClassRegister {
    public struct Parameter {
        public let type: Variant.ValueType
        public let name: StringName
        public let defaultValue: Variant?
        
        private let metadata: ClassRegister.PropertyMetadata?
        
        // MARK: Init
        
        private init<Value>(type: Value.Type,
                            name: StringName) where Value : ExpressibleByTypedVariant {
            self.type = type.variantStorageType
            self.name = name
            self.defaultValue = nil
            self.metadata = .init(type)
        }
        
        public static func argument<Value>(_ type: Value.Type, name: StringName) -> Parameter
        where Value : ExpressibleByTypedVariant {
            .init(type: type, name: name)
        }
        
        public static func returnParameter<Value>(_ type: Value.Type) -> Parameter
        where Value : ExpressibleByTypedVariant {
            .init(type: type, name: .init())
        }
        
        // MARK: Tools
        
        func propertyInfo(withClassName className: StringName) -> ClassRegister.PropertyInfo {
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
