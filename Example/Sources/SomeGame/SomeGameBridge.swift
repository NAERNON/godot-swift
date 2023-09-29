import Godot

@Bridge
enum SomeGameBridge {
    static let exposedClasses: [Object.Type] = [
        Character.self,
    ]
}
