import SwiftUI

struct MainView: View {
    @StateObject private var permissionsService = AccessibilityService.shared
    
    var body: some View {
        ZStack {
            if self.permissionsService.isTrusted {
                GrantedView()
            } else {
                PermissionsView()
            }
        }
    }
}

struct GrantedView: View {
    var body: some View {
        Text("Granted!")
    }
}

struct PermissionsView: View {
    var body: some View {
        VStack {
            Text("PermissionsView!")
            
            Button("Request Accessibility access") {
                AccessibilityService.shared.requestAccessibilityAccess()
            }
        }
        .isTrustedRefresher()
        .padding()
    }
}

fileprivate extension View {
    func isTrustedRefresher() -> some View {
        self.onAppear {
            AccessibilityService
                .shared
                .accessibilityIsTrustedRefresh(onTrusted: { print("Accessibility is trusted") })
        }
    }
}
