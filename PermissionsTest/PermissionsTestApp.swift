import SwiftUI

@main
struct PermissionsTestApp: App {
    @StateObject private var permissionsService = PermissionsService()
    
    var body: some Scene {
        WindowGroup {
            VStack {
                if self.permissionsService.isTrusted {
                    MainView()
                } else {
                    PermissionsView()
                }
            }
            .onAppear(perform: self.permissionsService.pollAccessibilityPrivileges)
        }
    }
}
