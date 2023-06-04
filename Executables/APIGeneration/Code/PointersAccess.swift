import Foundation
import CodeGenerator
import CodeTranslator

// MARK: PointerArray

/// This code creates an array with the given pointers, and makes its address usable during the given closure.
private struct PointersArray<Content>: Code where Content : Code {
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
        "withUnsafeArgumentPointer(\(argumentArrayCodeString))".curlyBraces("\(arrayPointerName) in") {
            content()
        }
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

// MARK: PointersAccessWithoutArray

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
private struct PointersAccessWithoutArray<Content>: Code where Content : Code {
    let parameters: [PointersAccessParameter]
    let content: ([String]) -> Content
    
    public init(parameters: [PointersAccessParameter],
                @CodeBuilder content: @escaping ([String]) -> Content) {
        self.parameters = parameters
        self.content = content
    }
    
    public init(parameters: PointersAccessParameter...,
                @CodeBuilder content: @escaping ([String]) -> Content) {
        self.init(parameters: parameters, content: content)
    }
    
    var body: some Code {
        Container {
            ForEach(Array(parameters.enumerated())) { index, parameter in
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
            
            ForEach(0..<parameters.count) { index in
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
    private func pointerName(for parameter: PointersAccessParameter) -> String {
        "__ptr_" + parameter.name.replacingOccurrences(of: "`", with: "")
    }
}

// MARK: PointersAccess

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
struct PointersAccess<Content>: Code where Content : Code {
    let parameters: [PointersAccessParameter]
    let createPointersArray: Bool
    let content: ([String], String?) -> Content
    
    init(parameters: [PointersAccessParameter],
         createPointersArray: Bool = false,
         @CodeBuilder content: @escaping ([String], String?) -> Content) {
        self.parameters = parameters
        self.createPointersArray = createPointersArray
        self.content = content
    }
    
    init(parameters: PointersAccessParameter...,
         createPointersArray: Bool = false,
         @CodeBuilder content: @escaping ([String], String?) -> Content) {
        self.init(parameters: parameters,
                  createPointersArray: createPointersArray,
                  content: content)
    }
    
    var body: some Code {
        PointersAccessWithoutArray(parameters: parameters) { pointerNames in
            if let pointersArrayName {
                PointersArray(pointersNames: pointerNames,
                             pointersVararg: parameters.map { $0.isVararg },
                             arrayPointerName: pointersArrayName) {
                    content(pointerNames, pointersArrayName)
                }
            } else {
                content(pointerNames, nil)
            }
        }
    }
    
    private var pointersArrayName: String? {
        if parameters.count == 0 || !createPointersArray {
            return nil
        } else {
            return "__accessPtr"
        }
    }
}

// MARK: PointersAccessParameter

struct PointersAccessParameter {
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
    
    private init(name: String,
                 type: InstanceType,
                 mutability: Mutability,
                 isVararg: Bool) {
        self.name = name
        self.type = type
        self.mutability = mutability
        self.isVararg = isVararg
    }
    
    static func named(_ name: String,
                      type: InstanceType,
                      mutability: Mutability,
                      isVararg: Bool = false) -> PointersAccessParameter {
        self.init(name: name, type: type, mutability: mutability, isVararg: isVararg)
    }
}

// MARK: Property extension

extension Property {
    func pointerAccess(type: InstanceType,
                       mutability: PointersAccessParameter.Mutability,
                       @CodeBuilder content: @escaping (String) -> some Code) -> some Code {
        PointersAccess(parameters: [.named(self.name,
                                           type: type,
                                           mutability: mutability,
                                           isVararg: false)],
                       createPointersArray: false) { pointerNames, _ in
            content(pointerNames[0])
        }
    }
}
