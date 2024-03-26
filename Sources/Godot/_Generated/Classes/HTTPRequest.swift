//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotClass
open class HTTPRequest: Node {
    public enum Result: UInt32, GodotEnum {
        case success = 0
        case chunkedBodySizeMismatch = 1
        case cantConnect = 2
        case cantResolve = 3
        case connectionError = 4
        case tlsHandshakeError = 5
        case noResponse = 6
        case bodySizeLimitExceeded = 7
        case bodyDecompressFailed = 8
        case requestFailed = 9
        case downloadFileCantOpen = 10
        case downloadFileWriteError = 11
        case redirectLimitReached = 12
        case timeout = 13

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Success", 0),
            ("Chunked Body Size Mismatch", 1),
            ("Cant Connect", 2),
            ("Cant Resolve", 3),
            ("Connection Error", 4),
            ("Tls Handshake Error", 5),
            ("No Response", 6),
            ("Body Size Limit Exceeded", 7),
            ("Body Decompress Failed", 8),
            ("Request Failed", 9),
            ("Download File Cant Open", 10),
            ("Download File Write Error", 11),
            ("Redirect Limit Reached", 12),
            ("Timeout", 13),]
        }
    }

    public struct RequestCompletedSignalInput: Godot.SignalInput {
        public let result: Int

        public let responseCode: Int

        public let headers: Godot.PackedStringArray

        public let body: Godot.PackedByteArray

        fileprivate init(
            result: Int,
            responseCode: Int,
            headers: Godot.PackedStringArray,
            body: Godot.PackedByteArray
        ) {
            self.result = result
            self.responseCode = responseCode
            self.headers = headers
            self.body = body
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.result), Variant(input.responseCode), Variant(input.headers), Variant(input.body)]
        }
    }

    public func requestCompleted(
        result: Int,
        responseCode: Int,
        headers: Godot.PackedStringArray,
        body: Godot.PackedByteArray
    ) {
        _ = requestCompletedSignal.emit(.init(result: result,
                responseCode: responseCode,
                headers: headers,
                body: body))
    }

    public lazy var requestCompletedSignal: Godot.SignalEmitter<RequestCompletedSignalInput> = {
        .init(object: self, signalName: "request_completed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<RequestCompletedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(result: Int.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!)),
                    responseCode: Int.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 1).pointee!)),
                    headers: Godot.PackedStringArray.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 2).pointee!)),
                    body: Godot.PackedByteArray.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 3).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<RequestCompletedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<RequestCompletedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    internal static var __method_binding_request: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "request").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3215244323)!
        }
        }
    }()

    public func request(
        url: Godot.GodotString,
        customHeaders: Godot.PackedStringArray = PackedStringArray(),
        method: Godot.HTTPClient.Method = HTTPClient.Method(rawValue: 0)!,
        requestData: Godot.GodotString = ""
    ) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        url.withGodotUnsafeRawPointer { __ptr_url in
        customHeaders.withGodotUnsafeRawPointer { __ptr_customHeaders in
        method.withGodotUnsafeRawPointer { __ptr_method in
        requestData.withGodotUnsafeRawPointer { __ptr_requestData in
        withUnsafeArgumentPackPointer(__ptr_url, __ptr_customHeaders, __ptr_method, __ptr_requestData) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_request,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}
    }

    internal static var __method_binding_request_raw: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "request_raw").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2714829993)!
        }
        }
    }()

    public func requestRaw(
        url: Godot.GodotString,
        customHeaders: Godot.PackedStringArray = PackedStringArray(),
        method: Godot.HTTPClient.Method = HTTPClient.Method(rawValue: 0)!,
        requestDataRaw: Godot.PackedByteArray = PackedByteArray()
    ) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        url.withGodotUnsafeRawPointer { __ptr_url in
        customHeaders.withGodotUnsafeRawPointer { __ptr_customHeaders in
        method.withGodotUnsafeRawPointer { __ptr_method in
        requestDataRaw.withGodotUnsafeRawPointer { __ptr_requestDataRaw in
        withUnsafeArgumentPackPointer(__ptr_url, __ptr_customHeaders, __ptr_method, __ptr_requestDataRaw) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_request_raw,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}
    }

    internal static var __method_binding_cancel_request: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "cancel_request").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func cancelRequest() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_cancel_request,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_set_tls_options: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tls_options").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2210231844)!
        }
        }
    }()

    public func setTlsOptions(
        clientOptions: Godot.TLSOptions?
    ) {
        clientOptions.withGodotUnsafeRawPointer { __ptr_clientOptions in
        withUnsafePointer(to: __ptr_clientOptions) { _ptr___ptr_clientOptions in
        withUnsafeArgumentPackPointer(_ptr___ptr_clientOptions) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_tls_options,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_http_client_status: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_http_client_status").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1426656811)!
        }
        }
    }()

    public func httpClientStatus() -> Godot.HTTPClient.Status {
        Godot.HTTPClient.Status.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_http_client_status,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_use_threads: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_use_threads").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setUseThreads(
        enable: Bool
    ) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_use_threads,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_using_threads: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_using_threads").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isUsingThreads() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_using_threads,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_accept_gzip: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_accept_gzip").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setAcceptGzip(
        enable: Bool
    ) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_accept_gzip,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_accepting_gzip: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_accepting_gzip").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isAcceptingGzip() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_accepting_gzip,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_body_size_limit: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_body_size_limit").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    private func __setBodySizeLimit(
        bytes: Int32
    ) {
        bytes.withGodotUnsafeRawPointer { __ptr_bytes in
        withUnsafeArgumentPackPointer(__ptr_bytes) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_body_size_limit,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_body_size_limit: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_body_size_limit").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    private func __getBodySizeLimit() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_body_size_limit,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_max_redirects: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_max_redirects").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    private func __setMaxRedirects(
        amount: Int32
    ) {
        amount.withGodotUnsafeRawPointer { __ptr_amount in
        withUnsafeArgumentPackPointer(__ptr_amount) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_max_redirects,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_max_redirects: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_max_redirects").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    private func __getMaxRedirects() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_max_redirects,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_download_file: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_download_file").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()

    private func __setDownloadFile(
        path: Godot.GodotString
    ) {
        path.withGodotUnsafeRawPointer { __ptr_path in
        withUnsafeArgumentPackPointer(__ptr_path) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_download_file,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_download_file: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_download_file").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()

    private func __getDownloadFile() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_download_file,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_downloaded_bytes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_downloaded_bytes").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    public func downloadedBytes() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_downloaded_bytes,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_body_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_body_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    public func bodySize() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_body_size,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_timeout: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_timeout").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setTimeout(
        _ timeout: Double
    ) {
        timeout.withGodotUnsafeRawPointer { __ptr_timeout in
        withUnsafeArgumentPackPointer(__ptr_timeout) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_timeout,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_timeout: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_timeout").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 191475506)!
        }
        }
    }()

    private func __getTimeout() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_timeout,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_download_chunk_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_download_chunk_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    private func __setDownloadChunkSize(
        _ chunkSize: Int32
    ) {
        chunkSize.withGodotUnsafeRawPointer { __ptr_chunkSize in
        withUnsafeArgumentPackPointer(__ptr_chunkSize) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_download_chunk_size,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_download_chunk_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_download_chunk_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    private func __getDownloadChunkSize() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_download_chunk_size,
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

    public var downloadFile: Godot.GodotString {
        get {
            __getDownloadFile()
        }
        set {
            __setDownloadFile(
                path: newValue
            )
        }
    }

    public var downloadChunkSize: Int32 {
        get {
            __getDownloadChunkSize()
        }
        set {
            __setDownloadChunkSize(
                newValue
            )
        }
    }

    public var isUsingThreads: Bool {
        get {
            __isUsingThreads()
        }
        set {
            __setUseThreads(
                enable: newValue
            )
        }
    }

    public var isAcceptingGzip: Bool {
        get {
            __isAcceptingGzip()
        }
        set {
            __setAcceptGzip(
                enable: newValue
            )
        }
    }

    public var bodySizeLimit: Int32 {
        get {
            __getBodySizeLimit()
        }
        set {
            __setBodySizeLimit(
                bytes: newValue
            )
        }
    }

    public var maxRedirects: Int32 {
        get {
            __getMaxRedirects()
        }
        set {
            __setMaxRedirects(
                amount: newValue
            )
        }
    }

    public var timeout: Double {
        get {
            __getTimeout()
        }
        set {
            __setTimeout(
                newValue
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