import Foundation
import ArgumentParser

@main
struct Executable: ParsableCommand {
    
    @Option(help: "Directory containing the swift files")
    var input: String
    
    @Option(help: "The path where the generated files will be created")
    var output: String
    
    func run() throws {
    }
    
}
