//
//  CoreData+Insert+TopHeadlines.swift
//  Newsfall App
//
//  Created by Oleksandr Muza on 07.07.2024.
//

import CoreData

protocol CoreDataTopHeadlinesInsertProtocol {
    
    func insertTopHeadlinesInfo(with mainInfo: TopHeadlines)
    
}

extension CoreDataService: CoreDataTopHeadlinesInsertProtocol {
   
    func insertTopHeadlinesInfo(with mainInfo: TopHeadlines) {
        
        debugPrint(mainInfo)

        let topHeadlinesInfoEntityDescription = NSEntityDescription.entity(forEntityName: "CDTopHeadlines", in: context)!
        
        guard let topHeadlinesInfoEntity = NSManagedObject(entity: topHeadlinesInfoEntityDescription, insertInto: context) as? CDTopHeadlines
        else {
            assertionFailure()
            return
        }
        
        topHeadlinesInfoEntity.status = mainInfo.status
        topHeadlinesInfoEntity.totalResults = Int32(mainInfo.totalResults ?? 0)
        
        
        for dtls in mainInfo.articles {
            if let detailsEntity = insertArticleInfo(with: dtls) {
                detailsEntity.topHeadlines  = topHeadlinesInfoEntity

            }
        }
        
        save(context: context)
        
        
    }
    
}

private extension CoreDataService {
    
    func insertArticleInfo(with details: Article ) -> CDArticle? {
        
        let articleInfoEntityDescription = NSEntityDescription.entity(forEntityName: "CDArticle", in: context)!
        
        guard let articleEntity = NSManagedObject(entity: articleInfoEntityDescription, insertInto: context) as? CDArticle
        else {
            assertionFailure()
            return nil
        }
        
        articleEntity.author = details.author
        articleEntity.content = details.content
        articleEntity.descriptionArticle = details.description
        articleEntity.publishedAt = details.publishedAt
        articleEntity.title = details.title
        articleEntity.url = details.url
        articleEntity.urlToImage = details.urlToImage

        return articleEntity
  
    }
    
}
