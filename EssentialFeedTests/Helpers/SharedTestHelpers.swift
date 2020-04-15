//
//  SharedTestHelpers.swift
//  EssentialFeedTests
//
//  Created by Deepak on 15/04/20.
//  Copyright © 2020 Deepak. All rights reserved.
//

import Foundation

func anyNSError() -> NSError {
    return NSError(domain: "any error", code: 0)
}

func anyURL() -> URL {
    return URL(string: "http://any-url.com")!
}
