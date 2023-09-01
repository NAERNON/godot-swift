import GodotExtensionHeaders

@GodotOpaqueBuiltinClass
public struct GodotString {
    public init() {
        self = Self._constructor()
    }
    
    public init(swiftString: String) {
        self.init()
        
        withUnsafeRawPointer { extensionPtr in
            swiftString.withCString { cString in
                gdextension_interface_string_new_with_utf8_chars(extensionPtr, cString)
            }
        }
    }
    
    public init(_ value: GodotString) {
        self = value
    }
    
    public init<Subject>(describing instance: Subject) {
        self.init(swiftString: .init(describing: instance))
    }
    
    public init(stringName: GodotStringName) {
        self = Self._constructor_godotstringname(from: stringName)
    }
    
    public init(nodePath: NodePath) {
        self = Self._constructor_nodepath(from: nodePath)
    }
    
    public init(_ c: Character) {
        self = GodotString(swiftString: .init(c))
    }
    
    public init(godotExtensionPointer: GDExtensionConstStringPtr) {
        self = Self._ptr_constructor_godotstring(from: godotExtensionPointer)
    }
    
    // MARK: Copy
    
    internal mutating func withCopiedOpaque() -> Self {
        Self._constructor_godotstring(from: self)
    }
    
    // MARK: Operators
    
    public static func == (lhs: GodotString, rhs: Variant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    public static func == (lhs: Variant, rhs: GodotString) -> Bool {
        Self._operatorEqual(rhs, lhs)
    }
    
    public static func + (lhs: GodotString, rhs: GodotString) -> GodotString {
        Self._operatorAdd(lhs, rhs)
    }
    
    public static func == (lhs: GodotString, rhs: GodotStringName) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    // MARK: Methods & variables
    
    public func caseCompare(to other: GodotString) -> Int {
        _casecmpTo(other)
    }
    
    public func noCaseCompare(to other: GodotString) -> Int {
        _nocasecmpTo(other)
    }
    
    public func naturalCaseCompare(to other: GodotString) -> Int {
        _naturalcasecmpTo(other)
    }
    
    public func naturalNoCaseCompare(to other: GodotString) -> Int {
        _naturalnocasecmpTo(other)
    }
    
    public func slice(delimiter: GodotString, sliceIndex: Int) -> GodotString {
        _slice(delimiter: delimiter, slice: sliceIndex)
    }
    
    public func slicec(delimiter: Int, sliceIndex: Int) -> GodotString {
        _slicec(delimiter: delimiter, slice: sliceIndex)
    }
    
    public func sliceCount(delimiter: GodotString) -> Int {
        _sliceCount(delimiter: delimiter)
    }
    
    public func find(_ substring: GodotString, from index: Int = 0) -> Int {
        _find(what: substring, from: index)
    }
    
    public func count(_ substring: GodotString, from fromIndex: Int = 0, to toIndex: Int = 0) -> Int {
        _count(what: substring, from: fromIndex, to: toIndex)
    }
    
    public func countn(_ substring: GodotString, from fromIndex: Int = 0, to toIndex: Int = 0) -> Int {
        _countn(what: substring, from: fromIndex, to: toIndex)
    }
    
    public func findn(_ substring: GodotString, from index: Int = 0) -> Int {
        _findn(what: substring, from: index)
    }
    
    public func reverseFind(_ substring: GodotString, from index: Int = -1) -> Int {
        _rfind(what: substring, from: index)
    }
    
    public func reverseFindn(_ substring: GodotString, from index: Int = -1) -> Int {
        _rfindn(what: substring, from: index)
    }
    
    public func matches(_ expr: GodotString) -> Bool {
        _match(expr: expr)
    }
    
    public func matchesn(_ expr: GodotString) -> Bool {
        _matchn(expr: expr)
    }
    
    public func isSubsequence(of other: GodotString) -> Bool {
        _isSubsequenceOf(text: other)
    }
    
    public func isSubsequencen(of other: GodotString) -> Bool {
        _isSubsequenceOfn(text: other)
    }
    
    public func bigrams() -> PackedStringArray {
        _bigrams()
    }
    
    public func similarity(to other: GodotString) -> Double {
        _similarity(text: other)
    }
    
    public func formated(values: Variant, placeholder: GodotString = "{_}") -> GodotString {
        _format(values: values, placeholder: placeholder)
    }
    
    public func capitalized() -> GodotString {
        _capitalize()
    }
    
    public func camelCase() -> GodotString {
        _toCamelCase()
    }
    
    public func pascalCase() -> GodotString {
        _toPascalCase()
    }
    
    public func snakeCase() -> GodotString {
        _toSnakeCase()
    }
    
    public func splitFloats(separator: GodotString, allowEmpty: Bool = true) -> PackedFloat64Array {
        _splitFloats(delimiter: separator, allowEmpty: allowEmpty)
    }
    
    public func uppercased() -> GodotString {
        _toUpper()
    }
    
    public func lowercased() -> GodotString {
        _toLower()
    }
    
    public func `extension`() -> GodotString {
        _extension()
    }
    
    public func basename() -> GodotString {
        _basename()
    }
    
    public func pathJoin(file: GodotString) -> GodotString {
        _pathJoin(file: file)
    }
    
    public func unicode(at index: Int) -> Int {
        _unicodeAt(index)
    }
    
    public func indented(with prefix: GodotString) -> GodotString {
        _indent(prefix: prefix)
    }
    
    public func dedented() -> GodotString {
        _dedent()
    }
    
    public func md5Text() -> GodotString {
        _md5Text()
    }
    
    public func sha1Text() -> GodotString {
        _sha1Text()
    }
    
    public func sha256Text() -> GodotString {
        _sha256Text()
    }
    
    public func md5Buffer() -> PackedByteArray {
        _md5Buffer()
    }
    
    public func sha1Buffer() -> PackedByteArray {
        _sha1Buffer()
    }
    
    public func sha256Buffer() -> PackedByteArray {
        _sha256Buffer()
    }
    
    public func isAbsolutePath() -> Bool {
        _isAbsolutePath()
    }
    
    public func isRelativePath() -> Bool {
        _isRelativePath()
    }
    
    public func simplifiedPath() -> GodotString {
        _simplifyPath()
    }
    
    public func baseDirectory() -> GodotString {
        _baseDir()
    }
    
    public func file() -> GodotString {
        _file()
    }
    
    public func xmlEscaped(escapeQuotes: Bool = false) -> GodotString {
        _xmlEscape(escapeQuotes: escapeQuotes)
    }
    
    public func xmlUnescaped() -> GodotString {
        _xmlUnescape()
    }
    
    public func uriEncoded() -> GodotString {
        _uriEncode()
    }
    
    public func uriDecoded() -> GodotString {
        _uriDecode()
    }
    
    public func cEscaped() -> GodotString {
        _cEscape()
    }
    
    public func cUnescaped() -> GodotString {
        _cUnescape()
    }
    
    public func jsonEscaped() -> GodotString {
        _jsonEscape()
    }
    
    public func validatedNodeName() -> GodotString {
        _validateNodeName()
    }
    
    public func validatedFilename() -> GodotString {
        _validateFilename()
    }
    
    public func isValidIdentifier() -> Bool {
        _isValidIdentifier()
    }
    
    public func isValidInt() -> Bool {
        _isValidInt()
    }
    
    public func isValidFloat() -> Bool {
        _isValidFloat()
    }
    
    public func isValidHaxNumber(withPrefix prefix: Bool = false) -> Bool {
        _isValidHexNumber(withPrefix: prefix)
    }
    
    public func isValidHTMLColor() -> Bool {
        _isValidHtmlColor()
    }
    
    public func isValidIPAddress() -> Bool {
        _isValidIpAddress()
    }
    
    public func isValidFilename() -> Bool {
        _isValidFilename()
    }
    
    public var intValue: Int {
        _toInt()
    }
    
    public var doubleValue: Double {
        _toFloat()
    }
    
    public func hexToInt() -> Int {
        _hexToInt()
    }
    
    public func binToInt() -> Int {
        _binToInt()
    }
    
    public func decimalsPadded(digits: Int) -> GodotString {
        _padDecimals(digits: digits)
    }
    
    public func zerosPadded(digits: Int) -> GodotString {
        _padZeros(digits: digits)
    }
    
    public func asciiBuffer() -> PackedByteArray {
        _toAsciiBuffer()
    }
    
    public func utf8Buffer() -> PackedByteArray {
        _toUtf8Buffer()
    }
    
    public func utf16Buffer() -> PackedByteArray {
        _toUtf16Buffer()
    }
    
    public func utf32Buffer() -> PackedByteArray {
        _toUtf32Buffer()
    }
    
    public func hexDecoded() -> PackedByteArray {
        _hexDecode()
    }
    
    public func wCharBuffer() -> PackedByteArray {
        _toWcharBuffer()
    }
    
    public static func scientificRepresentation(_ number: Double) -> GodotString {
        _numScientific(number: number)
    }
    
    public static func numberRepresentation(_ number: Double, decimals: Int = -1) -> GodotString {
        _num(number: number, decimals: decimals)
    }
    
    public static func int64NumberRepresentation(_ number: Int, base: Int = 10, capitalizeHex: Bool = false) -> GodotString {
        _numInt64(number: number, base: base, capitalizeHex: capitalizeHex)
    }
    
    public static func uint64NumberRepresentation(_ number: Int, base: Int = 10, capitalizeHex: Bool = false) -> GodotString {
        _numUint64(number: number, base: base, capitalizeHex: capitalizeHex)
    }
    
    public static func character(_ char: Int) -> GodotString {
        _chr(char: char)
    }
    
    public static func humanizeSize(_ size: Int) -> GodotString {
        _humanizeSize(size)
    }
}

// MARK: - Extensions

extension GodotString: ExpressibleByStringLiteral, ExpressibleByStringInterpolation {
    public init(stringLiteral value: String) {
        self.init(swiftString: value)
    }
}

extension GodotString: Sequence {}

extension GodotString: Collection {
    public var startIndex: Int {
        0
    }
    
    public var endIndex: Int {
        self._length()
    }
    
    public func index(after i: Int) -> Int {
        i+1
    }
}

extension GodotString: BidirectionalCollection {
    public func index(before i: Int) -> Int {
        i-1
    }
}

extension GodotString: RandomAccessCollection {}

extension GodotString: RangeReplaceableCollection {
    public subscript(index: Int) -> Character {
        get {
            Character(self._getValue(at: Int64(index)))
        }
        set(newValue) {
            self._setValue(GodotString(newValue), at: Int64(index))
        }
    }
    
    public mutating func replaceSubrange<C>(_ subrange: Swift.Range<Int>, with newElements: C)
    where C : Collection, Character == C.Element {
        if subrange.isEmpty {
            var new = self
            for (index, element) in newElements.enumerated() {
                new = new._insert(position: subrange.lowerBound + index, what: .init(element))
            }
            self = new
            return
        }
        
        let substringStart = _substr(from: 0, len: subrange.lowerBound)
        let substringEnd = _substr(from: subrange.upperBound, len: _length() - subrange.upperBound)
        
        self = substringStart + String(newElements) + substringEnd
    }
}

extension GodotString: MutableCollection {}

extension GodotString: Equatable {
    public static func == (lhs: GodotString, rhs: GodotString) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
}

extension GodotString: Comparable {
    public static func > (lhs: GodotString, rhs: GodotString) -> Bool {
        Self._operatorGreater(lhs, rhs)
    }
    
    public static func < (lhs: GodotString, rhs: GodotString) -> Bool {
        Self._operatorLess(lhs, rhs)
    }
    
    public static func >= (lhs: GodotString, rhs: GodotString) -> Bool {
        Self._operatorGreaterEqual(lhs, rhs)
    }
    
    public static func <= (lhs: GodotString, rhs: GodotString) -> Bool {
        Self._operatorLessEqual(lhs, rhs)
    }
}

extension GodotString: Hashable {
    public var hashValue: Int { _hash() }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(_hash())
    }
}

extension GodotString: TextOutputStreamable {
    public func write<Target>(to target: inout Target) where Target : TextOutputStream {
        target.write(.init(godotString: self))
    }
}

extension GodotString: TextOutputStream {
    public mutating func write(_ string: String) {
        self += GodotString(swiftString: string)
    }
}

extension GodotString: LosslessStringConvertible {
    public var description: String {
        .init(godotString: self)
    }
}

extension GodotString: Codable {
    public func encode(to encoder: Encoder) throws {
        try String(godotString: self).encode(to: encoder)
    }
    
    public init(from decoder: Decoder) throws {
        self.init(swiftString: try String(from: decoder))
    }
}
