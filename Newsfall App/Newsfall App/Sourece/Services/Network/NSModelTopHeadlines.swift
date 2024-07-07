//
//  NCModelTopHeadlines.swift
//  Newsfall App
//
//  Created by Oleksandr Muza on 07.07.2024.
//

import Foundation

// MARK: - TopHeadlines
struct TopHeadlines: Codable {
    let status: String?
    let totalResults: Int?
    let articles: [Article]
}

// MARK: - Article
struct Article: Codable {
    let author: String?
    let title: String?
    let description: String?
    let url: String?
    let urlToImage: String?
    let publishedAt: Date?
    let content: String?
}
