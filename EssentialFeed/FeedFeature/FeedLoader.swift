//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Deepak on 23/02/20.
//  Copyright © 2020 Deepak. All rights reserved.
//

import Foundation

public typealias LoadFeedResult = Result<[FeedImage], Error>

//extension LoadFeedResult: Equatable where Error: Equatable {}

public protocol FeedLoader {
    typealias Result = Swift.Result<[FeedImage], Error>
    
    func load(completion: @escaping (Result) -> Void)
}
