
public struct Notification: Sendable {
    public let rawValue: Int32
    
    internal init(rawValue: Int32) {
        self.rawValue = rawValue
    }
}
