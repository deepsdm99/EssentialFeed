//
//  CacheFeedUseCaseTests.swift
//  EssentialFeedTests
//
//  Created by Deepak on 07/03/20.
//  Copyright © 2020 Deepak. All rights reserved.
//


import XCTest

class LocalFeedLoader {
    init(store: FeedStore) {

    }
}

class FeedStore {
    var deleteCachedFeedCallCount = 0
}

class CacheFeedUseCaseTests: XCTestCase {

    func test_init_doesNotDeleteCacheUponCreation() {
        let store = FeedStore()
        _ = LocalFeedLoader(store: store)

        XCTAssertEqual(store.deleteCachedFeedCallCount, 0)
    }

}
