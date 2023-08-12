import SwiftUI

@main
struct PermissionsTestApp: App {
    @StateObject private var permissionsService = AccessibilityService()
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
