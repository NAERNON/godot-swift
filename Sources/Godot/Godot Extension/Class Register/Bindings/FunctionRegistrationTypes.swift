import Foundation

extension ClassRegister {
    public struct FunctionRegistrationTypes {
        let arguments: [Parameter]
        let returnType: Parameter?
        
        public init(arguments: [Parameter], returnType: Parameter?) {
            self.arguments = arguments
            self.returnType = returnType
        }
    }
}

extension ClassRegister.FunctionRegistrationTypes {
    public struct Parameter {
        public let type: Variant.ValueType
        public let name: StringName
        public let defaultValue: Variant?
        
        private let metadata: ClassRegister.PropertyMetadata?
        
        // MARK: Init
        
        public init<Value>(type: Value.Type,
                           name: StringName) where Value : ExpressibleByTypedVariant {
            self.type = type.variantStorageType
            self.name = name
            self.defaultValue = nil
            self.metadata = .init(type)
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
