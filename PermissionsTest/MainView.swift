import SwiftUI

struct MainView: View {
    @StateObject private var permissionsService = PermissionsService.shared
    
    var body: some View {
        ZStack {
            if self.permissionsService.isTrusted {
                GrantedView()
            } else {
                PermissionsView()
            }
        }
        .refreshAccessibility()
    }
}

struct GrantedView: View {
    var body: some View{
        Text("Granted!")
    }
}

struct PermissionsView: View {
    var body: some View{
        VStack {
            Text("PermissionsView!")
            
            Button("Try to give access") {
                PermissionsService.acquireAccessibilityPrivileges()
            }
        }
        .padding()
    }
}

extension View {
    func refreshAccessibility() -> some View {
        self
        // Refresh Accessibility
        .onAppear { PermissionsService.shared.pollAccessibilityPrivileges(onTrusted: { }) }
    }
}
