//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Deepak on 28/02/20.
//  Copyright © 2020 Deepak. All rights reserved.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

/// The completion handler can be invoked in any thread.
/// Clients are responsible to dispatch to appropriate threads, if needed
public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}
