//
//  ReelsViewModel.swift
//  Productab_test
//
//  Created by poteryal_trusy on 29.10.2025.
//


import Foundation
internal import Combine

final class ReelsViewModel: ObservableObject {
    
    @Published var reels: [Reel] = []

    func loadReels() async {
        do {
            let data = try await NetworkManager.shared.fetchReels()
            self.reels = data
        } catch {
            print("Ошибка загрузки:", error.localizedDescription)
        }
    }
}
