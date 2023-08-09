import Foundation
import Cocoa

final class AppDelegate: NSObject, NSApplicationDelegate {
    func applicationDidFinishLaunching(_ notification: Notification) {
        PermissionsService.acquireAccessibilityPrivileges()
    }
}
