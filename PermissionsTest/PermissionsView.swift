import SwiftUI

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
