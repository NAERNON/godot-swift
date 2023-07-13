import Foundation

extension ClassRegister {
    /// A representation of a function parameter.
    ///
    /// This structure is used to register functions.
    ///
    /// Use ``argument(_:name:)`` to create an argument `FunctionParameter`,
    /// or use ``returnParameter(_:)`` to create a return `FunctionParameter`.
    public struct FunctionParameter {
        /// The variant representation type of the parameter.
        public let variantType: Variant.RepresentationType
        
        /// The name of the parameter.
        public let name: StringName
        
        /// The default value of the parameter.
        public let defaultValue: Variant?
        
        // MARK: Init
        
        private init<Value>(
            type: Value.Type,
            name: StringName
        ) where Value : ConvertibleToVariant {
            self.variantType = type.variantType
            self.name = name
            self.defaultValue = nil
        }
        
        /// Creates a new `FunctionParameter` used as a function argument.
        ///
        /// - Parameters:
        ///   - type: The type of the parameter.
        ///   - name: The name of the parameter.
        public static func argument<Value>(
            _ type: Value.Type,
            name: StringName
        ) -> FunctionParameter
        where Value : ConvertibleToVariant {
            .init(type: type, name: name)
        }
        
        /// Creates a new `FunctionParameter` used as a function return type.
        ///
        /// - Parameter type: The type of the parameter.
        public static func returnParameter<Value>(_ type: Value.Type) -> FunctionParameter
        where Value : ConvertibleToVariant {
            .init(type: type, name: .init())
        }
        
        // MARK: PropertyInfo
        
        /// Creates a `PropertyInfo` using the information of the parameter.
        ///
        /// - Parameter className: The name of the class.
        func propertyInfo(withClassName className: StringName) -> ClassRegister.PropertyInfo {
            .init(variantType: variantType,
                  name: name,
                  defaultValue: defaultValue,
                  hint: .none,
                  hintString: .init(),
                  className: className) // TODO: Class name should be set at the init of FunctionParameter.
        }
    }
}
