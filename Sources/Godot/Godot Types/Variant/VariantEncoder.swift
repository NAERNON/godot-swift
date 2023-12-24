
internal extension Variant.Storage {
    static func encode(_ value: some Encodable) throws -> Variant.Storage {
        let encoder = VariantEncoder(codingPath: [], userInfo: [:])
        try value.encode(to: encoder)
        return encoder.generateVariantStorage()
    }
}

public extension Variant {
    static func encode(_ value: some Encodable) throws -> Variant {
        try Variant(storage: .encode(value))
    }
}

// MARK: - Variant Root Encoder

private class VariantRootEncoder {
    let codingPath: [CodingKey]
    let userInfo: [CodingUserInfoKey : Any]
    
    required init(codingPath: [CodingKey], userInfo: [CodingUserInfoKey : Any]) {
        self.codingPath = codingPath
        self.userInfo = userInfo
    }
    
    func generateVariantStorage() -> Variant.Storage {
        fatalError("No storage available")
    }
    
    final func relativeEncoder() -> VariantEncoder {
        .init(codingPath: codingPath, userInfo: userInfo)
    }
    
    final func relativeEncoder<Key>(
        forKey key: Key
    ) -> VariantEncoder
    where Key : CodingKey {
        .init(codingPath: codingPath + [key], userInfo: userInfo)
    }
    
    final func relativeSingleValueContainer() -> VariantSingleValueContainer {
        .init(codingPath: codingPath, userInfo: userInfo)
    }
    
    final func relativeSingleValueContainer<Key>(
        forKey key: Key
    ) -> VariantSingleValueContainer where Key : CodingKey {
        .init(codingPath: codingPath + [key], userInfo: userInfo)
    }
    
    final func relativeKeyedContainer<NestedKey>(
        keyedBy keyType: NestedKey.Type
    ) -> VariantKeyedContainer<NestedKey> {
        .init(codingPath: codingPath, userInfo: userInfo)
    }
    
    final func relativeKeyedContainer<NestedKey, Key>(
        keyedBy keyType: NestedKey.Type,
        forKey key: Key
    ) -> VariantKeyedContainer<NestedKey>
    where NestedKey : CodingKey, Key : CodingKey {
        .init(codingPath: codingPath + [key], userInfo: userInfo)
    }
    
    final func relativeUnkeyedContainer() -> VariantUnkeyedContainer {
        .init(codingPath: codingPath, userInfo: userInfo)
    }
    
    final func relativeUnkeyedContainer<Key>(
        forKey key: Key
    ) -> VariantUnkeyedContainer where Key : CodingKey {
        .init(codingPath: codingPath + [key], userInfo: userInfo)
    }
}

private final class VariantEncoder: VariantRootEncoder, Encoder {
    private var container: VariantRootEncoder? {
        willSet {
            precondition(container == nil, "A container has already been created")
        }
    }
    
    override func generateVariantStorage() -> Variant.Storage {
        precondition(container != nil, "No container found")
        
        return container!.generateVariantStorage()
    }
    
    public func container<Key>(
        keyedBy type: Key.Type
    ) -> KeyedEncodingContainer<Key> where Key : CodingKey {
        let container = relativeKeyedContainer(keyedBy: type)
        self.container = container
        return .init(container)
    }
    
    public func unkeyedContainer() -> UnkeyedEncodingContainer {
        let container = relativeUnkeyedContainer()
        self.container = container
        return container
    }
    
    public func singleValueContainer() -> SingleValueEncodingContainer {
        let container = relativeSingleValueContainer()
        self.container = container
        return container
    }
}

// MARK: - Keyed

private final class VariantKeyedContainer<Key>: VariantRootEncoder, KeyedEncodingContainerProtocol
where Key : CodingKey {
    private var containers = [String : VariantRootEncoder]()
    
    override func generateVariantStorage() -> Variant.Storage {
        var dictionary = AnyGodotDictionary()
        for (name, container) in containers {
            String.withValueStorage(name) { nameStorage in
                dictionary._set(
                    value: container.generateVariantStorage(),
                    forKey: nameStorage
                )
            }
        }
        return AnyGodotDictionary.convertToStorage(dictionary)
    }
    
    func encodeNil(forKey key: Key) throws {
        let container = relativeSingleValueContainer(forKey: key)
        try container.encodeNil()
        containers[key.stringValue] = container
    }
    
    func encode(_ value: Bool, forKey key: Key) throws {
        let container = relativeSingleValueContainer(forKey: key)
        try container.encode(value)
        containers[key.stringValue] = container
    }
    
    func encode(_ value: String, forKey key: Key) throws {
        let container = relativeSingleValueContainer(forKey: key)
        try container.encode(value)
        containers[key.stringValue] = container
    }
    
    func encode(_ value: Double, forKey key: Key) throws {
        let container = relativeSingleValueContainer(forKey: key)
        try container.encode(value)
        containers[key.stringValue] = container
    }
    
    func encode(_ value: Float, forKey key: Key) throws {
        let container = relativeSingleValueContainer(forKey: key)
        try container.encode(value)
        containers[key.stringValue] = container
    }
    
    func encode(_ value: Int, forKey key: Key) throws {
        let container = relativeSingleValueContainer(forKey: key)
        try container.encode(value)
        containers[key.stringValue] = container
    }
    
    func encode(_ value: Int8, forKey key: Key) throws {
        let container = relativeSingleValueContainer(forKey: key)
        try container.encode(value)
        containers[key.stringValue] = container
    }
    
    func encode(_ value: Int16, forKey key: Key) throws {
        let container = relativeSingleValueContainer(forKey: key)
        try container.encode(value)
        containers[key.stringValue] = container
    }
    
    func encode(_ value: Int32, forKey key: Key) throws {
        let container = relativeSingleValueContainer(forKey: key)
        try container.encode(value)
        containers[key.stringValue] = container
    }
    
    func encode(_ value: Int64, forKey key: Key) throws {
        let container = relativeSingleValueContainer(forKey: key)
        try container.encode(value)
        containers[key.stringValue] = container
    }
    
    func encode(_ value: UInt, forKey key: Key) throws {
        let container = relativeSingleValueContainer(forKey: key)
        try container.encode(value)
        containers[key.stringValue] = container
    }
    
    func encode(_ value: UInt8, forKey key: Key) throws {
        let container = relativeSingleValueContainer(forKey: key)
        try container.encode(value)
        containers[key.stringValue] = container
    }
    
    func encode(_ value: UInt16, forKey key: Key) throws {
        let container = relativeSingleValueContainer(forKey: key)
        try container.encode(value)
        containers[key.stringValue] = container
    }
    
    func encode(_ value: UInt32, forKey key: Key) throws {
        let container = relativeSingleValueContainer(forKey: key)
        try container.encode(value)
        containers[key.stringValue] = container
    }
    
    func encode(_ value: UInt64, forKey key: Key) throws {
        let container = relativeSingleValueContainer(forKey: key)
        try container.encode(value)
        containers[key.stringValue] = container
    }
    
    func encode<T>(_ value: T, forKey key: Key) throws where T : Encodable {
        let container = relativeSingleValueContainer(forKey: key)
        try container.encode(value)
        containers[key.stringValue] = container
    }
    
    func nestedContainer<NestedKey>(
        keyedBy keyType: NestedKey.Type,
        forKey key: Key
    ) -> KeyedEncodingContainer<NestedKey> where NestedKey : CodingKey {
        let container = relativeKeyedContainer(keyedBy: keyType, forKey: key)
        containers[key.stringValue] = container
        return .init(container)
    }
    
    func nestedUnkeyedContainer(forKey key: Key) -> UnkeyedEncodingContainer {
        let container = relativeUnkeyedContainer(forKey: key)
        containers[key.stringValue] = container
        return container
    }
    
    func superEncoder() -> Encoder {
        superEncoder(forKey: Key(stringValue: "super")!)
    }
    
    func superEncoder(forKey key: Key) -> Encoder {
        let encoder = relativeEncoder(forKey: key)
        containers[key.stringValue] = encoder
        return encoder
    }
}

// MARK: - Unkeyed

private final class VariantUnkeyedContainer: VariantRootEncoder, UnkeyedEncodingContainer {
    private var containers = [VariantRootEncoder]()
    
    override func generateVariantStorage() -> Variant.Storage {
        var array = AnyGodotArray()
        for container in containers {
            array._append(value: container.generateVariantStorage())
        }
        return AnyGodotArray.convertToStorage(array)
    }
    
    var count: Int { containers.count }
    
    func encodeNil() throws {
        let container = relativeSingleValueContainer()
        try container.encodeNil()
        containers.append(container)
    }
    
    func encode(_ value: Bool) throws {
        let container = relativeSingleValueContainer()
        try container.encode(value)
        containers.append(container)
    }
    
    func encode(_ value: String) throws {
        let container = relativeSingleValueContainer()
        try container.encode(value)
        containers.append(container)
    }
    
    func encode(_ value: Double) throws {
        let container = relativeSingleValueContainer()
        try container.encode(value)
        containers.append(container)
    }
    
    func encode(_ value: Float) throws {
        let container = relativeSingleValueContainer()
        try container.encode(value)
        containers.append(container)
    }
    
    func encode(_ value: Int) throws {
        let container = relativeSingleValueContainer()
        try container.encode(value)
        containers.append(container)
    }
    
    func encode(_ value: Int8) throws {
        let container = relativeSingleValueContainer()
        try container.encode(value)
        containers.append(container)
    }
    
    func encode(_ value: Int16) throws {
        let container = relativeSingleValueContainer()
        try container.encode(value)
        containers.append(container)
    }
    
    func encode(_ value: Int32) throws {
        let container = relativeSingleValueContainer()
        try container.encode(value)
        containers.append(container)
    }
    
    func encode(_ value: Int64) throws {
        let container = relativeSingleValueContainer()
        try container.encode(value)
        containers.append(container)
    }
    
    func encode(_ value: UInt) throws {
        let container = relativeSingleValueContainer()
        try container.encode(value)
        containers.append(container)
    }
    
    func encode(_ value: UInt8) throws {
        let container = relativeSingleValueContainer()
        try container.encode(value)
        containers.append(container)
    }
    
    func encode(_ value: UInt16) throws {
        let container = relativeSingleValueContainer()
        try container.encode(value)
        containers.append(container)
    }
    
    func encode(_ value: UInt32) throws {
        let container = relativeSingleValueContainer()
        try container.encode(value)
        containers.append(container)
    }
    
    func encode(_ value: UInt64) throws {
        let container = relativeSingleValueContainer()
        try container.encode(value)
        containers.append(container)
    }
    
    func encode<T>(_ value: T) throws where T : Encodable {
        let container = relativeSingleValueContainer()
        try container.encode(value)
        containers.append(container)
    }
    
    func nestedContainer<NestedKey>(
        keyedBy keyType: NestedKey.Type
    ) -> KeyedEncodingContainer<NestedKey>
    where NestedKey : CodingKey {
        let container = relativeKeyedContainer(keyedBy: keyType)
        containers.append(container)
        return .init(container)
    }
    
    func nestedUnkeyedContainer() -> UnkeyedEncodingContainer {
        let container = relativeUnkeyedContainer()
        containers.append(container)
        return container
    }
    
    func superEncoder() -> Encoder {
        let encoder = relativeEncoder()
        containers.append(encoder)
        return encoder
    }
}

// MARK: - Single value

private final class VariantSingleValueContainer: VariantRootEncoder, SingleValueEncodingContainer {
    private var variantStorage = Variant.Storage()
    private var isValueEncoded: Bool = false
    
    override func generateVariantStorage() -> Variant.Storage {
        precondition(isValueEncoded, "No value was encoded")
        
        var resultVariantStorage = Variant.Storage()
        resultVariantStorage.swap(with: &variantStorage)
        return resultVariantStorage
    }
    
    private func encodeStorage(_ storage: consuming Variant.Storage) {
        precondition(!isValueEncoded, "A value has already been encoded inside the container")
        variantStorage = storage
        isValueEncoded = true
    }
    
    func encodeNil() throws {
        isValueEncoded = true
    }
    
    func encode(_ value: Bool) throws {
        encodeStorage(Bool.convertToStorage(value))
    }
    
    func encode(_ value: String) throws {
        encodeStorage(String.convertToStorage(value))
    }
    
    func encode(_ value: Double) throws {
        encodeStorage(Double.convertToStorage(value))
    }
    
    func encode(_ value: Float) throws {
        encodeStorage(Float.convertToStorage(value))
    }
    
    func encode(_ value: Int) throws {
        encodeStorage(Int.convertToStorage(value))
    }
    
    func encode(_ value: Int8) throws {
        encodeStorage(Int8.convertToStorage(value))
    }
    
    func encode(_ value: Int16) throws {
        encodeStorage(Int16.convertToStorage(value))
    }
    
    func encode(_ value: Int32) throws {
        encodeStorage(Int32.convertToStorage(value))
    }
    
    func encode(_ value: Int64) throws {
        encodeStorage(Int64.convertToStorage(value))
    }
    
    func encode(_ value: UInt) throws {
        encodeStorage(UInt.convertToStorage(value))
    }
    
    func encode(_ value: UInt8) throws {
        encodeStorage(UInt8.convertToStorage(value))
    }
    
    func encode(_ value: UInt16) throws {
        encodeStorage(UInt16.convertToStorage(value))
    }
    
    func encode(_ value: UInt32) throws {
        encodeStorage(UInt32.convertToStorage(value))
    }
    
    func encode(_ value: UInt64) throws {
        encodeStorage(UInt64.convertToStorage(value))
    }
    
    func encode<T>(_ value: T) throws where T : Encodable {
        let encoder = relativeEncoder()
        try value.encode(to: encoder)
        encodeStorage(encoder.generateVariantStorage())
    }
}
