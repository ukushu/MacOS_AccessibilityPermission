import Cocoa

final class PermissionsService: ObservableObject {
    @Published var isTrusted: Bool = AXIsProcessTrusted()
    
    static var shared: PermissionsService = .init()
    
    func pollAccessibilityPrivileges(onTrusted: @escaping () -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            // print("isTrusted value refresh") // each 1~ sec
            self.isTrusted = AXIsProcessTrusted()
            
            if self.isTrusted {
                onTrusted()
            } else {
                self.pollAccessibilityPrivileges(onTrusted: onTrusted)
            }
        }
    }
    
    // Func should prompt macOS to open and present the required dialogue open
    //  to the correct page for the user to just hit the add button.
    static func acquireAccessibilityPrivileges() {
        let options: NSDictionary = [kAXTrustedCheckOptionPrompt.takeRetainedValue() as NSString: true]
        let _ = AXIsProcessTrustedWithOptions(options)
    }
}
