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

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}
