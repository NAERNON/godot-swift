import SwiftSyntax
import SwiftSyntaxBuilder

extension GeneratedFile {
    static func `class`(
        _ extensionAPI: GodotExtensionAPI,
        for `class`: GodotClass
    ) -> GeneratedFile {
        .init(path: "Classes/" + `class`.identifier + ".swift") {
            "import GodotExtensionHeaders"
            
            try ClassDeclSyntax("\(raw: classHeader(for: `class`))") {
                try `class`.enumSyntax()
                    .with(\.trailingTrivia, .newlines(2))
                
                try `class`.signalsSyntax()
                    .with(\.trailingTrivia, .newlines(2))
                
                try `class`.methodsSyntax()
                    .with(\.trailingTrivia, .newlines(2))
                
                try `class`.propertiesSyntax()
                    .with(\.trailingTrivia, .newlines(2))
                                
                try `class`.setVirtualFunctionBindingsSyntax()
                    .with(\.trailingTrivia, .newlines(2))
            }
        }
    }
    
    private static func classHeader(for `class`: GodotClass) -> String {
        var header = String()
        if `class`.isRootClass {
            header += "@GodotRootClass\n"
        } else if `class`.isRefCountedRootClass {
            header += "@GodotRefCountedRootClass\n"
        } else if `class`.isRefcounted {
            header += "@GodotRefCountedClass\n"
        } else {
            header += "@GodotClass\n"
        }
        
        header += "open class \(`class`.identifier)"
        if let superclass = `class`.inherits {
            header += ": \(superclass.syntax())"
        }
        return header
    }
}
