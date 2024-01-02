import GodotExtensionHeaders

// MARK: - Input

public protocol SignalInput {
    func _emit(_ signalName: GodotStringName, on object: Object) -> ErrorType
}

// MARK: - Receiver

public final class SignalReceiver<Input> where Input : SignalInput {
    private let _call: (Input) -> Void
    
    fileprivate init(call: @escaping (Input) -> Void) {
        self._call = call
    }
    
    public func call(with input: Input) {
        _call(input)
    }
}

// MARK: - Empty Receiver

public final class EmptySignalReceiver {
    private let _call: () -> Void
    
    fileprivate init(call: @escaping () -> Void) {
        self._call = call
    }
    
    public func call() {
        self._call()
    }
}

// MARK: - Emitter

// TODO: Doc warn unowned
public struct SignalEmitter<Input : SignalInput> {
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
    
    public func emit(_ input: Input) -> ErrorType {
        input._emit(signalName, on: sourceObject)
    }
    
    @discardableResult
    public func connect<Destination>(
        to object: Destination,
        body: @escaping (Input) -> Void
    ) -> SignalConnection
    where Destination : Object {
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
            destinationObject: object,
            signalName: signalName,
            errorType: errorType,
            callable: callable
        )
    }
    
    @discardableResult
    public func connect(
        body: @escaping (Input) -> Void
    ) -> SignalConnection {
        let receiver = SignalReceiver(call: body)
        
        let callable = registerCustomCallable(
            on: nil,
            receiver: receiver,
            callFunc: callFunc,
            freeFunc: freeFunc,
            toStringFunc: toStringFunc
        )
        
        let errorType = sourceObject.connect(signal: signalName, callable: callable)
        
        return SignalConnection(
            sourceObject: sourceObject,
            destinationObject: nil,
            signalName: signalName,
            errorType: errorType,
            callable: callable
        )
    }
}

// MARK: - Empty Emitter

// TODO: Doc warn unowned
public struct EmptySignalEmitter {
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
    
    public func emit() -> ErrorType {
        sourceObject.emitSignal(signalName)
    }
    
    @discardableResult
    public func connect<Destination>(
        to object: Destination,
        body: @escaping () -> Void
    ) -> SignalConnection
    where Destination : Object {
        let receiver = EmptySignalReceiver(call: body)
        
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
            destinationObject: object,
            signalName: signalName,
            errorType: errorType,
            callable: callable
        )
    }
    
    @discardableResult
    public func connect(
        body: @escaping () -> Void
    ) -> SignalConnection {
        let receiver = EmptySignalReceiver(call: body)
        
        let callable = registerCustomCallable(
            on: nil,
            receiver: receiver,
            callFunc: callFunc,
            freeFunc: freeFunc,
            toStringFunc: toStringFunc
        )
        
        let errorType = sourceObject.connect(signal: signalName, callable: callable)
        
        return SignalConnection(
            sourceObject: sourceObject,
            destinationObject: nil,
            signalName: signalName,
            errorType: errorType,
            callable: callable
        )
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
