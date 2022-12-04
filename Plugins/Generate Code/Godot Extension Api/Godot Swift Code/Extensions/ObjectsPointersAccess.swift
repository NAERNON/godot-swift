import Foundation

/// A code block that generates the pointers for each given parameter as `GDNativeTypedPtr`.
/// Each pointer is called `<parameterName>_ptr`.
///
/// It is also possible to generate an array that will contain all the pointers.
/// The pointer array name is called `_accessPtr`.
///
/// When no array pointer is generated, code looks like this for the two properties `axis` and `string`:
/// ```
/// withUnsafePointer(to: axis) { axis_ptrTyped in
///     let axis_ptr = UnsafeMutableRawPointer(mutating: axis_typedPtr)
///     string.withUnsafeNativePointer { angle_ptr in
///             ...
///
///     }
/// }
/// ```
///
/// When an array is generated, code looks like this for the two properties `axis` and `string`:
/// ```swift
/// withUnsafePointer(to: axis) { axis_ptrTyped in
///     let axis_ptr = UnsafeMutableRawPointer(mutating: axis_typedPtr)
///     string.withUnsafeNativePointer { angle_ptr in
///         let _accessPtr = UnsafeMutablePointer<GDNativeTypePtr?>.allocate(capacity: 2)
///         _accessPtr[0] = axis_ptr
///         _accessPtr[1] = angle_ptr
///
///             ...
///
///         _accessPtr.deinitialize(count: 2)
///         _accessPtr.deallocate()
///     }
/// }
/// ```
struct ObjectsPointersAccess<Content>: SwiftCode where Content: SwiftCode {
    let parameters: [FunctionParameter]
    let generatePointersArray: Bool
    let content: () -> Content
    
    public init(parameters: [FunctionParameter], generatePointersArray: Bool = false, @CodeBuilder content: @escaping () -> Content) {
        self.parameters = parameters
        self.generatePointersArray = generatePointersArray
        self.content = content
    }
    
    var body: some SwiftCode {
        for (index, parameter) in parameters.enumerated() {
            let name = parameter.name
            if ExtensionApi.isBaseType(parameter.type) {
                "withUnsafePointer(to: \(name)) { \(parameterPointer(for: parameter.name, typed: true)) in"
                    .indentation(level: index)
                Property(parameterPointer(for: parameter.name, typed: false)).letDefined()
                    .assign(value: "UnsafeMutableRawPointer(mutating: \(parameterPointer(for: parameter.name, typed: true)))")
                    .indentation(level: index+1)
            } else {
                "\(name).withUnsafeNativePointer { \(parameterPointer(for: parameter.name, typed: false)) in".indentation(level: index)
            }
        }
        
        if generatePointersArray {
            PointerArray(pointersNames: parameters.map { parameterPointer(for: $0.name, typed: false) },
                         arrayPointerName: "_accessPtr",
                         content: content).indentation(level: parameters.count)
        } else {
            content().indentation(level: parameters.count)
        }
        
        for index in 0..<parameters.count {
            "}".indentation(level: parameters.count - index - 1)
        }
    }
    
    private func parameterPointer(for name: String, typed: Bool) -> String {
        name + (typed ? "_typedPtr" : "_ptr")
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
