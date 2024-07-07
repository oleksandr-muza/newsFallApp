//
//  NS+TopHeadlines.swift
//  Newsfall App
//
//  Created by Oleksandr Muza on 07.07.2024.
//

import Foundation

typealias TopHeadlinesCompleatin = ((TopHeadlines?, Error?) -> ())

protocol NetworkServiceTopHeadlines {
    func loadNewsTopHeadlines(completion: @escaping TopHeadlinesCompleatin)
}

extension NetworkService: NetworkServiceTopHeadlines {
        
    func loadNewsTopHeadlines(completion: @escaping TopHeadlinesCompleatin) {
        
        let urlString = "\(TopHeadlinesConstance.createUrlTopHeadlines())"

        guard let url = URL(string: urlString) else { return }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        requst(urlRequest: request) { (result: Result<TopHeadlines,Error>) in
           
            switch result {
            case .success(let value):
                completion(value, nil)
                debugPrint("done")
            case .failure(let error):
                completion(nil, error)
                debugPrint("failure")

            }
        }
    }
    
}
