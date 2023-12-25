
extension Variant {
    internal static func decode<T>(
        _ type: T.Type,
        from variant: Variant,
        codingPath: [CodingKey],
        userInfo: [CodingUserInfoKey : Any]
    ) throws -> T where T : Decodable {
        let decoder = VariantDecoder(
            variant: variant,
            codingPath: codingPath,
            userInfo: userInfo
        )
        return try T.init(from: decoder)
    }
    
    public static func decode<T>(
        _ type: T.Type,
        from variant: Variant,
        userInfo: [CodingUserInfoKey : Any] = [:]
    ) throws -> T where T : Decodable {
        try decode(type, from: variant, codingPath: [], userInfo: userInfo)
    }
}

// MARK: - Variant Root Decoder

private class VariantRootDecoder {
    let codingPath: [CodingKey]
    let userInfo: [CodingUserInfoKey : Any]
    
    init(codingPath: [CodingKey], userInfo: [CodingUserInfoKey : Any]) {
        self.codingPath = codingPath
        self.userInfo = userInfo
    }
    
    func checkVariantIsNotNil(_ variant: Variant, for type: Any.Type) throws {
        if variant.storage.isNil {
            throw DecodingError.valueNotFound(type, .init(
                codingPath: codingPath,
                debugDescription: "Expected to decode \(type) but no value was found."
            ))
        }
    }
    
    func unwrapValue<T>(from variant: Variant, to type: T.Type) throws -> T
    where T : ExposableValue {
        try checkVariantIsNotNil(variant, for: type)
        
        do {
            return try variant.unwrap(type)
        } catch {
            throw DecodingError.typeMismatch(type, .init(
                codingPath: codingPath,
                debugDescription: "Expected to decode \(type) but an error occurred when unwrapping the variant.",
                underlyingError: error
            ))
        }
    }
    
    final func relativeKeyedContainer<NestedKey>(
        keyedBy keyType: NestedKey.Type,
        from variant: Variant
    ) throws -> VariantKeyedContainer<NestedKey> {
        try .init(
            variants: unwrapValue(from: variant, to: AnyGodotDictionary.self),
            codingPath: codingPath,
            userInfo: userInfo
        )
    }
    
    final func relativeKeyedContainer<NestedKey, Key>(
        keyedBy keyType: NestedKey.Type,
        forKey key: Key,
        from variant: Variant
    ) throws -> VariantKeyedContainer<NestedKey>
    where NestedKey : CodingKey, Key : CodingKey {
        try .init(
            variants: unwrapValue(from: variant, to: AnyGodotDictionary.self),
            codingPath: codingPath + [key],
            userInfo: userInfo
        )
    }
    
    final func relativeUnkeyedContainer(
        from variant: Variant
    ) throws -> VariantUnkeyedContainer {
        try .init(
            variants: unwrapValue(from: variant, to: AnyGodotArray.self),
            codingPath: codingPath,
            userInfo: userInfo
        )
    }
    
    final func relativeUnkeyedContainer<Key>(
        forKey key: Key,
        from variant: Variant
    ) throws -> VariantUnkeyedContainer
    where Key : CodingKey {
        try .init(
            variants: unwrapValue(from: variant, to: AnyGodotArray.self),
            codingPath: codingPath + [key],
            userInfo: userInfo
        )
    }
}

// MARK: -  Variant Decoder

private class VariantDecoder: VariantRootDecoder, Decoder {
    let variant: Variant
    
    init(
        variant: Variant,
        codingPath: [CodingKey],
        userInfo: [CodingUserInfoKey : Any]
    ) {
        self.variant = variant
        super.init(codingPath: codingPath, userInfo: userInfo)
    }
    
    func container<Key>(
        keyedBy type: Key.Type
    ) throws -> KeyedDecodingContainer<Key>
    where Key : CodingKey {
        try .init(relativeKeyedContainer(keyedBy: type, from: variant))
    }
    
    func unkeyedContainer() throws -> UnkeyedDecodingContainer {
        try relativeUnkeyedContainer(from: variant)
    }
    
    func singleValueContainer() throws -> SingleValueDecodingContainer {
        VariantSingleValueContainer(
            variant: variant,
            codingPath: codingPath,
            userInfo: userInfo
        )
    }
}

// MARK: - Keyed

private final class VariantKeyedContainer<Key>: VariantRootDecoder, KeyedDecodingContainerProtocol
where Key : CodingKey {
    let variants: AnyGodotDictionary
    let allKeys: [Key]
    
    init(
        variants: AnyGodotDictionary,
        codingPath: [CodingKey],
        userInfo: [CodingUserInfoKey : Any]
    ) {
        self.variants = variants
        self.allKeys = variants.keys().compactMap {
            guard let string = try? $0.unwrap(String.self) else {
                return nil
            }
            
            return Key(stringValue: string)
        }
        
        super.init(codingPath: codingPath, userInfo: userInfo)
    }
    
    private func variant(for key: Key) throws -> Variant {
        guard let variant = variants[Variant(key.stringValue)] else {
            throw DecodingError.keyNotFound(key, .init(
                codingPath: codingPath,
                debugDescription: "Expected to decode value with key \(key.stringValue) but the key doesn't exist."
            ))
        }
        
        return variant
    }
    
    func contains(_ key: Key) -> Bool {
        allKeys.contains { $0.stringValue == key.stringValue }
    }
    
    func decodeNil(forKey key: Key) throws -> Bool {
        try variant(for: key).storage.isNil
    }
    
    func decode(_ type: Bool.Type, forKey key: Key) throws -> Bool {
        try unwrapValue(from: variant(for: key), to: type)
    }
    
    func decode(_ type: String.Type, forKey key: Key) throws -> String {
        try unwrapValue(from: variant(for: key), to: type)
    }
    
    func decode(_ type: Double.Type, forKey key: Key) throws -> Double {
        try unwrapValue(from: variant(for: key), to: type)
    }
    
    func decode(_ type: Float.Type, forKey key: Key) throws -> Float {
        try unwrapValue(from: variant(for: key), to: type)
    }
    
    func decode(_ type: Int.Type, forKey key: Key) throws -> Int {
        try unwrapValue(from: variant(for: key), to: type)
    }
    
    func decode(_ type: Int8.Type, forKey key: Key) throws -> Int8 {
        try unwrapValue(from: variant(for: key), to: type)
    }
    
    func decode(_ type: Int16.Type, forKey key: Key) throws -> Int16 {
        try unwrapValue(from: variant(for: key), to: type)
    }
    
    func decode(_ type: Int32.Type, forKey key: Key) throws -> Int32 {
        try unwrapValue(from: variant(for: key), to: type)
    }
    
    func decode(_ type: Int64.Type, forKey key: Key) throws -> Int64 {
        try unwrapValue(from: variant(for: key), to: type)
    }
    
    func decode(_ type: UInt.Type, forKey key: Key) throws -> UInt {
        try unwrapValue(from: variant(for: key), to: type)
    }
    
    func decode(_ type: UInt8.Type, forKey key: Key) throws -> UInt8 {
        try unwrapValue(from: variant(for: key), to: type)
    }
    
    func decode(_ type: UInt16.Type, forKey key: Key) throws -> UInt16 {
        try unwrapValue(from: variant(for: key), to: type)
    }
    
    func decode(_ type: UInt32.Type, forKey key: Key) throws -> UInt32 {
        try unwrapValue(from: variant(for: key), to: type)
    }
    
    func decode(_ type: UInt64.Type, forKey key: Key) throws -> UInt64 {
        try unwrapValue(from: variant(for: key), to: type)
    }
    
    func decode<T>(_ type: T.Type, forKey key: Key) throws -> T where T : Decodable {
        try Variant.decode(
            type,
            from: variant(for: key),
            codingPath: codingPath,
            userInfo: userInfo
        )
    }
    
    func nestedContainer<NestedKey>(
        keyedBy type: NestedKey.Type,
        forKey key: Key
    ) throws -> KeyedDecodingContainer<NestedKey>
    where NestedKey : CodingKey {
        try .init(relativeKeyedContainer(keyedBy: type, forKey: key, from: variant(for: key)))
    }
    
    func nestedUnkeyedContainer(forKey key: Key) throws -> UnkeyedDecodingContainer {
        try relativeUnkeyedContainer(forKey: key, from: variant(for: key))
    }
    
    func superDecoder() throws -> Decoder {
        try superDecoder(forKey: Key(stringValue: "super")!)
    }
    
    func superDecoder(forKey key: Key) throws -> Decoder {
        try VariantDecoder(
            variant: variant(for: key),
            codingPath: codingPath + [key],
            userInfo: userInfo
        )
    }
}

// MARK: - Unkeyed

private final class VariantUnkeyedContainer: VariantRootDecoder, UnkeyedDecodingContainer {
    let variants: AnyGodotArray
    private(set) var currentIndex: Int
    
    init(
        variants: AnyGodotArray,
        codingPath: [CodingKey],
        userInfo: [CodingUserInfoKey : Any]
    ) {
        self.variants = variants
        self.currentIndex = 0
        
        super.init(codingPath: codingPath, userInfo: userInfo)
    }
    
    var count: Int? { variants.count }
    var isAtEnd: Bool { currentIndex == variants.count }
    
    private func checkNotAtEnd(forType type: Any.Type) throws {
        if isAtEnd {
            if type == Never.self {
                throw DecodingError.valueNotFound(type, .init(
                    codingPath: codingPath,
                    debugDescription: "Expected to decode a nil or container but no more value found inside container."
                ))
            } else {
                throw DecodingError.valueNotFound(type, .init(
                    codingPath: codingPath,
                    debugDescription: "Expected to decode \(type) but no more value found inside container."
                ))
            }
        }
    }
    
    private func currentVariantAndGoToNext(forType type: Any.Type) throws -> Variant {
        try checkNotAtEnd(forType: type)
        defer { currentIndex += 1 }
        return variants[currentIndex]
    }
    
    func decodeNil() throws -> Bool {
        try currentVariantAndGoToNext(forType: Never.self).storage.isNil
    }
    
    func decode(_ type: Bool.Type) throws -> Bool {
        try unwrapValue(from: currentVariantAndGoToNext(forType: type), to: type)
    }
    
    func decode(_ type: String.Type) throws -> String {
        try unwrapValue(from: currentVariantAndGoToNext(forType: type), to: type)
    }
    
    func decode(_ type: Double.Type) throws -> Double {
        try unwrapValue(from: currentVariantAndGoToNext(forType: type), to: type)
    }
    
    func decode(_ type: Float.Type) throws -> Float {
        try unwrapValue(from: currentVariantAndGoToNext(forType: type), to: type)
    }
    
    func decode(_ type: Int.Type) throws -> Int {
        try unwrapValue(from: currentVariantAndGoToNext(forType: type), to: type)
    }
    
    func decode(_ type: Int8.Type) throws -> Int8 {
        try unwrapValue(from: currentVariantAndGoToNext(forType: type), to: type)
    }
    
    func decode(_ type: Int16.Type) throws -> Int16 {
        try unwrapValue(from: currentVariantAndGoToNext(forType: type), to: type)
    }
    
    func decode(_ type: Int32.Type) throws -> Int32 {
        try unwrapValue(from: currentVariantAndGoToNext(forType: type), to: type)
    }
    
    func decode(_ type: Int64.Type) throws -> Int64 {
        try unwrapValue(from: currentVariantAndGoToNext(forType: type), to: type)
    }
    
    func decode(_ type: UInt.Type) throws -> UInt {
        try unwrapValue(from: currentVariantAndGoToNext(forType: type), to: type)
    }
    
    func decode(_ type: UInt8.Type) throws -> UInt8 {
        try unwrapValue(from: currentVariantAndGoToNext(forType: type), to: type)
    }
    
    func decode(_ type: UInt16.Type) throws -> UInt16 {
        try unwrapValue(from: currentVariantAndGoToNext(forType: type), to: type)
    }
    
    func decode(_ type: UInt32.Type) throws -> UInt32 {
        try unwrapValue(from: currentVariantAndGoToNext(forType: type), to: type)
    }
    
    func decode(_ type: UInt64.Type) throws -> UInt64 {
        try unwrapValue(from: currentVariantAndGoToNext(forType: type), to: type)
    }
    
    func decode<T>(_ type: T.Type) throws -> T where T : Decodable {
        try Variant.decode(
            type,
            from: currentVariantAndGoToNext(forType: type),
            codingPath: codingPath,
            userInfo: userInfo
        )
    }
    
    func nestedContainer<NestedKey>(
        keyedBy type: NestedKey.Type
    ) throws -> KeyedDecodingContainer<NestedKey>
    where NestedKey : CodingKey {
        try .init(relativeKeyedContainer(
            keyedBy: type,
            from: currentVariantAndGoToNext(forType: Never.self)
        ))
    }
    
    func nestedUnkeyedContainer() throws -> UnkeyedDecodingContainer {
        try relativeUnkeyedContainer(from: currentVariantAndGoToNext(forType: Never.self))
    }
    
    func superDecoder() throws -> Decoder {
        try VariantDecoder(
            variant: currentVariantAndGoToNext(forType: Never.self),
            codingPath: codingPath,
            userInfo: userInfo
        )
    }
}

// MARK: - Single value

private final class VariantSingleValueContainer: VariantRootDecoder, SingleValueDecodingContainer {
    let variant: Variant
    
    init(
        variant: Variant,
        codingPath: [CodingKey],
        userInfo: [CodingUserInfoKey : Any]
    ) {
        self.variant = variant
        super.init(codingPath: codingPath, userInfo: userInfo)
    }
    
    func decodeNil() -> Bool {
        variant.storage.isNil
    }

    func decode(_ type: Bool.Type) throws -> Bool {
        try unwrapValue(from: variant, to: type)
    }

    func decode(_ type: String.Type) throws -> String {
        try unwrapValue(from: variant, to: type)
    }

    func decode(_ type: Double.Type) throws -> Double {
        try unwrapValue(from: variant, to: type)
    }

    func decode(_ type: Float.Type) throws -> Float {
        try unwrapValue(from: variant, to: type)
    }

    func decode(_ type: Int.Type) throws -> Int {
        try unwrapValue(from: variant, to: type)
    }

    func decode(_ type: Int8.Type) throws -> Int8 {
        try unwrapValue(from: variant, to: type)
    }

    func decode(_ type: Int16.Type) throws -> Int16 {
        try unwrapValue(from: variant, to: type)
    }

    func decode(_ type: Int32.Type) throws -> Int32 {
        try unwrapValue(from: variant, to: type)
    }

    func decode(_ type: Int64.Type) throws -> Int64 {
        try unwrapValue(from: variant, to: type)
    }

    func decode(_ type: UInt.Type) throws -> UInt {
        try unwrapValue(from: variant, to: type)
    }

    func decode(_ type: UInt8.Type) throws -> UInt8 {
        try unwrapValue(from: variant, to: type)
    }

    func decode(_ type: UInt16.Type) throws -> UInt16 {
        try unwrapValue(from: variant, to: type)
    }

    func decode(_ type: UInt32.Type) throws -> UInt32 {
        try unwrapValue(from: variant, to: type)
    }

    func decode(_ type: UInt64.Type) throws -> UInt64 {
        try unwrapValue(from: variant, to: type)
    }

    func decode<T>(_ type: T.Type) throws -> T where T : Decodable {
        try Variant.decode(
            type,
            from: variant,
            codingPath: codingPath,
            userInfo: userInfo
        )
    }
}
