
struct RegisterGodotClassesSource: FileSource {
    func fileCodeContent(
        for extensionAPI: GodotExtensionAPI,
        with configuration: BuildConfiguration
    ) throws -> Syntax {
        """
        internal extension ClassRegistrar {
            func registerGodotClasses(forLevel level: GodotInitializationLevel) {
                switch level {
                case .core:
                \(classRegistrationSyntax(forClasses: extensionAPI.classes, apiType: .core))
                case .servers:
                \(classRegistrationSyntax(forClasses: extensionAPI.classes, apiType: .servers))
                case .scene:
                \(classRegistrationSyntax(forClasses: extensionAPI.classes, apiType: .scene))
                case .editor:
                \(classRegistrationSyntax(forClasses: extensionAPI.classes, apiType: .editor))
                case .level:
                \(classRegistrationSyntax(forClasses: extensionAPI.classes, apiType: .level))
                }
            }
        }
        """
    }
    
    private func classRegistrationSyntax(
        forClasses classes: [GodotClass],
        apiType: GodotClass.APIType
    ) -> Syntax {
        Syntax {
            let filteredClasses = classes
                .filter { $0.apiType == apiType }
            
            if filteredClasses.isEmpty {
                "break"
            } else {
                for filteredClass in filteredClasses {
                    "\(filteredClass.identifier)._registerClassToGodot()"
                }
            }
        }
    }
}
