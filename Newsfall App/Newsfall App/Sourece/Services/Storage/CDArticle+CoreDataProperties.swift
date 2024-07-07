//
//  CDArticle+CoreDataProperties.swift
//  Newsfall App
//
//  Created by Oleksandr Muza on 07.07.2024.
//
//

import Foundation
import CoreData


extension CDArticle {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CDArticle> {
        return NSFetchRequest<CDArticle>(entityName: "CDArticle")
    }

    @NSManaged public var author: String?
    @NSManaged public var title: String?
    @NSManaged public var descriptionArticle: String?
    @NSManaged public var url: String?
    @NSManaged public var urlToImage: String?
    @NSManaged public var publishedAt: Date?
    @NSManaged public var content: String?
    @NSManaged public var topHeadlines: CDTopHeadlines?

}

extension CDArticle : Identifiable {

}
