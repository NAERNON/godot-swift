
extension ClassRegistrar {
    /// A representation of a function parameter.
    ///
    /// This structure is used to register functions.
    ///
    /// Use `argument(_:name:)` to create an argument `FunctionParameter`,
    /// or use `returnParameter(_:)` to create a return `FunctionParameter`.
    public struct FunctionParameter {
        /// The variant representation type of the parameter.
        public var variantRepresentationType: Variant.RepresentationType
        
        /// The name of the parameter.
        public var name: GodotStringName
        
        /// The default value of the parameter.
        public var defaultValue: Variant?
        
        /// The name of the class.
        ///
        /// If the parameter is *not* a class, the string is empty.
        public var className: GodotStringName
        
        /// The parameter editor hint.
        public var editorHint: EditorHint
        
        // MARK: Init
        
        private init<Value>(
            type: Value.Type,
            name: GodotStringName,
            defaultValue: Value?,
            className: GodotStringName
        ) where Value : ExposableValue {
            self.variantRepresentationType = type.variantRepresentationType
            self.name = name
            if let defaultValue {
                self.defaultValue = Variant(defaultValue)
            } else {
                self.defaultValue = nil
            }
            self.className = className
            self.editorHint = .none
        }
        
        /// Creates a new FunctionParameter used as a function argument.
        ///
        /// - Parameters:
        ///   - type: The type of the parameter.
        ///   - name: The name of the parameter.
        ///   - defaultValue: The default value of the parameter.
        public static func argument<Value>(
            _ type: Value.Type,
            name: GodotStringName,
            defaultValue: Value? = nil
        ) -> FunctionParameter
        where Value : ExposableValue {
            FunctionParameter(
                type: type,
                name: name,
                defaultValue: defaultValue,
                className: Value._$className
            )
        }
        
        /// Creates a new FunctionParameter used as a function return type.
        ///
        /// - Parameter type: The type of the parameter.
        public static func returnParameter<Value>(_ type: Value.Type) -> FunctionParameter
        where Value : ExposableValue {
            FunctionParameter(
                type: type,
                name: .init(),
                defaultValue: nil,
                className: Value._$className
            )
        }
        
        // MARK: PropertyInfo
        
        /// Creates a `PropertyInfo` using the information of the parameter.
        var propertyInfo: ClassRegistrar.PropertyInfo {
            ClassRegistrar.PropertyInfo(
                variantRepresentationType: variantRepresentationType,
                name: name,
                defaultValue: defaultValue,
                hint: editorHint.hint,
                hintString: editorHint.string,
                usageFlags: .default,
                className: className
            )
        }
    }
}
