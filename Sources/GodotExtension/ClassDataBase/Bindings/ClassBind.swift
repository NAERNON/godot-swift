import Foundation
import GodotExtensionHeaders

final class ClassBind {
    
    // MARK: Properties
    
    let name: String
    let parentName: String
    
    let level: GDNativeInitializationLevel
    let signalNames: Set<String>
    let propertyNames: Set<String>
    let constantNames: Set<String>
    weak private(set) var parentInfos: ClassBind?
    
    private var signatureToUnmanagedFunction: [String : Unmanaged<FunctionBind>]
    
    // MARK: Init
    
    init(name: String,
         parentName: String,
         level: GDNativeInitializationLevel,
         signalNames: Set<String>,
         propertyNames: Set<String>,
         constantNames: Set<String>,
         parentInfos: ClassBind? = nil) {
        self.name = name
        self.parentName = parentName
        self.level = level
        self.signalNames = signalNames
        self.propertyNames = propertyNames
        self.constantNames = constantNames
        self.parentInfos = parentInfos
        
        self.signatureToUnmanagedFunction = [:]
    }
    
    deinit {
        for function in signatureToUnmanagedFunction.values {
            function.release()
        }
    }
    
    // MARK: Functions
    
    @discardableResult
    func registerFunction(_ functionBind: FunctionBind) -> UnsafeMutableRawPointer {
        let unmanaged = Unmanaged.passRetained(functionBind)
        signatureToUnmanagedFunction[functionBind.definition.signature] = unmanaged
        
        return unmanaged.toOpaque()
    }
    
    func functionBind(withSignature signature: String) -> FunctionBind? {
        signatureToUnmanagedFunction[signature]?.takeUnretainedValue()
    }
    
    func functionExists(withSignature functionSignature: String) -> Bool {
        signatureToUnmanagedFunction[functionSignature] != nil
    }
}
