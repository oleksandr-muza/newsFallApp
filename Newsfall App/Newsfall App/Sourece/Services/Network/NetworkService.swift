//
//  NetworkController.swift
//  Newsfall App
//
//  Created by Oleksandr Muza on 07.07.2024.
//

import Foundation

class NetworkService {
    
    func requst<T: Codable>(urlRequest: URLRequest, completion: @escaping (Result<T, Error>) -> Void) {
      
        DispatchQueue.global(qos: .default).async {
            
            URLSession.shared.dataTask(with: urlRequest) { data, responce, error in
                if let error = error {
                    completion(.failure(error))
                    return
                }
                
                guard let data = data else {
                    let error = NSError(domain: "No Data", code: 0, userInfo: [NSLocalizedDescriptionKey: "No data recieved"])
                    completion(.failure(error))
                    return
                }
                
                do {
                    let decodeData = try JSONDecoder().decode(T.self, from: data)
                    completion(.success(decodeData))
                } catch {
                    completion(.failure(error))
                }
            }.resume()
        }
    }
    
}
