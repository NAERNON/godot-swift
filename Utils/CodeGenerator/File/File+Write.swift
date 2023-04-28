import Foundation

private enum FileWriteError: Error {
    case cannotGenerateDataFromCode
}

public extension File {
    func write(using codeFormatter: CodeFormatter) throws {
        try data(using: codeFormatter).write(to: self.url)
    }
    
    func data(using codeFormatter: CodeFormatter) throws -> Data {
        let codeString = codeFormatter.string(from: self.code)
        
        guard let data = codeString.data(using: .utf8) else {
            throw FileWriteError.cannotGenerateDataFromCode
        }
        
        return data
    }
}
