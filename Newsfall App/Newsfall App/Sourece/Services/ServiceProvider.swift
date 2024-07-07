//
//  ServiceProvider.swift
//  Newsfall App
//
//  Created by Oleksandr Muza on 07.07.2024.
//

import Foundation

class ServiceProvider {
    
    static func networkServices() -> NetworServiceProtocol {
        let service = NetworkService()
        return service
    }
    
    static func coreDataService() -> CoreDataServiceProtocol {
        let service = CoreDataService.shared
        return service
    }
    
}
