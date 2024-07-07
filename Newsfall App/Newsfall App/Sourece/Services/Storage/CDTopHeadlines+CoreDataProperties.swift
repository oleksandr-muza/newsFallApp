//
//  CDTopHeadlines+CoreDataProperties.swift
//  Newsfall App
//
//  Created by Oleksandr Muza on 07.07.2024.
//
//

import Foundation
import CoreData


extension CDTopHeadlines {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CDTopHeadlines> {
        return NSFetchRequest<CDTopHeadlines>(entityName: "CDTopHeadlines")
    }

    @NSManaged public var status: String?
    @NSManaged public var totalResults: Int32
    @NSManaged public var article: NSSet?

}

// MARK: Generated accessors for article
extension CDTopHeadlines {

    @objc(addArticleObject:)
    @NSManaged public func addToArticle(_ value: CDArticle)

    @objc(removeArticleObject:)
    @NSManaged public func removeFromArticle(_ value: CDArticle)

    @objc(addArticle:)
    @NSManaged public func addToArticle(_ values: NSSet)

    @objc(removeArticle:)
    @NSManaged public func removeFromArticle(_ values: NSSet)

}

extension CDTopHeadlines : Identifiable {

}
