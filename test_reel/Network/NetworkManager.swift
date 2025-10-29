//
//  NetworkManager.swift
//  Productab_test
//
//  Created by poteryal_trusy on 29.10.2025.
//

import Foundation

final class NetworkManager {
    static let shared = NetworkManager()
    private init() {}
    
    private let baseURL = "https://interesnoitochka.ru/api/v1"

    struct APIError: Error, LocalizedError {
        let message: String
        var errorDescription: String? { message }
    }

    func fetchReels(offset: Int = 0, limit: Int = 10) async throws -> [Reel] {
        var components = URLComponents(string: "\(baseURL)/videos/recommendations")
        components?.queryItems = [
            URLQueryItem(name: "offset", value: String(offset)),
            URLQueryItem(name: "limit", value: String(limit)),
            URLQueryItem(name: "category", value: "shorts"),
            URLQueryItem(name: "date_filter_type", value: "created"),
            URLQueryItem(name: "sort_by", value: "date_created"),
            URLQueryItem(name: "sort_order", value: "desc")
        ]

        guard let url = components?.url else {
            throw APIError(message: "Некорректный URL")
        }

        let (data, response) = try await URLSession.shared.data(from: url)

        guard let http = response as? HTTPURLResponse, (200..<300).contains(http.statusCode) else {
            throw APIError(message: "Неверный статус ответа")
        }

        let decoder = JSONDecoder()
        return try decoder.decode([Reel].self, from: data)
    }
}
