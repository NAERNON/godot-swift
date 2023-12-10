import SwiftSyntax
import SwiftSyntaxBuilder

/// A representation of a Godot singleton.
///
/// It can be decoded from the `extension_api.json` file.
struct GodotSingleton: Decodable {
    var name: String
    var type: GodotType
    
    // MARK: Syntax
    
    @CodeBlockItemListBuilder
    func syntax() -> CodeBlockItemListSyntax {
        let typeSyntax = ExprSyntax("\(raw: type.syntax())")
        
        """
        private var _shared\(raw: name) = {
            \(typeSyntax).exposedClassName.withUnsafeRawPointer { namePtr in
                let instancePointer = gdextension_interface_global_get_singleton(namePtr)
                return \(typeSyntax).retrievedInstanceManagedByGodot(instancePointer)!
            }
        }()
        
        public extension \(typeSyntax) {
            static var shared: \(typeSyntax) { _shared\(raw: name) }
        }
        """
    }
}
