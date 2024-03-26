//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class HTTPClient: RefCounted {
    public enum Method: UInt32, GodotEnum {
        case get = 0
        case head = 1
        case post = 2
        case put = 3
        case delete = 4
        case options = 5
        case trace = 6
        case connect = 7
        case patch = 8
        case max = 9

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Get", 0),
            ("Head", 1),
            ("Post", 2),
            ("Put", 3),
            ("Delete", 4),
            ("Options", 5),
            ("Trace", 6),
            ("Connect", 7),
            ("Patch", 8),
            ("Max", 9),]
        }
    }

    public enum Status: UInt32, GodotEnum {
        case disconnected = 0
        case resolving = 1
        case cantResolve = 2
        case connecting = 3
        case cantConnect = 4
        case connected = 5
        case requesting = 6
        case body = 7
        case connectionError = 8
        case tlsHandshakeError = 9

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Disconnected", 0),
            ("Resolving", 1),
            ("Cant Resolve", 2),
            ("Connecting", 3),
            ("Cant Connect", 4),
            ("Connected", 5),
            ("Requesting", 6),
            ("Body", 7),
            ("Connection Error", 8),
            ("Tls Handshake Error", 9),]
        }
    }

    public enum ResponseCode: UInt32, GodotEnum {
        case `continue` = 100
        case switchingProtocols = 101
        case processing = 102
        case ok = 200
        case created = 201
        case accepted = 202
        case nonAuthoritativeInformation = 203
        case noContent = 204
        case resetContent = 205
        case partialContent = 206
        case multiStatus = 207
        case alreadyReported = 208
        case imUsed = 226
        case multipleChoices = 300
        case movedPermanently = 301
        case found = 302
        case seeOther = 303
        case notModified = 304
        case useProxy = 305
        case switchProxy = 306
        case temporaryRedirect = 307
        case permanentRedirect = 308
        case badRequest = 400
        case unauthorized = 401
        case paymentRequired = 402
        case forbidden = 403
        case notFound = 404
        case methodNotAllowed = 405
        case notAcceptable = 406
        case proxyAuthenticationRequired = 407
        case requestTimeout = 408
        case conflict = 409
        case gone = 410
        case lengthRequired = 411
        case preconditionFailed = 412
        case requestEntityTooLarge = 413
        case requestUriTooLong = 414
        case unsupportedMediaType = 415
        case requestedRangeNotSatisfiable = 416
        case expectationFailed = 417
        case imATeapot = 418
        case misdirectedRequest = 421
        case unprocessableEntity = 422
        case locked = 423
        case failedDependency = 424
        case upgradeRequired = 426
        case preconditionRequired = 428
        case tooManyRequests = 429
        case requestHeaderFieldsTooLarge = 431
        case unavailableForLegalReasons = 451
        case internalServerError = 500
        case notImplemented = 501
        case badGateway = 502
        case serviceUnavailable = 503
        case gatewayTimeout = 504
        case httpVersionNotSupported = 505
        case variantAlsoNegotiates = 506
        case insufficientStorage = 507
        case loopDetected = 508
        case notExtended = 510
        case networkAuthRequired = 511

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Continue", 100),
            ("Switching Protocols", 101),
            ("Processing", 102),
            ("Ok", 200),
            ("Created", 201),
            ("Accepted", 202),
            ("Non Authoritative Information", 203),
            ("No Content", 204),
            ("Reset Content", 205),
            ("Partial Content", 206),
            ("Multi Status", 207),
            ("Already Reported", 208),
            ("Im Used", 226),
            ("Multiple Choices", 300),
            ("Moved Permanently", 301),
            ("Found", 302),
            ("See Other", 303),
            ("Not Modified", 304),
            ("Use Proxy", 305),
            ("Switch Proxy", 306),
            ("Temporary Redirect", 307),
            ("Permanent Redirect", 308),
            ("Bad Request", 400),
            ("Unauthorized", 401),
            ("Payment Required", 402),
            ("Forbidden", 403),
            ("Not Found", 404),
            ("Method Not Allowed", 405),
            ("Not Acceptable", 406),
            ("Proxy Authentication Required", 407),
            ("Request Timeout", 408),
            ("Conflict", 409),
            ("Gone", 410),
            ("Length Required", 411),
            ("Precondition Failed", 412),
            ("Request Entity Too Large", 413),
            ("Request Uri Too Long", 414),
            ("Unsupported Media Type", 415),
            ("Requested Range Not Satisfiable", 416),
            ("Expectation Failed", 417),
            ("Im A Teapot", 418),
            ("Misdirected Request", 421),
            ("Unprocessable Entity", 422),
            ("Locked", 423),
            ("Failed Dependency", 424),
            ("Upgrade Required", 426),
            ("Precondition Required", 428),
            ("Too Many Requests", 429),
            ("Request Header Fields Too Large", 431),
            ("Unavailable For Legal Reasons", 451),
            ("Internal Server Error", 500),
            ("Not Implemented", 501),
            ("Bad Gateway", 502),
            ("Service Unavailable", 503),
            ("Gateway Timeout", 504),
            ("Http Version Not Supported", 505),
            ("Variant Also Negotiates", 506),
            ("Insufficient Storage", 507),
            ("Loop Detected", 508),
            ("Not Extended", 510),
            ("Network Auth Required", 511),]
        }
    }

    internal static var __method_binding_connect_to_host: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "connect_to_host").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 504540374)!
        }
        }
    }()

    public func connectToHost(
        _ host: Godot.GodotString,
        port: Int32 = -1,
        tlsOptions: Godot.TLSOptions? = nil
    ) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        host.withGodotUnsafeRawPointer { __ptr_host in
        port.withGodotUnsafeRawPointer { __ptr_port in
        tlsOptions.withGodotUnsafeRawPointer { __ptr_tlsOptions in
        withUnsafePointer(to: __ptr_tlsOptions) { _ptr___ptr_tlsOptions in
        withUnsafeArgumentPackPointer(__ptr_host, __ptr_port, _ptr___ptr_tlsOptions) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_connect_to_host,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}
    }

    internal static var __method_binding_set_connection: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_connection").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3281897016)!
        }
        }
    }()

    private func __setConnection(
        _ connection: Godot.StreamPeer?
    ) {
        connection.withGodotUnsafeRawPointer { __ptr_connection in
        withUnsafePointer(to: __ptr_connection) { _ptr___ptr_connection in
        withUnsafeArgumentPackPointer(_ptr___ptr_connection) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_connection,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_connection: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_connection").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2741655269)!
        }
        }
    }()

    private func __getConnection() -> Godot.StreamPeer? {
        Godot.StreamPeer?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_connection,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_request_raw: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "request_raw").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 540161961)!
        }
        }
    }()

    public func requestRaw(
        method: Godot.HTTPClient.Method,
        url: Godot.GodotString,
        headers: Godot.PackedStringArray,
        body: Godot.PackedByteArray
    ) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        method.withGodotUnsafeRawPointer { __ptr_method in
        url.withGodotUnsafeRawPointer { __ptr_url in
        headers.withGodotUnsafeRawPointer { __ptr_headers in
        body.withGodotUnsafeRawPointer { __ptr_body in
        withUnsafeArgumentPackPointer(__ptr_method, __ptr_url, __ptr_headers, __ptr_body) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_request_raw,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}
    }

    internal static var __method_binding_request: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "request").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3778990155)!
        }
        }
    }()

    public func request(
        method: Godot.HTTPClient.Method,
        url: Godot.GodotString,
        headers: Godot.PackedStringArray,
        body: Godot.GodotString = ""
    ) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        method.withGodotUnsafeRawPointer { __ptr_method in
        url.withGodotUnsafeRawPointer { __ptr_url in
        headers.withGodotUnsafeRawPointer { __ptr_headers in
        body.withGodotUnsafeRawPointer { __ptr_body in
        withUnsafeArgumentPackPointer(__ptr_method, __ptr_url, __ptr_headers, __ptr_body) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_request,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}
    }

    internal static var __method_binding_close: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "close").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func close() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_close,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_has_response: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_response").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    public func hasResponse() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_response,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_is_response_chunked: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_response_chunked").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    public func isResponseChunked() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_response_chunked,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_response_code: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_response_code").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    public func responseCode() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_response_code,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_response_headers: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_response_headers").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2981934095)!
        }
        }
    }()

    public func responseHeaders() -> Godot.PackedStringArray {
        Godot.PackedStringArray.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_response_headers,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_response_headers_as_dictionary: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_response_headers_as_dictionary").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2382534195)!
        }
        }
    }()

    public func responseHeadersAsDictionary() -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_response_headers_as_dictionary,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_response_body_length: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_response_body_length").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    public func responseBodyLength() -> Int64 {
        Int64.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_response_body_length,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_read_response_body_chunk: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "read_response_body_chunk").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2115431945)!
        }
        }
    }()

    public func readResponseBodyChunk() -> Godot.PackedByteArray {
        Godot.PackedByteArray.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_read_response_body_chunk,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_read_chunk_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_read_chunk_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    private func __setReadChunkSize(
        bytes: Int32
    ) {
        bytes.withGodotUnsafeRawPointer { __ptr_bytes in
        withUnsafeArgumentPackPointer(__ptr_bytes) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_read_chunk_size,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_read_chunk_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_read_chunk_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    private func __getReadChunkSize() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_read_chunk_size,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_blocking_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_blocking_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setBlockingMode(
        enabled: Bool
    ) {
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_blocking_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_blocking_mode_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_blocking_mode_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isBlockingModeEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_blocking_mode_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_status: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_status").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1426656811)!
        }
        }
    }()

    public func status() -> Godot.HTTPClient.Status {
        Godot.HTTPClient.Status.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_status,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_poll: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "poll").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 166280745)!
        }
        }
    }()

    public func poll() -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_poll,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_http_proxy: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_http_proxy").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2956805083)!
        }
        }
    }()

    public func setHttpProxy(
        host: Godot.GodotString,
        port: Int32
    ) {
        host.withGodotUnsafeRawPointer { __ptr_host in
        port.withGodotUnsafeRawPointer { __ptr_port in
        withUnsafeArgumentPackPointer(__ptr_host, __ptr_port) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_http_proxy,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_set_https_proxy: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_https_proxy").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2956805083)!
        }
        }
    }()

    public func setHttpsProxy(
        host: Godot.GodotString,
        port: Int32
    ) {
        host.withGodotUnsafeRawPointer { __ptr_host in
        port.withGodotUnsafeRawPointer { __ptr_port in
        withUnsafeArgumentPackPointer(__ptr_host, __ptr_port) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_https_proxy,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_query_string_from_dict: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "query_string_from_dict").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2538086567)!
        }
        }
    }()

    public func queryStringFromDict<Value1: VariantStorable, Value2: VariantStorable>(
        fields: Godot.GodotDictionary<Value1, Value2>
    ) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        fields.withGodotUnsafeRawPointer { __ptr_fields in
        withUnsafeArgumentPackPointer(__ptr_fields) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_query_string_from_dict,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    public var isBlockingModeEnabled: Bool {
        get {
            __isBlockingModeEnabled()
        }
        set {
            __setBlockingMode(
                enabled: newValue
            )
        }
    }

    public var connection: Godot.StreamPeer? {
        get {
            __getConnection()
        }
        set {
            __setConnection(
                newValue
            )
        }
    }

    public var readChunkSize: Int32 {
        get {
            __getReadChunkSize()
        }
        set {
            __setReadChunkSize(
                bytes: newValue
            )
        }
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil

    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        _virtualFunctions = [
            :
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }
}