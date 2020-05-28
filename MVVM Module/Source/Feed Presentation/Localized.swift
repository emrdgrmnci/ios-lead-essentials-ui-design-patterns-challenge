//
//  Localized.swift
//  FeedFeature
//
//  Created by Ali Emre Değirmenci on 28.05.2020.
//  Copyright © 2020 Essential Developer. All rights reserved.
//

import Foundation

final class Localized {
    static var feedTitle: String {
        return NSLocalizedString("FEED_VIEW_TITLE",
                                 tableName: "Feed",
                                 bundle: Bundle(for: Localized.self),
                                 comment: "Title for the feed view")
    }

    static var feedLoadError: String {
        return NSLocalizedString("FEED_VIEW_CONNECTION_ERROR",
                                 tableName: "Feed",
                                 bundle: Bundle(for: Localized.self),
                                 comment: "Error message displayed when we can't load the image feed from the server")
    }
}
