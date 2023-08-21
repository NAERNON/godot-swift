import SwiftDiagnostics

struct GodotDiagnostic: DiagnosticMessage, FixItMessage {
    let message: String
    let severity: DiagnosticSeverity
    
    init(
        _ message: String,
        severity: DiagnosticSeverity = .error
    ) {
        self.message = message
        self.severity = severity
    }
    
    var diagnosticID: MessageID {
        MessageID(domain: "GodotMacros", id: message)
    }
    
    var fixItID: MessageID {
        diagnosticID
    }
}
