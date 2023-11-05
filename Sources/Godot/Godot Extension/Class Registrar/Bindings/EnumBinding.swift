
extension ClassRegistrar {
    public struct EnumBinding {
        public let name: GodotStringName
        
        public let values: [(GodotStringName, Int64)]
        public let isOptionSet: Bool
        
        // MARK: Init
        
        init(
            name: GodotStringName,
            values: [(GodotStringName, Int64)],
            isOptionSet: Bool
        ) {
            self.name = name
            self.values = values
            self.isOptionSet = isOptionSet
        }
    }
}
