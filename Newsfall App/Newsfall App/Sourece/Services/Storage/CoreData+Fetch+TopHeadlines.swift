//
//  CoreData+Fetch+TopHeadlines.swift
//  Newsfall App
//
//  Created by Oleksandr Muza on 07.07.2024.
//

import CoreData

protocol CoreDataTopHeadlinesFetchProtocol {
    
    func fetchTopHeadlinesDataInfo() -> [CDTopHeadlines]
}

extension CoreDataService: CoreDataTopHeadlinesFetchProtocol {
    
    func fetchTopHeadlinesDataInfo() -> [CDTopHeadlines] {
        
        let fetchRequest = CDTopHeadlines.fetchRequest()
        
        let fetchedResult = fetchDataFromEntity(CDTopHeadlines.self, fetchRequest: fetchRequest)
        
        return fetchedResult
        
    }
    
}

private extension CoreDataService {
    
    
}
