import SwiftSyntax

extension GeneratedFile {
    static func registerGodotClasses(_ extensionAPI: GodotExtensionAPI) -> GeneratedFile {
        .init(path: "RegisterGodotClasses.swift") {
            try ExtensionDeclSyntax("internal extension ClassRegister") {
                try FunctionDeclSyntax("func registerGodotClasses(forLevel level: GodotInitializationLevel)") {
                    DeclSyntax("""
                    switch level {
                    case .core:
                    \(raw: classRegistrationSyntax(forClasses: extensionAPI.classes, apiType: .core))
                    case .servers:
                    \(raw: classRegistrationSyntax(forClasses: extensionAPI.classes, apiType: .servers))
                    case .scene:
                    \(raw: classRegistrationSyntax(forClasses: extensionAPI.classes, apiType: .scene))
                    case .editor:
                    \(raw: classRegistrationSyntax(forClasses: extensionAPI.classes, apiType: .editor))
                    case .level:
                    \(raw: classRegistrationSyntax(forClasses: extensionAPI.classes, apiType: .level))
                    }
                    """)
                }
            }
        }
    }
    
    static func classRegistrationSyntax(forClasses classes: [GodotClass], apiType: GodotClass.APIType) -> String {
        let filteredClasses = classes
            .filter { $0.apiType == apiType }
        
        if filteredClasses.isEmpty {
            return "break"
        } else {
            return filteredClasses
                .map { $0.identifier + "._gd_exposeToGodot()" }
                .joined(separator: "\n")
        }
    }
}
