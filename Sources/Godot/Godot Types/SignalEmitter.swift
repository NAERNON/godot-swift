import GodotExtensionHeaders

// MARK: - Input

public protocol SignalInput {
    func _emit(_ signalName: GodotStringName, on object: Object) -> ErrorType
}

// MARK: - Receiver

public final class SignalReceiver<Input> {
    private let _call: (Input) -> Void
    
    fileprivate init(call: @escaping (Input) -> Void) {
        self._call = call
    }
    
    public func call(with input: Input) {
        _call(input)
    }
}

// MARK: - Emitter

// TODO: Doc warn unowned
public struct SignalEmitter<Input> {
    unowned let sourceObject: Object
    let signalName: GodotStringName
    
    let callFunc: GDExtensionCallableCustomCall
    let freeFunc: GDExtensionCallableCustomFree
    let toStringFunc: GDExtensionCallableCustomToString
    
    public init(
        object: Object,
        signalName: GodotStringName,
        callFunc: GDExtensionCallableCustomCall,
        freeFunc: GDExtensionCallableCustomFree,
        toStringFunc: GDExtensionCallableCustomToString
    ) {
        self.sourceObject = object
        self.signalName = signalName
        self.callFunc = callFunc
        self.freeFunc = freeFunc
        self.toStringFunc = toStringFunc
    }
    
    @discardableResult
    public func connect(
        to object: Object? = nil,
        body: @escaping (Input) -> Void
    ) -> SignalConnection {
        let receiver = SignalReceiver(call: body)
        
        let callable = registerCustomCallable(
            on: object,
            receiver: receiver,
            callFunc: callFunc,
            freeFunc: freeFunc,
            toStringFunc: toStringFunc
        )
        
        let errorType = sourceObject.connect(signal: signalName, callable: callable)
        
        return SignalConnection(
            sourceObject: sourceObject,
            signalName: signalName,
            errorType: errorType,
            callable: callable
        )
    }
    
    // TODO: Warn it is an infinite sequence, even if the signal doesn't emit anymore.
    public func connectStream(to object: Object? = nil) -> AsyncStream<Input> {
        AsyncStream { continuation in
            let connection = self.connect(to: object) { input in
                continuation.yield(input)
            }
            
            continuation.onTermination = { @Sendable _ in
                connection.disconnect()
            }
        }
    }
    
    public func connections() -> [SignalConnection] {
        Signal(object: sourceObject, signal: signalName).connections().map { info in
            let infoDictionary = info.unwrap(assuming: AnyGodotDictionary.self)
            
            return SignalConnection(
                sourceObject: sourceObject,
                signalName: signalName,
                errorType: .ok,
                callable: infoDictionary["callable"]!.unwrap(assuming: Callable.self)
            )
        }
    }
}

public extension SignalEmitter where Input : SignalInput {
    func emit(_ input: Input) -> ErrorType {
        input._emit(signalName, on: sourceObject)
    }
}

public extension SignalEmitter where Input == Void {
    func emit() -> ErrorType {
        sourceObject.emitSignal(signalName)
    }
}

private func registerCustomCallable<Receiver>(
    on object: Object?,
    receiver: Receiver,
    callFunc: GDExtensionCallableCustomCall,
    freeFunc: GDExtensionCallableCustomFree,
    toStringFunc: GDExtensionCallableCustomToString
) -> Callable where Receiver : AnyObject {
    var callableInfo = GDExtensionCallableCustomInfo(
        callable_userdata: Unmanaged.passRetained(receiver).toOpaque(),
        token: GodotExtension.token,
        object_id: object?.instanceId() ?? 0,
        call_func: callFunc,
        is_valid_func: nil,
        free_func: freeFunc,
        hash_func: nil,
        equal_func: nil,
        less_than_func: nil,
        to_string_func: toStringFunc
    )
    
    return Callable.fromMutatingGodotUnsafePointer { callablePtr in
        withUnsafeMutablePointer(to: &callableInfo) { callableInfoPtr in
            GodotExtension.Interface.callableCustomCreate(
                callablePtr,
                callableInfoPtr
            )
        }
    }
}

// MARK: - Macro

@freestanding(declaration, names: arbitrary)
public macro signal<each Parameter : ExposableValue>(
    _ name: StaticString,
    arguments: repeat (StaticString, (each Parameter).Type)
) = #externalMacro(module: "GodotMacros", type: "SignalMacro")
