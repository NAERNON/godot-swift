import Foundation

// MARK: ObjectsPointersAccess

/// A code block that generates the pointers for each given parameter.
///
/// Use the data given in the closure to retreive the names of the parameters pointers.
/// The generated pointers are either `UnsafeRawPointer` or `UnsafeMutableRawPointer`
/// depending on the mutability state of the parameters.
///
/// Generated code looks like this for the two properties `axis` and `string` where
///  `axis` is a base type, and `string` a Godot type with underlying reference:
/// ```
/// withUnsafePointer(to: axis) { __ptr_p_axis in
///     let __ptr_axis = __ptr_p_axis
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
            let pointerName = self.pointerName(for: parameter, prime: false)
            let pointerNamePrime = self.pointerName(for: parameter, prime: true)
            
            switch parameter.type.accessPointerMethod {
            case .godotNative:
                if parameter.mutability == .mutable || parameter.mutability == .constMutablePointer {
                    "\(name).withUnsafeNativePointer { \(pointerName) in".indentation(level: index)
                } else {
                    "\(name).withUnsafeNativePointer { \(pointerNamePrime) in".indentation(level: index)
                    Property(pointerName).letDefined()
                        .assign(value: "UnsafeRawPointer(\(pointerNamePrime))")
                        .indentation(level: index+1)
                }
            case .swiftStandard:
                if parameter.mutability == .mutable {
                    "withUnsafeMutablePointer(to: &\(name)) { \(pointerNamePrime) in"
                        .indentation(level: index)
                } else {
                    "withUnsafePointer(to: \(name)) { \(pointerNamePrime) in"
                        .indentation(level: index)
                }
                
                if parameter.mutability == .mutable {
                    Property(pointerName).letDefined()
                        .assign(value: "UnsafeMutableRawPointer(\(pointerNamePrime))")
                        .indentation(level: index+1)
                } else if parameter.mutability == .constMutablePointer {
                    Property(pointerName).letDefined()
                        .assign(value: "UnsafeMutableRawPointer(mutating: \(pointerNamePrime))")
                        .indentation(level: index+1)
                } else {
                    Property(pointerName).letDefined()
                        .assign(value: "UnsafeRawPointer(\(pointerNamePrime))")
                        .indentation(level: index+1)
                }
            case .opaque:
                "\(name).withUnsafeMutableRawPointer { \(pointerName) in".indentation(level: index)
            case .variantPointerArray:
                "VariantPointerArray(\(name)).withUnsafeNativePointers { \(pointerName) in".indentation(level: index)
            }
        }
        
        content(parametersPointerNames())
            .indentation(level: parameters.count)
        
        for index in 0..<parameters.count {
            "}".indentation(level: parameters.count - index - 1)
        }
    }
    
    private func parametersPointerNames() -> [String] {
        parameters.map { pointerName(for: $0) }
    }
    
    /// The name of the parameter pointer.
    /// - Parameters:
    ///   - parameter: The parameter.
    ///   - prime: A Boolean value indicating whether the name will be a slightly modified version.
    private func pointerName(for parameter: ObjectsPointersAccessParameter, prime: Bool = false) -> String {
        "__ptr_" + (prime ? "p_" : "") + parameter.name.replacingOccurrences(of: "`", with: "")
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
/// the name of the array pointer, as well as the name of the number of parameters.
/// The generated pointers are either `UnsafeRawPointer` or `UnsafeMutableRawPointer`
/// depending on the mutability state of the parameters.
///
/// Generated code looks like this for the two properties `axis` and `string` where
///  `axis` is a base type, and `string` a Godot type with underlying reference:
/// ```
/// withUnsafePointer(to: axis) { __ptr_p_axis in
///     let __ptr_axis = UnsafeRawPointer(__ptr_p_axis)
///     string.withUnsafeNativePointer { __ptr_p_string in
///         let __ptr_string = UnsafeRawPointer(__ptr_p_string)
///         let __accessPtr = UnsafeMutablePointer<UnsafeRawPointer?>.allocate(capacity: 2)
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
    let content: ([String], String, String) -> Content
    
    public init(parameters: [ObjectsPointersAccessParameter],
                @CodeBuilder content: @escaping ([String], String, String) -> Content) {
        self.parameters = parameters
        self.content = content
        
        if parameters.contains(where: { $0.mutability == .mutable || $0.mutability == .constMutablePointer }) {
            fatalError("No mutable pointer should be inside an ObjectsArrayPointersAccess.")
        }
    }
    
    public init(parameters: ObjectsPointersAccessParameter...,
                @CodeBuilder content: @escaping ([String], String, String) -> Content) {
        self.init(parameters: parameters, content: content)
    }
    
    var body: some SwiftCode {
        ObjectsPointersAccess(parameters: parameters) { pointerNames in
            if pointersArrayIsNil {
                content(pointerNames, pointersArrayName, "0")
            } else {
                PointerArray(pointersNames: pointerNames,
                             pointersVararg: parameters.map { $0.isVararg },
                             arrayPointerName: pointersArrayName) { argumentsCountName in
                    content(pointerNames, pointersArrayName, argumentsCountName)
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
///
/// All the pointers must be `UnsafeRawPointer`.
/// The `String` given in the closure is the value of the number of parameters.
///
/// In this example, `pointer_1` and `pointer_2` are two `UnsafeRawPointer`.
/// ```
/// let _accessPtr = UnsafeMutablePointer<UnsafeRawPointer?>.allocate(capacity: 2)
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
    let pointersVararg: [Bool]
    let arrayPointerName: String
    let content: (String) -> Content
    
    public init(pointersNames: [String],
                pointersVararg: [Bool],
                arrayPointerName: String,
                @CodeBuilder content: @escaping (String) -> Content) {
        guard pointersNames.count == pointersVararg.count else {
            fatalError("Cannot generate PointerArray instance with different counts of pointersNames and pointersVararg")
        }
        
        self.pointersNames = pointersNames
        self.pointersVararg = pointersVararg
        self.arrayPointerName = arrayPointerName
        self.content = content
    }
    
    var body: some SwiftCode {
        Property("___arguments_count").letDefined().type("Int")
            .assign(value: pointersCountString(pointerCount: pointersNames.count))
        Property(arrayPointerName)
            .letDefined()
            .assign(value: "UnsafeMutablePointer<UnsafeRawPointer?>.allocate(capacity: ___arguments_count)")

        setPointersInsideArrayCode

        content("___arguments_count")

        arrayPointerName + ".deinitialize(count: ___arguments_count)"
        arrayPointerName + ".deallocate()"
    }
    
    @CodeBuilder
    private var setPointersInsideArrayCode: some SwiftCode {
        for (index, pointerName) in pointersNames.enumerated() {
            let pointerIndexString = pointersCountString(pointerCount: index)
            if pointersVararg[index] {
                For("(___index, ___ptr) in \(pointerName).enumerated()") {
                    arrayPointerName + "[\(pointerIndexString) + ___index] = UnsafeRawPointer(___ptr)"
                }
            } else {
                arrayPointerName + "[\(pointerIndexString)] = " + pointerName
            }
        }
    }
    
    /// Returns a string of the number of parameters.
    ///
    /// - Parameter pointerCount: The number of first parameters that should be considered for the count.
    ///
    /// For two simple parameters, the return value would be:
    /// ```
    /// "2"
    /// ```
    /// For two simple parameters and one vararg parameter, the return value would be:
    /// ```
    /// "2 + args.count"
    /// ```
    private func pointersCountString(pointerCount: Int) -> String {
        let staticCountString = String(pointersVararg[..<pointerCount].filter({ $0 == false }).count)
        let varargsString = pointersNames[..<pointerCount].enumerated().compactMap { (index, name) -> String? in
            if pointersVararg[index] {
                return "\(name).count"
            } else {
                return nil
            }
        }.reduce("") { partialResult, string in
            return partialResult + " + " + string
        }
        
        return staticCountString + varargsString
    }
}

// MARK: Property extension

extension Property {
    func pointerAccess(type: InstanceType,
                       mutability: ObjectsPointersAccessParameter.Mutability,
                       @CodeBuilder content: @escaping (String) -> some SwiftCode) -> some SwiftCode {
        ObjectsPointersAccess(parameters: [.named(self.name,
                                                  type: type,
                                                  mutability: mutability,
                                                  isVararg: false)]) { pointerNames in
            content(pointerNames[0])
        }
    }
}
