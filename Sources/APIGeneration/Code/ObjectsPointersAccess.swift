import Foundation
import CodeGenerator
import CodeTranslator

// MARK: ObjectsPointersAccess

/// A code block that generates the pointers for each given parameter.
///
/// Use the data given in the closure to retreive the names of the parameters pointers.
///
/// Generated code looks like this for the two properties `axis` and `string`:
/// ```
/// withUnsafeGodotAccessPointer(to: axis) { __ptr_axis in
///     withUnsafeGodotAccessPointer(to: string) { __ptr_string in
///
///         ...
///
///     }
/// }
/// ```
struct ObjectsPointersAccess<Content>: Code where Content: Code {
    let parameters: [ObjectsPointersAccessParameter]
    let content: ([String]) -> Content
    
    public init(parameters: [ObjectsPointersAccessParameter],
                @CodeBuilder content: @escaping ([String]) -> Content) {
        self.parameters = parameters
        self.content = content
    }
    
    public init(parameters: ObjectsPointersAccessParameter...,
                @CodeBuilder content: @escaping ([String]) -> Content) {
        self.init(parameters: parameters, content: content)
    }
    
    var body: some Code {
        Group {
            for (index, parameter) in parameters.enumerated() {
                let name = CodeLanguage.swift.protectNameIfKeyword(for: parameter.name)
                let pointerName = self.pointerName(for: parameter)
                
                if parameter.isVararg {
                    "withUnsafeGodotAccessVarargsPointer(to: \(name)) { \(pointerName) in".indent(index)
                } else if parameter.mutability == .mutable {
                    "withUnsafeGodotMutableAccessPointer(to: &\(name)) { \(pointerName) in".indent(index)
                } else if parameter.mutability == .constMutablePointer {
                    "withUnsafeGodotMutableConstAccessPointer(to: \(name)) { \(pointerName) in".indent(index)
                } else {
                    "withUnsafeGodotAccessPointer(to: \(name)) { \(pointerName) in".indent(index)
                }
            }
            
            content(parametersPointerNames())
                .indent(parameters.count)
            
            for index in 0..<parameters.count {
                "}".indent(parameters.count - index - 1)
            }
        }
    }
    
    private func parametersPointerNames() -> [String] {
        parameters.map { pointerName(for: $0) }
    }
    
    /// The name of the parameter pointer.
    /// - Parameters:
    ///   - parameter: The parameter.
    private func pointerName(for parameter: ObjectsPointersAccessParameter) -> String {
        "__ptr_" + parameter.name.replacingOccurrences(of: "`", with: "")
    }
}

// MARK: ObjectsArrayPointersAccess

/// A code block that generates the pointers for each given parameter,
/// as well as an array that will contain all the pointers.
///
/// When no parameters are given, the array is not generated
/// and the given name for it is "`nil`".
///
/// Use the data given in the closure to retreive the names of the parameters pointers,
/// and the name of the array pointer.
///
/// Generated code looks like this for the two properties `axis` and `string`:
/// ```
/// withUnsafeGodotAccessPointer(to: axis) { __ptr_axis in
///     withUnsafeGodotAccessPointer(to: string) { __ptr_string in
///         withUnsafeArgumentPointer(__ptr_axis, __ptr_string) { __accessPtr in
///
///             ...
///
///         }
///     }
/// }
/// ```
struct ObjectsArrayPointersAccess<Content>: Code where Content: Code {
    let parameters: [ObjectsPointersAccessParameter]
    let content: ([String], String) -> Content
    
    public init(parameters: [ObjectsPointersAccessParameter],
                @CodeBuilder content: @escaping ([String], String) -> Content) {
        self.parameters = parameters
        self.content = content
        
        if parameters.contains(where: { $0.mutability == .mutable || $0.mutability == .constMutablePointer }) {
            fatalError("No mutable pointer should be inside an ObjectsArrayPointersAccess.")
        }
    }
    
    public init(parameters: ObjectsPointersAccessParameter...,
                @CodeBuilder content: @escaping ([String], String) -> Content) {
        self.init(parameters: parameters, content: content)
    }
    
    var body: some Code {
        ObjectsPointersAccess(parameters: parameters) { pointerNames in
            if pointersArrayIsNil {
                content(pointerNames, pointersArrayName)
            } else {
                PointerArray(pointersNames: pointerNames,
                             pointersVararg: parameters.map { $0.isVararg },
                             arrayPointerName: pointersArrayName) {
                    content(pointerNames, pointersArrayName)
                }
            }
        }
    }
    
    private var pointersArrayIsNil: Bool {
        parameters.count == 0
    }
    
    private var pointersArrayName: String {
        pointersArrayIsNil ? "nil" : "__accessPtr"
    }
}

// MARK: ObjectsPointersAccessParameter

struct ObjectsPointersAccessParameter {
    enum Mutability {
        /// The parameter is not mutable.
        case const
        /// The parameter is mutable.
        case mutable
        /// The parameter is not mutable, but its pointer is mutable.
        case constMutablePointer
    }
    
    let name: String
    let type: InstanceType
    let mutability: Mutability
    let isVararg: Bool
    
    private init(name: String, type: InstanceType, mutability: Mutability, isVararg: Bool) {
        self.name = name
        self.type = type
        self.mutability = mutability
        self.isVararg = isVararg
    }
    
    static func named(_ name: String, type: InstanceType, mutability: Mutability, isVararg: Bool = false) -> ObjectsPointersAccessParameter {
        self.init(name: name, type: type, mutability: mutability, isVararg: isVararg)
    }
}


// MARK: PointerArray

/// This code creates an array with the given pointers, and makes its address usable during the given closure.
private struct PointerArray<Content>: Code where Content: Code {
    let pointersNames: [String]
    let pointersVararg: [Bool]
    let arrayPointerName: String
    let content: () -> Content
    
    public init(pointersNames: [String],
                pointersVararg: [Bool],
                arrayPointerName: String,
                @CodeBuilder content: @escaping () -> Content) {
        guard pointersNames.count == pointersVararg.count else {
            fatalError("Cannot generate PointerArray instance with different counts of pointersNames and pointersVararg")
        }
        
        self.pointersNames = pointersNames
        self.pointersVararg = pointersVararg
        self.arrayPointerName = arrayPointerName
        self.content = content
    }
    
    var body: some Code {
        "withUnsafeArgumentPointer(\(argumentArrayCodeString)) { \(arrayPointerName) in"
        content().indent()
        "}"
    }
    
    private var argumentArrayCodeString: String {
        var argumentString = ""
        for (index, pointerName) in pointersNames.enumerated() {
            if index > 0 {
                argumentString += ", "
            }
            
            argumentString += pointerName
        }
        return argumentString
    }
}

// MARK: Property extension

extension Property {
    func pointerAccess(type: InstanceType,
                       mutability: ObjectsPointersAccessParameter.Mutability,
                       @CodeBuilder content: @escaping (String) -> some Code) -> some Code {
        ObjectsPointersAccess(parameters: [.named(self.name,
                                                  type: type,
                                                  mutability: mutability,
                                                  isVararg: false)]) { pointerNames in
            content(pointerNames[0])
        }
    }
}
