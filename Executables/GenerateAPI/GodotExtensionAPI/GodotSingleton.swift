
/// A representation of a Godot singleton.
///
/// It can be decoded from the `extension_api.json` file.
struct GodotSingleton: Decodable {
    var name: String
    var type: GodotType
}

extension GodotSingleton {
    func declSyntax() -> Syntax {
        let typeSyntax = type.syntax()
        
        return """
        private var _shared\(name) = {
            \(typeSyntax)._exposedClassName.withUnsafeOpaquePointer { namePtr in
                let instancePointer = GodotExtension.Interface.globalGetSingleton(namePtr)
                return \(typeSyntax).retrievedInstanceManagedByGodot(instancePointer)!
            }
        }()
        
        public extension \(typeSyntax) {
            static var shared: \(typeSyntax) { 
                _shared\(name)
            }
        }
        """
    }
}
