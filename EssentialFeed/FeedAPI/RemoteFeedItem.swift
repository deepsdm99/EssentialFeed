//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Deepak on 13/04/20.
//  Copyright © 2020 Deepak. All rights reserved.
//

import Foundation

 struct RemoteFeedItem: Decodable {
     let id: UUID
     let description: String?
     let location: String?
     let image: URL
}
