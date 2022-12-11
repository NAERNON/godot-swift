import Foundation

// MARK: Options

/// The options of the code generation plugin.
struct Options {
    let print: Bool
    let noWrite: Bool
    let buildConfiguration: BuildConfiguration
    
    var writesFiles: Bool { !noWrite }
    
    init(arguments: [String]) throws {
        var print = false
        var noWrite = false
        var buildConfiguration = BuildConfiguration.double64
        
        var index = 0
        while index < arguments.count {
            let argument = arguments[index]
            switch argument {
            case "--print", "-p":
                print = true
                index += 1
            case "--nowrite", "-nw":
                noWrite = true
                index += 1
            case "--build_configuration", "-bc":
                index += 1
                guard index < arguments.count else {
                    throw InitError.missingArgumentAfterArgument(argument)
                }
                guard let configuration = BuildConfiguration(rawValue: arguments[index]) else {
                    throw InitError.unrecognizedBuildConfiguration(arguments[index])
                }
                buildConfiguration = configuration
                index += 1
            default:
                throw InitError.unrecognizedArgument(argument)
            }
        }
        
        self.print = print
        self.noWrite = noWrite
        self.buildConfiguration = buildConfiguration
    }
}

// MARK: Init Error

extension Options {
    enum InitError: Error, CustomStringConvertible {
        case unrecognizedArgument(String)
        case missingArgumentAfterArgument(String)
        case unrecognizedBuildConfiguration(String)
        
        var description: String {
            switch self {
            case .unrecognizedArgument(let argument):
                return "Unrecognized argument \(argument)"
            case .missingArgumentAfterArgument(let argument):
                return "Missing argument after \(argument)"
            case .unrecognizedBuildConfiguration(let buildConfiguration):
                return "Unrecognized build configuration \(buildConfiguration)"
            }
        }
    }
}
