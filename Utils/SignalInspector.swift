import SwiftSyntax
import SwiftSyntaxBuilder

public struct SignalInspector {
    public let functionName: String
    public let signalCName: String
    public let arguments: [(name: String, type: String)]
    public let isPublic: Bool
    
    public init(
        functionName: String,
        signalCName: String,
        arguments: [(name: String, type: String)],
        isPublic: Bool
    ) {
        self.functionName = functionName
        self.signalCName = signalCName
        self.arguments = arguments
        self.isPublic = isPublic
    }
    
    private var accessModifier: String {
        isPublic ? "public" : "internal"
    }
    
    public var usesEmptyEmitter: Bool {
        arguments.isEmpty
    }
    
    public var emitterName: String {
        functionName + "Signal"
    }
    
    public var signalInputStructName: String {
        (emitterName + "Input").translated(from: .camel, to: .pascal)
    }
    
    public func signalInputDeclSyntax() throws -> DeclSyntax {
        if usesEmptyEmitter {
            return ""
        }
        
        let structDecl = try StructDeclSyntax("\(raw: accessModifier) struct \(raw: signalInputStructName): Godot.SignalInput") {
            for argument in arguments {
                "\(raw: accessModifier) let \(raw: argument.name): \(raw: argument.type)"
            }
            
            let initArguments = arguments
                .map { "\($0.name): \($0.type)" }
                .joined(separator: ", ")
            let initSetArguments = arguments
                .map { "self.\($0.name) = \($0.name)" }
                .joined(separator: "\n")
            
            """
            fileprivate init(\(raw: initArguments)) {
                \(raw: initSetArguments)
            }
            """
            
            """
            \(raw: accessModifier) func _emit(
                _ signalName: Godot.GodotStringName,
                on object: Godot.Object
            ) -> Godot.ErrorType {
                object.emitSignal(signalName\(raw: arguments.map { ", " + $0.name }.joined()))
            }
            """
        }
        
        return DeclSyntax(structDecl)
    }
    
    public func signalFunctionDeclSyntax() throws -> FunctionDeclSyntax {
        let functionArgumentsInput = arguments
            .map { $0.name + ": " + $0.type }
            .joined(separator: ", ")
        
        return try FunctionDeclSyntax(
            "\(raw: accessModifier) func \(raw: functionName)(\(raw: functionArgumentsInput))"
        ) {
            if usesEmptyEmitter {
                "_ = \(raw: emitterName).emit()"
            } else {
                let argumentsInput = arguments
                    .map { "\($0.name): \($0.name)" }
                    .joined(separator: ",\n")
                
                "_ = \(raw: emitterName).emit(.init(\(raw: argumentsInput)))"
            }
        }
    }
    
    public func emitterDeclSyntax() -> DeclSyntax {
        let inputInitSyntax: String
        let receiverTypeSyntax: String
        let emitterTypeSyntax: String
        if usesEmptyEmitter {
            inputInitSyntax = ""
            receiverTypeSyntax = "Godot.EmptySignalReceiver"
            emitterTypeSyntax = "Godot.EmptySignalEmitter"
        } else {
            inputInitSyntax = "with: .init(" + arguments
                .enumerated()
                .map { (index, argument) in
                    argument.name + ": " + "\(argument.type).convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: \(index)).pointee!))"
                }
                .joined(separator: ",\n") + ")"
            receiverTypeSyntax = "Godot.SignalReceiver<\(signalInputStructName)>"
            emitterTypeSyntax = "Godot.SignalEmitter<\(signalInputStructName)>"
        }
        
        return """
        \(raw: accessModifier) lazy var \(raw: emitterName): \(raw: emitterTypeSyntax) = {
            .init(object: self, signalName: \(literal: signalCName)) { callablePtr, args, _, _, _ in
                Unmanaged<\(raw: receiverTypeSyntax)>.fromOpaque(callablePtr!).takeUnretainedValue()
                    .call(\(raw: inputInitSyntax))
            } freeFunc: { callablePtr in
                Unmanaged<\(raw: receiverTypeSyntax)>.fromOpaque(callablePtr!).release()
            } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
                resultPtr?.pointee = 1
                Godot.GodotString(describing:
                    Unmanaged<\(raw: receiverTypeSyntax)>.fromOpaque(callablePtr!)
                        .takeUnretainedValue()
                ).copyToGodot(unsafePointer: stringResultPtr!)
            }
        }()
        """
    }
}
