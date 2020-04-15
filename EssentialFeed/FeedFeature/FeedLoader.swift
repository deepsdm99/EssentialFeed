//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Deepak on 23/02/20.
//  Copyright © 2020 Deepak. All rights reserved.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedImage])
    case failure(Error)
}

//extension LoadFeedResult: Equatable where Error: Equatable {}


public protocol FeedLoader {
   // associatedtype Error: Swift.Error
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
