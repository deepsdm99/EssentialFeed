//
//  RemoteFeedLoader.swift
//  EssentialFeed
//
//  Created by Deepak on 24/02/20.
//  Copyright © 2020 Deepak. All rights reserved.
//

import Foundation

public class RemoteFeedLoader: FeedLoader {
    private let url: URL
    private let client: HTTPClient
    
    public init(url: URL, client: HTTPClient) {
        self.url = url
        self.client = client
    }
    
    

   public func load(completion: @escaping (Result) -> Void ) {
            client.get(from: url) { [weak self] result in
            guard self != nil else { return }

            switch(result) {
            case let .success(data, response):
                completion(FeedItemsMapper.map(data, from: response))
            case .failure:
                completion(.failure(Error.connectivity))
           }
       }
   }
    
//    public enum Result: Equatable {
//        case success([FeedItem])
//        case failure(Error)
//    }
    public typealias Result = LoadFeedResult

    public enum Error: Swift.Error {
        case connectivity
        case invalidData
    }
}

