
extension ErrorType: CustomStringConvertible {
    public var description: String {
        String(godotString: _errorString(error: Int(rawValue)))
    }
}
