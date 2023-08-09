//
//  ContentView.swift
//  PermissionsTest
//
//  Created by UKS on 09.08.2023.
//

import SwiftUI

struct MainView: View {
    var body: some View{
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct PermissionsView: View {
    var body: some View{
        VStack {
            Text("PermissionsView!")
        }
        .padding()
    }
}
