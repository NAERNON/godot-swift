import Foundation

/// A code block that generates the pointers for each given parameter as `GDNativeTypedPtr`.
///
/// It is also possible to generate an array that will contain all the pointers.
/// When no parameters are given but an array is still requested, the array is not generated
/// and the given name for it is "nil".
///
/// Use the `PointerNames` given in the closure to retreive the names of the parameters pointers,
/// as well as the name of the array pointer if applicable.
///
/// When no array pointer is generated, code looks like this for the two properties `axis` and `string` where
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
///
/// When an array is generated, code looks like this for the two properties `axis` and `string`:
/// ```swift
/// withUnsafePointer(to: axis) { __ptrTyped_axis in
///     let __ptr_axis = UnsafeMutableRawPointer(mutating: __ptrTyped_axis)
///     string.withUnsafeNativePointer { __ptr_string in
///         let _accessPtr = UnsafeMutablePointer<GDNativeTypePtr?>.allocate(capacity: 2)
///         _accessPtr[0] = __ptr_axis
///         _accessPtr[1] = __ptr_string
///
///             ...
///
///         _accessPtr.deinitialize(count: 2)
///         _accessPtr.deallocate()
///     }
/// }
/// ```
struct ObjectsPointersAccess<Content>: SwiftCode where Content: SwiftCode {
    struct Parameter {
        let name: String
        let type: String
        let isMutable: Bool
        
        private init(name: String, type: String, isMutable: Bool = false) {
            self.name = name
            self.type = type
            self.isMutable = isMutable
        }
        
        static func named(_ name: String, type: String, isMutable: Bool = false) -> Parameter {
            self.init(name: name, type: type, isMutable: isMutable)
        }
    }
    
    struct PointerNames {
        let parameters: [String]
        let array: String?
    }
    
    let parameters: [Parameter]
    let generatePointersArray: Bool
    let content: (PointerNames) -> Content
    
    public init(parameters: [Parameter],
                generatePointersArray: Bool = false,
                @CodeBuilder content: @escaping (PointerNames) -> Content) {
        self.parameters = parameters
        self.generatePointersArray = generatePointersArray
        self.content = content
    }
    
    public init(parameters: Parameter...,
                generatePointersArray: Bool = false,
                @CodeBuilder content: @escaping (PointerNames) -> Content) {
        self.init(parameters: parameters, generatePointersArray: generatePointersArray, content: content)
    }
    
    public init(functionParameters: [FunctionParameter],
                generatePointersArray: Bool = false,
                @CodeBuilder content: @escaping (PointerNames) -> Content) {
        self.init(parameters: functionParameters.map { .named($0.name, type: $0.type, isMutable: false) },
                  generatePointersArray: generatePointersArray,
                  content: content)
    }
    
    var body: some SwiftCode {
        for (index, parameter) in parameters.enumerated() {
            let name = parameter.name
            if ExtensionApi.isBaseType(parameter.type) {
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
        
        if !pointersArrayIsNil {
            PointerArray(pointersNames: parameters.map { parameterPointer(for: $0.name, typed: false) },
                         arrayPointerName: pointersArrayName!) {
                content(PointerNames(parameters: parametersPointerNames(), array: pointersArrayName))
            }.indentation(level: parameters.count)
        } else {
            content(PointerNames(parameters: parametersPointerNames(), array: pointersArrayName))
                .indentation(level: parameters.count)
        }
        
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
    
    private var pointersArrayIsNil: Bool {
        parameters.count == 0 || !generatePointersArray
    }
    
    private var pointersArrayName: String? {
        guard generatePointersArray else {
            return nil
        }
        
        return pointersArrayIsNil ? "nil" : "__accessPtr"
    }
}

/// This code creates an array with the given pointers, and makes its address usable during the given closure.
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
            .assign(value: "UnsafeMutablePointer<GDNativeTypePtr?>.allocate(capacity: \(pointersNames.count))")
        
        for (i, pointerName) in pointersNames.enumerated() {
            arrayPointerName + "[\(i)] = " + pointerName
        }
        
        content()
        
        arrayPointerName + ".deinitialize(count: \(pointersNames.count))"
        arrayPointerName + ".deallocate()"
    }
}
