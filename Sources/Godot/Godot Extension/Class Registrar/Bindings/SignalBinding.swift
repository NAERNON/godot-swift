import GodotExtensionHeaders

extension ClassRegistrar {
    public struct SignalBinding {
        public let name: GodotStringName
        
        let arguments: [PropertyInfo]
        
        // MARK: Init
        
        init(
            name: GodotStringName,
            arguments: [PropertyInfo]
        ) {
            self.name = name
            self.arguments = arguments
        }
        
        // MARK: Pointers
        
        func withGodotExtensionPropertiesInfo(
            _ body: (UnsafePointer<GDExtensionPropertyInfo>) -> Void
        ) {
            withGodotExtensionPropertiesInfo(properties: arguments) { propertiesInfo in
                let finalPointer = UnsafeMutablePointer<GDExtensionPropertyInfo>.allocate(capacity: arguments.count)
                for (index, propertyInfo) in propertiesInfo.enumerated() {
                    finalPointer[index] = propertyInfo
                }
                
                body(finalPointer)
                
                finalPointer.deinitialize(count: arguments.count)
                finalPointer.deallocate()
            }
        }
        
        private func withGodotExtensionPropertiesInfo(
            properties: [PropertyInfo],
            index: Int = 0,
            _ body: ([GDExtensionPropertyInfo]) -> Void
        ) {
            guard index < properties.count else {
                body([])
                return
            }
            
            var propertyInfo = properties[index]
            propertyInfo.withGodotExtensionPropertyInfo { propertyInfo in
                withGodotExtensionPropertiesInfo(properties: properties, index: index + 1) { propertiesInfo in
                    body([propertyInfo] + propertiesInfo)
                }
            }
        }
    }
}
