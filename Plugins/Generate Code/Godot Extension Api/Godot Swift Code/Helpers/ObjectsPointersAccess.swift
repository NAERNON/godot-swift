import Foundation

// MARK: ObjectsPointersAccess

/// A code block that generates the pointers for each given parameter.
///
/// Use the data given in the closure to retreive the names of the parameters pointers.
/// The generated pointers are `UnsafeMutableRawPointer`.
///
/// Generated code looks like this for the two properties `axis` and `string` where
///  `axis` is a base type, and `string` a Godot type with underlying reference:
/// ```
/// withUnsafePointer(to: axis) { __ptrTyped_axis in
///     let __ptr_axis = UnsafeMutableRawPointer(mutating: __ptrTyped_axis)
///     string.withUnsafeNativePointer { __ptr_string in
///
///             ...
///
///     }
/// }
/// ```
struct ObjectsPointersAccess<Content>: SwiftCode where Content: SwiftCode {
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
    
    var body: some SwiftCode {
        for (index, parameter) in parameters.enumerated() {
            let name = CodeLanguage.swift.protectNameIfKeyword(for: parameter.name)
            if parameter.type.isValueType {
                if parameter.isMutable {
                    "withUnsafeMutablePointer(to: &\(name)) { \(parameterPointer(for: parameter.name, typed: true)) in"
                        .indentation(level: index)
                    Property(parameterPointer(for: parameter.name, typed: false)).letDefined()
                        .assign(value: "UnsafeMutableRawPointer(\(parameterPointer(for: parameter.name, typed: true)))")
                        .indentation(level: index+1)
                } else {
                    "withUnsafePointer(to: \(name)) { \(parameterPointer(for: parameter.name, typed: true)) in"
                        .indentation(level: index)
                    Property(parameterPointer(for: parameter.name, typed: false)).letDefined()
                        .assign(value: "UnsafeMutableRawPointer(mutating: \(parameterPointer(for: parameter.name, typed: true)))")
                        .indentation(level: index+1)
                }
            } else {
                "\(name).withUnsafeNativePointer { \(parameterPointer(for: parameter.name, typed: false)) in".indentation(level: index)
            }
        }
        
        content(parametersPointerNames())
            .indentation(level: parameters.count)
        
        for index in 0..<parameters.count {
            "}".indentation(level: parameters.count - index - 1)
        }
    }
    
    private func parametersPointerNames() -> [String] {
        parameters.map { parameterPointer(for: $0.name, typed: false) }
    }
    
    private func parameterPointer(for name: String, typed: Bool) -> String {
        (typed ? "__typedPtr_" : "__ptr_") + name
    }
}

// MARK: ObjectsArrayPointersAccess

/// A code block that generates the pointers for each given parameter,
/// as well as an array that will contain all the pointers.
///
/// When no parameters are given, the array is not generated
/// and the given name for it is "nil".
///
/// Use the data given in the closure to retreive the names of the parameters pointers,
/// as well as the name of the array pointer.
/// The generated pointers are `UnsafeMutableRawPointer`.
///
/// Generated code looks like this for the two properties `axis` and `string` where
///  `axis` is a base type, and `string` a Godot type with underlying reference:
/// ```
/// withUnsafePointer(to: axis) { __ptrTyped_axis in
///     let __ptr_axis = UnsafeMutableRawPointer(mutating: __ptrTyped_axis)
///     string.withUnsafeNativePointer { __ptr_string in
///         let __accessPtr = UnsafeMutablePointer<UnsafeMutableRawPointer?>.allocate(capacity: 2)
///         __accessPtr[0] = __ptr_axis
///         __accessPtr[1] = __ptr_string
///
///             ...
///
///         __accessPtr.deinitialize(count: 2)
///         __accessPtr.deallocate()
///     }
/// }
/// ```
struct ObjectsArrayPointersAccess<Content>: SwiftCode where Content: SwiftCode {
    let parameters: [ObjectsPointersAccessParameter]
    let content: ([String], String) -> Content
    
    public init(parameters: [ObjectsPointersAccessParameter],
                @CodeBuilder content: @escaping ([String], String) -> Content) {
        self.parameters = parameters
        self.content = content
    }
    
    public init(parameters: ObjectsPointersAccessParameter...,
                @CodeBuilder content: @escaping ([String], String) -> Content) {
        self.init(parameters: parameters, content: content)
    }
    
    var body: some SwiftCode {
        ObjectsPointersAccess(parameters: parameters) { pointerNames in
            if pointersArrayIsNil {
                content(pointerNames, pointersArrayName)
            } else {
                PointerArray(pointersNames: pointerNames, arrayPointerName: pointersArrayName) {
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
    let name: String
    let type: InstanceType
    let isMutable: Bool
    
    private init(name: String, type: InstanceType, isMutable: Bool = false) {
        self.name = name
        self.type = type
        self.isMutable = isMutable
    }
    
    static func named(_ name: String, type: InstanceType, isMutable: Bool = false) -> ObjectsPointersAccessParameter {
        self.init(name: name, type: type, isMutable: isMutable)
    }
}


// MARK: PointerArray

/// This code creates an array with the given pointers, and makes its address usable during the given closure.
///
/// All the pointers must be `UnsafeMutableRawPointer`.
/// In this example, `pointer_1` and `pointer_2` are two `UnsafeMutableRawPointer`.
/// ```
/// let _accessPtr = UnsafeMutablePointer<UnsafeMutableRawPointer?>.allocate(capacity: 2)
/// _accessPtr[0] = pointer_1
/// _accessPtr[1] = pointer_2
///
///     ...
///
/// _accessPtr.deinitialize(count: 2)
/// _accessPtr.deallocate()
/// ```
private struct PointerArray<Content>: SwiftCode where Content: SwiftCode {
    let pointersNames: [String]
    let arrayPointerName: String
    let content: () -> Content
    
    public init(pointersNames: [String], arrayPointerName: String, @CodeBuilder content: @escaping () -> Content) {
        self.pointersNames = pointersNames
        self.arrayPointerName = arrayPointerName
        self.content = content
    }
    
    var body: some SwiftCode {
        Property(arrayPointerName)
            .letDefined()
            .assign(value: "UnsafeMutablePointer<UnsafeMutableRawPointer?>.allocate(capacity: \(pointersNames.count))")
        
        for (i, pointerName) in pointersNames.enumerated() {
            arrayPointerName + "[\(i)] = " + pointerName
        }
        
        content()
        
        arrayPointerName + ".deinitialize(count: \(pointersNames.count))"
        arrayPointerName + ".deallocate()"
    }
}
