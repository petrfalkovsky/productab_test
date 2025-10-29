//
//  Reel.swift
//  Productab_test
//
//  Created by poteryal_trusy on 29.10.2025.
//

import Foundation

struct Reel: Codable, Identifiable, Sendable {
    var id: String {
        if let rawId { return rawId }
        let seed = [title, description, preview, videoUrl].compactMap { $0 }.joined(separator: "|")
        return seed.isEmpty ? UUID().uuidString : String(seed.hashValue)
    }

    let rawId: String?
    let title: String?
    let description: String?
    let preview: String?
    let videoUrl: String?

    enum CodingKeys: String, CodingKey {
        case rawId = "id"
        case title
        case description
        case preview = "preview_image"
        case videoUrl = "hls_playlist"
    }
}
