//
//  HomeScreen.swift
//  Productab_test
//
//  Created by poteryal_trusy on 29.10.2025.
//


import SwiftUI
import Kingfisher

struct HomeScreen: View {
    @StateObject private var viewModel = ReelsViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack {
                    ForEach(viewModel.reels) { reel in
                        VStack(alignment: .leading) {
                            if let preview = reel.preview, let url = URL(string: preview) {
                                KFImage(url)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .cornerRadius(10)
                            }
                            Text(reel.title ?? "")
                                .font(.headline)
                            Text(reel.description ?? "")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                        .padding()
                    }
                }
            }
            .navigationTitle("Рилсы")
            .task {
                await viewModel.loadReels()
            }
        }
    }
}
