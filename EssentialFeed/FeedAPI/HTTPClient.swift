//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Deepak on 28/02/20.
//  Copyright © 2020 Deepak. All rights reserved.
//

import Foundation

/// The completion handler can be invoked in any thread.
/// Clients are responsible to dispatch to appropriate threads, if needed
public protocol HTTPClient {
    typealias Result = Swift.Result<(Data, HTTPURLResponse), Error>
    func get(from url: URL, completion: @escaping (Result) -> Void)
}
