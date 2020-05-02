//
//  FeedImageDataLoader.swift
//  EssentialFeediOS
//
//  Created by Deepak on 28/04/20.
//  Copyright © 2020 Deepak. All rights reserved.
//

import Foundation

public protocol FeedImageDataLoaderTask {
    func cancel()
}

public protocol FeedImageDataLoader {
    typealias Result = Swift.Result<Data, Error>

    func loadImageData(from url: URL, completion: @escaping (Result) -> Void) -> FeedImageDataLoaderTask
}
