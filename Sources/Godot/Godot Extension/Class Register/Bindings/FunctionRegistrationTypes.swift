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
        public let metadata: ClassRegister.PropertyMetadata?
        public let name: StringName
        public let defaultValue: Variant?
        
        // MARK: Init
        
        public init<Value>(type: Value.Type,
                           name: StringName,
                           defaultValue: Value?) where Value : TypedVariantTransformable {
            self.type = type.variantStorageType
            self.name = name
            self.defaultValue = defaultValue?.variant
            
#warning("Do all the metadata types.")
            if type == Int8.self {
                self.metadata = .intIsInt8
            } else {
                self.metadata = nil
            }
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
