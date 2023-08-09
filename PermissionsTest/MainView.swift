import SwiftUI

struct MainView: View {
    @StateObject private var permissionsService = PermissionsService.shared

    var body: some View {
        ZStack {

            if self.permissionsService.isTrusted {
                MainView()
            } else {
                PermissionsView()
            }
        }
        .onAppear {
            self.permissionsService.pollAccessibilityPrivileges(onTrusted: {
                
            })
        }
    }
}
