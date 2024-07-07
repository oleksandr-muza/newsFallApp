//
//  APIConstance.swift
//  Newsfall App
//
//  Created by Oleksandr Muza on 07.07.2024.
//

import Foundation

struct TopHeadlinesConstance {
    
    static let basicUrlString: String = "https://newsapi.org/v2/top-headlines?country=ua&apiKey="
    static let apiKey: String = "5e09c5e30d4947d8ac0dc4bf3794287a"
    
    static func createUrlTopHeadlines() -> String {
        return basicUrlString + apiKey
    }
    
}
