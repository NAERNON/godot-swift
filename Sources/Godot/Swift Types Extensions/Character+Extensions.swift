import Foundation

extension Character {
    public init(_ godotString: GodotString) {
        self.init(String(godotString: godotString))
    }
}
