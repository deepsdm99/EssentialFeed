//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Deepak on 13/04/20.
//  Copyright © 2020 Deepak. All rights reserved.
//

import Foundation

internal struct RemoteFeedItem: Decodable {
    internal let id: UUID
    internal let description: String?
    internal let location: String?
    internal let image: URL
}
