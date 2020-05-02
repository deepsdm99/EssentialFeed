//
//  ManagedCache.swift
//  EssentialFeed
//
//  Created by Deepak on 19/04/20.
//  Copyright © 2020 Deepak. All rights reserved.
//

import CoreData

@objc(ManagedCache)
 class ManagedCache: NSManagedObject {
    @NSManaged  var timestamp: Date
    @NSManaged  var feed: NSOrderedSet
    
    var localFeed: [LocalFeedImage] {
        return feed.compactMap { ($0 as? ManagedFeedImage)?.local }
    }
    
}

extension ManagedCache {
     static func find(in context: NSManagedObjectContext) throws -> ManagedCache? {
        let request = NSFetchRequest<ManagedCache>(entityName: entity().name!)
        request.returnsObjectsAsFaults = false
        return try context.fetch(request).first
    }
}
