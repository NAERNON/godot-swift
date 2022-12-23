import Foundation

extension Character {
    public init(_ godotString: Godot.String) {
        self.init(Swift.String(godotString: godotString))
    }
}
