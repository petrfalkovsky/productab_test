//
//  MainTabView.swift
//  Productab_test
//
//  Created by poteryal_trusy on 29.10.2025.
//


import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeScreen()
                .tabItem {
                    Image(systemName: "house.fill")
                }
            
            CallsScreen()
                .tabItem {
                    Image(systemName: "phone.fill")
                }

            AddScreen()
                .tabItem {
                    Image(systemName: "plus.circle.fill")
                }

            ChatScreen()
                .tabItem {
                    Image(systemName: "bubble.left.and.bubble.right.fill")
                }

            ProfileScreen()
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                }
        }
        .tint(.blue)
    }
}
