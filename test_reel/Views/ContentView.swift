//
//  ContentView.swift
//  Productab_test
//
//  Created by poteryal_trusy on 29.10.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeScreen()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }

            CallsScreen()
                .tabItem {
                    Label("Calls", systemImage: "phone.fill")
                }

            AddScreen()
                .tabItem {
                    Image(systemName: "plus.circle.fill")
                }

            ChatScreen()
                .tabItem {
                    Label("Chat", systemImage: "bubble.left.and.bubble.right.fill")
                }

            ProfileScreen()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle.fill")
                }
        }
    }
}
