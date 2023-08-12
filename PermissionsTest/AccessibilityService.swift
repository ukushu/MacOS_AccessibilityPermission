import Cocoa

final class AccessibilityService: ObservableObject {
    @Published var isTrusted: Bool = AXIsProcessTrusted()
    
    static var shared: AccessibilityService = .init()
    
    func accessibilityIsTrustedRefresh(onTrusted: @escaping () -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            // print("isTrusted value refresh") // each 1~ sec
            self.isTrusted = AXIsProcessTrusted()
            
            if self.isTrusted {
                onTrusted()
            } else {
                self.accessibilityIsTrustedRefresh(onTrusted: onTrusted)
            }
        }
    }
    
    static func requestAccessibilityAccess() {
        let options: NSDictionary = [kAXTrustedCheckOptionPrompt.takeRetainedValue() as NSString: true]
        let _ = AXIsProcessTrustedWithOptions(options)
    }
}
