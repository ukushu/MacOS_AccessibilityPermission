import SwiftUI

@main
struct PermissionsTestApp: App {
    @StateObject private var permissionsService = PermissionsService()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .refreshAccessibility()
        }
    }
}
