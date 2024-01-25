//
//  Result.swift
//  BucketList
//
//  Created by Pierre-Louis Launay on 25/01/2024.
//

import Foundation

struct Result: Codable {
    let query: Query
}

struct Query: Codable {
    let pages: [Int: Page]
}

struct Page: Codable {
    let pageId: Int
    let title: String
    let terms: [String: [String]]?
}
