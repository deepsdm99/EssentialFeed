//
//  FeedCachePolicy.swift
//  EssentialFeed
//
//  Created by Deepak on 15/04/20.
//  Copyright © 2020 Deepak. All rights reserved.
//

import Foundation

internal final class FeedCachePolicy {
    private init() {}

    private static let calendar = Calendar(identifier: .gregorian)

    private static var maxCacheAgeInDays: Int {
        return 7
    }

    internal static func validate(_ timestamp: Date, against date: Date) -> Bool {
        guard let maxCacheAge = calendar.date(byAdding: .day, value: maxCacheAgeInDays, to: timestamp) else {
            return false
        }
        return date < maxCacheAge
    }
}
