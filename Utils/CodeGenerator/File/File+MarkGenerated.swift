import Foundation

public extension File {
    func markGenerated() -> some File {
        self.withCode { code in
            Comment {
                Space()
                "THIS FILE IS GENERATED. EDITS WILL BE LOST."
                Space()
            }
            
            Space()
            
            code
        }
    }
}
